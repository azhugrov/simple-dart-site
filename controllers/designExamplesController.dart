class DesignExamplesController {
  
  static Future bathroom(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    new D_sellstome_hypcomm_site_views_design_examples_bathroom_edt().render(_viewData(), rsp.outputStream);
    return null;      
  }
  
  static Future bedroom(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    new D_sellstome_hypcomm_site_views_design_examples_bedroom_edt().render(_viewData(), rsp.outputStream);
    return null;
  }
  
  static Future kitchen(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    new D_sellstome_hypcomm_site_views_design_examples_kitchen_edt().render(_viewData(), rsp.outputStream);
    return null;
  }
  
  static Future  livingroom(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    new D_sellstome_hypcomm_site_views_design_examples_livingroom_edt().render(_viewData(), rsp.outputStream);
    return null;
  }
  
  static Future nursery(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    new D_sellstome_hypcomm_site_views_design_examples_nursery_edt().render(_viewData(), rsp.outputStream);
    return null;
  }
  
  static Map _viewData() {
    return {
      "image": "/img/future07.jpg",
      "menu": "design"
    };
  }
}
