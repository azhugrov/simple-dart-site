class EngineeringController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "img/future04.jpg",
      "menu": "engineering"
    };
    var view = new D_sellstome_hypcomm_site_views_engineering_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;
  }
  
}