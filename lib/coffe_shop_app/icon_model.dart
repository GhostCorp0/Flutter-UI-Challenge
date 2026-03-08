import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/coffe_shop_app/coffee_app_home_screen.dart';
import 'package:iconsax/iconsax.dart';

final menu = [
  {
    'icon':Iconsax.home5,
    'destination':const CoffeeAppHomeScreen()
  },
  {
    'icon':Iconsax.heart,
    'destination': Center(child:Text("Favorite"))
  },
  {
    'icon':Iconsax.shopping_bag,
    'destination':Center(child:Text("Shopping"))
  },
  {
    'icon':Iconsax.notification,
    'destination':Center(child:Text("Notification"))
  },
];
