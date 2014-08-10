package lejjanu

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistrationController {
	static defaultAction = 'create'
    static allowedMethods = [ save: 'POST' ]

	// Before registration
    def create() {
        respond new Customer(params), [ model: [ link : "http://localhost:8080/grails-app-mysql/images/license-agreement-20140810.pdf" ] ]
    }

	// After registration
    def show(Customer customer) {
        respond customer
    }

	// Perform registrations
    @Transactional
    def save(Customer customerInstance) {
		if (!params.acceptAgreement) {
            flash.message = message(code: 'register.customer.acceptAgreement.message')
			respond customerInstance.errors, view:'create'
			return
		}
		
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'create'
            return
        }

        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'register.customer.created.message')
				redirect(controller: 'registration', action: 'show', params: [ id : customerInstance.id, status: CREATED ]) 
            }
            '*' { 
				redirect(controller: 'registration', action: 'show', params: [ id : customerInstance.id, status: CREATED ]) 
			}
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
