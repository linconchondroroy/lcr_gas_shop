import 'package:flutter/material.dart';

class CommonNumberButton extends StatelessWidget {
  const CommonNumberButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Country Code Box
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            "+1242",
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ),

        const SizedBox(width: 12),

        /// Phone Field
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Phone",
                prefixIcon: Icon(Icons.phone, color: Colors.blue),
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(vertical: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}