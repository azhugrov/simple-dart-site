class AboutusController extends RestController {

  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "img/future02.jpg",
      "menu": "aboutus"
    };
    var view = new D_sellstome_hypcomm_site_views_aboutus_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;          
  }

}
