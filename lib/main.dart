import 'package:flutter/material.dart';
import 'package:latihan_1/login.dart';
import 'package:latihan_1/register.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
        // CustomPlugin(), // Jika CustomPlugin() tidak terdefinisi, hapus atau sesuaikan dengan plugin lain.
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan Digital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://raw.githubusercontent.com/evankepin/gambar-pemro/refs/heads/main/gambar_main2.png', // Ganti dengan path gambar Anda
                height: 350,
                width: 500,
              ),
              const SizedBox(height: 20),
              const Text(
                'PERPUSTAKAAN DIGITAL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 42, 86, 161),
                ),
              ),
              const Text(
                'PURBALINGGA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 42, 86, 161),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Knowledge, Piety, Integrity',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
                ),
                child: const Text(
                  'Masuk Sekarang',
                  style: TextStyle(fontSize: 18, color: Colors.white), 
                ),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  side: const BorderSide(color: Colors.blue),
                ),
                child: const Text(
                  'Daftar Sekarang',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman Syarat & Ketentuan
                      print("Syarat & Ketentuan ditekan");
                    },
                    child: const Text(
                      'Syarat & Ketentuan',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Text(' atau '),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman Kebijakan Privasi
                      print("Kebijakan Privasi ditekan");
                    },
                    child: const Text(
                      'Kebijakan Privasi',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
