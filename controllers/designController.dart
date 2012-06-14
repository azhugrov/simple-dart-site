class DesignController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
        "head": {},
        "header": {
            "image": "img/future07.jpg"
        },
        "footer": {}
    };
    return render("/design/index", viewData, req, rsp);      
  }
  
}
