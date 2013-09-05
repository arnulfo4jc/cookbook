<g:form controller= "user" action="profile">
    <g:hiddenField name="flag" value="personaldata"/>
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
</g:form>