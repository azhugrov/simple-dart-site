class EngineeringController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future04.jpg",
      "menu": "engineering"
    };
    var view = new _engineering_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;
  }
  
}