import 'package:flutter/material.dart';
import 'package:latihan_1/main.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: const Color.fromARGB(255, 0, 255, 255),
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
              // Aksi ketika ikon more ditekan
              print("More ditekan");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
              margin: const EdgeInsets.only(bottom: 4.0),
              child: Align(
                alignment: Alignment.center, // Mengatur align ke tengah
                child: Text(
                  'LOGIN ',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment.center, // Mengatur align ke tengah
                child: Text(
                  'Create your account',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukan Username Anda',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_box),
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your username';
                //   }
                //   return null;
                // },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukan Password Anda',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder()
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your email';
                //   }
                //   return null;
                // },
              ),
              SizedBox(height: 16),
              Center(
  child: SizedBox(
    width: double.infinity, // Agar tombol memenuhi lebar layar
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Proses validasi berhasil
          print('Form is valid');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        }
      },
      child: Text('Login'),
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
