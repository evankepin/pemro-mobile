import 'package:flutter/material.dart';
import 'package:latihan_1/main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

void _tampil(){
  String username = usernameController.text;
  String pass = passwordController.text;

  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Data Akun"),
      content: Text("Username: $username, Password: $pass"),
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: const Color.fromARGB(255, 0, 255, 255),
        elevation: 0, // Menghilangkan shadow dari AppBar
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              print("Notifikasi ditekan");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Pencarian ditekan");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("More ditekan");
            },
          ),
        ],
      ),
      body: SingleChildScrollView( // Menggunakan scroll view untuk menghindari overflow pada layar kecil
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Menambahkan padding agar lebih rapi
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30), // Menambahkan ruang di atas
                Center(
                  child: Column(
                    children: [
                      Icon(Icons.lock, size: 100, color: const Color.fromARGB(255, 0, 255, 255)),
                      SizedBox(height: 10),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 0, 255, 255),
                        ),
                      ),
                      Text(
                        'Create your account',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40), // Menambahkan jarak antara header dan form
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Masukkan Username Anda',
                    prefixIcon: Icon(Icons.account_box),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10), // Membuat border melengkung
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 0, 255, 255)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  obscureText: true, // Menyembunyikan password
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan Password Anda',
                    prefixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 0, 255, 255)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 0, 255, 255)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: double.infinity, // Tombol memenuhi lebar layar
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 255, 255), // Warna tombol teal
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Membuat tombol melengkung
                        ),
                        elevation: 5, // Memberikan shadow pada tombol
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Proses validasi berhasil
                          print('Form is valid');
                          _tampil();
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyApp()),
                          // );
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print("Forgot Password");
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 255, 255),
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
