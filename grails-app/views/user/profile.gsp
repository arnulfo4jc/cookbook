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
     <p>Home</p>
   </div>
   <div id="other" class="tab-pane">
     <p>Other</p>
   </div>
   <div id="another" class="tab-pane">
     <p>Another</p>
   </div>
</div>

</body>
</html>