import 'package:flutter/material.dart';
import 'package:forusapp/views/screens/auth/register_screen.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObsure = true;

  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: MyTextWidget(
                    myText: "Sign In",
                    fontSize: 40,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextWidget(
                    myText: "or",
                    fontSize: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: MyTextWidget(
                        myText: "create an account",
                        color: Colors.red,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      )),
                ],
              ),
              // Username field
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Password field
              TextFormField(
                obscureText: _isObsure,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObsure = !_isObsure;
                        });
                      },
                      icon: Icon(
                          _isObsure ? Icons.visibility : Icons.visibility_off)),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Remember Me checkbox
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  const MyTextWidget(myText: "Remember Me"),
                ],
              ),
              const SizedBox(height: 16.0),

              // Sign-In button
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform sign-in action
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // Divider
              const Divider(),

              const SizedBox(height: 24.0),

              // Social media sign-in buttons
              ElevatedButton.icon(
                icon: const Icon(Icons.g_mobiledata),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Sign in with Google',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  // Handle Google sign-in
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              const SizedBox(height: 16),

              ElevatedButton.icon(
                icon: const Icon(Icons.facebook),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text('Sign in with Facebook',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                onPressed: () {
                  // Handle Facebook sign-in
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              ),
              const SizedBox(height: 16),

              ElevatedButton.icon(
                icon: const Icon(Icons.alternate_email),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text('Sign in with Twitter',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                onPressed: () {
                  // Handle Twitter sign-in
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: MyTextWidget(
                    myText: "Forgotten your password",
                    color: Colors.red,
                    fontSize: 20,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
