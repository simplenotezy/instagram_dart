import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/user/user.dart';

import 'user_in_photo_position.dart';

part 'user_in_photo.freezed.dart';
part 'user_in_photo.g.dart';

@freezed
class UserInPhoto with _$UserInPhoto {
  const factory UserInPhoto({
    User? user,
    UserInPhotoPosition? position,
  }) = _UserInPhoto;

  factory UserInPhoto.fromJson(Map<String, dynamic> json) => _$UserInPhotoFromJson(json);
}
