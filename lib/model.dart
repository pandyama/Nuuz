class news {
  final String title;
  final String description;
  final String image;
  final String url;


  news.fromJSON(Map<String, dynamic> jsonMap) :
        image = jsonMap['urlToImage'],
        title = jsonMap['title'],
        description = jsonMap['description'],
        url = jsonMap['url'];

//  news({
//    this.description,
//    this.title
//});
//
//  factory news.fromJSON(Map<String, dynamic> jsonMap) {
//    return news(
//    title: jsonMap['title'],
//    description: jsonMap['description']
//    );
//  }
//
//
//  Map<String, dynamic> toJson() => {
//    "title": title,
//    "description": description
//  };


}