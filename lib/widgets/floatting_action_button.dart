import 'package:flutter/material.dart';
import 'package:note_app/widgets/bottom_sheet_container.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class FloattingActionButton extends StatelessWidget {
  const FloattingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (context) {
            return const BottomSheetContainer();
          },
        );
      },
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
