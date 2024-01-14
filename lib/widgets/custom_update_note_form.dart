import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class CustomUpdateNoteForm extends StatefulWidget {
  const CustomUpdateNoteForm({super.key});

  @override
  State<CustomUpdateNoteForm> createState() => _CustomUpdateNoteFormState();
}

class _CustomUpdateNoteFormState extends State<CustomUpdateNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'title',
              maxLines: 1),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'constent',
              maxLines: 5),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;

                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}