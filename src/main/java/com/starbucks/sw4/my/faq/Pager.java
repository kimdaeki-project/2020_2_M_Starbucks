package com.starbucks.sw4.my.faq;

public class Pager {

	private Integer curPage;

	private int startRow;
	private int lastRow;
	private String type;
	
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
	}
	
	
	//************페이징 계산 ************
	
	public void makePage() {
		//1.전체 글의 갯수 totalCount
		//2.전체 페이지의 갯수
		long totalPage = this.getTotalCount()/10;
		if(this.getTotalCount()%10 != 0) {
			totalPage++;
		}
		
		//3.전체 블럭 수 구하기
		
	}
	
	//******getter, setter
	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public String getType() {
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
	
}

