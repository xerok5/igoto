package igoto

class UserController {
    def create(){
//        User user = new User()
//        [user: user]
    }

    def index() {
        def userlist = User.list(params);
        [userlist:userlist]
    }

    def save(){
       def userinfo = new User(params);
        if(userinfo.save()){
            if (!userinfo.save(flush: true)) {
                render (view : 'create', model: [user: user])
            }

            redirect (action: "create")
        }

        else
    {
            redirect(action: "index")
        }
    }

    def edit(){
        def user = User.get(params.id);
        [userinfo:user]
    }
}
