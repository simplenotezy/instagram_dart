// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram/src/models/api/instagram_exception.dart';
import 'package:instagram/src/models/api/instagram_response_pagination.dart';

part 'instagram_response.freezed.dart';
part 'instagram_response.g.dart';

@freezed
class InstagramResponse with _$InstagramResponse {
  const InstagramResponse._();

  const factory InstagramResponse({
    InstagramException? meta,
    InstagramResponsePagination? pagination,
    @JsonKey(fromJson: dataFromJson, toJson: dataToJson) dynamic data,
  }) = _InstagramResponse;

  factory InstagramResponse.fromJson(Map<String, dynamic> json) => _$InstagramResponseFromJson(json);
}

dynamic dataFromJson(dynamic json) {
  if (json is List) {
    return json;
  } else if (json is Map) {
    return json.cast<String, dynamic>();
  } else {
    return {};
  }
}

dynamic dataToJson(dynamic data) {
  if (data is Map) {
    return Map<String, dynamic>.from(data);
  } else {
    return data;
  }
}
