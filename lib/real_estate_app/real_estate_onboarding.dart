import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/flutter_car_app/home_screen.dart';
import 'package:flutter_ui_challenge/real_estate_app/real_estate_home.dart';

class RealEstateOnboarding extends StatelessWidget {
  const RealEstateOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: theme.primaryColor,
                        child: Icon(Icons.home, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "RealHome",
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/images/onboard.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover Your\nDream Home",
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Find the perfect property with ease. Explore, compare and connect with trusted agents all in one app",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RealEstateHome(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "Get Started",
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
