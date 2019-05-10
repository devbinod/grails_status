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
        [employee: params?.id]
    }

    def save() {
        def employee = employeeService.getEmployee(params.long("employee"))
        def address = new Address()
        address.properties = params
        address.employee=employee
        if(address.save(flush: true, failOnError: true)){
            employee.address = address
            employee.save(flush: true, failOnError :true)
        }


        redirect(controller: 'employee', action: 'employeeList')
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
