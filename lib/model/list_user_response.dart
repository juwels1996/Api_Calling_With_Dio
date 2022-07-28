import 'package:dio_with_api/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'list_user_response.g.dart';
@JsonSerializable()
class ListUserResponse{
  ListUserResponse();
  @JsonKey(name:"page")
  int ?page;

  @JsonKey(name:"per_page")
  int ?perpage;

  @JsonKey(name:"total")
  int ?total;

  @JsonKey(name:"total_pages")
  int ?totalpage;

  @JsonKey(name:"data")
  List<User>users=[];

  factory ListUserResponse.fromJson(Map<String, dynamic> json) => _$ListUserResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ListUserResponseToJson(this);





}