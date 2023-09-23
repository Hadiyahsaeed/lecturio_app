import 'package:flutter/material.dart';
import 'theme.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(
              builder: (context) => Text(
                'Lecturio',
                style: TextStyle(
                  color: getSelectedColor(context), // Use getSelectedColor for text color
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getSelectedColor(context), // Use getSelectedColor for circle color
              ),
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    getSelectedColor(context), // Use getSelectedColor for CircularProgressIndicator color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}