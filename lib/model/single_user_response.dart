import 'package:dio_with_api/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
part 'single_user_response.g.dart';
@JsonSerializable()
class SingleUserResponse{
  SingleUserResponse();
  
  @JsonKey(name:"data")
  User ?user;
  factory SingleUserResponse.fromJson(Map<String, dynamic> json) => _$SingleUserResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SingleUserResponseToJson(this);

}