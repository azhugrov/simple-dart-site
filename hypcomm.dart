#library("hypcomm:launcher");
#import("packages/log4dart/Lib.dart");
#import("ServerLib.dart");

void main() {
  LoggerFactory.builder = (name) => new LoggerImpl(name, debugEnabled: false);
  print("start the application");
  new Application().run();
}