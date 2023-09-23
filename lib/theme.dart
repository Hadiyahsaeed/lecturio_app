import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart'; // Import the provider

Color getSelectedColor(BuildContext context) {
  return context.watch<ThemeProvider>().selectedColor;
}

class ThemePage extends StatefulWidget {
  const ThemePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        backgroundColor: getSelectedColor(context), // Use the provider
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.blue);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.teal);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Teal'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.green);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Green'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  const Color.fromARGB(220, 0, 84, 66),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(220, 0, 84, 66),
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Dark Teal'),
            ),
          ],
        ),
      ),
    );
  }
}
