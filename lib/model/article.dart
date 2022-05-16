class Article{
  final int id;
  final int userId;
  final String title;
  final String body;

  Article({ required this.id,required this.title,required this.userId,required this.body});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        id: json['id'],
        title: json['title'],
        userId: json['userId'],
        body: json['body']
    );
  }
}