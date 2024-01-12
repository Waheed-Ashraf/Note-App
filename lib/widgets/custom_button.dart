import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Save Note',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
