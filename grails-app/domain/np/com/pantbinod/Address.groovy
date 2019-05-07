package np.com.pantbinod

class Address {

    String district
    String state
    String localunit
    Integer wardNo
    String tole
    Boolean isTemporary = false


    static constraints = {
        wardNo nullable: true
        tole blank: true, nullable: true

    }
}
