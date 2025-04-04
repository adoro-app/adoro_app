import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/main.dart';

/// Radius

double commonRadius = 8.0;

String? fontFamily = GoogleFonts.plusJakartaSans().fontFamily;

/// REGION LIVESTREAM KEYS

const tokenStream = 'tokenStream';

const PER_PAGE = 10;
const DATE_FORMAT_1 = 'yyyy-MM-DD HH:mm:ss';
const DATE_FORMAT_2 = 'yyyy-MM-DDTHH:mm:ss';

const storyDuration = "3";

//WooCommerce

//region LiveStream Keys
const OnGroupRequestAccept = 'OnGroupRequestAccept';
const OnRequestAccept = 'OnRequestAccept';
const OnAddPost = 'OnAddPost';
const OnAddPostProfile = 'OnAddPostProfile';
const GetUserStories = 'GetUserStories';
const GetTopicDetail = 'GetTopicDetail';
const RefreshForumsFragment = 'RefreshForumsFragment';
const RefreshNotifications = 'RefreshNotifications';
//endregion

/// Demo Login
const DEMO_USER_EMAIL = "jerry@gmail.com";

class Constants {
  static const defaultLanguage = 'en';
}
//1ba53b6ccc

class SharePreferencesKey {
  static const TOKEN = 'TOKEN';
  static const NONCE = 'NONCE';
  static const VERIFICATION_STATUS = 'VERIFICATION_STATUS';
  static const IS_LOGGED_IN = 'IS_LOGGED_IN';

  static const REMEMBER_ME = 'REMEMBER_ME';

  static const LOGIN_EMAIL = 'LOGIN_EMAIL';
  static const LOGIN_PASSWORD = 'LOGIN_PASSWORD';
  static const LOGIN_FULL_NAME = 'LOGIN_FULL_NAME';
  static const LOGIN_DISPLAY_NAME = 'LOGIN_DISPLAY_NAME';
  static const LOGIN_USER_ID = 'LOGIN_USER_ID';
  static const LOGIN_AVATAR_URL = 'LOGIN_AVATAR_URL';
  static const APP_THEME = 'APP_THEME';
  static const IS_DARK_MODE = 'IS_DARK_MODE';
  static const LANGUAGE = "LANGUAGE";

  static const RECENT_SEARCH_MEMBERS = 'RECENT_SEARCH_MEMBERS';
  static const RECENT_SEARCH_GROUPS = 'RECENT_SEARCH_GROUPS';
  static const ONE_SIGNAL_PLAYER_ID = 'ONE_SIGNAL_PLAYER_ID';
}

const APPLE_EMAIL = 'APPLE_EMAIL';
const APPLE_GIVE_NAME = 'APPLE_GIVE_NAME';
const APPLE_FAMILY_NAME = 'APPLE_FAMILY_NAME';

class APIEndPoint {
  static const login = 'jwt-auth/v1/token';
  static const getMembers = 'buddypress/v1/members';
  static const getGroups = 'buddypress/v1/groups';
  static const coverImage = 'cover';
  static const avatarImage = 'avatar';
  static const groupInvites = 'invites';
  static const groupMembers = 'members';
  static const groupMembershipRequests = 'membership-requests';
  static const getFriends = 'buddypress/v1/friends';
  static const getNotifications = 'buddypress/v1/notifications';

  static const socialLogin = 'socialv-api/api/v1/socialv/social-login';
  static const signup = 'socialv-api/api/v1/socialv/register-user';
  static const posts = 'socialv-api/api/v1/socialv/get-post';
  static const singlePosts = 'socialv-api/api/v1/socialv/get-post-details';
  static const createPosts = 'socialv-api/api/v1/socialv/create-post';
  static const getAllPostLike = 'socialv-api/api/v1/socialv/get-all-user-who-liked-post';
  static const likePost = 'socialv-api/api/v1/socialv/like-activity';
  static const deletePost = 'socialv-api/api/v1/socialv/delete-post';
  static const deletePostComment = 'socialv-api/api/v1/socialv/delete-post-comment';
  static const savePostComment = 'socialv-api/api/v1/socialv/save-post-comment';
  static const getPostComment = 'socialv-api/api/v1/socialv/get-posts-all-comment';
  static const supportedMediaList = 'socialv-api/api/v1/socialv/get-supported-media-list';
  static const getPostInList = 'socialv-api/api/v1/socialv/get-post-in-list';
  static const getGroupList = 'socialv-api/api/v1/socialv/get-group-list';
  static const getGroupDetail = 'socialv-api/api/v1/socialv/get-group-details';
  static const getGroupMembersList = 'socialv-api/api/v1/socialv/get-group-members-list';
  static const getGroupRequests = 'socialv-api/api/v1/socialv/get-membership-request';
  static const getGroupInvites = 'socialv-api/api/v1/socialv/get-invite-user-list';
  static const getMemberDetail = 'socialv-api/api/v1/socialv/get-member-details';
  static const getFriendList = 'socialv-api/api/v1/socialv/get-member-friends-list';
  static const getFriendRequestList = 'socialv-api/api/v1/socialv/get-friendship-request-list';
  static const getFriendRequestSent = 'socialv-api/api/v1/socialv/get-friend-request-sent-list';
  static const manageInvitation = 'socialv-api/api/v1/socialv/group-manage-invitation';
  static const getDashboard = 'socialv-api/api/v1/socialv/get-dashboard';
  static const getProfileFields = 'socialv-api/api/v1/socialv/get-profile-fields';
  static const saveProfileFields = 'socialv-api/api/v1/socialv/update-profile-settings';
  static const getProfileVisibility = 'socialv-api/api/v1/socialv/get-profile-visibility-settings';
  static const saveProfileVisibility = 'socialv-api/api/v1/socialv/save-profile-visibility-settings';
  static const changePassword = 'socialv-api/api/v1/socialv/change-password';
  static const forgetPassword = 'socialv-api/api/v1/socialv/forgot-password';
  static const notifications = 'socialv-api/api/v1/socialv/get-notifications-list';
  static const setPlayerId = 'socialv-api/api/v1/socialv/manage-user-player-ids';
  static const getNotificationSettings = 'socialv-api/api/v1/socialv/get-notification-settings';
  static const saveNotificationSettings = 'socialv-api/api/v1/socialv/save-notification-settings';
  static const deleteAccount = 'socialv-api/api/v1/socialv/delete-account';
  static const addStory = 'socialv-api/api/v1/socialv/add-story';
  static const getUserStories = 'socialv-api/api/v1/socialv/get-stories';
  static const viewStory = 'socialv-api/api/v1/socialv/view-story';
  static const getStoryViews = 'socialv-api/api/v1/socialv/get-story-views';
  static const deleteStory = 'socialv-api/api/v1/socialv/delete-story';
  static const blockMemberAccount = 'socialv-api/api/v1/socialv/block-member-account';
  static const reportPost = 'socialv-api/api/v1/socialv/report-post';
  static const reportUserAccount = 'socialv-api/api/v1/socialv/report-user-account';
  static const reportGroup = 'socialv-api/api/v1/socialv/report-group';
  static const getBlockedMembers = 'socialv-api/api/v1/socialv/get-blocked-members';
  static const productsList = 'wc/v3/products';
  static const productReviews = 'wc/v3/products/reviews';
  static const cartItems = 'wc/store/cart/items';
  static const cart = 'wc/store/cart';
  static const applyCoupon = 'wc/store/cart/apply-coupon';
  static const removeCoupon = 'wc/store/cart/remove-coupon';
  static const coupons = 'wc/v3/coupons';
  static const addCartItems = 'wc/store/cart/add-item';
  static const removeCartItems = 'wc/store/cart/remove-item';
  static const updateCartItems = 'wc/store/cart/update-item';
  static const getPaymentMethods = 'wc/v3/payment_gateways';
  static const categories = 'wc/v3/products/categories';
  static const orders = 'wc/v3/orders';
  static const customers = 'wc/v3/customers';
  static const storeNonce = 'socialv-api/api/v1/socialv/get-store-api-nonce';
  static const wishlist = 'socialv-api/api/v1/socialv/get-wishlist-product';
  static const removeFromWishlist = 'socialv-api/api/v1/socialv/remove-from-wishlist';
  static const addToWishlist = 'socialv-api/api/v1/socialv/add-to-wishlist';
  static const productDetails = 'socialv-api/api/v1/socialv/get-product-details';
  static const countries = 'wc/v3/data/countries';
  static const forums = 'socialv-api/api/v1/socialv/get-all-forums';
  static const forumDetails = 'socialv-api/api/v1/socialv/get-forum-details';
  static const subscribeForum = 'socialv-api/api/v1/socialv/subscribe';
  static const createForumsTopic = 'socialv-api/api/v1/socialv/create-forums-topic';
  static const topicDetails = 'socialv-api/api/v1/socialv/get-topic-details';
  static const favoriteTopic = 'socialv-api/api/v1/socialv/favorite-topic';
  static const replyTopic = 'socialv-api/api/v1/socialv/reply-forums-topic';
  static const editTopicReply = 'socialv-api/api/v1/socialv/edit-topic-reply';
  static const subscriptionList = 'socialv-api/api/v1/socialv/subscription-list';
  static const forumRepliesList = 'socialv-api/api/v1/socialv/get-topic-reply-list';
  static const topicList = 'socialv-api/api/v1/socialv/get-topic-list';
  static const verificationRequest = 'socialv-api/api/v1/socialv/member-request-verification';
}

class AppImages {
  static String placeHolderImage = "assets/images/empty_image_placeholder.jpg";
  static String profileBackgroundImage = "assets/images/background_image.png";
  static String defaultAvatarUrl = "https://wordpress.iqonic.design/product/wp/socialv-app/wp-content/themes/socialv-theme/assets/images/redux/default-avatar.jpg";
}

class Users {
  static String username = 'username';
  static String password = 'password';
}

class GroupImageKeys {
  static const coverActionKey = 'bp_cover_image_upload';
  static const avatarActionKey = 'bp_avatar_upload';
}

class NotificationAction {
  static String friendshipAccepted = 'friendship_accepted';
  static String friendshipRequest = 'friendship_request';
  static String membershipRequestAccepted = 'membership_request_accepted';
  static String membershipRequestRejected = 'membership_request_rejected';
  static String newAtMention = 'new_at_mention';
  static String commentReply = 'comment_reply';
  static String newMembershipRequest = 'new_membership_request';
  static String groupInvite = 'group_invite';
  static String memberPromotedToAdmin = 'member_promoted_to_admin';
  static String updateReply = 'update_reply';
  static String actionActivityLiked = 'action_activity_liked';
  static String memberVerified = 'bp_verified_member_verified';
  static String memberUnverified = 'bp_verified_member_unverified';
  static String bbpNewReply = 'bbp_new_reply';
}

class MemberType {
  static String alphabetical = 'alphabetical';
  static String active = 'active';
  static String newest = 'newest';
  static String random = 'random';
  static String online = 'online';
  static String popular = 'popular';
}

class Friendship {
  static String following = language.unfriend.capitalizeFirstLetter();
  static String follow = language.addToFriend;
  static String requested = language.cancelRequest;

  static String currentUser = 'current_user';
  static String pending = 'pending'; // Requested
  static String notFriends = 'not_friends';
  static String awaitingResponse = 'awaiting_response'; // confirm / reject
  static String isFriend = 'is_friend';
}

class GroupStatus {
  static String public = 'public';
  static String private = 'private';
  static String hidden = 'hidden';
  static String privateGroup = 'Private Group';
}

class Component {
  static String groups = 'groups';
  static String activity = 'activity';
  static String friends = 'friends';
  static String blogs = 'blogs';
  static String members = 'members';
  static String activityLike = 'socialv_activity_like_notification';
  static String verifiedMember = 'bp_verified_member';
  static String forums = 'forums';
}

class Roles {
  static const admin = 'admin';
  static const member = 'member';
}

class MediaTypes {
  static String photo = 'photo';
  static String video = 'video';
  static String audio = 'audio';
  static String doc = 'doc';
}

class GroupActions {
  static String demote = 'demote';
  static String promote = 'promote';
}

class PostActivityType {
  static String activityUpdate = 'activity_update';
  static String mppMediaUpload = 'mpp_media_upload';
}

class GroupRequestType {
  static String all = 'all';
  static String myGroup = 'my_group';
  static String createdGroup = 'created_group';
}

class PostRequestType {
  static String all = 'all';
  static String timeline = 'timeline';
  static String group = 'groups';
  static String singleActivity = 'single-activity';
}

class FieldType {
  static String textBox = 'textbox';
  static String selectBox = 'selectbox';
  static String datebox = 'datebox';
  static String url = 'url';
  static String textarea = 'textarea';
}

class ProfileFields {
  static String birthDate = 'Birthdate';
  static String name = 'Name';
  static String socialNetworks = 'Social Networks';
}

class BlockUserKey {
  static String block = 'block';
  static String unblock = 'unblock';
}

class ProductTypes {
  static String simple = 'simple';
  static String grouped = 'grouped';
  static String variation = 'variation';
  static String variable = 'variable';
}

class StockStatus {
  static String inStock = 'instock';
}

class ProductFilters {
  static String date = 'date';
  static String price = 'price';
  static String popularity = 'popularity';
  static String rating = 'rating';
}

class OrderStatus {
  static String any = 'any';
  static String pending = 'pending';
  static String processing = 'processing';
  static String onHold = 'on-hold';
  static String completed = 'completed';
  static String cancelled = 'cancelled';
  static String refunded = 'refunded';
  static String failed = 'failed';
  static String trash = 'trash';
}

class ForumTypes {
  static String forum = 'forum';
  static String category = 'category';
}

enum FileTypes { CANCEL, CAMERA, GALLERY }

class AppThemeMode {
  static const ThemeModeSystem = 0;
  static const ThemeModeLight = 1;
  static const ThemeModeDark = 2;
}

class VerificationStatus {
  static const pending = 'pending';
  static const accepted = 'accepted';
  static const rejected = 'rejected';
}

List<List<String>> get groupTypeRule => [
      [
        'Any site member can join this group.',
        'This group will be listed in the groups directory and in search results.',
        'Group content and activity will be visible to any site member.',
      ],
      [
        'Only people who request membership and are accepted can join the group.',
        'This group will be listed in the groups directory and in search results.',
        'Group content and activity will only be visible to members of the group.',
      ],
      [
        'Only users who are invited can join the group.',
        'This group will not be listed in the groups directory or search results.',
        'Group content and activity will only be visible to members of the group.',
      ],
    ];

List<String> genderList = ["Male", "Female", "Other"];
List<String> searchOptions = ["Members", "Groups"];
