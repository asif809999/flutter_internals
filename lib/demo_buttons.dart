import 'package:flutter/material.dart';

class demoButtons extends StatefulWidget {
  const demoButtons({super.key});
  @override
  State<demoButtons> createState() {
    return _DemoButtonsState();
  }
}

class _DemoButtonsState extends State<demoButtons> {
  var _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('DemoButtons BUILD called');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }
}
