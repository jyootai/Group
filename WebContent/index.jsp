<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <head>
  <link rel="stylesheet" type="css/text" href="/group/css/main.css">
   <link rel="stylesheet" type="css/text" href="/group/css/bootstrap.min.css">
  </head>
  
  <body >
  <script type="text/javascript">
  		function getCode(){
  			document.form1.codeimg.src="/group/res/code/code.jsp";
  		}
  </script>
  <div class="container">
  <br>
  <br>
  <br>
   <br>
  <br>
  <div class="col-sm-offset-2">
  <div id="login_table" align="center">
  <h2>Group ����ϵͳ</h2>
  <h3>(The educational administration system) Login</h3>
    <form method="post" action="/group/servlet/LoginServlet" name="form1" class="form-horizontal" role="form">
     <div class="center" style="color:rgb(245, 124, 124)">${msg1}</div>
		<div class="login_form">
			 <div class="form-group ">
   				<label for="inputEmail3" class="col-sm-3 control-label">���:</label>
    			<div class="col-sm-8 ">
     				<select name="type" class="form-control input-sm">
		        		<option value="student" selected>ѧ��</option>
		        		<option value="teacher">��ʦ</option>
		     		</select>
    			</div>
 			 </div>
 			 <div class="form-group">
    			<label class="col-sm-3 control-label">�˺�:</label>
    			<div class="col-sm-8">
      				<input type="text" class="form-control input-sm" id="account" name="account" placeholder="�� ��">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="col-sm-3 control-label">�� ��:</label>
    			<div class="col-sm-8">
      				<input  class="form-control input-sm" id="password" type="password" name="password" placeholder="�� ��">
    			</div>
  			</div>	
  			<div class="form-group">
    			<label  class="col-sm-3 control-label">��֤��:</label>
    			<div class="col-sm-8">
      				<input type="text" class="form-control input-sm col-sm-2" id="validate_code" name="code" placeholder="��֤��">
      				<img name="codeimg" id="code-img" src="/group/res/code/code.jsp">
      				 <a id="refresh" href="" onclick="getCode()">ˢ��</a>
    			</div>
  			</div>	 		 
		    <div class="form-group">
		    	<div class="col-sm-10">
		    	  <button type="submit" class="btn btn-default btn-sm btn-success" name="submit">��¼</button>
		    	  <button type="reset" class="btn btn-default btn-sm pull-right" name="����">����</button>
		    	 </div>		          
		    </div>
	 </div>
	 </form>
	 </div>
	 </div>
	 </div>
	<p>COPYRIGHT 2014 BY Group ALL RIGHTS RESERVED</p>
  </body>
</html>
