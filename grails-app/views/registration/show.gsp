
<%@ page import="lejjanu.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="register.customer.show.label" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
				<g:if test="${customerInstance?.organisationId}">
				<li class="fieldcontain">
					<span id="organisationId-label" class="property-label"><g:message code="customer.organisationId.label"/></span>
					<span class="property-value" aria-labelledby="organisationId-label"><g:fieldValue bean="${customerInstance}" field="organisationId"/></span>
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="customer.firstName.label"/></span>
					<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${customerInstance}" field="firstName"/></span>
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="customer.lastName.label"/></span>
					<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${customerInstance}" field="lastName"/></span>
				</li>
				</g:if>
									
				<g:if test="${customerInstance?.primaryEmail}">
				<li class="fieldcontain">
					<span id="primaryEmail-label" class="property-label"><g:message code="customer.primaryEmail.label"/></span>
					<span class="property-value" aria-labelledby="primaryEmail-label"><g:fieldValue bean="${customerInstance}" field="primaryEmail"/></span>
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.primaryPhoneNr}">
				<li class="fieldcontain">
					<span id="primaryPhoneNr-label" class="property-label"><g:message code="customer.primaryPhoneNr.label"/></span>
					<span class="property-value" aria-labelledby="primaryPhoneNr-label"><g:fieldValue bean="${customerInstance}" field="primaryPhoneNr"/></span>
				</li>
				</g:if>
			</ol>
		</div>
	</body>
</html>
