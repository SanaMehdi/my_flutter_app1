import 'package:flutter/material.dart';

class SignUpController with ChangeNotifier {
  // Text Editing Controllers for Email, Password, and Confirm Password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  // Sign Up Functionality
  void signUp(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      _showSnackBar(context, 'All fields are required.');
      return;
    }

    if (password != confirmPassword) {
      _showSnackBar(context, 'Passwords do not match.');
      return;
    }

    if (!_isValidEmail(email)) {
      _showSnackBar(context, 'Enter a valid email address.');
      return;
    }

    if (password.length < 6) {
      _showSnackBar(context, 'Password must be at least 6 characters long.');
      return;
    }

    // Example: After successful validation, navigate to Login Screen
    _showSnackBar(context, 'Sign Up Successful!');
    Navigator.pushNamed(context, '/login');
  }

  // Helper Function to Show SnackBar
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Helper Function to Validate Email
  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(email);
  }

  // Dispose controllers when not needed
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
