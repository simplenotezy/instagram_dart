// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'instagram_response_pagination.freezed.dart';
part 'instagram_response_pagination.g.dart';

@freezed
class InstagramResponsePagination with _$InstagramResponsePagination {
  const factory InstagramResponsePagination({
    @JsonKey(name: 'next_url') String? nextUrl,
    @JsonKey(name: 'next_max_id') String? nextMaxId,
  }) = _InstagramResponsePagination;

  factory InstagramResponsePagination.fromJson(Map<String, dynamic> json) => _$InstagramResponsePaginationFromJson(json);
}
