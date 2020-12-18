import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('assets/flutter_logo.png'),
          ),
          _NavigationBarItem(text: 'FLUTTER WEB PLAYGROUND', fontSize: 22),
          _NavigationBarItem(text: 'ABOUT')
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  final String text;
  final double fontSize;

  const _NavigationBarItem({Key key, @required this.text, this.fontSize = 16}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline6.copyWith(fontSize: fontSize),
        ),
        SizedBox(width: 15)
      ],
    );
  }
}
