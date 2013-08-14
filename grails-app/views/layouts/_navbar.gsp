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
              <li class="">
                  <g:link controller="login" action="edit" id="" title="${message(code:'org.inrma.edit')}"  class="tooledit"><span class="glyphicon glyphicon-edit"></span>
                  </g:link>
              </li>
              <li class="">
                  <g:link controller="login" action="edit" id="" title="${message(code:'org.inrma.recipe')}"  class="tooledit"><span class="glyphicon glyphicon-list"></span>
                  </g:link>
              </li>
              <li class="">
                  <g:link controller="login" action="edit" id="" title="${message(code:'org.inrma.users')}"  class="tooledit"><span class="glyphicon glyphicon-user"></span>
                  </g:link>
              </li>
              <li class="">
                  <g:link controller="login" action="edit" id="" title="${message(code:'org.inrma.logout')}"  class="tooledit"><span class="glyphicon glyphicon-off"></span>
                  </g:link>
              </li>
              <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <g:message code="ni.com.cookbook.language"/><b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                </ul>
              </li>
              </ul>
          </div><!-- /.nav-collapse -->
        </div><!-- /.container -->
      </div>

              