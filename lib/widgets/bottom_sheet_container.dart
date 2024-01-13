import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom_sheet_form.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomBottomSheetForm(),
        ),
      ),
    );
  }
}
