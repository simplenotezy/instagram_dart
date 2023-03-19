import 'dart:async';

import 'package:instagram/src/models/media/media.dart';
import 'package:instagram/src/models/tag.dart';

/// An abstraction to extract tag information from Instagram.
abstract class InstagramTagsApi {
  /// Get information about a tag object.
  Future<Tag> getByName(String tagName);

  /// Get a list of recently tagged media.
  Future<List<Media>> getRecentMedia(String tagName, {String maxTagId, String minTagId, int count});

  /// Search for tags by name.
  Future<List<Tag>> search(String query);
}
