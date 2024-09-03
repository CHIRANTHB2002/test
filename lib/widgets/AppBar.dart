import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250.0, // Adjusted height for expanded app bar
      backgroundColor: const Color(0xFFFFFDF5),
      floating: false,
      pinned: true, // Keeps the app bar visible when collapsed
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double appBarHeight = constraints.biggest.height;
          final bool isCollapsed = appBarHeight <= kToolbarHeight + 20;

          return FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50.0), // Space for status bar if needed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black, size: 24.0),
                        onPressed: () {
                          // Handle back button press
                        },
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black, size: 18.0),
                          SizedBox(width: 4),
                          Text(
                            'Bengaluru',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.black, size: 18.0),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF5CC),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          'guest',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'NotoSerif',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0), // Space between top row and title
                  Text(
                    'Temples',
                    style: TextStyle(
                      fontFamily: 'NotoSerif',
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 12.0), // Reduced space between title and search bar
                  // Show the search bar and filter button only when not collapsed
                  if (!isCollapsed)
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFAE5),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey, size: 24.0),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.filter_list, color: Colors.black, size: 24.0),
                              onPressed: () {
                                // Handle filter button press
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 16.0), // Space between search bar and bottom navigation
                  // Always show the bottom navigation icons

                  if (!isCollapsed)
                  Align(
                    alignment: Alignment.center, // Center the bottom navigation icons
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // Evenly distribute navigation icons
                      children: [
                        BottomNavigationIcon(
                          icon: Icons.near_me,
                          label: 'Nearby',
                        ),
                        BottomNavigationIcon(
                          icon: Icons.star,
                          label: 'Popular',
                        ),
                        BottomNavigationIcon(
                          icon: Icons.favorite_border,
                          label: 'Favorites',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0), // Additional space at the bottom
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BottomNavigationIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const BottomNavigationIcon({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.black, size: 24.0),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
}
