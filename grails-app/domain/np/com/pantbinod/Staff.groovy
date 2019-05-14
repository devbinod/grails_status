package np.com.pantbinod

class Staff {

    String staffId
    String firstname
    String middlename
    String lastname
    String department
    Integer experience
    String post
    String status = StatusList.DRAFT.toString()
    Address address

    static constraints = {
        middlename nullable: true
        experience nullable: true
        address nullable: true
    }
}
