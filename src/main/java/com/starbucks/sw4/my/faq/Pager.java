package com.starbucks.sw4.my.faq;

public class Pager {
	
	//***Search
	private String search;
	
	private Integer curPage;

	private int startRow;
	private int lastRow;
	private String type;
	
	//JSP에서 사용할 변수들
		private long startNum;
		private long lastNum;
	
	private long totalCount;
	
	//한페이지당 글 몇개씩 프린트할 건지
	private int perPage;

	public Pager() {
		this.perPage=10;
	}
	
	//************startRow, lastRow 계산하는 메서드
	public void makeRow() {
		startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		lastRow = this.getCurPage()*this.getPerPage();
	
		System.out.println("start"+startRow);
		System.out.println("last:" +lastRow);
	}
	
	
	
	//************페이징 계산 ************
	
	public void makePage() {
		//1.전체 글의 갯수 totalCount   //15
		//2.전체 페이지의 갯수
		long totalPage = this.getTotalCount()/10;
		if(this.getTotalCount()%10 != 0) {
			totalPage++;
		}
		
		//3.전체 블럭 수 구하기
		long totalBlock = totalPage/5;
		if(totalPage%5 != 0) {
			totalBlock++;
		}
		
		//4. curPage 를 이용해서 현재 블럭 번호 찾기 ex) 7이면 2번 블록(6-10), 어느블록인지를 찾아야함
		long curBlock = this.getCurPage()/5;  //null이 나올수도 있어서 this로 바꿔주는것.
		if(this.getCurPage()%5 != 0) {
			curBlock++;
		}
		
		//5. 현재 블록번호로 start/last 번호 찾기
		this.startNum = (curBlock-1)*5+1;
		this.lastNum = totalPage;
		
		//6.현재 블록번호와 전체 블록번호가 같은지 결정
		
		
		
	}
	
	//******getter, setter
	
	
	public int getPerPage() {
		return perPage;
	}

	public String getSearch() {
		if(search==null) {
			search="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public String getType() {
		if(type==null) {
			type="";
		}
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getCurPage() {
		if(curPage == null ) {
			curPage=1;
		}
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		if(curPage == null) {
			curPage=1;
		}
		this.curPage = curPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getLastRow() {
		return lastRow;
	}

	public void setLastRow(int lastRow) {
		this.lastRow = lastRow;
	}

	public long getTotalCount() {
		if(this.totalCount==0) {
			this.totalCount=1;
		}
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public long getStartNum() {
		return startNum;
	}

	public void setStartNum(long startNum) {
		this.startNum = startNum;
	}

	public long getLastNum() {
		return lastNum;
	}

	public void setLastNum(long lastNum) {
		this.lastNum = lastNum;
	}
	
}

