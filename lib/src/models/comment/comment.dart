import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/user/user.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    String? id,
    String? text,
    User? from,
    DateTime? createdTime,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}
