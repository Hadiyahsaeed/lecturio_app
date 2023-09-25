// ignore_for_file: library_private_types_in_public_api

import 'theme.dart';
import 'package:provider/provider.dart'; // Import your theme.dart file
import 'theme_provider.dart'; // Import the provider
import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the Dart files for other pages
import 'study_planner_page.dart';
import 'videos_page.dart';
import 'concept_pages.dart';
import 'more_page.dart';
import 'splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await themeProvider.loadSelectedColor(); // Load selected color from SharedPreferences

  runApp(
    ChangeNotifierProvider(
      create: (context) => themeProvider, // Provide the ThemeProvider
      child: MyApp(),
    ),
  );
}


// ignore: must_be_immutable
class MyApp extends StatelessWidget {
 Color selectedColor = Colors.blue;

  MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:getSelectedColor(context), // Set your primary color
      ),
      home: const SplashScreenWidget(), // Use SplashScreenWidget as the initial route
    );
  }
}

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    // Simulate a splash screen delay (e.g., 2 seconds)
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to the main page when the delay is over
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Hide the debug banner
    return const SplashScreen(); // Display the defined splash screen
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.book,
    Icons.video_library,
    Icons.file_copy,
    Icons.more,
    Icons.colorize,
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const StudyP_Page();
      case 2:
        return const VideosPage();
      case 3:
        return ConceptP_Page();
      case 4:
        return const MorePage();
      case 5:
        return const ThemePage();
      default:
        return const HomePage(); // Default to the home page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex), // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: const Color.fromARGB(255, 117, 115, 115), // Set the selected item color to grey
        unselectedItemColor: getSelectedColor(context), // Set the unselected item color to blue
        items: _icons.map((IconData icon) {
          return BottomNavigationBarItem(
            icon: Icon(
              icon,
            ),
            label: '',
          );
        }).toList(),
      ),
    );
  }
}
