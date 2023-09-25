import 'theme.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class ConceptP_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Concept Page'),
        backgroundColor: getSelectedColor(context),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Master medical concepts or reinforce challenging topics efficiently with learning-science based concept pages created and peer reviewed by US-trained physicians',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            // Add additional content related to Concept Pages here
          ],
        ),
      ),
    );
  }
}