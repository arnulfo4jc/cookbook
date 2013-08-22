<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>profile</title>
	<meta name="layout" content="profile">
	<r:require modules="bootstrap,application"/>
</head>
<body>
	<ul class="nav nav-tabs">
	  <li class="active"><a href="#home" data-toggle="tab">${message(code:'ni.com.cookbook.profile')}</a></li>
	  <li><a href="#other" data-toggle="tab">${message(code:'ni.com.cookbook.changepass')}</a></li>
	</ul>
 
 <div class="tab-content">
   <div id="home" class="tab-pane active">
   <br>
   		<div class="col-lg-6">
   		<h4>Datos Personales</h4>
   			<div class="form-group">
     			<g:textField type="text" class="form-control" name="fullName" autofocus="true" placeholder="${message(code:'ni.com.cookbook.fullname')}"/>
     		</div>
     		<div class="form-group">
     			<g:textField type="text" class="form-control" name="email" autofocus="true" placeholder="${message(code:'ni.com.cookbook.email')}"/>
     		</div>
     		<div class="form-group">
				<label for="avatar"><g:message code="ni.com.cookbook.avatar"/></label>
				<input type="file" name="avatar" id="avatar"/>
			</div>
			<g:submitButton name="btnregistration" value="${message(code:'ni.com.cookbook.confirmchange')}"class="btn btn-info pull-right"/>
     	</div>
   </div>
   <div id="other" class="tab-pane">
   <br>
     	<div class="col-lg-6">
   			<div class="form-group">
     			 <g:passwordField class="form-control" name="currentpassword" placeholder="${message(code:'ni.com.cookbook.currentpassword')}"/>
     		</div>
     		<div class="form-group">
     			 <g:passwordField class="form-control" name="newpassword" placeholder="${message(code:'ni.com.cookbook.newpassword')}"/>
     		</div>
     		<div class="form-group">
				 <g:passwordField class="form-control" name="confirmpassword" placeholder="${message(code:'ni.com.cookbook.confirmpassword')}"/>
			</div>
			<g:submitButton name="btnregistration" value="${message(code:'ni.com.cookbook.confirmchange')}"class="btn btn-info pull-right"/>
     	</div>
   </div>
</div>

</body>
</html>