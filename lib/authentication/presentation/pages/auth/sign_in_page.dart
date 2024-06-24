import 'package:flutter/material.dart';
import 'package:flutter_frames/authentication/presentation/widgets/auth/sign_in_form.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            Center(
                child: Text("Login", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
