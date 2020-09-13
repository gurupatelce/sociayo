import 'dart:convert';

class LanguageModel {
  String englishName;
  String nativeNamel;
  LanguageModel({
    this.englishName,
    this.nativeNamel,
  });

  LanguageModel copyWith({
    String englishName,
    String nativeNamel,
  }) {
    return LanguageModel(
      englishName: englishName ?? this.englishName,
      nativeNamel: nativeNamel ?? this.nativeNamel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'englishName': englishName,
      'nativeNamel': nativeNamel,
    };
  }

  factory LanguageModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return LanguageModel(
      englishName: map['englishName'],
      nativeNamel: map['nativeNamel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LanguageModel.fromJson(String source) =>
      LanguageModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'LanguageModel(englishName: $englishName, nativeNamel: $nativeNamel)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is LanguageModel &&
        o.englishName == englishName &&
        o.nativeNamel == nativeNamel;
  }

  @override
  int get hashCode => englishName.hashCode ^ nativeNamel.hashCode;
}
