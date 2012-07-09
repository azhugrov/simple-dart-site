/** Contains common methods for working with projects */
interface ProjectsService default _ProjectsServiceImpl {
   
  ProjectsService(Db mongoDb);
  /** Finds a project by its id */
  Future<Project> findById(int id);
  /** Find all projects that have a certain type */
  Future<List<Project>> findAllForType(String type);
   
}

/** A standart implementation */
class _ProjectsServiceImpl implements ProjectsService {
  /** An opened connection to a mongodb */
  Db _mongoDb;
  
  _ProjectsServiceImpl(this._mongoDb);
  
  Future<Project> findById(int id) {
    return _mongoDb.collection("projects")
                   .findOne(selector: {"id": id})
                   .transform((Map projectData) {
                     return new Project(projectData["id"], 
                                        projectData["name"],
                                        projectData["type"],
                                        projectData["description"], 
                                        projectData["imgs"]);                    
                   });
  }
  
  Future<List<Project>> findAllForType(String type) {
    var projects = <Project>[];
    var completer = new Completer();
    var transformFuture = _mongoDb.collection("projects")
            .find(selector: {"type": type}).each(onData(Map projectData) {
                 projects.add(new Project(projectData["id"], 
                                          projectData["name"], 
                                          projectData["type"],
                                          projectData["description"], 
                                          projectData["imgs"]));                
            });
    transformFuture.then((status) {
      completer.complete(projects);              
    });
    transformFuture.handleException((e) => completer.completeException(e));
    return completer.future;    
  }
  
}