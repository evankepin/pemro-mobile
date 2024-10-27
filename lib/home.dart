import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan Digital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perpustakaan Digital Purbalingga'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi notifikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Text(
                'Temukan artikel dan jalin pertemanan di Perpustakaan Digital Purbalingga',
                style: TextStyle(fontSize: 16, color: Colors.blueAccent),
              ), */
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Telusuri Koleksi di Perpustakaan Daerah Purbalingga',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryButton(label: 'Aktivitas'),
                  CategoryButton(label: 'Buku'),
                  CategoryButton(label: 'Video'),
                ],
              ),
              SizedBox(height: 16),
              SectionTitle(title: 'ePustaka'),
              SizedBox(height: 8),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LibraryCard(imageUrl: 'https://raw.githubusercontent.com/evankepin/gambar-pemro/refs/heads/main/loho_pbg.jpg',  
                    title: 'Perpustakaan Purbalingga'),
                    LibraryCard(imageUrl: 'https://raw.githubusercontent.com/evankepin/gambar-pemro/refs/heads/main/loho_pbg.jpg', 
                    title: 'e-History of Purbalingga'),
                    LibraryCard(imageUrl: 'https://raw.githubusercontent.com/evankepin/gambar-pemro/refs/heads/main/loho_pbg.jpg', 
                    title: 'Perpus PBG Library'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SectionTitle(title: 'Teman yang Disarankan'),
              SizedBox(height: 8),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FriendCard(name: 'Evana', initials: 'EA'),
                  FriendCard(name: 'Aqmal', initials: 'AM'),
                  FriendCard(name: 'Rofiq', initials: 'RF'),
                  
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Lini Masa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;

  CategoryButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue, backgroundColor: Colors.blue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(label),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class LibraryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  LibraryCard({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Image.network(imageUrl, width: 60, height: 60),
          SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FriendCard extends StatelessWidget {
  final String name;
  final String initials;

  FriendCard({required this.name, required this.initials});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Text(initials),
          backgroundColor: Colors.blue[200],
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
