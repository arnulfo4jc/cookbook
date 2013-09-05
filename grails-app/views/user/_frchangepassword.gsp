<g:form controller= "user" action="profile">
  <g:hiddenField name="flag" value="changepassword"/>
  <div class="form-group">
    <g:passwordField class="form-control" name="currentpassword" placeholder="${message(code:'ni.com.cookbook.currentpassword')}"/>
  </div>
  <div class="form-group">
    <g:passwordField class="form-control" name="password" placeholder="${message(code:'ni.com.cookbook.newpassword')}"/>
  </div>
  <div class="form-group">
    <g:passwordField class="form-control" name="confirmpassword" placeholder="${message(code:'ni.com.cookbook.confirmpassword')}"/>
  </div>
  <g:submitButton name="btnregistration" value="${message(code:'ni.com.cookbook.confirmchange')}"class="btn btn-info pull-right"/>
</g:form>