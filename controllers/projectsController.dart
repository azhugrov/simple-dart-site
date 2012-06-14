class ProjectsController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
        "head": {},
        "header": {
            "image": "img/future03.jpg"
        },
        "footer": {}
    };
    return render("/projects/index", viewData, req, rsp);  
  }

}
