package np.com.pantbinod

import grails.converters.JSON
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class StaffController {



    def index() {
        println " = hahaha"
    }


    def getData(){

        params.max = params.length as Integer ?: 10
        params.offset= params.start as Integer ?: 0
        def searchData = params."search[value]"
        println "params = $params"
        def staff = Staff.createCriteria().list(params ){

                if(params?.fullname || params?.status){
                    like("firstname","%${params.fullname}%")
                    or{
                        if(params.status){
                            eq("status",params?.status)
                        }

                    }

                }


        }
        def dataMap = [:]
        dataMap.data= staff
        dataMap.recordsFiltered= staff.totalCount
        render dataMap as JSON
    }

    def show(Long id) {
        [staff: Staff.findById(id
        )]
    }

    def create() {
    }

    def save() {


        def staff = new Staff(params)
        staff.save(flush: true, failOnError : true)
        redirect(action: 'index')
    }

    def edit(Long id) {

        [staff: Staff.findById(id)]
    }

    def update() {

        println "params = $params"
            def staff = Staff.findById(params?.long('id'))
            staff.properties = params
            staff.save(flush: true, failOnError : true)
            redirect(action: 'index')

    }

    def delete(Long id) {
     def staff =  Staff.findById(id)
        staff.status = StatusList.TRASH.toString()
        staff.save(flush: true,failOnError :true)
        redirect(action: 'index')
    }



    def addDepartment(){

        println "params = $params"

        def department= Department.findById(params?.long('departmentId'))
        def staff= Staff.findById(params?.long('staffId'))
        staff.department = department
        staff.save(flush: true, failOnError :true)
        render(template: 'departmentDetail', model: [department: staff?.department])
    }
}
