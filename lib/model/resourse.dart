import 'package:json_annotation/json_annotation.dart';
part 'resourse.g.dart';

@JsonSerializable()

class Resourse{
  final int id;
  final String name;
  final int year;
  final String color;
  final String pantone_value;
  Resourse({required this.id,required this.name,required this.year,required this.color,required this.pantone_value});


  factory Resourse.fromJson(Map<String, dynamic> json) => _$ResourseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ResourseToJson(this);
}