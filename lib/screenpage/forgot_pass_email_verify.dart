import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page_design/screenpage/pin_verify_page.dart';
import 'package:login_page_design/screenpage/signup_screen.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';

class ForgotpassEmailverify extends StatefulWidget {
  const ForgotpassEmailverify({super.key});

  @override
  State<ForgotpassEmailverify> createState() => _ForgotpassEmailverifyState();

}

class _ForgotpassEmailverifyState extends State<ForgotpassEmailverify> {

  final TextEditingController _emailTEcontroller = TextEditingController();
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
                      'Enter Your Email Address',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),

                    Text(
                      'A 6 digit code will send to your email address',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),

                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'Email',

                      ),
                    ),
                    SizedBox(height: 8,),
                    FilledButton(

                      onPressed: _onTapNextButton,
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: 'Have an account?',
                        children: [
                          TextSpan(
                            text: ' Login',
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.green),
                            recognizer: TapGestureRecognizer()..onTap = _onTapLoginbutton,
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
  void _onTapLoginbutton(){
    Navigator.pop(context);
  }
  void _onTapNextButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> PinVerificationPage()));
  }

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    super.dispose();
  }
}
