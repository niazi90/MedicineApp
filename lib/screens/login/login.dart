import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicalapp/screens/home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String phoneNumber = '';
  String otp = '';
  String verificationId = '';
  bool otpSent = false;
  bool isVerified = false;

  //  Step 1: Send OTP
  void verifyPhone() async {
    if (phoneNumber.isEmpty || !phoneNumber.startsWith('+')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid phone number (+92...)')),
      );
      return;
    }

    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
        setState(() => isVerified = true);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Phone number automatically verified!')),
        );
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "Verification failed")),
        );
      },
      codeSent: (String verId, int? resendToken) {
        setState(() {
          verificationId = verId;
          otpSent = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('OTP Sent')),
        );
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
      },
    );
  }

  //  Step 2: Verify OTP
  void signInWithOtp() async {
    if (otp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter the OTP')),
      );
      return;
    }

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await _auth.signInWithCredential(credential);
      setState(() => isVerified = true);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Phone number verified successfully')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid OTP, try again')),
      );
    }
  }

  //  Step 3: Navigate only when verified
  void continueToHome() {
    if (isVerified) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please verify your phone first!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              SizedBox(
                width: 200,
                height: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image(
                    image: AssetImage('assets/images/Vector.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Quick Medical",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Please enter your mobile number to Login / Signup",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
          
              //  Phone Input
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Enter Phone (+92...)",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  onChanged: (v) => phoneNumber = v.trim(),
                ),
              ),
              const SizedBox(height: 10),
          
              //  Send OTP Button
              ElevatedButton(
                onPressed: verifyPhone,
                child: const Text("Send OTP"),
              ),
          
              if (otpSent) ...[
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: "Enter OTP",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (v) => otp = v.trim(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: signInWithOtp,
                  child: const Text("Verify OTP"),
                ),
              ],
          
              const SizedBox(height: 30),
          
              //  Continue Button (only after verified)
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: continueToHome,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isVerified ? Colors.blue : Colors.grey,
                  ),
                  child: Text(
                    "Continue",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
