import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print("there is somthing wrong ${state.errMessage}");
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const CustomBottomSheetForm(),
              );
            },
          ),
        ),
      ),
    );
  }
}
