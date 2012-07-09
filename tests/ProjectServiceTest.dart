#library("hypcomm:ProjectsServiceTest");
#import("../packages/mongo-dart/lib/mongo.dart");
#import("../ServerLib.dart");
#import("../../../dart/dart-sdk/lib/unittest/unittest.dart");

void testFindByType(int length, String type) {
  Db mongoDb = new Db("hypcomm-data");
  var testFuture = mongoDb.open().chain((isOpened) {
     ProjectsService service = new ProjectsService(mongoDb);
     return service.findAllForType(type);
  });
  testFuture.handleException(expectAsync1((e) => expect(false, 'error happened'), count: 0));
  testFuture.then(expectAsync1((List<Project> projects) {
     expect(projects, hasLength(length));            
  }));
}

void main() {
   group("test find by type", () {
     test("Business Center", () {
       testFindByType(6, ProjectType.BUSINESS_CENTER);   
     });
     test("Entertainment Center", () {
       testFindByType(4, ProjectType.ENTERTAINMENT_CENTER);
     });
     test("Domestic", () {
       testFindByType(5, ProjectType.DOMESTIC);       
     });
   });
}