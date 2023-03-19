// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'instagram_exception.freezed.dart';
part 'instagram_exception.g.dart';

@freezed
class InstagramException with _$InstagramException implements Exception {
  const factory InstagramException({
    int? code,
    @JsonKey(name: 'error_type') String? errorType,
    @JsonKey(name: 'error_message') String? errorMessage,
  }) = _InstagramException;

  factory InstagramException.fromJson(Map<String, dynamic> json) => _$InstagramExceptionFromJson(json);

  @override
  String toString() {
    return '$errorType ($code): $errorMessage';
  }
}
