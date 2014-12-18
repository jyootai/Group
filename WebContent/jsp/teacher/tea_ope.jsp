<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="vo.Student"%>
<html>
	<head>
		<link rel="stylesheet" type="css/text" href="/group/css/main.css">
   		<link rel="stylesheet" type="css/text" href="/group/css/bootstrap.min.css">
   		<link rel="stylesheet" type="css/text" href="/group/css/bootstrap.css">
   		<script type="text/javascript" src="/group/js/jquery.min.js"></script>
   		<script type="text/javascript" src="/group/js/bootstrap.js"></script>
   		<script type="text/javascript" src="/group/js/jquery.js"></script>
   		<script type="text/javascript" src="/group/js/main.js"></script>
   		<script type="text/javascript">
   		$(document).ready(function(){
   			$("#ab li").each(function(){
   				$(this).click(function(){
   					$(this).addClass("active")
   							.siblings().removeClass("active");
   				});
   			});
   		});
   	
   		</script>
	</head>
	<body>
		<nav class="nav navbar ">
    		<div class="navbar-inner">
      			<div class="container">
      				<ul class="info">
      					<li> 当前在线${type }：[${teacher.teano}] ${teacher.teaname } <span class="glyphicon glyphicon-user"></span>  </li>
      				</ul>
      				<div id="dropdown" class="dropdown pull-right">
  						<a href="" class="dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
   							 设置
    						<span class="caret"></span>
  						</a>
  						<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
   							 <li role="presentation"><a role="menuitem" tabindex="-1" href="">个人资料</a></li>
   							 <li><a href="/group/jsp/modifyPwd.jsp" target="iframe1" style=text-decoration:none>修改密码</a></li>
   							 <li role="presentation" class="divider"></li>
    						 <li><a href="/group/servlet/LogoutServlet" >退 出</a></li>
 						 </ul>
					</div>    				
      			</div>
    		</div>
  		</nav>
  		<div class="container">
  			<div class="row">
				<ul id="ab" class="nav nav-tabs" role="tablist">
  					 <li role="presentation" ><a href="tea_ope.jsp">主页</a></li>
 					 <li role="presentation"><a href="/group/servlet/Tea_QueryCourse1Servlet" target="iframe1">查看课程</a></li>
  					 <li role="presentation"><a href="/group/servlet/Tea_EntryScore1Servlet" target="iframe1">录入成绩</a></li>
  					 <li role="presentation"><a href="/group/servlet/Tea_QueryScore1Servlet" target="iframe1">成绩分布</a></li>
  					 <li role="presentation"><a href="tea_ope.jsp" >培养方案</a></li>
  					 <li role="presentation"><a href="tea_ope.jsp" >论 坛</a></li>
				</ul>
				<br>
				 <div><iframe width="100%" height="100%" name="iframe1" id="right" frameborder="0" src="/group/jsp/right.jsp"></iframe></div> 
				 <p>COPYRIGHT 2014 BY Group ALL RIGHTS RESERVED</p> 
			</div>
		</div>
	</body>
</html>