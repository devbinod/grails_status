package np.com.pantbinod

import grails.converters.JSON

class EmployeeController {

    def employeeService

    def index() { }


    def employeeList(){
        def(employeeList) = employeeService.employeeList(params)
        [employeeList : employeeList]
    }


    def employeeDetail(){
        def(employeeList) = employeeService.employeeList(params)
        def mapData = [:]
        mapData.data= employeeList
        render mapData as JSON
    }
    def addEmployee(){ }


    def save(){

        employeeService.saveEmployee(params)
        flash.message="Sucessfully Saved."
        redirect(action: 'employeeList')
    }

    def update(){
        employeeService.saveEmployee(params)
        flash.message="Sucessfully Updated.."
        redirect(action: 'employeeList')
    }

    def deleteEmployee(){
        employeeService.deleteEmployee(params)
        redirect(controller: 'employee', action: 'employeeList')
    }

    def updateEmployee(){
        Employee employee = employeeService.getEmployee(params.long('id'))
        [employee :employee]
    }

}
