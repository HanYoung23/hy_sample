class AuthModel {
  final String id;
  final String name;

  AuthModel({required this.id, required this.name});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      id: json['id'] ?? "TEST ID",
      name: json['name'] ?? "TEST NAME",
    );
  }
}
