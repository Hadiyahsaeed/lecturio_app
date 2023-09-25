import 'theme.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class StudyP_Page extends StatefulWidget {
  const StudyP_Page({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StudyP_PageState createState() => _StudyP_PageState();
}

// ignore: camel_case_types
class _StudyP_PageState extends State<StudyP_Page> {
  late DateTime selectedDate; // To store the selected date

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now(); // Initialize with the current date
  }

  // ignore: unused_element
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000, 1, 1), // Set the start date to January 1, 2023
      lastDate: DateTime(2030, 12, 31), // Set the end date to December 31, 2024
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: getSelectedColor(context), // Set the primary color
            hintColor: getSelectedColor(context), // Set the accent color
            colorScheme: ColorScheme.light(
              primary: getSelectedColor(context), // Set the primary color
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              colorScheme: ColorScheme.light(
                primary: getSelectedColor(context), // Set the primary color
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Planner'),
        backgroundColor: getSelectedColor(context),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Implement the info icon's action here
            },
          ),
        ],
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(
                      builder: (context) => const Text(
                        'Study time needed per day',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Use getSelectedColor for text color
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        // Implement the info icon's action here
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Builder(
                  builder: (context) => const Text(
                    'You currently have no assignments with a due date in the future',
                    style: TextStyle(
                      color: Colors.black, // Use getSelectedColor for text color
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Builder(
                  builder: (context) => const Text(
                    '-- Due date by due date',
                    style: TextStyle(
                      color: Colors.blue, // Use getSelectedColor for text color
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Builder(
                  builder: (context) => const Text(
                    '-- Balanced',
                    style: TextStyle(
                      color: Colors.green, // Use getSelectedColor for text color
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton.icon(
      onPressed: () {
        _selectDate(context); // Show the calendar picker
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: getSelectedColor(context), // Set the button background color
      ),
      icon: const Icon(
        Icons.calendar_today,
        color: Colors.white, // Set the color for the icon
      ),
      label: Builder(
        builder: (context) => const Text(
          'Latest Due Date',
          style: TextStyle(
            color: Colors.white, // Set the color for the text
          ),
        ),
      ),
    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
