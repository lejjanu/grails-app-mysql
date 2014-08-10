package lejjanu

class Customer {
	// key to Organisation
	String organisationId

	// key to email
	String primaryEmail
	
	// key to phoneNr
	String primaryPhoneNr
	String firstName
	String lastName
	String password
	
	Date dateCreated
	Date lastUpdated
		
    static constraints = {
		organisationId unique: true
    }
	
//	class Email {
//		String email
//		Date dateCreated
//		Boolean isValid
//
//		static constraints = {
//		// email unique
//		}
//	}
//	
//	class PhoneNr {
//		String phoneNr
//		Date dateCreated
//		Boolean isValid
//
//		static constraints = {
//			// phoneNr unique
//		}
//	}

}
