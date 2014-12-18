<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<style type="text/css">
		.common{
			color:white;
			text-align:center;
		}
		td{
			color:white;
		}
	</style>
</head>
<html>
  <body>
  	<p class="common">${okMsg9}</p>	<br><br>
    <c:if test="${okMsg9==null}">
    	<form action="/group/servlet/ModifyPwdServlet" method="post">
    		<table align=center>
    			<tr>
    				<td align=right>输入旧密码：</td>
    				<td align=left><input type="password"  name="oldPassword"></td>
    			</tr>
    			<tr>
    				<td align=right>输入新密码：</td>
    				<td align=left><input type="password" name="newPassword1"></td>
    			</tr>
    			<tr>
    				<td align=right>确认新密码：</td>
    				<td align=left><input type="password" name="newPassword2"></td>
    			</tr>
    			<tr>
    				<td align=right><input type="submit" value="提交"></td>
    				<td align=left><input type="reset" value="重置"></td>
    			</tr>
    			<tr><td colspan=2>&nbsp;</td></tr>
    			<p class="common">${msg9}</p>

    		</table>
    	</form>
    </c:if>
  </body>
</html>
