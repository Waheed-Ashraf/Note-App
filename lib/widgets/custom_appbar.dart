import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Row(
        children: [
          Text(
            'Note App',
            style: TextStyle(
              fontFamily: 'RubikDoodleShadow',
              fontSize: 25,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:
                  Theme.of(context).colorScheme.inversePrimary.withOpacity(.05),
            ),
            child: const Center(
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
