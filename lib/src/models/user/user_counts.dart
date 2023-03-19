// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_counts.freezed.dart';
part 'user_counts.g.dart';

@freezed
class UserCounts with _$UserCounts {
  const factory UserCounts({
    int? media,
    int? follows,
    @JsonKey(name: 'followed_by') int? followedBy,
  }) = _UserCounts;

  factory UserCounts.fromJson(Map<String, dynamic> json) => _$UserCountsFromJson(json);
}
