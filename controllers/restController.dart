/** A base class for controller that follows a rest convenction */
class RestController implements AppController {
    /** A pattern for matching numbers */ 
    static final RegExp intPattern = const RegExp(@"^\d+$");
    /** A pattern for edit requests */
    static final RegExp editPattern = const RegExp(@"^(\d+)/edit$");
    /** A base path of given route */
    String _path;  
    /** A stub implementation for a create action */
    Future create(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for show view */
    Future show(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for a update action */
    Future update(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for a delete action */
    Future delete(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for new form view */
    Future showNew(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for edit view */
    Future edit(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    /** A stub implementation for list items view */
    Future index(HttpRequest req, HttpResponse rsp, CrimsonData data) {}
    
    /** Low level machinery */
    Future handler(HttpRequest req, HttpResponse rsp, CrimsonData data) {
       String method = req.method;
       String url; 
       if (req.path.length == _path.length) {
         url = "";
       } else if (req.path.length > _path.length) {
         url = req.path.substring(_path.length);  
       } else {
         throw new IllegalArgumentException("should not handle a given path: ${req.path}");
       }
       if (method == "GET") {
         if (intPattern.hasMatch(url)) {
           data["id"] = Math.parseInt(url);
           return show(req, rsp, data);           
         } else if (url.startsWith("new")) {
           return show(req, rsp, data);           
         } else if (editPattern.hasMatch(url)) {
           data["id"] = Math.parseInt(editPattern.firstMatch(url).group(1)); 
           return edit(req, rsp, data);
         } else {
           return index(req, rsp, data);           
         }
       } 
       else if (method == "POST") {
         return create(req, rsp, data);       
       }
       else if (method == "PUT") {
         if (intPattern.hasMatch(url)) {
           data["id"] = Math.parseInt(url);
         } else {
           throw new IllegalArgumentException("should not handle a given path: ${req.path}");  
         }
       }
       else if (method == "DELETE") {
         if (intPattern.hasMatch(url)) {
           data["id"] = Math.parseInt(url);
         } else {
           throw new IllegalArgumentException("should not handle a given path: ${req.path}");
         }
       }
    }
    
    /** A base path for a given route */
    String set route(String path) => _path = path; 
    
    
}