import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_or_like_count.freezed.dart';
part 'comment_or_like_count.g.dart';

@freezed
class CommentOrLikeCount with _$CommentOrLikeCount {
  const factory CommentOrLikeCount({
    int? count,
  }) = _CommentOrLikeCount;

  factory CommentOrLikeCount.fromJson(Map<String, dynamic> json) => _$CommentOrLikeCountFromJson(json);
}
