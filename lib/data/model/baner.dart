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
        'https://startflutter.ir/api/files/${json['collectionId']}/${json['id']}/${json['thumbnail']}',
        json['categoryId'],
      );
}
