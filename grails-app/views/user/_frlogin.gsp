<form>
  <fieldset>
    <legend><g:message code="ni.com.cookbook.login"/></legend>
    
    <div class="form-group">
      <label for="email"><g:message code="ni.com.cookbook.email"/></label>
      <g:textField type="text" class="form-control" name="email" autofocus="true" placeholder="${message(code:'ni.com.cookbook.email')}"/>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword"><g:message code="ni.com.cookbook.password"/></label>
      <g:passwordField class="form-control" name="password" placeholder="${message(code:'ni.com.cookbook.password')}"/>
    </div>

    <div class="form-group">
      <g:link controller="login" action="resetpassword">
          <g:message code="ni.com.cookbook.forgotpassword"/>
      </g:link>
    </div>

    <g:submitButton name="btnlogin" value="${message(code:'ni.com.cookbook.btnlogin')}"class="btn btn-default"/>
    
    <g:link controller="user" action="create" class="btn btn-info"> 
      <g:message code="ni.com.cookbook.btnregistration"/>
    </g:link>  
  </fieldset>
</form>

