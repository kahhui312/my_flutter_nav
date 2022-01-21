import 'package:flutter/material.dart';
import 'package:nav/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  static String id = 'exploreScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(('You are in Explore Screen')),
            TextButton(
                onPressed: () {
                  pushNewScreen(
                    context,
                    screen: const ProfileScreen(),
                    withNavBar: true, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: const Text('Go to Profile screen')),
          ],
        ),
      ),
    );
  }
}
