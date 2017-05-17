package igoto

class LoginController {

    def index() {}

    def postLogin(){
        if(params.username && params.password){
            def user = User.findAllByUsernameAndPassword(params.username,params.password);
            if(user){
                session.userid = user.id;
                session.username = user.username;
                redirect(action: "index", controller: "user")
            }
            else{
                redirect(action: "postLogin");
            }
        }
        else {
            redirect(action: "index");
        }
    }
    def logout(){
        if(session.userid){
            session.userid = "";
            session.username = "";
            session.invalidate();
            redirect(action: "index");
        }
    }
}
