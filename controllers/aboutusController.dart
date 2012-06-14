class AboutusController extends RestController {

  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
        "head": {},
        "header": {
            "image": "img/future02.jpg"
        },
        "footer": {}
    };
    return render("/aboutus/index", viewData, req, rsp);          
  }

}
