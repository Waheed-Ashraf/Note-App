import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconButton icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Text(
            title,
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
            child: Center(
              child: icon,
            ),
          ),
        ],
      ),
    );
  }
}
