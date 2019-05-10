package grailsdemo

import np.com.pantbinod.EmployeeMarshallers

class BootStrap {

    def init = { servletContext ->
        EmployeeMarshallers.register()
    }
    def destroy = {
    }
}
