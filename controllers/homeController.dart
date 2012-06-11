class HomeController extends RestController {
  
  /** Displays a home page. Using Mushtache template engine. */
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map data = new Map();
    data["header"] = new Object();
    data["footer"] = new Object();
    TemplateFactory tf = new TemplateFactory();
    Future<Template> futureTemplate = tf.compile('views/home/index.template');
    futureTemplate.handleException(onException(exception){
      print('error occurred while processing!');
    });
    return futureTemplate.chain((Template template) => template.render(data))
                         .transform((String returnedString){
                             rsp.outputStream.writeString(returnedString);
                         });
  } 

}