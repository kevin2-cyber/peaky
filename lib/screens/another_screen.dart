import 'package:flutter/material.dart';

class Another extends StatelessWidget {
  final String email;
  final String password;
  const Another({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                email,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
                password,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
