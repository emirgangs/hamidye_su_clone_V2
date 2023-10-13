// ignore_for_file: must_be_immutable, file_names, deprecated_member_use
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Hamidye extends Equatable {
  String? image;
  String? name;
  String? unit;
  int value;

  @JsonKey(ignore: true)
  int count = 0;

  Hamidye({
    this.image,
    this.name,
    this.unit,
    required this.value,
  });

  Hamidye copyWith({
    String? image,
    String? name,
    String? unit,
    int? value,
  }) {
    return Hamidye(
      image: image ?? this.image,
      name: name ?? this.name,
      unit: unit ?? this.unit,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'name': name,
      'unit': unit,
      'value': value,
    };
  }

  factory Hamidye.fromJson(Map<String, dynamic> json) {
    return Hamidye(
      image: json['image'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      value: json['value'] as int,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Hamidye &&
        other.image == image &&
        other.name == name &&
        other.unit == unit &&
        other.value == value;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        name.hashCode ^
        unit.hashCode ^
        value.hashCode ^
        count.hashCode;
  }

  @override
  List<Object?> get props => [image, name, unit, value];
}
