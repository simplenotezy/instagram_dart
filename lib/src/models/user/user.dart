// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String username,
    @JsonKey(name: 'profile_picture') required String profilePicture,
    required String fullName,
    required String bio,
    required String website,
    // required UserCounts counts,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
