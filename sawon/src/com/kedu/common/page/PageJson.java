package com.kedu.common.page;

import java.util.List;

import com.kedu.notice.dto.NoticeDto;

public class PageJson {
	private int firstPagePerBlock;
	private int lastPagePerBlock;
	private int curPage;
	private int curBlock;
	private int totalPage;
	private int totalBlock;
	private int btnIndex;
	private List<NoticeDto> list;
	
	public PageJson(){
		
	}
	
	public PageJson(int firstPagePerBlock, int lastPagePerBlock, int curPage, int curBlock, int totalPage, int totalBlock, int pagePerBlock, List<NoticeDto> list) {
		this.firstPagePerBlock = firstPagePerBlock;
		this.lastPagePerBlock = lastPagePerBlock;
		this.curPage = curPage;
		this.curBlock = curBlock;
		this.totalPage = totalPage;
		this.totalBlock = totalBlock;
		this.btnIndex = makeBtnIndex(pagePerBlock);
		this.list = list;
	}
	
	private int makeBtnIndex(int pagePerBlock){
		int result = 0;
		if(totalBlock==1){
			result = lastPagePerBlock + 2;
		}else{
			result = totalPage%pagePerBlock+2;
		}
		return result;
	}

	@Override
	public String toString() {
		return "PageJson [firstPagePerBlock=" + firstPagePerBlock + ", lastPagePerBlock=" + lastPagePerBlock
				+ ", curPage=" + curPage + ", curBlock=" + curBlock + ", totalPage=" + totalPage + ", totalBlock="
				+ totalBlock + ", btnIndex=" + btnIndex + ", list=" + list + "]";
	}
}
