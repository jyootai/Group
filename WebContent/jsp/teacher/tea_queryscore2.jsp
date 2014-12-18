<%@ page contentType="text/html; charset=gb2312" language="java" import="java.util.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="dao.TeacherDao"%>
<%@page import="vo.Teacher"%>
<%@page import="dao.CourseDao"%>
<%@page import="vo.Course"%>
<head>
	<style type="text/css">
		.common{
			color:white;
			text-align:center;
		}
	</style>
 </head>
<body>
   <p class="common">${msg8}</p>	
   <c:if test="${msg8==null}">
   	  <br><br>	
   	  <center><img src="${chartUri }"></center>
   </c:if>
</body>
