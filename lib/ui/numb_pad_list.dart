part of ui;

class NumPadRow extends StatelessWidget {
  const NumPadRow({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(children: children),
    );
  }
}

const String _numPadKey = 'num-pad-row';

List<Widget> numPadRows = const <Widget>[
  NumPadRow(
    key: Key('$_numPadKey-1'),
    children: <CalculaterButton>[
      CalculaterButton('Ans'),
      CalculaterButton('AC'),
      CalculaterButton('DEL'),
      CalculaterButton('/'),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-2'),
    children: <CalculaterButton>[
      CalculaterButton('7'),
      CalculaterButton('8'),
      CalculaterButton('9'),
      CalculaterButton('X'),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-3'),
    children: <CalculaterButton>[
      CalculaterButton('4'),
      CalculaterButton('5'),
      CalculaterButton('6'),
      CalculaterButton('+'),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-4'),
    children: <CalculaterButton>[
      CalculaterButton('1'),
      CalculaterButton('2'),
      CalculaterButton('3'),
      CalculaterButton('-'),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-5'),
    children: <Widget>[
      CalculaterButton('0'),
      CalculaterButton('.'),
      CalculaterButton('=', flex: 2),
    ],
  ),
];
