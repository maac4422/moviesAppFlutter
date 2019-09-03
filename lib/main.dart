import 'package:flutter/material.dart';
import 'package:flutter_movie/routes.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_movie/localization.dart';
import 'package:flutter_movie/models/models.dart';
import 'package:flutter_movie/reducers/app_state_reducer.dart';
import 'package:flutter_movie/theme.dart';
import 'package:flutter_movie/presentation/home_screen.dart';


void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.loading(),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: "Hola",
        theme: AppTheme.theme,
        routes: {
          AppRoutes.home: (context) {
            return HomeScreen(
              onInit: () {

              },
            );
          }
        },
      ),
    );
  }
}