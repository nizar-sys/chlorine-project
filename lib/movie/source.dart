class Source {
  Source({
    this.id,
    this.title,
  });

  dynamic id;
  String? title;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        title: json["title"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title == null ? null : title,
      };
}
