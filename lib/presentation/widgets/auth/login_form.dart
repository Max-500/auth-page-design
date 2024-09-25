import 'package:flutter/material.dart';
import '../widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20,),

        const CustomTextField(
          hintText: 'E-mail',
          isPassword: false,
        ),
        
        const SizedBox(height: 50), 

        const CustomTextField(
          hintText: 'Password',
          isPassword: true,
        ),

        const SizedBox(height: 50),

        CustomButton(
          text: 'Login',
          onPressed: () {
            print('Login button pressed');
          },
          backgroundColor: Colors.blue,
          borderRadius: 25,
          verticalPadding: 20,
        ),
      ],
    );
  }
}