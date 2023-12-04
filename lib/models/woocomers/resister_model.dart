class CustomerModel {
  String? firsName;
  String? lastName;
  String? email;
  String? password;
  CustomerModel({
    this.firsName,
    this.lastName,
    this.email,
    this.password,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json.addAll(
      {
        'first_name': firsName,
        'last_name': lastName,
        'email': email,
        'password': password,
      },
    );
    return json;
  }
}
