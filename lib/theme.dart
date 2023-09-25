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
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 16.0), // Add padding at the bottom
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      Container(
        padding: const EdgeInsets.only(top: 16.0), // Add padding at the top
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.deepPurple);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.deepPurple,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Purple'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  const Color.fromARGB(255, 187, 136, 217)
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 187, 136, 217),
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Lilac'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  const Color.fromARGB(255, 8, 17, 94),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 8, 17, 94),
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Dark Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  const Color.fromARGB(220, 245, 140, 182),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(220, 245, 140, 182),
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Baby Pink'),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 16.0), // Add padding at the top
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.blueGrey);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.blueGrey,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Blue Grey'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  Colors.amber
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Amber'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  Colors.grey,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Grey'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(
                  Colors.deepOrange,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Orange'),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 16.0), // Add padding at the top
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<ThemeProvider>().setSelectedColor(Colors.black);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.black,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text('Black'),
            ),
            
          ],
        ),
      ),
    ],
  ),
)
    );
  }
}