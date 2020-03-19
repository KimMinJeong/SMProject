
class KeyStore {
  static const String key = 'AIzaSyBAR7-UOC1yQZ6d5Al7JwZSG6wj3WvuxeE'; // **ENTER YOUTUBE API KEY**
}

const String BASE_IMAGE = 'https://image.tmdb.org/t/p/w342/';
const String API_VERSION = '/3';
const String AUTH_NEW_TOKEN = '$API_VERSION/authentication/token/new';
const String TVSHOW_SEARCH = '$API_VERSION/search/tv';
const String TVSHOW_DETAILS = '$API_VERSION/tv/';
const String TVSHOW_DETAILS_SEASON = '/season/';

class Images {
  static const String EMPTY_IMAGE = 'assets/img/no_image.png';
  static const String LOADING = 'assets/img/loading.flr';
  static const String PLACE_HOLDER = 'https://via.placeholder.com/288x256?text=no+image';
}

class Settings {
  const Settings({this.title});
  final String title;
}
const List<Settings> settings = const <Settings>[
  const Settings(title: 'Language change'),
  const Settings(title: 'Voting'),
  const Settings(title: 'Vote result'),
  const Settings(title: 'Notification'),
];
