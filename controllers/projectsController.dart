class ProjectsController extends RestController {
  
  ProjectsService _projectsService;
  
  ProjectsController(this._projectsService);
  
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = {
      "image": "/img/future03.jpg",
      "menu": "projects"
    };
    return _projectsService.findAllForType(ProjectType.BUSINESS_CENTER)
                           .chain((businessCenters) {
                            viewData["businessCenters"] = businessCenters;                      
                            return _projectsService.findAllForType(ProjectType.ENTERTAINMENT_CENTER);
                           })
                           .chain((entertainmentCenters) {
                            viewData["entertainmentCenters"] = entertainmentCenters;
                            return _projectsService.findAllForType(ProjectType.DOMESTIC);
                           }).transform((domestic) {
                            viewData["domestic"] = domestic;
                            var view = new _projects_index_edt();
                            view.render(viewData, rsp.outputStream);
                            return data;                      
                           });
  }
  
  Future show(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    return _projectsService.findById(data["id"]).transform(onSuccess(project) {
      Map viewData = {
        "image": "/img/future03.jpg",
        "menu": "projects",
        "project": project
      };
      var view = new _projects_show_edt();
      view.render(viewData, rsp.outputStream);
      return data;
    });
  }

}
