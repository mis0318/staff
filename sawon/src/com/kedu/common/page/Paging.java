package com.kedu.common.page;

public class Paging {
	private int curPage;
	private int curBlock;
	private int pagePerBlock;
	private int rowPerPage;
	private int totalRow;
	private int totalPage;
	private int totalBlock;
	
	public Paging(){

	}
	
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	public int getCurPage() {
		return curPage;
	}
	
	public void setCurBlock() {
		this.curBlock = (int)Math.ceil((double)curPage/pagePerBlock);
	}
	
	public int getCurBlock() {
		return this.curBlock;
	}

	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}
	
	public int getPagePerBlock() {
		return this.pagePerBlock;
	}

	public void setRowPerPage(int rowPerPage) {
		this.rowPerPage = rowPerPage;
	}

	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
		this.setTotalPage(this.totalRow);
		this.setCurBlock();
		this.setTotalBlock();
	}
	
	private void setTotalPage(int totalRow) {
		this.totalPage = (int)Math.ceil((double)totalRow/rowPerPage);
	}
	
	public int getTotalPage(){
		return this.totalPage;
	}
	
	private void setTotalBlock(){
		this.totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
	}
	
	public int gettotalBlock(){
		return this.totalBlock;
	}

	public int[] getStartEnd(){
		int[] pageStartEnd = new int[2];
		pageStartEnd[0] = (curPage - 1) * rowPerPage + 1;
		pageStartEnd[1] = curPage * rowPerPage;
		return pageStartEnd;
	}
	
	public int getFirstPagePerBlock(){
		return (curBlock-1)*pagePerBlock+1;
	}
	
	public int getLastPagePerBlock(){
		int result = curBlock*pagePerBlock;
		if(result>=totalPage){
			result = totalPage;
		}
		return result;
	}
}
