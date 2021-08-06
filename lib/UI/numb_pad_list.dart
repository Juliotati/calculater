part of ui;

class NumPadRow extends StatelessWidget {
  const NumPadRow({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }
}

const String _numPadKey = 'num-pad-row';

List<Widget> numPadRows = const <Widget>[
  NumPadRow(
    key: Key('$_numPadKey-1'),
    children: <CalculaterButton>[
      CalculaterButton('0'),
      CalculaterButton('.'),
      CalculaterButton('Ans'),
      CalculaterButton('='),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-2'),
    children: <CalculaterButton>[
      CalculaterButton('1'),
      CalculaterButton('2'),
      CalculaterButton('3'),
      CalculaterButton('-'),
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
      CalculaterButton('7'),
      CalculaterButton('8'),
      CalculaterButton('9'),
      CalculaterButton('X'),
    ],
  ),
  NumPadRow(
    key: Key('$_numPadKey-5'),
    children: <CalculaterButton>[
      CalculaterButton('%'),
      CalculaterButton('AC'),
      CalculaterButton('DEL'),
      CalculaterButton('/'),
    ],
  ),
];
