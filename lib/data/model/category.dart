class Category {
  String? collectionId;
  String? id;
  String? icon;
  String? thumbnail;
  String? title;
  String? color;

  Category(
      this.collectionId,
      this.id,
      this.icon,
      this.thumbnail,
      this.title,
      this.color,
      );

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(
        json['collectionId'],
        json['id'],
        json['icon'],
        json['thumbnail'],
        json['title'],
        json['color']
      );
}