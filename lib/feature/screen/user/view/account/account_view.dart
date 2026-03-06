import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  Widget menuItem(IconData icon, String title) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 6),
      leading: Icon(
        icon,
        color: const Color(0xff2D9CDB),
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Profile Section
              Row(
                children: const [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage:
                    NetworkImage("https://i.pravatar.cc/150?img=47"),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Sabrina Carpenter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// Menu Items
              menuItem(Icons.person_outline, "Account"),
              menuItem(Icons.shopping_bag_outlined, "My order"),
              menuItem(Icons.description_outlined, "Monthly consumption"),
              menuItem(Icons.card_giftcard_outlined, "Loyalty balance"),
              menuItem(Icons.settings_outlined, "Settings"),
              menuItem(Icons.logout, "Logout"),

              const Spacer(),
            ],
          ),
        ),
      ),

      /// Bottom Navigation Bar
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff2D9CDB),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            BottomItem(icon: Icons.home, label: "Home"),
            BottomItem(icon: Icons.shopping_bag_outlined, label: "Cart"),
            BottomItem(icon: Icons.bar_chart, label: "Order"),
            BottomItem(icon: Icons.person_outline, label: "Account"),
          ],
        ),
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const BottomItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}