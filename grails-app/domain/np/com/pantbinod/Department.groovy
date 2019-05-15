package np.com.pantbinod

class Department {
    String departmentId
    String departmentName;
    String faculty
    String noOfEmployee
    Staff staff

    static constraints = {
        faculty nullable: true
        departmentId unique: true
        staff nullable: true
        noOfEmployee nullable: true
    }
}
