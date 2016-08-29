<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="paging_wrap">
					<table>
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td colspan="5">
									<input type="button" value="처음" id="firstPage">
									<input type="button" value="이전" id="preBlock">
									<input type="button" value="다음" id="nextBlock">
									<input type="button" value="끝" id="lastPage">
								</td>
							</tr>
						</tfoot>
						<tbody>
						</tbody>
					</table>
					<div id="insert_btn_wrap">
						<input type="button" id="insert_btn" value="새글 등록">
					</div>
				</div>