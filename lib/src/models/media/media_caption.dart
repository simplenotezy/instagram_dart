// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/user/user.dart';

part 'media_caption.freezed.dart';
part 'media_caption.g.dart';

@freezed
class MediaCaption with _$MediaCaption {
  const factory MediaCaption({
    String? id,
    String? text,
    User? from,
    @JsonKey(name: 'created_time') DateTime? createdTime,
  }) = _MediaCaption;

  factory MediaCaption.fromJson(Map<String, dynamic> json) => _$MediaCaptionFromJson(json);
}
