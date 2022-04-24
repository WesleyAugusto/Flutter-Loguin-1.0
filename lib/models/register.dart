class RegisterUser {
  final String userName;
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  RegisterUser({ this.userName, this.firstName, this.lastName, this.email, this.password });

  factory RegisterUser.fromJson(Map<String, dynamic> json) {
    return RegisterUser(
        userName: json['userName'] as String,
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
    );
  }
  @override
  String toString() {
    return 'Trans{userName: $userName, firstName: $firstName, lastName: $lastName, email: $email, password: $password}';
  }
}