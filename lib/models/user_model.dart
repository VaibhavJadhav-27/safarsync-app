class UserModel {
  final String uid;
  final String email;
  final String phone;
  final String name;
  final String profilePic;
  final String bio;
  final String? fcmToken;

  UserModel({
    required this.uid,
    required this.email,
    required this.phone,
    required this.name,
    required this.profilePic,
    required this.bio,
    this.fcmToken,
  });

  Map<String, dynamic> toMap() => {
    'uid': uid,
    'email': email,
    'phone': phone,
    'name': name,
    'profilePic': profilePic,
    'bio': bio,
    'fcmToken': fcmToken,
    'createdAt': DateTime.now().toIso8601String(),
  };
}
