class HomeController extends RestController {
  /** Displays a home page. */
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future01.jpg",
      "menu": "home"
    };
    var view = new D_sellstome_hypcomm_site_views_home_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;
  }
}