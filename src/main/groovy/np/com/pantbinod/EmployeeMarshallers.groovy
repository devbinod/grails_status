package np.com.pantbinod

import grails.converters.JSON

class EmployeeMarshallers {
    public static void register(){
        JSON.registerObjectMarshaller(Employee){ Employee employee ->
            return [


                    id: employee?.id?.toString(),
                    firstname: employee?.firstname?.toString(),
                    lastname: employee?.lastname?.toString(),
                    addressId: employee?.address?.id?.toString()
            ]

        }
    }
}
