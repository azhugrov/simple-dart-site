class EngineeringController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
        "head": {},
        "header": {
            "image": "img/future04.jpg"
        },
        "footer": {}
    };
    return render("/engineering/index", viewData, req, rsp);
  }
  
}