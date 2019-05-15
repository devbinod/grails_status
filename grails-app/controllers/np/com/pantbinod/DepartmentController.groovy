package np.com.pantbinod

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class DepartmentController {


    def index(){

        def departmentList = Department.list()
        [departmentList : departmentList]

    }

    def create(){}

    def saveDeparment(){
        def deparment= new Department()
        deparment.properties = params
        deparment.save(flush: true,failOnError :true)
        redirect(action: 'index')
    }
}
