
import 'package:flutter/material.dart';
import 'package:hsahedsystem/widgets/bottom_bar.dart';

import 'features/product_detail/screens/product_details.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case BottomBar.routeName: return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=>const BottomBar());
    case ProductDetails.routeName: return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=>const ProductDetails());

    default: return MaterialPageRoute(builder: (_)=> const Material(child: Scaffold(body: Center(child: Text("Error"),),)));

  }

}