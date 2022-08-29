import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar(
      {Key? key, this.onPressed, this.height, this.radius, required this.label})
      : super(key: key);

  final double? radius;
  final double? height;
  final String label;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 10.0),
          color: const Color.fromARGB(100, 215, 215, 215)),
      child: Center(
        child: Row(
          children: [
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => (onPressed ?? {})),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: label),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
