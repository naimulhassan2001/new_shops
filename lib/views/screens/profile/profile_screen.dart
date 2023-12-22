

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFF54A630),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16)
                    )
                ),
              ),
            ),
            Positioned(
                top: 138,
                height: 124,
                width: 124,
                child: Image.asset(
                  "assets/images/profile_pic.png",
                )
            ),
            Column(
              children: [
                Text("")
              ],
            )
          ],
        ),
      ),
    );
  }
}
