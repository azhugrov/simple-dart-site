#library("hypcomm:site");
#import("../crimson/core/CrimsonLib.dart");
#import("../crimson/handlers/HandlersLib.dart");
#import("dart:json");
#import("dart:io");

/** Main application class */
class Application {
  /** Main method start a given application */
  void run() {
    CrimsonHttpServer server = new CrimsonHttpServer();
    CrimsonModule module = new CrimsonModule(server);
    module.handlers
          .addEndpoint(new StaticFile("./client"));
    server.modules["*"] = module;
    server.listen("127.0.0.1", 80);
  }  
}

void main() {
  print("start the application");
  new Application().run();
}