import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  // Replace this with the path to your logo image asset
  final String logoPath = "assets/images/logo_sample.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo Image
                Image.asset(
                  logoPath,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username or email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter username or email';
                    }
                    return null;
                  },
                  onSaved: (value) => username = value!,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  onSaved: (value) => password = value!,
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Implement your sign up logic here
                        print('Sign Up pressed');
                      },
                      child: Text('Sign Up',style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        
                        backgroundColor:   Colors.blueAccent, // Use Colors.red[100] for light red
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        
                      ),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    SizedBox(height: 10.0), // Add some spacing
                    TextButton(
                      onPressed: () {
                        // Implement your forgot password logic here
                        print('Forgot Password pressed');
                      },
                      child: Text('Forgot Password ?',style: TextStyle(color: Colors.black),),
                    ),
                    SizedBox(height: 20.0), // Add some spacing
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print('Username: $username, Password: $password');
                        }
                      },
                      child: Text('Sign In',style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                       
                        backgroundColor:   Colors.blueAccent, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        
                      ),
                       minimumSize: Size(double.infinity, 50),
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
