package np.com.pantbinod

class Staff {

    String staffId
    String firstname
    String middlename
    String lastname
    Integer experience
    String post
    String status = StatusList.DRAFT.toString()
    Address address
    Department department
    static constraints = {
        middlename nullable: true
        experience nullable: true
        address nullable: true
    }
}
