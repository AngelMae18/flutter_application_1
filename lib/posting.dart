import 'package:flutter/material.dart';

void main() {
  runApp(const MoodClickApp());
}

class MoodClickApp extends StatelessWidget {
  const MoodClickApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreenAccent.shade100,
      ),
      home: const MoodClickHomePage(),
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
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'How do you feel today?',
                prefixIcon: GestureDetector(
                  onTap: () {
                    // Handle plus button press
                    print('Plus sign clicked');
                  },
                  child: const Icon(Icons.add),
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade400,
                      child: const Icon(Icons.person, size: 40),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'How do you feel today?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildEmojiButton(Icons.sentiment_very_dissatisfied, 'Sad'),
                    _buildEmojiButton(Icons.sentiment_very_satisfied, 'Happy'),
                    _buildEmojiButton(Icons.sentiment_dissatisfied, 'Angry'),
                    _buildTextButton('Fear'),
                    _buildTextButton('Anxiety'),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle post button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmojiButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            // Handle emoji button press
          },
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildTextButton(String text) {
    return TextButton(
      onPressed: () {
        // Handle text button press
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
