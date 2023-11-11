import 'package:flutter/material.dart';

// String uri = 'http://192.168.135.28:3000';
String uri = 'https://alfas.onrender.com';
// String uri = 'http://localhost:3000';

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xff48AF9C),
      Color(0xff48AF9C),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color(0xff48AF9C);
  static const lightgreen = Color(0xffEDF9EB);
  static const darkgreen = Color(0xffA6D2AE);

  static const ratingcolor = Color(0xffFDCC0D);
  static const addressboxcolor = Color(0xff17364B);
  static const backgroundColor = Color(0xffEDF9EB);
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = const Color(0xff2E7D67);
  static const unselectedNavBarColor = Colors.black87;

  static const List<String> carouselImages = [
    'https://images.pexels.com/photos/603030/pexels-photo-603030.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/255469/pexels-photo-255469.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1458694/pexels-photo-1458694.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/6969266/pexels-photo-6969266.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2256000/pexels-photo-2256000.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Produce',
      'image': 'assets/images/mobiles.jpeg',
    },
    {
      'title': 'Livestock',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Grains',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Value-added',
      'image': 'assets/images/books.jpeg',
    },
    {
      'title': 'Handicrafts',
      'image': 'assets/images/fashion.jpeg',
    },
  ];
}
