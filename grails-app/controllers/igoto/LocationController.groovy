package igoto

class LocationController {

    def create(){}

    def index() {
        def locationlist = Location.list(params);
        [locationlist:locationlist]
    }
def delete(){
    def location=Location.get(params.id);
    if(location.delete())
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
        def location = new Location(params);
        if(location.save()){
            redirect(action: "index")
        }
        else {
            redirect(action: "create")
        }
    }

    def edit(){
        def location = Location.get(params.id);
        [locationinfo:location]
    }
}
