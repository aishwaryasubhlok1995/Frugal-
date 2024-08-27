import 'package:flutter/material.dart';
import 'learn_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPanelScreen(),
    );
  }
}

class MainPanelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPanel-Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 40,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emiliano Martinez',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            // Progress Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tu progreso',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Puntaje: 1652',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.arrow_upward, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Nivel: 3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.emoji_events, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        'Logros: 15',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Learn Basic Concepts Button
            Expanded(
              child: ListView(
                children: [
                  buildMenuButton(
                    color: Colors.green,
                    text: 'Learn Basic Concepts',
                    icon: Icons.lightbulb_outline,
                    onPressed: () {
                      // Add navigation or action here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LearnScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  // Practice Button
                  buildMenuButton(
                    color: Colors.pink,
                    text: 'Practice',
                    icon: Icons.border_all,
                    onPressed: () {
                      // Add navigation or action here
                    },
                  ),
                  SizedBox(height: 10),
                  // Play for Points Button
                  buildMenuButton(
                    color: Colors.orange,
                    text: 'Play for Points',
                    icon: Icons.videogame_asset,
                    onPressed: () {
                      // Add navigation or action here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton({
    required Color color,
    required String text,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
