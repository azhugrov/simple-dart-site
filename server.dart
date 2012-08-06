/** Main application class */
class Application {
  /** Main method start a given application */
  void run() {
    Db mongoDb = new Db("hypcomm-data");
    mongoDb.open().transform((isOpened) {
      //initialize services
      ProjectsService projectsService = new ProjectsService(mongoDb);
      //initialize a server
      CrimsonHttpServer server = new CrimsonHttpServer();
      CrimsonModule module = new CrimsonModule(server);
      module.handlers
            .addEndpoint(new Route("/", "GET", (req, res, data) {
                return new HomeController().index(req, res, data);
            }))
            .addEndpoint(new ControllerRoute("/aboutus",  new AboutusController()))
            .addEndpoint(new ControllerRoute("/projects", new ProjectsController(projectsService)))
            .addEndpoint(new Route("/design/livingroom", "GET", DesignExamplesController.livingroom))
            .addEndpoint(new Route("/design/bathroom",   "GET", DesignExamplesController.bathroom))
            .addEndpoint(new Route("/design/bedroom",    "GET", DesignExamplesController.bedroom))
            .addEndpoint(new Route("/design/kitchen",    "GET", DesignExamplesController.kitchen))
            .addEndpoint(new Route("/design/nursery",    "GET", DesignExamplesController.nursery))
            .addEndpoint(new ControllerRoute("/design",       new DesignController()))
            .addEndpoint(new ControllerRoute("/engineering",  new EngineeringController()))
            .addEndpoint(new ControllerRoute("/contacts",     new ContactsController()))
            .addEndpoint(new StaticFile("./static"));
      server.modules["*"] = module;
      server.listen("127.0.0.1", 8080);
      //server.listen("10.1.169.77", 8080);     
    });
  }  
}