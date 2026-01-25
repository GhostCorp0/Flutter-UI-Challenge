import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({super.key});

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            icon: Icons.home_filled,
            label: "Home",
            isActive: true,
            onTap: () {},
          ),
          NavBarItem(
            icon: Icons.chat,
            label: "Chat",
            isActive: false,
            onTap: () {},
          ),
          NavBarItem(
            icon: Icons.bookmark_outline ,
            label: "Bookmark",
            isActive: false,
            onTap: () {},
          ),
          NavBarItem(
            icon: Icons.person_outline  ,
            label: "Profile",
            isActive: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: isActive
                ? Theme.of(context).primaryColor
                : Color(0xff5d5d61),
            child: Icon(icon, color: isActive ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }
}
