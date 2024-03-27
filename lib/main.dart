import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Login')),
        backgroundColor: Colors.grey,
      ),
      body: GestureDetector(
        onTap: () {
          // Handle tap gesture
          FocusScope.of(context).unfocus(); // Dismiss keyboard when tapped outside of text field
        },

        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Handle login button press
            print('Login button pressed');
          },
          child: Text('login'),
        ),
      ],
    );
  }
}
