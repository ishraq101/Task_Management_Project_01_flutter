import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page_design/screenpage/login_page.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';

class SetPasswordPage extends StatefulWidget {
  const SetPasswordPage({super.key});

  @override
  State<SetPasswordPage> createState() => _SetPasswordPageState();

}

class _SetPasswordPageState extends State<SetPasswordPage> {

  final TextEditingController _newpasscontroller = TextEditingController();
  final TextEditingController _againnewpasscontroller = TextEditingController();

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
                      'Set Password',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),

                    Text(
                      'Password Must be 8 character',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),

                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _newpasscontroller,
                      decoration: InputDecoration(
                        hintText: 'New Password',
                      ),
                    ),

                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _againnewpasscontroller,
                      decoration: InputDecoration(
                        hintText: 'Again New Password',
                      ),
                    ),
                    SizedBox(height: 8,),
                    FilledButton(

                      onPressed: _onTapLoginbutton,
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
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
  }

  @override
  void dispose() {
    _newpasscontroller.dispose();
    _againnewpasscontroller.dispose();
    super.dispose();
  }
}
