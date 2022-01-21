import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav/explore_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String id = 'profileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You are in Profile Screen'),
            TextButton(
                onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(
                    CupertinoPageRoute(
                      builder: (BuildContext context) {
                        return const ExploreScreen();
                      },
                    ),
                        (_) => false,
                  );
                },
                child: const Text('Pop to Explore Screen')),
          ],
        ),
      ),
    );
  }
}
