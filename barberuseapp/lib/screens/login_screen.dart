import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.jpg'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Login form container
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Email field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 16),

                    // Password field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 8),

                    // Forgot password and Register links
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Forgot password link
                        TextButton(
                          onPressed: () {
                            // Logic to handle forgot password
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),

                        // Register as new user link
                        TextButton(
                          onPressed: () {
                            // Navigate to registration screen
                          },
                          child: Text(
                            'Register as new user',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),

                    // Login button
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Login logic
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(double.infinity, 50), // Full-width button
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
