/** Main application class */
class Application {
  /** Main method start a given application */
  void run() {
    CrimsonHttpServer server = new CrimsonHttpServer();
    CrimsonModule module = new CrimsonModule(server);
    module.handlers
          .addEndpoint(new Route("/", "GET", (req, res, data) {
              return new HomeController().index(req, res, data);
          }))
          .addEndpoint(new ControllerRoute("/aboutus", new AboutusController()))
          .addEndpoint(new ControllerRoute("/projects", new ProjectsController()))
          .addEndpoint(new ControllerRoute("/design", new DesignController()))
          .addEndpoint(new ControllerRoute("/engineering", new EngineeringController()))
          .addEndpoint(new ControllerRoute("/contacts", new ContactsController()))
          .addEndpoint(new StaticFile("./static"));
    server.modules["*"] = module;
    server.listen("127.0.0.1", 8080);
  }  
}

void main() {
  LoggerFactory.builder = (name) => new LoggerImpl(name, debugEnabled: false);
  print("start the application");
  new Application().run();
}