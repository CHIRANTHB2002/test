import 'package:flutter/material.dart';

class TempleCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String address;
  final VoidCallback onNavigate;  // Add this parameter

  const TempleCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.address,
    required this.onNavigate,  // Initialize it in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361,
      height: 364,
      decoration: BoxDecoration(
        color: Color(0xFFFFFAE5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFFFF5CC),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  address,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: onNavigate,  // Call the navigation function when tapped
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
