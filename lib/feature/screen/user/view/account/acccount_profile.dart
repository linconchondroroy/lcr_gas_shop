import 'package:flutter/material.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});

  Widget infoBox(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      decoration: BoxDecoration(
        color: const Color(0xffEAF2F8),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xff2D9CDB)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xff2D9CDB)),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
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

              const SizedBox(height: 10),

              /// Top Bar
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40)
                ],
              ),

              const SizedBox(height: 20),

              /// Profile Image
              const CircleAvatar(
                radius: 45,
                backgroundImage:
                NetworkImage("https://i.pravatar.cc/150?img=47"),
              ),

              const SizedBox(height: 12),

              const Text(
                "Sabrina Carpenter",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "EDIT ACCOUNT",
                style: TextStyle(
                  color: Color(0xff2D9CDB),
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 30),

              /// Info Boxes
              infoBox(Icons.person, "Sabrina Carpenter"),
              infoBox(Icons.email, "sabrina@ymail.com"),
              infoBox(Icons.phone, "+44 - 000 -0042"),
              infoBox(Icons.location_on,
                  "2972 Westheimer Rd. Santa Ana, Illinois 85486"),
            ],
          ),
        ),
      ),
    );
  }
}