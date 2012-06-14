class HomeController extends RestController {
  /** Displays a home page. Using Mushtache template engine. */
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
        "head": {},
        "header": {
            "image": "img/future01.jpg"
        },
        "footer": {}
    };
    return render("/home/index", viewData, req, rsp);
  }
}