import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/plants_app/plants_detail.dart';

class PlantAllDetailScreen extends StatelessWidget {
  const PlantAllDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlantsDetailScreen(
      name: "House Shape \n ClosePlant",
      image: "assets/images/flower1.png",
      price: "\$45",
    );
  }
}

class PlantAllDetailScreen2 extends StatelessWidget {
  const PlantAllDetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return PlantsDetailScreen(
      name: "Glass Water",
      image: "assets/images/flower2.png",
      price: "\$60",
    );
  }
}

