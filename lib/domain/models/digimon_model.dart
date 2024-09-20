class DigimonModel {
  int id;
  String name;
  String href;
  String image;
  DigimonModel({
    required this.id,
    required this.name,
    required this.href,
    required this.image,
  });

  DigimonModel copyWith({
    int? id,
    String? name,
    String? href,
    String? image,
  }) {
    return DigimonModel(
      id: id ?? this.id,
      name: name ?? this.name,
      href: href ?? this.href,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'href': href,
      'image': image,
    };
  }

  factory DigimonModel.fromMap(Map<String, dynamic> map) {
    return DigimonModel(
      id: map['id'] as int,
      name: map['name'] as String,
      href: map['href'] as String,
      image: map['image'] as String,
    );
  }
}
