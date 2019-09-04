import 'package:flutter/widgets.dart';

class AppKeys {
  //Home Screen
  static final homeScreen = const Key('__homeScreen__');


  static final tabs = const Key('__tabs__');
  static final movieTab = const Key('__movieTab__');
  static final serieTab = const Key('__serieTab__');

  //Movies
  static final moviesList = const Key('__moviesList__');
  static final moviesLoading = const Key('__moviesLoading__');
  static final movieItem = (String id) => Key('MovieItem__$id');
}