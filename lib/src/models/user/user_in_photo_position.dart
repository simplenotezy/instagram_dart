import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_in_photo_position.freezed.dart';
part 'user_in_photo_position.g.dart';

@freezed
class UserInPhotoPosition with _$UserInPhotoPosition {
  const factory UserInPhotoPosition({
    num? x,
    num? y,
  }) = _UserInPhotoPosition;

  factory UserInPhotoPosition.fromJson(Map<String, dynamic> json) => _$UserInPhotoPositionFromJson(json);
}
