import 'package:flutter/material.dart';
import '../components/custom_textfield_clone.dart';
import '../components/custom_button_clone.dart';

class LoginClonePage extends StatelessWidget {

  LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Center(child: Image.asset('lib/image_assets/logo_ig.png')),
              const SizedBox(height: 10), 
              
              CustomTextfield(
                myHint: 'Enter your email',
              ),
              const SizedBox(height: 24),
              
              CustomTextfield(
                myHint: 'Enter your password',
              ),
              const SizedBox(height: 24),

              CustomButton(
                text: 'Log in',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}