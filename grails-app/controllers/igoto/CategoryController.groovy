package igoto

class CategoryController {
    def create() {}

    def save(){
        def category = new Category(params);
        if (category.save()){
            redirect(action: "index");
        }
        else {
            redirect(action: "create");
        }
    }
    def index() {}

}
