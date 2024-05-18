class Banner {
  String? id;
  String? collectionId;
  String? thumbnail;
  String? categoryId;

  Banner(
    this.id,
    this.collectionId,
    this.thumbnail,
    this.categoryId,
  );

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        json['id'],
        json['collectionId'],
        json['thumbnail'],
        json['categoryId'],
      );
}
