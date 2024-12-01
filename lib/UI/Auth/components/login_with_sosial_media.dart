import 'package:finpronih/UI/Auth/components/or_line.dart';
import 'package:finpronih/consts.dart';
import 'package:flutter/material.dart';

class LoginWithSosialMedia extends StatelessWidget {
  const LoginWithSosialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(height: 20),
              const Expanded(child: OrLine()),
              const SizedBox(height: 20),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/image/Google.png'),
              height: 16,
              width: 16,
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(45, 45), // Lebar tombol
              side: const BorderSide(
                color: primaryColor, 
                width: 2
              ), // Warna border tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 5),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/image/Gmail.png'),
              height: 16,
              width: 16,
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(45, 45), // Lebar tombol
              side: const BorderSide(
                color: primaryColor, 
                width: 2
              ), // Warna border tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 5),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/image/Facebook.png'),
              height: 16,
              width: 16,
            ),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(45, 45), // Lebar tombol
              side: const BorderSide(
                color: primaryColor, 
                width: 2
              ), // Warna border tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),

    );
  }
}