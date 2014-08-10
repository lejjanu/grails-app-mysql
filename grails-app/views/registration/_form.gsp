<%@ page import="lejjanu.Customer" %>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'organisationId', 'error')} required">
	<label for="organisationId">
		<g:message code="register.customer.organisationId.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organisationId" required="" value="${customerInstance?.organisationId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="register.customer.firstName.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="register.customer.lastName.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="register.customer.password.label"/>
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${customerInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'primaryEmail', 'error')} required">
	<label for="primaryEmail">
		<g:message code="register.customer.primaryEmail.label" default="Primary Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primaryEmail" required="" value="${customerInstance?.primaryEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'primaryPhoneNr', 'error')} required">
	<label for="primaryPhoneNr">
		<g:message code="register.customer.primaryPhoneNr.label" default="Primary Phone Nr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primaryPhoneNr" required="" value="${customerInstance?.primaryPhoneNr}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'primaryPhoneNr', 'error')} required">
	<!-- label for="acceptAgreement">
		<g:message code="register.customer.acceptAgreement.label"/>
		<span class="required-indicator">*</span>
	</label -->
	<g:checkBox name="acceptAgreement" value="${false}" />
	<g:message code="register.customer.acceptAgreement.label" args="[link]"/>
</div>

