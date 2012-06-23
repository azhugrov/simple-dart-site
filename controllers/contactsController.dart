class ContactsController extends RestController {
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
       "image": "img/future06.jpg",
       "menu": "contacts"
    };
    var view = new D_sellstome_hypcomm_site_views_contacts_index_edt();
    view.render(viewData, rsp.outputStream);
    return null;
  }
  
}
