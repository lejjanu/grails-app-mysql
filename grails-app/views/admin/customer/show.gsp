
<%@ page import="lejjanu.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		IS THIS USED?!?!
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.organisationId}">
				<li class="fieldcontain">
					<span id="organisationId-label" class="property-label"><g:message code="customer.organisationId.label" default="Organisation Id" /></span>
						<span class="property-value" aria-labelledby="organisationId-label"><g:fieldValue bean="${customerInstance}" field="organisationId"/></span>
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="customer.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${customerInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="customer.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${customerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="customer.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${customerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="customer.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${customerInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="customer.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${customerInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.primaryEmail}">
				<li class="fieldcontain">
					<span id="primaryEmail-label" class="property-label"><g:message code="customer.primaryEmail.label" default="Primary Email" /></span>
					
						<span class="property-value" aria-labelledby="primaryEmail-label"><g:fieldValue bean="${customerInstance}" field="primaryEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.primaryPhoneNr}">
				<li class="fieldcontain">
					<span id="primaryPhoneNr-label" class="property-label"><g:message code="customer.primaryPhoneNr.label" default="Primary Phone Nr" /></span>
					
						<span class="property-value" aria-labelledby="primaryPhoneNr-label"><g:fieldValue bean="${customerInstance}" field="primaryPhoneNr"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
