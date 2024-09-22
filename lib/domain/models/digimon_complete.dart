class DigimonComplete {
  final int id;
  final String name;
  final bool xAntibody;
  final List<ImageModel> images;
  final List<LevelModel> levels;
  final List<TypeModel> types;
  final List<AttributeModel> attributes;
  final List<FieldModel> fields;
  final String releaseDate;
  final List<DescriptionModel> descriptions;
  final List<SkillModel> skills;
  final List<EvolutionModel> priorEvolutions;
  final List<EvolutionModel> nextEvolutions;
  DigimonComplete({
    required this.id,
    required this.name,
    required this.xAntibody,
    required this.images,
    required this.levels,
    required this.types,
    required this.attributes,
    required this.fields,
    required this.releaseDate,
    required this.descriptions,
    required this.skills,
    required this.priorEvolutions,
    required this.nextEvolutions,
  });

  DigimonComplete copyWith({
    int? id,
    String? name,
    bool? xAntibody,
    List<ImageModel>? images,
    List<LevelModel>? levels,
    List<TypeModel>? types,
    List<AttributeModel>? attributes,
    List<FieldModel>? fields,
    String? releaseDate,
    List<DescriptionModel>? descriptions,
    List<SkillModel>? skills,
    List<EvolutionModel>? priorEvolutions,
    List<EvolutionModel>? nextEvolutions,
  }) {
    return DigimonComplete(
      id: id ?? this.id,
      name: name ?? this.name,
      xAntibody: xAntibody ?? this.xAntibody,
      images: images ?? this.images,
      levels: levels ?? this.levels,
      types: types ?? this.types,
      attributes: attributes ?? this.attributes,
      fields: fields ?? this.fields,
      releaseDate: releaseDate ?? this.releaseDate,
      descriptions: descriptions ?? this.descriptions,
      skills: skills ?? this.skills,
      priorEvolutions: priorEvolutions ?? this.priorEvolutions,
      nextEvolutions: nextEvolutions ?? this.nextEvolutions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'xAntibody': xAntibody,
      'images': images.map((x) => x.toMap()).toList(),
      'levels': levels.map((x) => x.toMap()).toList(),
      'types': types.map((x) => x.toMap()).toList(),
      'attributes': attributes.map((x) => x.toMap()).toList(),
      'fields': fields.map((x) => x.toMap()).toList(),
      'releaseDate': releaseDate,
      'descriptions': descriptions.map((x) => x.toMap()).toList(),
      'skills': skills.map((x) => x.toMap()).toList(),
      'priorEvolutions': priorEvolutions.map((x) => x.toMap()).toList(),
      'nextEvolutions': nextEvolutions.map((x) => x.toMap()).toList(),
    };
  }

  factory DigimonComplete.fromMap(Map<String, dynamic> map) {
    return DigimonComplete(
      id: map['id'] as int,
      name: map['name'] as String,
      xAntibody: map['xAntibody'] as bool,
      images: List<ImageModel>.from(
        (map['images'] as List<dynamic>).map<ImageModel>(
          (x) => ImageModel.fromMap(x),
        ),
      ),
      levels: List<LevelModel>.from(
        (map['levels'] as List<dynamic>).map<LevelModel>(
          (x) => LevelModel.fromMap(x),
        ),
      ),
      types: List<TypeModel>.from(
        (map['types'] as List<dynamic>).map<TypeModel>(
          (x) => TypeModel.fromMap(x),
        ),
      ),
      attributes: List<AttributeModel>.from(
        (map['attributes'] as List<dynamic>).map<AttributeModel>(
          (x) => AttributeModel.fromMap(x),
        ),
      ),
      fields: List<FieldModel>.from(
        (map['fields'] as List<dynamic>).map<FieldModel>(
          (x) => FieldModel.fromMap(x),
        ),
      ),
      releaseDate: map['releaseDate'] as String,
      descriptions: List<DescriptionModel>.from(
        (map['descriptions'] as List<dynamic>).map<DescriptionModel>(
          (x) => DescriptionModel.fromMap(x),
        ),
      ),
      skills: List<SkillModel>.from(
        (map['skills'] as List<dynamic>).map<SkillModel>(
          (x) => SkillModel.fromMap(x),
        ),
      ),
      priorEvolutions: List<EvolutionModel>.from(
        (map['priorEvolutions'] as List<dynamic>).map<EvolutionModel>(
          (x) => EvolutionModel.fromMap(x),
        ),
      ),
      nextEvolutions: List<EvolutionModel>.from(
        (map['nextEvolutions'] as List<dynamic>).map<EvolutionModel>(
          (x) => EvolutionModel.fromMap(x),
        ),
      ),
    );
  }
}

class ImageModel {
  final String href;
  final bool transparent;
  ImageModel({
    required this.href,
    required this.transparent,
  });

  ImageModel copyWith({
    String? href,
    bool? transparent,
  }) {
    return ImageModel(
      href: href ?? this.href,
      transparent: transparent ?? this.transparent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
      'transparent': transparent,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      href: map['href'] as String,
      transparent: map['transparent'] as bool,
    );
  }
}

class LevelModel {
  final int id;
  final String level;
  LevelModel({
    required this.id,
    required this.level,
  });

  LevelModel copyWith({
    int? id,
    String? level,
  }) {
    return LevelModel(
      id: id ?? this.id,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'level': level,
    };
  }

  factory LevelModel.fromMap(Map<String, dynamic> map) {
    return LevelModel(
      id: map['id'] as int,
      level: map['level'] as String,
    );
  }
}

class TypeModel {
  final int id;
  final String type;
  TypeModel({
    required this.id,
    required this.type,
  });

  TypeModel copyWith({
    int? id,
    String? type,
  }) {
    return TypeModel(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory TypeModel.fromMap(Map<String, dynamic> map) {
    return TypeModel(
      id: map['id'] as int,
      type: map['type'] as String,
    );
  }
}

class AttributeModel {
  final int id;
  final String attribute;
  AttributeModel({
    required this.id,
    required this.attribute,
  });

  AttributeModel copyWith({
    int? id,
    String? attribute,
  }) {
    return AttributeModel(
      id: id ?? this.id,
      attribute: attribute ?? this.attribute,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'attribute': attribute,
    };
  }

  factory AttributeModel.fromMap(Map<String, dynamic> map) {
    return AttributeModel(
      id: map['id'] as int,
      attribute: map['attribute'] as String,
    );
  }
}

class FieldModel {
  final int id;
  final String field;
  final String image;
  FieldModel({
    required this.id,
    required this.field,
    required this.image,
  });

  FieldModel copyWith({
    int? id,
    String? field,
    String? image,
  }) {
    return FieldModel(
      id: id ?? this.id,
      field: field ?? this.field,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'field': field,
      'image': image,
    };
  }

  factory FieldModel.fromMap(Map<String, dynamic> map) {
    return FieldModel(
      id: map['id'] as int,
      field: map['field'] as String,
      image: map['image'] as String,
    );
  }
}

class DescriptionModel {
  final String origin;
  final String language;
  final String description;
  DescriptionModel({
    required this.origin,
    required this.language,
    required this.description,
  });

  DescriptionModel copyWith({
    String? origin,
    String? language,
    String? description,
  }) {
    return DescriptionModel(
      origin: origin ?? this.origin,
      language: language ?? this.language,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': origin,
      'language': language,
      'description': description,
    };
  }

  factory DescriptionModel.fromMap(Map<String, dynamic> map) {
    return DescriptionModel(
      origin: map['origin'] as String,
      language: map['language'] as String,
      description: map['description'] as String,
    );
  }
}

class SkillModel {
  final int id;
  final String skill;
  final String translation;
  final String description;
  SkillModel({
    required this.id,
    required this.skill,
    required this.translation,
    required this.description,
  });

  SkillModel copyWith({
    int? id,
    String? skill,
    String? translation,
    String? description,
  }) {
    return SkillModel(
      id: id ?? this.id,
      skill: skill ?? this.skill,
      translation: translation ?? this.translation,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'skill': skill,
      'translation': translation,
      'description': description,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      id: map['id'] as int,
      skill: map['skill'] as String,
      translation: map['translation'] as String,
      description: map['description'] as String,
    );
  }
}

class EvolutionModel {
  final int id;
  final String digimon;
  final String condition;
  final String image;
  final String url;
  EvolutionModel({
    required this.id,
    required this.digimon,
    required this.condition,
    required this.image,
    required this.url,
  });

  EvolutionModel copyWith({
    int? id,
    String? digimon,
    String? condition,
    String? image,
    String? url,
  }) {
    return EvolutionModel(
      id: id ?? this.id,
      digimon: digimon ?? this.digimon,
      condition: condition ?? this.condition,
      image: image ?? this.image,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'digimon': digimon,
      'condition': condition,
      'image': image,
      'url': url,
    };
  }

  factory EvolutionModel.fromMap(Map<String, dynamic> map) {
    return EvolutionModel(
      id: map['id'] as int,
      digimon: map['digimon'] as String,
      condition: map['condition'] as String,
      image: map['image'] as String,
      url: map['url'] as String,
    );
  }
}
