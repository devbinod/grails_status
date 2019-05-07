package np.com.pantbinod

class Employee {

    String firstname
    String lastname
    String middlename
    String address
    String department
    String status= StatusList.DRAFT.toString()



    static constraints = {
        firstname nullable: true, blank: true
        lastname nullable: true, blank: true
        address nullable: true,blank: true
        department nullable: true, blank: true
        middlename nullable: true, blank: true
    }
}
