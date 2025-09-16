import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page_design/screenpage/home_1st_page.dart';
import 'package:login_page_design/screenpage/signup_screen.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';

import 'forgot_pass_email_verify.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final GlobalKey <FormState> _formkey = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screenbackground(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started with',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'Email',

                      ),
                    ),
                    SizedBox(height: 8,),
                    TextFormField(
                      controller: _passwordTEcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText:'Password',
                      ),
                    ),
                    SizedBox(height: 8,),
                    FilledButton(

                      onPressed: _onTapLoginbutton,
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: _onTapforgotpass,
                      child: Text('Forgot password?'),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: 'Don\'t have an account?',
                        children: [
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.green),
                            recognizer: TapGestureRecognizer()..onTap = _onTapSignupButton,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _onTapSignupButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Signupscreen()));
  }
  void _onTapforgotpass(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotpassEmailverify()));
  }
  void _onTapLoginbutton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home1stPage()),
    );
  }

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    _passwordTEcontroller.dispose();
    super.dispose();
  }
}
