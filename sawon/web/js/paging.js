$(function(){
	var url = "NoticeServlet?command=notice_list";
	var btn = $("#paging_wrap tfoot input");
	var tbody = $("#paging_wrap tbody");
	var pagePerBlock = 5;
	var rowPerPage = 10;
	var curPage;
	var curBlock;
	var totalPage;
	var totalBlock;
	var btnIndex;
	
	movePage(1);
	
	$(document).on("click",".page_move",function(){
		movePage($(this).val())
	});
	$("#firstPage").on("click",function(){
		movePage(1);
	});
	$("#preBlock").on("click",function(){
		if(curBlock>1){
			movePage((curBlock-1)*pagePerBlock);
		}
	});
	$("#nextBlock").on("click",function(){
		if(curBlock<totalBlock){
			movePage(curBlock*pagePerBlock+1);
		}
	});
	$("#lastPage").on("click",function(){
		movePage(totalPage);
	});
	function movePage(cP){
		var json = { 'curPage' : cP,
				'pagePerBlock' : pagePerBlock,
				'rowPerPage' : rowPerPage };
		$.ajax({
			url: url,
			type: 'post',
			data: 'json='+JSON.stringify(json),
			dataType: 'json',
			success:function(result){
				$(".page_move").remove();
				tbody.empty();
				curPage=result.curPage;
				curBlock=result.curBlock;
				totalPage=result.totalPage;
				totalBlock=result.totalBlock;
				btnIndex=result.btnIndex;
				$(result.list).each(function(z,x){
					tbody.append("<tr class='list_detail'><td>"+x.ntcNo+"</td><td>"+x.ntcName+"</td><td>"+x.empName+"</td><td>"+x.ntcDate+"</td><td>"+x.ntcHit+"</td>");
				});
				btn.show();
				paging(result.firstPagePerBlock, result.lastPagePerBlock);
				pageBtnShowHide();
			}
		});
	}
	function paging(firstPagePerBlock, lastPagePerBlock){
		for(var i=lastPagePerBlock; i>=firstPagePerBlock;i--){
			btn.eq(1).after("<input type='button' value='"+i+"' class='page_move'>");
		}
	}
	function pageBtnShowHide(){
		if(curPage>1){
			btn.eq(0).show();
		}else{
			btn.eq(0).hide();
		}
		if(curBlock>1){
			btn.eq(1).show();
		}else{
			btn.eq(1).hide();
		}
		btn=$("#paging_wrap tfoot input");
		if(curBlock==totalBlock && curBlock!=1){
			btn.eq(pagePerBlock+2).hide();
		}else if(curBlock==totalBlock && curBlock==1){
			btn.eq(btnIndex).hide();
		}else if(curBlock>1){
			btn.eq(pagePerBlock+2).show();
		}
		if(curPage==totalPage && totalBlock!=1){
			btn.eq(pagePerBlock+3).hide();
		}else if(curPage==totalPage && totalBlock==1){
			btn.eq(btnIndex+1).hide();
		}else{
			btn.eq(pagePerBlock+3).show();
		}
	}
});