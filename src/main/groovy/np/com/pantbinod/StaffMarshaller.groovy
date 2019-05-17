package np.com.pantbinod

import grails.converters.JSON

class StaffMarshaller {

    static void register(){
        JSON.registerObjectMarshaller(Staff){
            Staff staff ->
                return [


                        "id" : staff?.id?.toString(),
                        "name": staff?.fullName ?: "",
                        "status": staff?.status ?: "",
                        "staffId": staff?.staffId ?: ""


                ]



        }


    }
}
