class CommentModel {
  List<CommentModel>? children;
  String? content;
  String? dateRecorded;
  String? id;
  String? itemId; // post_id
  String? secondaryItemId; // parent comment id
  String? userEmail;
  String? userId;
  String? userImage;
  String? userName;
  bool? isUserVerified;

  CommentModel({
    this.children,
    this.content,
    this.dateRecorded,
    this.id,
    this.itemId,
    this.secondaryItemId,
    this.userEmail,
    this.userId,
    this.userImage,
    this.userName,
    this.isUserVerified,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      children: json['children'] != null ? (json['children'] as List).map((i) => CommentModel.fromJson(i)).toList() : null,
      content: json['content'],
      dateRecorded: json['date_recorded'],
      id: json['id'],
      itemId: json['item_id'],
      secondaryItemId: json['secondary_item_id'],
      userEmail: json['user_email'],
      userId: json['user_id'],
      userImage: json['user_image'],
      userName: json['user_name'],
      isUserVerified: json['is_user_verified'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['date_recorded'] = this.dateRecorded;
    data['id'] = this.id;
    data['item_id'] = this.itemId;
    data['secondary_item_id'] = this.secondaryItemId;
    data['user_email'] = this.userEmail;
    data['user_id'] = this.userId;
    data['user_image'] = this.userImage;
    data['user_name'] = this.userName;
    data['is_user_verified'] = this.isUserVerified;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
