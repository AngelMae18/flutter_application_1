import 'package:flutter/material.dart';

void main() {
  runApp(const MoodClickApp());
}

class MoodClickApp extends StatelessWidget {
  const MoodClickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoodClickHomePage(),
    );
  }
}

class MoodClickHomePage extends StatelessWidget {
  const MoodClickHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent.shade100,
        title: const Text(
          'MOODCLICK',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              // Handle menu button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.lightGreenAccent.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  color: Colors.black,
                  onPressed: () {
                    // Handle home button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mail),
                  color: Colors.black,
                  onPressed: () {
                    // Handle mail button press
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  color: Colors.black,
                  onPressed: () {
                    // Handle profile button press
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                _buildMenuItem('Direct Message to Admin', () {
                  // Handle Direct Message to Admin
                }),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade300,
        onPressed: () {
          // Handle floating action button press
        },
        child: const Icon(Icons.card_giftcard, color: Colors.black),
      ),
    );
  }

  Widget _buildMenuItem(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
