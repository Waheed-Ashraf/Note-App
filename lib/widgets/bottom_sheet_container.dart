import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

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
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CustomTextField(
                hint: 'Title',
                maxLines: 1,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
