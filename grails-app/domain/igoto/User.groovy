package igoto

class  User {
    String username;
    String password;
    String user_type;
    String email;
    static constraints = {
        username (blank: false,unique: true,nullable: false,minSize: 3)
        password (blank: false,unique: false,nullable: false,minSize: 3)
        user_type (blank: false,unique: false,nullable: false,minSize: 3)
        email (blank: false,unique: false,nullable: false,minSize: 3)

    }
}
