class AboutusController extends RestController {

  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future02.jpg",
      "menu": "aboutus"
    };
    var view = new _aboutus_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;          
  }

}
