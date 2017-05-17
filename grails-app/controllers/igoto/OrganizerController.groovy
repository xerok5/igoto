package igoto

class OrganizerController {
    def create(){}

    def index() {
        def contactlist = Organizer.list(params);
        [contactlist:contactlist]
    }
    def delete(){
        def organizer=Organizer.get(params.id);
        if(organizer.delete())
        {
            flash.message="location deleted";
            redirect(action: "index")
        }
        else
        {
            flash.message="location not deleted";
            redirect(action: "index")
        }
    }
    def save(){
        def organizer = new Organizer(params);
        if(organizer.save()){
            redirect(action: "index")
        }
        else {
            redirect(action: "create")
        }
    }

    def edit(){
        def organizer = Organizer.get(params.id);
        [organizerinfo:organizer]
    }
}
