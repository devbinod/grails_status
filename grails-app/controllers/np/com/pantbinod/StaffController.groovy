package np.com.pantbinod

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class StaffController {



    def index(Integer max) {
        def staff = Staff.list()
        [staffList: staff]
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

}
