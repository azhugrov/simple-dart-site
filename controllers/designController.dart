class DesignController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future07.jpg",
      "menu": "design"
    };
    var view = new _design_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;      
  }
  
}
