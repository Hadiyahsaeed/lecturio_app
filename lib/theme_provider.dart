import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  Color _selectedColor = Colors.blue; // Default color

  Color get selectedColor => _selectedColor;

  void setSelectedColor(Color color) {
    _selectedColor = color;
    _saveSelectedColor(); // Save the selected color when it's changed
    notifyListeners();
  }

  // Save selected color to SharedPreferences
  void _saveSelectedColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('selectedColor', _selectedColor.value);
  }

  // Load selected color from SharedPreferences
  Future<void> loadSelectedColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final colorValue = prefs.getInt('selectedColor');
    if (colorValue != null) {
      _selectedColor = Color(colorValue);
      notifyListeners();
    }
  }
}

final themeProvider = ThemeProvider();