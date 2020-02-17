import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';
import './screens/add_place_screen.dart';
import './screens/place_detail_screen.dart';

void main() => runApp(Spot());

class Spot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: GreatPlaces(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Great Places',
            theme: ThemeData(
              primarySwatch: Colors.pink,
              accentColor: Colors.amber,
            ),
            home: PlacesListScreen(),
            routes: {
              AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
              PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
            }));
  }
}
