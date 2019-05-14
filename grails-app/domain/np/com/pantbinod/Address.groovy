package np.com.pantbinod

class Address {

    String district
    String state
    String localunit
    Integer wardNo
    String tole
    Boolean isTemporary = false
    String status= StatusList.DRAFT.toString()
    Employee employee
    Staff staff
    static constraints = {
        wardNo nullable: true
        tole blank: true, nullable: true
        staff nullable: true
        employee nullable: true

    }
}
