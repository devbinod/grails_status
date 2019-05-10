package np.com.pantbinod

import grails.transaction.Transactional

@Transactional
class EmployeeService {


    Employee getEmployee(Long id){
        Employee employee = Employee.findById(id)
        return employee
    }

    def employeeList(params){

        def employeeList = Employee.createCriteria().list (){

            if(params?.status){
                eq('status',params?.status)
            }
        }

        return [employeeList]
    }

    def saveEmployee(params){
        println "params = $params"
        Employee employee = getEmployee(params.long('id'))
        if(!employee){
            employee = new Employee()
        }
        employee.properties = params
        employee.save(flush: true,failOnError: true)
    }

    def deleteEmployee(params){
        Employee employee = getEmployee(params?.long('id'))
        employee.status= params?.status
        employee.save(flush: true, failOnError :true)
    }

}
