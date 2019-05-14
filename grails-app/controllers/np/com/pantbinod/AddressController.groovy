package np.com.pantbinod

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AddressController {

    def employeeService

    def index() {

        params?.offset = params?.offset as Integer ?: 0
        params?.max = params?.max as Integer ?: 10
        def addressList = Address.createCriteria().list(params) {
            eq("isTemporary", false)
        }


        [addressList: addressList, totalCount: addressList?.totalCount]

    }

    def create() {
        [domainId: params?.domainId,
         domainName: params?.domainName]

    }

    def save() {

             String domainName = params?.domainName
             Staff staff
            if(domainName.equalsIgnoreCase("staff")){
                staff= Staff.findById(params?.domainId)
            }
        def address = new Address()
        address.properties = params
        address.staff = staff
        if(address.save(flush: true, failOnError :true)){
            staff.address = address
            staff.save(flush: true, failOnError :true)
        }

        redirect(controller: 'staff', action: 'show',params:[id: staff?.id])


                }


    def delete() {
        Address.findById(params.long('id')).delete(flush: true, failOnError: true)
        redirect(action: 'index')
    }

    def edit() {
        [address: Address.findById(params.long('id'))]
    }

    def update() {
        def address = Address.findById(params.long('id'))
        address.properties = params
        address.save(flush: true, failOnError: true)
        redirect(controller: 'employee', action: 'employeeList')
    }
}
