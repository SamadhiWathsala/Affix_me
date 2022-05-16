class User{
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.id,
    required this.username,
    required this.website
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        id: json['id'],
        username: json['username'],
        website: json['website']
    );
  }
}