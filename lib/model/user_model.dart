class User {
  String username;
  String userphone;
  String password;
  String useremail;

  User({
    required this.username,
    required this.userphone,
    required this.password,
    required this.useremail,
  });

  // Method to convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'userphone': userphone,
      'password': password,
      'useremail': useremail,
    };
  }

  // Method to create a User object from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      userphone: json['userphone'],
      password: json['password'],
      useremail: json['useremail'],
    );
  }

  // Basic validation for email
  bool isValidEmail() {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(useremail);
  }

  // Basic validation for password (example: minimum 6 characters)
  bool isValidPassword() {
    return password.length >= 6;
  }
}
