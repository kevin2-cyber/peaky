import 'package:flutter/material.dart';

import '../model/place.dart';

class AppConstants {
  // icons
  static const location = 'assets/icons/location.png';
  static const notification = 'assets/icons/notification.png';
  static const filter = 'assets/icons/filter.png';
  static const heart = 'assets/icons/heart.png';
  static const home = 'assets/icons/home.png';
  static const search = 'assets/icons/search.png';
  static const user = 'assets/icons/user.png';
  static const back = 'assets/icons/back.png';
  static const google = 'assets/icons/google.png';
  static const favourite = 'assets/icons/heart_filled.png';
  static const disableNotification = 'assets/icons/disable-alarm.png';

  // images
  static const amar = 'assets/images/amar.jpg';
  static const chan = 'assets/images/chan.jpg';
  static const efrain = 'assets/images/efrain.jpg';
  static const pexels = 'assets/images/pexels.jpg';
  static const pixabay = 'assets/images/pixabay.jpg';
  static const recal = 'assets/images/recal.jpg';

  // app name
  static const appName = 'Shylhet';

  // colors
  static const kColorPrimary = Color(0xFFe0e5eb);
  static const kColorOnPrimary = Color(0xFF9CACBC);
  static const kColorPrimaryContainer = Color(0xFF634172);
  
  // dummy data
  static final kDummyData = <Place>[
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', amar, 'Lorem Ipsum', 4.5, 120.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', chan, 'Lorem Ipsum', 4.6, 540.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', efrain, 'Lorem Ipsum', 3.5, 250.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', pexels, 'Lorem Ipsum', 4.0, 350.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', pixabay, 'Lorem Ipsum', 4.7, 3600.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', recal, 'Lorem Ipsum', 4.9, 320.0),
    Place('Dusai Resort & Spa', 'Sreemangal, $appName, Bangladesh', amar, 'Lorem Ipsum', 2.5, 120.0),
  ];
}