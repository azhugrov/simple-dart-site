/** An project model */
class Project {
  /** id of a given project */
  int _id;
  /** a name of given project */
  String _name;
  /** a type of project */
  String _type;
  /** a description of given project */
  String _description;
  /** images that represent a given project */
  List<String> _imgs;
  
  Project(this._id, this._name, this._type, this._description, this._imgs);
  
  int get id() => _id;
  
  String get name() => _name;
  
  String get type() => _type;
  
  String get description() => _description;
  
  List<String> get imgs() => _imgs;  
  
}

class ProjectType {
  
  static final String BUSINESS_CENTER = "BusinessCenter";
  
  static final String ENTERTAINMENT_CENTER = "EntertainmentCenter";
  
  static final String DOMESTIC = "Domestic";
  
}