<%@page import="bean.MemberVO"%>
<%@ page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <% 
      String id = request.getParameter("id");
      String tel = request.getParameter("tel"); 
      
      MemberDAO dao = new MemberDAO();
      int result = dao.update(id, tel);
      String resultText = "수정실패";
      if(result ==1){
      resultText = "수정성공";
      }

      %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h5>당신이 입력한 회원정보를 확인해주세요.</h5>
<hr color="green">
<%= resultText %>
</body>
</html>