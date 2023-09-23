import 'package:flutter/material.dart';
import 'theme.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: getSelectedColor(context),
      ),
      body: const Center(
        child: Text('SEARCH'),
      ),
    );
  }
}