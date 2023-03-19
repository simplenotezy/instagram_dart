// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'instagram_auth_exception.freezed.dart';
part 'instagram_auth_exception.g.dart';

@freezed
class InstagramAuthException with _$InstagramAuthException implements Exception {
  const factory InstagramAuthException({
    String? error,
    @JsonKey(name: 'error_reason') String? errorReason,
    @JsonKey(name: 'error_description') String? errorDescription,
  }) = _InstagramAuthException;

  factory InstagramAuthException.fromJson(Map<String, dynamic> json) => _$InstagramAuthExceptionFromJson(json);
}
