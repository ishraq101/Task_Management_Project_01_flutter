import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_page_design/screenpage/set_password_page.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class PinVerificationPage extends StatefulWidget {
  const PinVerificationPage({super.key});

  @override
  State<PinVerificationPage> createState() => _PinVerificationPageState();

}

class _PinVerificationPageState extends State<PinVerificationPage> {

  final TextEditingController _otpTEcontroller = TextEditingController();
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
                      'Enter Your Otp Code',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 4),

                    Text(
                      'A 6 digit code sent to your email address',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),

                    ),
                    const SizedBox(height: 20),
                    PinCodeTextField(
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      controller: _otpTEcontroller,

                      appContext: context,
                    ),
                    SizedBox(height: 8,),
                    FilledButton(
                      onPressed: _onTapverifybutton,
                      child: Text("Verify",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),)
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
                            recognizer: TapGestureRecognizer()..onTap = _onTapverifybutton,
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
  void _onTapverifybutton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SetPasswordPage()),
    );
  }

  @override
  void dispose() {
    _otpTEcontroller.dispose();
    super.dispose();
  }
}
