from bs4 import BeautifulSoup
from selenium import webdriver
import pandas as pd
import time

# 셀레니움 사용
dr = webdriver.Chrome()
dr.implicitly_wait(3)
#main_URL = "https://www.starbucks.co.kr/menu/drink_list.do"
#menu_URL = "https://www.starbucks.co.kr/menu/drink_view.do"
#main_URL = "https://www.starbucks.co.kr/menu/food_list.do"
#menu_URL = "https://www.starbucks.co.kr/menu/food_view.do"
# main_URL = "https://www.starbucks.co.kr/menu/product_list.do"
# menu_URL = "https://www.starbucks.co.kr/menu/product_view.do"

main_URL = "https://www.starbucks.co.kr/menu/card_list.do?CATE_CD=product_offline"
menu_URL = "https://www.starbucks.co.kr/menu/card_view.do"

dr.get(main_URL)  # 크롬드라이버에 url을 적용해준다.

time.sleep(5)

html = dr.page_source
bs = BeautifulSoup(html, 'html.parser')

menu=[]
product = []

# li tag에 클래스가 menu data set인걸 찾아 starbuck_menu에 넣을 것
starbucks_menu = bs.findAll('li',{'class':'menuDataSet'})

# starbucks_menu를 drink에 담기
for drink in starbucks_menu:
    try:
        print("크롤링 시작")
        # prod_id = drink.find('a')['prod']  # for문을 돌려 prod값을 찾아낸다.
        prod_id = drink.find('a')['seq']
        print(prod_id)

        # menu_id = f"?product_cd={prod_id}" # 찾아낸 prod값을 ?product_cd=와 붙인다.
        menu_id = f"?seq={prod_id}"
        dr.get(menu_URL+menu_id) # menu_URL와menu_id 붙인 url을 크롬드라이버에 적용해준다.

        menu_html = dr.page_source
        menu_bs = BeautifulSoup(menu_html, 'html.parser')

        # 신상품 여부 Y/N
        new = drink.get('new')
        print("new: ",new)

        # sold/sold-out
        sold = drink.get('sold')
        print("sold: ",sold)

        # sell : 시즌상품 여부 [ product -> 1/0 ] [ card = B ]
        season = drink.get('sell')
        if season == 'B':
            season = 1
        else:
            season = 0
        print("season: ",season)

        # 메뉴 이름
        category = menu_bs.find('div',{'class':'sub_tit_inner'}).find('img')['alt']  # 카테고리 크롤링
        name = menu_bs.find('h4').text  # 이름 크롤링
        #print(name)

        # 상품명 한글/영문 파싱
        index = -1
        for i in name:
            index = index + 1
            if ord('a') <= ord(i.lower()) <= ord('z'):
                break

        korName = name[:index]
        engName = menu_bs.find('h4').find('span').text

        # 상품명 한글명 파싱
        # korName = name[:index]
        # 상품명 영문 파싱
        # engName = name[index:]
        print(korName," ----------- ", engName)

        # 카드 제외 설명
        # description = menu_bs.find('p',{'class':'t1'}).text  # 설명 크롤링
        # print(description)

        # 카드 런칭일
        index= -1
        cardLaunch = menu_bs.find('p',{'class':'card_launch'}).text
        for chk in cardLaunch:
            index = index + 1
            if chk == ":":
                index = index + 2
                break

        cardLaunch = cardLaunch[index:]
        print(cardLaunch)

        # 상품 전용 추가 설명
        # addDescription = menu_bs.find('div',{'class':'product_view_wrap2 product_view_wrap3'}).text
        # description2 = addDescription.replace("\n","")
        # print(description2)

        image = menu_bs.find('a',{'class':'elevatezoom-gallery active'}).find('img')['src']  # 이미지 크롤링
        print(image)

        product.append([prod_id,category,korName,engName,cardLaunch,new,sold,season,image])
        print(product)
        print("---------------------------------------------------------------------------------------------")
        # 사이즈와 용량 정보
        #productInfo = menu_bs.find('div',{'id':'product_info01'}).text

        # 알레르기 유발요인
        #allergy = menu_bs.find('div',{'class':'product_factor'}).text
        #print(allergy)

        # index = -1
        # for allergyChk in allergy:
        #     index = index + 1
        #     if allergyChk == ':':
        #         index = index + 2
        #         break
        #allergy = allergy[index:].replace("\n","")

        #csv_writer.writerow( (category,name,description,image) )  # 크롤링한 내용 csv파일에 넣기

    except Exception as e:
        print(e)
        continue  # 에러가 발생하면 다음거 계속 진행

print(product)
column=["prod_id","category","korName","engName","cardLaunch","new","sold","season","image"]
df = pd.DataFrame(product,columns=column)
print(df)
df.to_excel("./starbucks menu_card_20201110 1219_v1.0.xlsx",index=False)
