/// The various actions that can be performed on a relationship on Instagram.
abstract class RelationshipAction {
  /// Follow a user.
  static const String follow = 'follow';

  /// Unfollow a user.
  static const String unfollow = 'unfollow';

  /// Approve a follow request.
  static const String approve = 'approve';

  /// Ignore a follow request.
  static const String ignore = 'ignore';
}
