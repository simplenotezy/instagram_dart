import 'dart:async';

import 'package:instagram/src/models/common/location.dart';
import 'package:instagram/src/models/media/media.dart';

/// An abstraction to extract location information from Instagram.
abstract class InstagramLocationsApi {
  /// Get information about a location.
  Future<Location> getById(String locationId);

  /// Get a list of recent media objects from a given location.
  Future<List<Media>> getRecentMedia(String locationId, {String maxId, String minId});

  /// Search for a location by geographic coordinate.
  Future<List<Location>> search({num lat, num lng, num distance, String facebookPlacesId});
}
