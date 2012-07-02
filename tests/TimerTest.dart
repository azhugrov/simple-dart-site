#library("test-timer");
#import("dart:io");
#import("dart:isolate");

void main() {
  new Timer(1000, (t) => print("it works"));
}