import 'package:flutter/material.dart';
import 'package:flutter_frames/authentication/presentation/widgets/auth/sign_up_form.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [

            Center(
                child: Text("Signup", style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}
