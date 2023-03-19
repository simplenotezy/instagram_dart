// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
class Relationship with _$Relationship {
  const factory Relationship({
    @JsonKey(name: 'outgoing_status') String? outgoingStatus,
    @JsonKey(name: 'incoming_status') String? incomingStatus,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);
}
