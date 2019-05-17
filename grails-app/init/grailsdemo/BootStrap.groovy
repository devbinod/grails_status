package grailsdemo

import np.com.pantbinod.EmployeeMarshallers
import np.com.pantbinod.StaffMarshaller

class BootStrap {

    def init = { servletContext ->
        EmployeeMarshallers.register()
        StaffMarshaller.register()

    }
    def destroy = {
    }
}
