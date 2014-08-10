package lejjanu

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerAdminController {
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	// TODO: Present registration form, move listing to CustomerAdminController 
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customer.list(params), model:[customerInstanceCount: Customer.count()]
    }

	// After registration
    def show(Customer customer) {
		println( "we show: " + customer.organisationId )
        respond customer
    }

	// Before registration
    def create() {
        respond new Customer(params)
    }

	// Perform registrations
    @Transactional
    def save(Customer customerInstance) {
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
                flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
				System.out.println("multipartform");
				redirect(controller: 'registration', action: 'show', params: [ id : customerInstance.id ]) 
                //redirect customerInstance
            }
            '*' { 
				System.out.println("if not multipastform?");
				redirect(controller: 'registration', action: 'show', params: [ id : customerInstance.id ]) 
			}
        }
    }

    def edit(Customer customerInstance) {
        respond customerInstance
    }

    @Transactional
    def update(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'edit'
            return
        }

        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*'{ respond customerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Customer customerInstance) {

        if (customerInstance == null) {
            notFound()
            return
        }

        customerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
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
