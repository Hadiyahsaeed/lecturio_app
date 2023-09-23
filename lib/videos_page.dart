import 'package:flutter/material.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pre-Medical/MCAT'),
      ),
      body: const Center(
        child: Text('Welcome to the Pre-Medical/MCAT Videos Page!'),
      ),
    );
  }
}