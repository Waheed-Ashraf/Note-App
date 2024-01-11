import 'package:flutter/material.dart';

class FloattingActionButton extends StatelessWidget {
  const FloattingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          },
        );
      },
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      child: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
