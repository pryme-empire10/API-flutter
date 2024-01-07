class UserImage {
  final String imageUrl;

  UserImage({
    required this.imageUrl,
  });

  factory UserImage.fromMap(Map<String, dynamic> json) {
    return UserImage(
      imageUrl: json['thumbnail'],
    );
  }
}
