// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/comment/comment_or_like_count.dart';
import 'package:instagram/src/models/common/location.dart';
import 'package:instagram/src/models/media/media_caption.dart';
import 'package:instagram/src/models/media/media_images.dart';
import 'package:instagram/src/models/user/user.dart';
import 'package:instagram/src/models/user/user_in_photo.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const factory Media({
    String? id,
    String? type,
    String? filter,
    String? link,
    MediaCaption? caption,
    @JsonKey(name: 'users_in_photo') List<UserInPhoto>? usersInPhoto,
    @JsonKey(fromJson: _tagsFromJson, toJson: _tagsToJson) List<String>? tags,
    CommentOrLikeCount? comments,
    CommentOrLikeCount? likes,
    User? user,
    Location? location,
    MediaImages? images,
    MediaImages? videos,
    @JsonKey(name: 'user_has_liked') bool? userHasLiked,
    @JsonKey(name: 'carousel_media') List<Media>? carouselMedia,
    DateTime? createdTime,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

List<String>? _tagsFromJson(List<dynamic>? json) => json?.cast<String>();

List<dynamic>? _tagsToJson(List<String>? tags) => tags;
