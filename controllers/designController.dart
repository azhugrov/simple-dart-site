class DesignController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future07.jpg",
      "menu": "design"
    };
    var view = new D_sellstome_hypcomm_site_views_design_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;      
  }
  
}
