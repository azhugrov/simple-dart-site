class HomeController extends RestController {
  
  /** Displays a home page. Using Mushtache template engine. */
  Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {
    Map viewData = new Map();
    viewData["header"] = {};
    TemplateFactory tf = new TemplateFactory();
    print("entering an index method");
    Future<Template> futureTemplate = tf.compile('views/home/index.template');
    futureTemplate.handleException(onException(exception){
      print('error occurred while processing!');
    });
    return futureTemplate.chain((Template template) { 
                              print("ready to render the template");
                              return template.render(viewData);                             
                         })
                         .transform((String returnedString){
                             print("template ready to go: $returnedString");
                             rsp.outputStream.writeString(returnedString);
                         });
  } 

}