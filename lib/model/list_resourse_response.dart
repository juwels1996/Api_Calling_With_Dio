import 'package:dio_with_api/model/resourse.dart';
import 'package:dio_with_api/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'list_resourse_response.g.dart';
@JsonSerializable()
class ListResourseResponse{
  ListResourseResponse();
  @JsonKey(name:"page")
  int ?page;

  @JsonKey(name:"per_page")
  int ?perpage;

  @JsonKey(name:"total")
  int ?total;

  @JsonKey(name:"total_pages")
  int ?totalpage;

  @JsonKey(name:"data")
  List<Resourse>users=[];

  factory ListResourseResponse.fromJson(Map<String, dynamic> json) => _$ListResourseResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ListResourseResponseToJson(this);





}