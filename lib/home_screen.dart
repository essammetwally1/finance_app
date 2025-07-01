import 'package:finance_app/core/widgets/custom_text_feild.dart';
import 'package:finance_app/core/widgets/eleveted_button.dart';
import 'package:finance_app/core/widgets/outline_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevetedButtonWidget(title: 'Login', fontSize: 20),
            SizedBox(height: 50),

            OutlinedButtonWidget(title: 'Register', fontSize: 20),
            SizedBox(height: 50),
            CustomTextFeild(
              title: 'Enter Name',
              isPassword: isPassword,
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                icon: isPassword
                    ? Icon(Icons.remove_red_eye_outlined)
                    : Icon(Icons.visibility_off_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
