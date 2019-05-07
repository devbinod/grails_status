package np.com.pantbinod

class Department {
    String departmentId
    String departmentName;
    String faculty
    String noOfEmployee

    static constraints = {
        faculty nullable: true
        departmentId unique: true
    }
}
