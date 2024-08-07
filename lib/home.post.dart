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
            child: GestureDetector(
              onTap: () {
                // Handle plus button press
                print('Plus sign clicked');
              },
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'How do you feel today?',
                  prefixIcon: const Icon(Icons.add),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                _buildPost('YOUR POST', true),
                _buildPost('OTHER POST', false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPost(String title, bool showComments) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade400,
                child: const Icon(Icons.person, size: 30),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  // Handle more options button press
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle react button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'REACT',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              if (showComments)
                ElevatedButton(
                  onPressed: () {
                    // Handle comments button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'COMMENTS',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
