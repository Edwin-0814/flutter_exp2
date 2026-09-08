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
      title: 'Adaptive and Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 2 - Edwin Paul'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Check the maximum width available
            if (constraints.maxWidth < 600) {
              // ----- MOBILE LAYOUT (Small Screens) -----
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Card(
                    child: ListTile(
                      title: Text('Student'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Courses'),
                    ),
                  ),
                ],
              );
            } else {
              // ----- DESKTOP / TABLET LAYOUT (Large Screens) -----
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Card(
                      child: ListTile(
                        title: Text('Students'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: ListTile(
                        title: Text('Courses'),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
