<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>profile</title>
	<meta name="layout" content="profile">
	<r:require modules="bootstrap,application"/>
</head>
<body>
  
  <div class="col-lg-3">
    DATOS DE PERFIL
    FOTO <br>
    ${userInstance?.fullName} <br>
    ${userInstance?.email} <br>
  </div>
  <div class="col-lg-9">
    <g:if test="${flash.message=="errors"}">
      <div class="row">
        <div class="col-lg-12 alert alert-danger">
          <a class="close" data-dismiss="alert" href="#">&times;</a>
            <g:renderErrors bean="${cmd}"/>
          </div>
      </div>
    </g:if>

    <g:if test="${flash.message && flash.message!="errors"}">
      <div class="row">
        <div class="col-lg-12 alert alert-success">
          <a class="close" data-dismiss="alert" href="#">&times;</a>
            ${flash.message}
          </div>
      </div>
    </g:if>
  

	<ul class="nav nav-tabs">
	  <li class="${activepersonal}"><a href="#profile" data-toggle="tab">${message(code:'ni.com.cookbook.profile')}</a></li>
	  <li class="${activepassword}"><a href="#password" data-toggle="tab">${message(code:'ni.com.cookbook.changepass')}</a></li>
	</ul>
 
  <div class="tab-content">
    <div id="profile" class="tab-pane ${activepersonal}">
      <br>
     	<div class="col-lg-6">
     		<h4>Datos Personales</h4>
     		<g:render template="frpersonaldata"/>
      </div>
    </div>

    <div id="password" class="tab-pane ${activepassword}">
      <br>
      <div class="col-lg-6">
        <g:render template="frchangepassword"/>  
      </div>
    </div>
  </div>

                     
  <g:if test="${userInstance?.avatar}">
 <img src="<g:createLink action="renderUserAvatar" controller="user" id="${userInstance.id}"/>" alt="${userInstance.fullName}"/>
  </g:if>     
</div>
</body>
</html>