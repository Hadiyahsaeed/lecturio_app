import 'package:flutter/material.dart';
import 'theme.dart';

class   NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: getSelectedColor(context),
      ),
      body: const Center(
        child: Text('No notifications yet'),
      ),
    );
  }
}