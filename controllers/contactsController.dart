class ContactsController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
       "image": "/img/future06.jpg",
       "menu": "contacts"
    };
    var view = new _contacts_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;
  }
  
}
