import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  final String title;
  final String text;
  const TextTile({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        TextSpan(children: [
          TextSpan(
            text: title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          TextSpan(
            text: text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ]));
  }
}
