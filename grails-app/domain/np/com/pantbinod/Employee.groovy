package np.com.pantbinod

class Employee {

    String firstname
    String lastname
    String middlename
    String department
    String status= StatusList.DRAFT.toString()
    Date createdDate
    Date updatedDate
    Long createdBy
    Long updatedBy
    Address address



    static constraints = {
        firstname nullable: true, blank: true
        lastname nullable: true, blank: true
        address nullable: true,blank: true
        department nullable: true, blank: true
        middlename nullable: true, blank: true
        createdBy nullable: true
        updatedBy nullable: true
        createdDate nullable: true
        updatedDate nullable: true
        address nullable: true
    }

    def beforeInsert(){
        createdDate  = new Date()
        createdBy = 10
    }

    def beforeUpdate(){
        updatedBy = 111
        updatedDate = new Date()+1
    }
}
