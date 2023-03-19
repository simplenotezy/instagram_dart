// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_image.dart';

part 'media_images.freezed.dart';
part 'media_images.g.dart';

@freezed
class MediaImages with _$MediaImages {
  const factory MediaImages({
    @JsonKey(name: 'low_resolution') MediaImage? lowResolution,
    MediaImage? thumbnail,
    @JsonKey(name: 'standard_resolution') MediaImage? standardResolution,
  }) = _MediaImages;

  factory MediaImages.fromJson(Map<String, dynamic> json) => _$MediaImagesFromJson(json);
}
