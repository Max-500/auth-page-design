import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 247, 1),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 650,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.webp'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300),
                ),
              ),
            ),

            Positioned(
              top: 350,
              left: 20,
              right: 20,
              child: Container(
                width: 380,
                height: 460,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    AuthToggleButton(
                      isLogin: isLogin,
                      onToggle: (selectedLogin) {
                        setState(() {
                          isLogin = selectedLogin;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                    isLogin ? const LoginForm() : const RegisterForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}