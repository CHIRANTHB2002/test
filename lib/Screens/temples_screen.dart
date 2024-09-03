import 'package:flutter/material.dart';
import 'package:temples_screen/Screens/vijayaVitthala_temple.dart';
import '../widgets/AppBar.dart'; // Import the updated custom SliverAppBar
import '../widgets/TempleCard.dart'; // Import the TempleCard widget
import '../screens/udupi_temple.dart'; // Import the UdupiTempleScreen

class TempleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(), // Ensure this is implemented correctly
          // SliverList for the list of temple cards
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                // Dynamic TempleCard content based on index
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TempleCard(
                      imageUrl: 'assets/images/udupi_temple.png',
                      title: 'Udupi Srikrishna Temple',
                      address:
                      'Sri Krishna Temple Complex, Thenkpet, Maruthi Veethika, Udupi, Karnataka 576101',
                      onNavigate: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UdupiTempleScreen()),
                        ); // MaterialPageRoute
                      },
                    ),
                  );
                } else if (index == 1) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TempleCard(
                      imageUrl: 'assets/images/hampi_temple.png',
                      title: 'Shree Vijaya Vitthala Temple',
                      address:
                      'Shree Vijaya Vitthala Temple, Hampi, Nimbapura, Karnataka 583239',
                      onNavigate: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  vijayaVitthala_temple()),
                        ); // MaterialPageRoute
                      },
                    ),
                  );
                }
                return Container(); // Return an empty Container for now
              },
              childCount: 2, // Update this to the number of temple cards
            ),
          ),
        ],
      ),
    );
  }
}
