import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Text('Auth Page', style: Theme.of(context).textTheme.titleLarge,),
      ),
    );
  }
}
