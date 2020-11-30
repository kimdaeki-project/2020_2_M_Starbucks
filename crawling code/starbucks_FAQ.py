import pandas as pd
import requests as rq

data = []
def get_Faq(pageIndex):
    url = "https://www.starbucks.co.kr/voc/getFaqList.do"
    print(pageIndex)
    res = rq.post(url, data={
        'CD_VOC_CAUSE_1': '006',
        'CD_VOC_CAUSE_2': '006009',
        'KEYWORD':'',
        'pageIndex': pageIndex,
        'rndCod': 'SPRUNPLF0K',
    })

    faq_list = res.json()
    for faq in faq_list['list']:
        id_VOC_FAQ = faq['id_VOC_FAQ']
        ds_QESTN = faq['ds_QESTN']
        ds_ANSWER = faq['ds_ANSWER']
        data.append([id_VOC_FAQ, ds_QESTN, ds_ANSWER])

if __name__ == '__main__':
    for pageIndex in range(1,4):
        get_Faq(pageIndex)

columns = ["id_VOC_FAQ","ds_QESTN","ds_ANSWER"]
df = pd.DataFrame(data, columns=columns)
df.to_excel("./starbucks_faq_20201117 2305_v1.0.xlsx")

# dr.get(main_URL)  # 크롬드라이버에 url을 적용해준다.
#
# html = dr.page_source
# bs = BeautifulSoup(html, 'html.parser')
#
# menu=[]
# product = []

# li tag에 클래스가 menu data set인걸 찾아 starbuck_menu에 넣을 것
# faq_list = bs.findAll('dt', {'class':'ajaxFaqList'})
# starbucks_menu를 drink에 담기----------------------------------------------
# for faq in faq_list:
#     try:
#         print("크롤링 시작")
#         print(faq)
#     except Exception as e:
#         print(e)
#         continue  # 에러가 발생하면 다음거 계속 진행

# print(product)
# column=["prod_id","category","korName","engName","cardLaunch","new","sold","season","image"]
# df = pd.DataFrame(product,columns=column)
# print(df)
# df.to_excel("./starbucks menu_card_20201110 1219_v1.0.xlsx",index=False)
