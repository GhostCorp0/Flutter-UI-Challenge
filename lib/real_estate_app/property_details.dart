import 'package:flutter/material.dart';

class PropertyDetails extends StatelessWidget {
  final String image;

  const PropertyDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 430,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(image, fit: BoxFit.cover),
                  Positioned(
                    bottom: 23,
                    left: 16,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withAlpha(127),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 16, color: Colors.amber),
                              SizedBox(width: 4),
                              Text(
                                "4.9",
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 4),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.withAlpha(127),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 16, color: Colors.amber),
                              SizedBox(width: 4),
                              Text(
                                "4.9",
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              style: IconButton.styleFrom(backgroundColor: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ios_share),
                style: IconButton.styleFrom(backgroundColor: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outlined, color: theme.primaryColor),
                style: IconButton.styleFrom(backgroundColor: Colors.white),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jumeriah Village \nTriangle Dubai",
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.bookmark, color: Colors.grey[400]),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                      SizedBox(width: 4),
                      Text("Jumeirah Village Triangle Dubai"),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Property Description",
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Introducing a charming 3-bedroom , 2-bathroom single-family home nestled in a peaceful suburban neighbourhood.This well-maintained residence offers an inviting open floor plan with abundant natural light throughout.",
                    style: theme.textTheme.bodyLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Show more",
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 34,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 340,
        height: 70,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.black.withAlpha(200),
          foregroundColor: Colors.white,
          shape: StadiumBorder(),
          label: Row(
            children: [
              SizedBox(width: 5),
              Text(
                '\$250,000/month',
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 12),
              Container(
                width: 130,
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.withAlpha(102),
                ),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    SizedBox(width: 10,),
                    Text("June 23 - 27"),
                  ],
                ),
              ),
              SizedBox(width: 8,),
              CircleAvatar(
                radius: 25,
                backgroundColor: theme.primaryColor,
                child: Icon(Icons.arrow_forward_rounded,color: Colors.white,), 
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
