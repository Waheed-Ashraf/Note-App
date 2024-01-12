import 'package:flutter/material.dart';
import 'package:note_app/views/update_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const UpdateNoteView();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.green,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 16),
                child: ListTile(
                  title: const Text(
                    'Flutter Note App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Flutter Note App',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.delete),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Mar 3:20',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
