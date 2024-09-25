import 'package:flutter/material.dart';
import '../widgets.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CustomTextField(
          hintText: 'Username',
          isPassword: false,
        ),

        const SizedBox(height: 30), 

        const CustomTextField(
          hintText: 'E-mail',
          isPassword: false,
        ),

        const SizedBox(height: 30), 
        
        const CustomTextField(
          hintText: 'Password',
          isPassword: true,
        ),

        const SizedBox(height: 40),

        CustomButton(
          text: 'Register',
          onPressed: () {
            print('Register button pressed');
          },
          backgroundColor: Colors.blue,
          borderRadius: 25,
          verticalPadding: 20,
        ),
      ],
    );
  }
}