import 'package:flutter/material.dart';
import 'package:latihan_1/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text("Beranda"),backgroundColor: const Color.fromARGB(255, 0,255,255),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        // Aksi ketika ikon notifikasi ditekan
        print("Notifikasi ditekan");
      },
    ),
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Aksi ketika ikon pencarian ditekan
        print("Pencarian ditekan");
      },
    ),
    IconButton(
            icon: Icon(Icons.account_circle),
             onPressed: () {
            // Navigasi ke halaman register
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );
          },
          ),
  ],
),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama : Evana Anugrah Purwayanto"),
            Text("NIM : 220112007"),
            Text("Prodi : S1 Sistem Informasi")
          ],
        )
      ),
    );
  }
}