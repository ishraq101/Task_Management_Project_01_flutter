import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();

}

class _SignupscreenState extends State<Signupscreen> {

  final TextEditingController _emailTEcontroller = TextEditingController();
  final TextEditingController _passwordTEcontroller = TextEditingController();
  final TextEditingController _firstnameTEcontroller = TextEditingController();
  final TextEditingController _lastnameTEcontroller = TextEditingController();
  final TextEditingController _mobileTEcontroller = TextEditingController();
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
                      'Join with US',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'Email',

                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _firstnameTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'First Name',

                      ),
                    ),const SizedBox(height: 20),
                    TextFormField(
                      controller: _lastnameTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'Last Name',

                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _mobileTEcontroller,
                      decoration: InputDecoration(
                        hintText: 'Mobile',

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

                      onPressed: () {},
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        text: 'Already have an account?',
                        children: [
                          TextSpan(
                            text: 'Login',
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

  @override
  void dispose() {
    _emailTEcontroller.dispose();
    _passwordTEcontroller.dispose();
    _firstnameTEcontroller.dispose();
    _lastnameTEcontroller.dispose();
    _mobileTEcontroller.dispose();
    super.dispose();
  }
}
