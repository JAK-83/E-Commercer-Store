class apiData {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  apiData({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory apiData.fromJson(Map<String, dynamic> json) {
    return apiData(
      id: json['id'],
      title: json['title'],
      price: (json['price'] is int) ? json['price'].toDouble() : json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate']?.toDouble(),
      count: json['count'],
    );
  }
}

void main() {
  // Example of how to use the apiData class to parse the JSON data
  List<Map<String, dynamic>> jsonData = [
    // ... (paste your JSON data here)
  ];

  List<apiData> apiDatas = jsonData.map((json) => apiData.fromJson(json)).toList();

  // Now 'apiDatas' contains a list of apiData objects
}
