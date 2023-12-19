import 'package:flutter/material.dart';

class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      logoWidget(
                          'assets/image.jpg'), // Replace 'assets/image.jpg' with your image path
                      SizedBox(height: 20), // Adjust spacing between components

                      reusableWidget(
                        'Email',
                        Icons.email,
                        false,
                        TextEditingController(),
                      ),
                      SizedBox(height: 20), // Adjust spacing between components

                      signInSignUpButton(context, true, () {
                        // Do something on button tap
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Image logoWidget(String image) {
  return Image.asset(
    image,
    fit: BoxFit.cover,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

Container reusableWidget(
  String text,
  IconData icon,
  bool isPasswordType,
  TextEditingController controller,
) {
  return Container(
    width: double.infinity, // Take full available width
    padding: EdgeInsets.symmetric(horizontal: 20), // Add padding for text field
    child: TextField(
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefix: Icon(
          icon,
          color: Colors.white70,
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none, // Removed border
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1), // Added background color
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    ),
  );
}

Container signInSignUpButton(
  BuildContext context,
  bool isLogin,
  VoidCallback onTap, // Changed Function to VoidCallback
) {
  return Container(
    width: double.infinity, // Take full available width
    margin: EdgeInsets.symmetric(horizontal: 20), // Add margin for the button
    child: ElevatedButton(
      onPressed: onTap,
      child: Text(
        isLogin ? 'LOGIN' : 'SIGN UP',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(15), // Increase button padding
        // primary: Colors.black26,
        // ignore: deprecated_member_use
        onPrimary: Colors.black12,
      ),
    ),
  );
}
