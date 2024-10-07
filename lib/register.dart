import 'package:flutter/material.dart';
import 'package:latihan_1/login.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirm_passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

void _tampil(){
  String username = usernameController.text;
  String email = emailController.text;
  String pass = passwordController.text;
  String confirm = confirm_passwordController.text;

  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Data Akun"),
      content: Text("Username: $username, Email: $email, Password: $pass, Confirm: $confirm"),
    );
  });

}

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
                  'SIGN UP',
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
                controller: usernameController,
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
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukan Email Anda',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder()
                ),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your email';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Buat Password Yang Rumit ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.key),
                ),
                obscureText: true,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your password';
                //   }
                //   return null;
                // },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: confirm_passwordController,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Masukan Ulang Password Anda',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please confirm your password';
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
          _tampil();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        }
      },
      child: Text('Sign Up'),
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
