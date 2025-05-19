import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sohbet Ekranı',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> chats = [
    {
      "title": "Ahmet",
      "message": "gardaş akşam maç varmı...",
      "time": "21:04",
      "badge": 21
    },
    {
      "title": "kaan arda coşkun",
      "message": " neredesin gel...",
      "time": "Cum",
      "badge": 3
    },
    {
      "title": "osman",
      "message": "napiyosun ",
      "time": "Cum",
      "badge": 6
    },
    {
      "title": "emirhan ",
      "message": "merhaba",
      "time": "Per",
      "badge": 11
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 68, 110),
      appBar: AppBar(
        title: Text("Telegram"),
        backgroundColor: Color.fromARGB(255, 68, 68, 110),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Buraya arama fonksiyonu eklersin
              print("Arama ikonu tıklandı");
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 68, 68, 110),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white24,
                  radius: 25,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chat["title"],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        chat["message"],
                        style: TextStyle(color: Colors.grey[300]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      chat["time"],
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 6),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        chat["badge"].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}