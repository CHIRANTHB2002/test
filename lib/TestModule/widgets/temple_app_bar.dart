// lib/widgets/temple_app_bar.dart
import 'package:flutter/material.dart';

class TempleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  TempleAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Noto Sans',  // Use Noto Serif font
          fontWeight: FontWeight.w500,  // Match font weight from design
          fontSize: 20.0,  // Match font size (20px is approximately 20.0sp in Flutter)
          fontStyle: FontStyle.italic,  // Italic style as per design
          color: Colors.black,  // Use black color for title text
        ),
      ),
      centerTitle: true,  // Center title as per design
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            // Add your favorite button action here
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120.0),  // Adjust height to match layout
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),  // Reduced bottom padding to decrease gap
          child: Container(
            height: 110.0,  // Adjusted height for categories row
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCategoryItem('Latest', 'assets/images/latest.png'),
                _buildCategoryItem('Aartis', 'assets/images/aarthi.png'),
                _buildCategoryItem('Deity', 'assets/images/deity.png'),
                _buildCategoryItem('Prasada', 'assets/images/prasada.png'),
                _buildCategoryItem('Temple', 'assets/images/temple.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String label, String imagePath) {
    return Column(
      mainAxisSize: MainAxisSize.min,  // Use MainAxisSize.min to prevent overflow
      children: [
        CircleAvatar(
          radius: 35.0,  // Adjust size as per your design
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 4.0),  // Reduced spacing between avatar and text
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,  // Match font size from design
            fontWeight: FontWeight.w400,  // Font weight
            fontFamily: 'Noto Sans',  // Ensure this font is added in pubspec.yaml
            color: Colors.black.withOpacity(0.6),  // Match color opacity from design
          ),
          textAlign: TextAlign.center,  // Align text to the center
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 120.0);  // Adjust based on your design
}
