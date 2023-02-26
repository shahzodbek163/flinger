class URLS {
  // Global
  static final String GLOBAL_HOST = "HOST";
  // Auth
  static final String AUTH_REGISTER_URL = "$GLOBAL_HOST/api/auth/register";
  static final String AUTH_LOGIN_URL = "$GLOBAL_HOST/api/auth/login";
  static final String AUTH_CHECK_USER_URL = "$GLOBAL_HOST/api/auth/checkUser";
  // Find
  static final String FIND_CONTACTS_URL = "$GLOBAL_HOST/api/find/check";
  // Posts
  static final String POST_CREATE_URL = "$GLOBAL_HOST/api/posts/create";
  static final String POST_EDIT_URL = "$GLOBAL_HOST/api/posts/edit";
  static final String POST_DELETE_URL = "$GLOBAL_HOST/api/posts/delete";
  static String POST_ONE_URL(String postId) => "$GLOBAL_HOST/api/posts/one/$postId";
  static final String POST_LIKE_URL = "$GLOBAL_HOST/api/posts/like";
  static final String POST_FULL_URL = "$GLOBAL_HOST/api/posts/full";
  static final String POST_COMMENTS_URL = "$GLOBAL_HOST/api/posts/comments";
  // Contacts
  static final String CONTACTS_GET_URL = "$GLOBAL_HOST/api/contacts/getContact";
  static final String CONTACTS_SYNC_URL = "$GLOBAL_HOST/api/contacts/sync";
  static final String CONTACTS_ALL_URL = "$GLOBAL_HOST/api/contacts/getAll";
  static final String CONTACTS_DELETE_URL = "$GLOBAL_HOST/api/contacts/delete";
  // Users
  static final String USERS_ALL_URL = "$GLOBAL_HOST/api/info/getAll";
  static final String USERS_UPDATE_URL = "$GLOBAL_HOST/api/info/update";
  static final String USERS_ME_URL = "$GLOBAL_HOST/api/info/me";
  static final String USERS_USER_URL = "$GLOBAL_HOST/api/info/user";
}