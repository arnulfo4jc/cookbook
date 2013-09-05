<!doctype html>
  <fieldset>
    <legend><g:message code="ni.com.cookbook.createuser"/></legend>
    
    <div class="form-group">
      <g:textField type="text" class="form-control" name="email" placeholder="${message(code:'ni.com.cookbook.email')}"/>
    </div>

    <div class="form-group">
      <g:passwordField class="form-control" name="password" placeholder="${message(code:'ni.com.cookbook.password')}"/>
    </div>
    
<<<<<<< HEAD
    <g:if test="${session?.user?.role=='admin'}">
=======
    <g:if test="${session.user}">
>>>>>>> profile
      <div class="form-group">
        <label for="role"><g:message code="ni.com.cookbook.role"/></label>
        <g:select name="role" from="${userInstance.constraints.role.inList}" value="${userInstance?.role}" valueMessagePrefix="teachers.role"/>
      </div>

      <div class="form-group">
        <label class="radio">
          <g:message code="ni.com.cookbook.enable"/>
          <g:radio name="enable" id="" value="true"/>
          </label>
      </div>

       <div class="form-group">
        <label class="radio">
          <g:message code="ni.com.cookbook.disable"/>
          <g:radio name="enable" id="" value="false" checked="true"/>
         </label>
      </div>
    </g:if>

     
    
    <g:submitButton name="btnregistration" value="${message(code:'ni.com.cookbook.btnsave')}"class="btn btn-default"/>
    
    <g:link controller="user" action="login" class="btn btn-info loco"> 
      <g:message code="ni.com.cookbook.login"/>
    </g:link>   

    </fieldset>
