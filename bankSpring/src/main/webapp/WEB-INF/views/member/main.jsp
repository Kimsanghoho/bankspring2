<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<c:set var="context" value="${root}/resources"></c:set>

<div id="box"></div>
<script type="text/javascript">
$(function() {
	$.ajax({
		type : 'GET',
		url : '${root}/article/search/hong/1',
		dataType : 'json',
		contentType : 'application/json',
		success : function(data) {
			var table = '<table class="tab">';
			table += '<tr><th>글번호</th><th>ID</th><th>이름</th><th>제목</th><th>등록일</th></tr>';
			$.each(data,function(){
				table += '<tr>';
				table += '<td>'+this.artSeq+'</td><td>'+this.userid+
				'</td><td>'+this.name+'</td><td>'+this.title+'</td><td>'+this.postingDate+'</td>';
				table += '</tr>';
			});
			table += '</table>';
			$('#box').html(table);
			
		}
	});
});
</script>

