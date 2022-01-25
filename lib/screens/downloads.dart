import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            primary: Colors.amber,
          ),
          onPressed: () {},
          child: const Text('Wali Waxba Ma Aadan So Dagsan'),
        ),
      ),
    );
  }
}
