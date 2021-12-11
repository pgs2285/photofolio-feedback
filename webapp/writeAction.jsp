<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="photofolio.dbDAO"%>
<jsp:useBean id="feedback" class="photofolio.dbDTO" scope="page"/> 

<jsp:setProperty name = "feedback" property="title"/>
<jsp:setProperty name = "feedback" property="author_id"/>
<jsp:setProperty name = "feedback" property="description"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(feedback.getTitle() == null || feedback.getDescription() == null||feedback.getAuthor_id() == null ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('모두 입력해주세요')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			dbDAO dbdao = new dbDAO();
			int result = dbdao.write(feedback.getTitle(), feedback.getDescription(), feedback.getAuthor_id());
			
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기 실패')");
				script.println("history.back()");
				script.println("</script>");
			}else{
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='feedback.jsp'");
			script.println("</script>");

			}
		}
	%>

</body>
</html>
