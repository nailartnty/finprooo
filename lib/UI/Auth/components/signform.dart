import 'package:finpronih/UI/Auth/components/sign_with_sosial_media.dart';
import 'package:finpronih/consts.dart';
import 'package:flutter/material.dart';

class Signform extends StatelessWidget {
  Signform({super.key});

  final _formKey = GlobalKey<FormState>(); // menandakan proses yang terjadi pada file
  final _nameController = TextEditingController();
  final _emailController = TextEditingController(); // kelas yang digunakan untuk mengontrol dan memanipulasi teks dalam widget input seperti TextField atau TextFormField
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    // Parameter value adalah nilai yang diinputkan oleh pengguna dalam TextFormField
                    if (value == null || value.isEmpty) { // Mengecek apakah input kosong atau null. Jika iya, fungsi akan mengembalikan pesan error 'Please enter your email', yang akan ditampilkan di bawah input.
                      return 'Email is Required';
                    } // ! -> menandakan bahwa kondisi ini negatif
                    if (!value.endsWith('')) { // harus validasi @gmail.com (dibelakangnya harus ada)
                      return 'please fill with valid email';
                    }
                    return null; // Jika input tidak kosong, validator mengembalikan nilainya, yang berarti input valid
                  },
                ),
                  TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    // Parameter value adalah nilai yang diinputkan oleh pengguna dalam TextFormField
                    if (value == null || value.isEmpty) { // Mengecek apakah input kosong atau null. Jika iya, fungsi akan mengembalikan pesan error 'Please enter your email', yang akan ditampilkan di bawah input.
                      return 'Email is Required';
                    } // ! -> menandakan bahwa kondisi ini negatif
                    if (!value.endsWith('@gmail.com')) { // harus validasi @gmail.com (dibelakangnya harus ada)
                      return 'please fill with valid email';
                    }
                    return null; // Jika input tidak kosong, validator mengembalikan nilainya, yang berarti input valid
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController, // ini kita gunakan untuk mengontrol inputan password
                  obscureText: true, // biar dia  tidak kebaca passwordnya
                  decoration: InputDecoration(
                    labelText: "Password", // label untuk inputan password
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ), // border untuk inputan password
                  ),
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                      // Mengecek apakah input kosong
                      return 'Password is Required'; // Jika iya, fungsi akan mengembalikan
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordConfirmController, // ini kita gunakan untuk mengontrol inputan password
                  obscureText: true, // biar dia  tidak kebaca passwordnya
                  decoration: InputDecoration(
                    labelText: "Password Confirm", // label untuk inputan password
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ), // border untuk inputan password
                  ),
                  validator: (value) {
                      if (value == null || value.isEmpty) {
                      // Mengecek apakah input kosong
                      return 'Password is Required'; // Jika iya, fungsi akan mengembalikan
                    }
                    return null;
                  },
                ),
              const SizedBox(height: 10),
              ElevatedButton(
                // Button Login
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, '/onboarding');
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: secondaryColor
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              const Expanded(child: SignWithSosialMedia()),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }, 
                child: const Text(
                  'Have Account? Sign In now',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor
                  ),
                )
              )
            ]
          )
        )
      ),
    );
  }
}