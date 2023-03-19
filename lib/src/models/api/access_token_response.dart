import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/user/user.dart';

part 'access_token_response.freezed.dart';
part 'access_token_response.g.dart';

@freezed
class AccessTokenResponse with _$AccessTokenResponse {
  const AccessTokenResponse._();

  const factory AccessTokenResponse({
    required String accessToken,
    required User user,
  }) = _AccessTokenResponse;

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) => _$AccessTokenResponseFromJson(json);
}
