class LogInModel {
  final String email, password;
  LogInModel({required this.email, required this.password});
  String toJson() {
    return {'email': email, 'password': password}.toString();
  }
}

class LogInModel1 {
  final String email1, password1;
  LogInModel1({required this.email1,required this.password1});
  Map<String, String> toJson(){
return {'Email': email1,'Password': password1};
  }
}
