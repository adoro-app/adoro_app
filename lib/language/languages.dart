import 'package:flutter/material.dart';

abstract class BaseLanguage {
  static BaseLanguage? of(BuildContext context) => Localizations.of<BaseLanguage>(context, BaseLanguage);

  String get groupUpdatedSuccessfully;

  String get canNotViewThisGroup;

  String get viewGroup;

  String get notePleaseAddComma;

  String get registeredSuccessfully;

  String get requestVerification;

  String get verificationRequestRejectedText;

  String get yourAccountIsVerifiedNow;

  String get signinWithApple;

  String get signinWithGoogle;

  String get request;

  String get nextToTheirNames;

  String get verifiedAccountsHaveBlue;

  String get applyForVerification;

  String get clickToRefresh;

  String get tags;

  String get notesAboutYourOrder;

  String get optional;

  String get addOrderNotes;

  String get select;

  String get groupForum;

  String get groupAsForumText;

  String get wantGroupAsForum;

  String get viewing;

  String get subscribedSuccessfully;

  String get unsubscribedSuccessfully;

  String get addedToFavourites;

  String get removedFromFavourites;

  String get subscriptions;

  String get unsubscribe;

  String get subscribe;

  String get createTopic;

  String get noForumsFound;

  String get noTopicsFound;

  String get createNewTopicIn;

  String get topicTitleText;

  String get writeAReply;

  String get pleaseEnterDescription;

  String get topicTags;

  String get notifyMeText;

  String get replyTo;

  String get removedFromWishlist;

  String get addedToWishlist;

  String get enterValidCouponCode;

  String get code;

  String get shippingAddress;

  String get billingAndShippingAddresses;

  String get copiedToClipboard;

  String get expiresOn;

  String get off;

  String get myWishlist;

  String get sortBy;

  String get selectCategory;

  String get shop;

  String get outOfStock;

  String get goToCart;

  String get relatedProducts;

  String get additionalInformation;

  String get discount;

  String get couponCode;

  String get applyCoupon;

  String get cartTotals;

  String get subTotal;

  String get total;

  String get proceedToCheckout;

  String get checkout;

  String get products;

  String get qty;

  String get billingAddress;

  String get selectPaymentMethod;

  String get paymentGatewaysNotFound;

  String get placeOrder;

  String get placeOrderText;

  String get orderDetails;

  String get orderCancelledSuccessfully;

  String get cancelOrderConfirmation;

  String get orderStatus;

  String get orderNumber;

  String get paymentMethod;

  String get date;

  String get customerReview;

  String get chooseAnOption;

  String get sku;

  String get category;

  String get reviewAddedSuccessfully;

  String get pleaseAddReview;

  String get pleaseAddRating;

  String get reviews;

  String get editReview;

  String get addAReview;

  String get rating;

  String get writeReview;

  String get reviewUpdatedSuccessfully;

  String get reviewDeletedSuccessfully;

  String get deleteReviewConfirmation;

  String get yourCartIsCurrentlyEmpty;

  String get returnToShop;

  String get cartUpdated;

  String get itemRemovedSuccessfully;

  String get removeFromCartConfirmation;

  String get appliedCoupons;

  String get successfullyAddedToCart;

  String get addToCart;

  String get sale;

  String get postCode;

  String get phone;

  String get state;

  String get noStatesToSelect;

  String get pleaseSelectCountry;

  String get city;

  String get address;

  String get country;

  String get company;

  String get lastName;

  String get firstName;

  String get any;

  String get pending;

  String get processing;

  String get onHold;

  String get completed;

  String get cancelled;

  String get refunded;

  String get failed;

  String get trash;

  String get coupons;

  String get editShopDetails;

  String get latest;

  String get averageRating;

  String get popularity;

  String get price;

  String get cart;

  String get wishlist;

  String get myOrders;

  String get logoutConfirmation;

  String get bySigningUpYou;

  String get addStoryText;

  String get setStoryDuration;

  String get views;

  String get addYourStory;

  String get deleteStoryConfirmation;

  String get viewedBy;

  String get visitLink;

  String get attach;

  String get link;

  String get attachLinkHere;

  String get set;

  String get updatedSuccessfully;

  String get saveChanges;

  String get userNotFound;

  String get cancel;

  String get report;

  String get blockText;

  String get block;

  String get reportPost;

  String get unblock;

  String get unblockText;

  String get blockedAccounts;

  String get reportPortText;

  String get reportAccountText;

  String get reportText;

  String get whatAreYouReportingFor;

  String get thisIsAHidden;

  String get or;

  String get addFriends;

  String get initialHomeText;

  String get manageAccount;

  String get deleteAccountConfirmation;

  String get deleteAccount;

  String get demoUserText;

  String get deleteNotificationConfirmation;

  String get appSetting;

  String get removeImage;

  String get camera;

  String get gallery;

  String get writeAComment;

  String get searchHere;

  String get addPostToYour;

  String get send;

  String get welcomeBack;

  String get youHaveBeenMissed;

  String get username;

  String get show;

  String get password;

  String get rememberMe;

  String get login;

  String get dHaveAnAccount;

  String get signUp;

  String get helloUser;

  String get createYourAccountFor;

  String get fullName;

  String get yourEmail;

  String get alreadyHaveAnAccount;

  String get signIn;

  String get forgetPassword;

  String get enterTheEmailAssociated;

  String get enterYourEmail;

  String get getMail;

  String get backToLogin;

  String get otpVerification;

  String get weHaveSentA;

  String get dReceiveTheOtp;

  String get resendOtp;

  String get verifyNow;

  String get yourPasswordResetWas;

  String get successfully;

  String get done;

  String get resetPassword;

  String get newPassword;

  String get confirmPassword;

  String get submit;

  String get enterYourNewPassword;

  String get newPost;

  String get post;

  String get whatsOnYourMind;

  String get selectFiles;

  String get addPost;

  String get pleaseSelectOnly;

  String get postIn;

  String get files;

  String get home;

  String get noPostsFound;

  String get notifications;

  String get viewAll;

  String get seenNotifications;

  String get profile;

  String get posts;

  String get following;

  String get groups;

  String get myStories;

  String get members;

  String get dismissAsAdmin;

  String get removeFromGroup;

  String get enterGroupName;

  String get thisFiledIsRequired;

  String get groupName;

  String get groupDescription;

  String get privacyOptions;

  String get thisIsAPublic;

  String get thisIsAPrivate;

  String get groupCreatedSuccessfully;

  String get pleaseEnterGroupName;

  String get chooseAvatarCoverImage;

  String get somethingWentWrong;

  String get addAvatarImage;

  String get addCoverImage;

  String get next;

  String get finish;

  String get organizer;

  String get group;

  String get invited;

  String get invite;

  String get leaveGroup;

  String get joinGroup;

  String get requested;

  String get shereIsSome;

  String get makeGroupAdmin;

  String get requests;

  String get createGroup;

  String get editGroup;

  String get doYouWantTo;

  String get coverImageRemovedSuccessfully;

  String get cRemoveCoverImage;

  String get chooseAnAction;

  String get name;

  String get description;

  String get update;

  String get profileUpdatedSuccessfully;

  String get inviteUsers;

  String get cShowGroupMembers;

  String get groupMembers;

  String get admin;

  String get administrator;

  String get noMembersFound;

  String get groupInvites;

  String get ago;

  String get reply;

  String get keymaster;

  String get voices;

  String get freshness;

  String get logout;

  String get comments;

  String get likedBy;

  String get yourStory;

  String get topics;

  String get replies;

  String get engagement;

  String get favourite;

  String get forums;

  String get sendMessage;

  String get repliedYourComment;

  String get inviteFrom;

  String get confirm;

  String get delete;

  String get sendRequestToFollow;

  String get mentionedYou;

  String get rejectedYourRequest;

  String get acceptedYourRequest;

  String get sendRequestToFollowYou;

  String get totalFriends;

  String get sort;

  String get error;

  String get noFriendshipFound;

  String get allPost;

  String get requestsSent;

  String get noFriendshipRequestSent;

  String get requestsReceived;

  String get decline;

  String get noFriendshipRequestReceived;

  String get editProfile;

  String get connections;

  String get friends;

  String get canNotViewFriends;

  String get canNotViewGroups;

  String get sent;

  String get settings;

  String get general;

  String get appTheme;

  String get systemDefault;

  String get darkMode;

  String get lightMode;

  String get rateUs;

  String get shareApp;

  String get account;

  String get passwordAndSecurity;

  String get accountInformation;

  String get activeStatus;

  String get about;

  String get privacyPolicy;

  String get termsCondition;

  String get helpSupport;

  String get day;

  String get hour;

  String get minute;

  String get second;

  String get justNow;

  String get noRecentGroupsSearched;

  String get noRecentMembersSearched;

  String get appLanguage;

  String get recent;

  String get noMembersFoundTo;

  String get profilePictureUpdatedSuccessfully;

  String get profilePictureRemovedSuccessfully;

  String get areYouSureYou;

  String get remove;

  String get areYouSureUnfriend;

  String get unfriend;

  String get member;

  String get promotedToAdmin;

  String get noDataFound;

  String get youHaveGroupInvite;

  String get canNotViewPost;

  String get likedPost;

  String get commentedPost;

  String get writeComment;

  String get postDeleted;

  String get deletePostConfirmation;

  String get deletePost;

  String get likes;

  String get unfriendConfirmation;

  String get changePassword;

  String get oldPassword;

  String get profileVisibility;

  String get addToFriend;

  String get cancelRequest;

  String get personalInfo;

  String get email;

  String get confirmPasswordError;

  String get enterValidDetails;

  String get enterValidUrl;

  String get addPostContent;

  String get leaveGroupConfirmation;
}
