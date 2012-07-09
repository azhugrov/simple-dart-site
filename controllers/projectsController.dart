class ProjectsController extends RestController {
  
  ProjectsService _projectsService;
  
  ProjectsController(this._projectsService);
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future03.jpg",
      "menu": "projects"
    };
    var view = new D_sellstome_hypcomm_site_views_projects_index_edt();
    view.render(viewData, rsp.outputStream);
    return null; 
  }
  
  Future show(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    return _projectsService.findById(data["id"]).transform(onSuccess(project) {
      Map viewData = {
        "image": "/img/future03.jpg",
        "menu": "projects",
        "project": project
      };
      var view = new D_sellstome_hypcomm_site_views_projects_show_edt();
      view.render(viewData, rsp.outputStream);
      return data;
    });
  }

}
