import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveUIApp());
}

class ResponsiveUIApp extends StatelessWidget {
  const ResponsiveUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key}); // FIXED: Added missing semicolon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Retained your name in the title as per the lab requirements
        title: const Text('Adaptive and Responsive UI - Edwin Paul'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Mobile layout
          if (constraints.maxWidth < 600) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center, // Added to center nicely
              children: const [
                Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Student'),
                    subtitle: Text('Mobile Layout'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Courses'),
                    subtitle: Text('Mobile Layout'),
                  ),
                ),
              ],
            );
          }

          // Desktop / Tablet layout
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text('Students'),
                    subtitle: Text('Desktop / Tablet Layout'),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.school),
                    title: Text('Courses'),
                    subtitle: Text('Desktop / Tablet Layout'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
