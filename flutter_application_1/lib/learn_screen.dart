import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LearnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn-screen'),
        backgroundColor: Colors.green, // Match the theme color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Lottie Animation at the Top
              Center(
                child: Lottie.asset(
                  'assets/animation1.json', // Path to your Lottie animation file
                  width: 120, // Reduced size
                  height: 120, // Reduced size
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              // Learn Concepts Section
              buildSectionCard(
                color: Colors.green,
                text: 'Learn Concepts!',
                icon: Icons.lightbulb_outline,
              ),
              SizedBox(height: 20),
              // Units of Time Section
              buildChapterCard(
                color: Colors.green,
                text: 'Units of Time',
                chapters: '5 out of 5',
                icon: Icons.access_time,
              ),
              SizedBox(height: 10),
              // Traditional Clocks Section
              buildChapterCard(
                color: Colors.red,
                text: 'Traditional Clocks',
                chapters: '3 out of 3',
                icon: Icons.watch_later,
              ),
              SizedBox(height: 20),
              // Overall Learning Progress
              buildSectionCard(
                color: Colors.green,
                text: 'Overall Learning Progress:',
                icon: Icons.school,
              ),
              SizedBox(height: 10),
              LinearProgressIndicator(
                value: 1.0,
                backgroundColor: Colors.grey[300],
                color: Colors.orange,
                minHeight: 10,
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Completo!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionCard({
    required Color color,
    required String text,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(Icons.bookmark, color: Colors.white, size: 30),
        ],
      ),
    );
  }

  Widget buildChapterCard({
    required Color color,
    required String text,
    required String chapters,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Chapters $chapters',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.bookmark, color: Colors.white, size: 30),
        ],
      ),
    );
  }
}
