/// The various types of incoming relationship status on Instagram.
abstract class OutgoingStatus {
  /// You have no relationship to this user.
  static const String none = 'none';

  /// You follow this user.
  static const String follows = 'follows';

  /// You have requested to follow this user.
  static const String requested = 'requested';
}
