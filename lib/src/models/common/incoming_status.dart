/// The various types of incoming relationship status on Instagram.
abstract class IncomingStatus {
  /// This user has no relationship to you.
  static const String none = 'none';

  /// This user follows you.
  static const String followedBy = 'followed_by';

  /// This user is requesting to follow you.
  static const String requestedBy = 'requested_by';

  /// You have blocked this user.
  static const String blockedByYou = 'blocked_by_you';
}
