/** Main application class */
class Application {
  /** Main method start a given application */
  void run() {
    CrimsonHttpServer server = new CrimsonHttpServer();
    CrimsonModule module = new CrimsonModule(server);
    module.handlers
          .addEndpoint(new ControllerRoute("/home", new HomeController()) )
          .addEndpoint(new StaticFile("./static"));
    server.modules["*"] = module;
    server.listen("127.0.0.1", 80);
  }  
}

void main() {
  LoggerFactory.builder = (name) => new LoggerImpl(name, debugEnabled:false);
  print("start the application");
  new Application().run();
}