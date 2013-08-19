<!doctype html>
<div class="navbar">
        <div class="container">
          <button data-target=".navbar-responsive-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">CookBook</a>
          <div class="nav-collapse collapse navbar-responsive-collapse">
              <ul class="nav navbar-nav pull-right">
              <g:if test="${!session.user}">
              <li class="">
                  <g:link controller="recipe" action="list" id="" title="${message(code:'ni.com.cookbook.recipe')}"  class="toolrecipe" data-placement="bottom"><span class="glyphicon glyphicon-list"></span>
                  </g:link>
              </li>
              
              <li class="">
                  <g:link controller="user" action="list" id="" title="${message(code:'ni.com.cookbook.users')}"  class="toolusers" data-placement="bottom"><span class="glyphicon glyphicon-user"></span>
                  </g:link>
              </li>
              
              <li class="">
                  <g:link controller="login" action="edit" id="" title="${message(code:'ni.com.cookbook.profile')}"  class="toolprofile" data-placement="bottom"><span class="glyphicon glyphicon-edit"></span>
                  </g:link>
              </li>
              <li class="">
                  <g:link controller="user" action="logout" id="" title="${message(code:'ni.com.cookbook.logout')}"  class="toollogout" data-placement="bottom"><span class="glyphicon glyphicon-off"></span>
                  </g:link>
              </li>
              </g:if>
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <g:message code="ni.com.cookbook.language"/><b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <g:render template="/layouts/language-toolbar"/>
                </ul>
              </li>
              </ul>
          
          </div><!-- /.nav-collapse -->
        </div><!-- /.container -->
      </div>

             