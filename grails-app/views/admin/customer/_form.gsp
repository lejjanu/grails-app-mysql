<%@ page import="lejjanu.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'organisationId', 'error')} required">
	<label for="organisationId">
		<g:message code="customer.organisationId.label" default="Organisation Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organisationId" required="" value="${customerInstance?.organisationId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="customer.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${customerInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'primaryEmail', 'error')} required">
	<label for="primaryEmail">
		<g:message code="customer.primaryEmail.label" default="Primary Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primaryEmail" required="" value="${customerInstance?.primaryEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'primaryPhoneNr', 'error')} required">
	<label for="primaryPhoneNr">
		<g:message code="customer.primaryPhoneNr.label" default="Primary Phone Nr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primaryPhoneNr" required="" value="${customerInstance?.primaryPhoneNr}"/>

</div>

