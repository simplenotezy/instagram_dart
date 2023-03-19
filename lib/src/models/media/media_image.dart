import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_image.freezed.dart';
part 'media_image.g.dart';

@freezed
class MediaImage with _$MediaImage {
  const factory MediaImage({
    String? url,
    int? width,
    int? height,
  }) = _MediaImage;

  factory MediaImage.fromJson(Map<String, dynamic> json) => _$MediaImageFromJson(json);
}
