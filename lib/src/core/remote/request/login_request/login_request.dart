import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

//Send email, password to api
@JsonSerializable()
class LoginRequest {
  LoginRequest({
    this.email,
    this.password,
  });

  @JsonKey(name: 'email')
  final String? email;

  @JsonKey(name: 'password')
  final String? password;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
