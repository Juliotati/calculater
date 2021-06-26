part of ui;

class NumPadRow extends StatelessWidget {
  const NumPadRow({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }
}

List<Widget> numPadRow = const <Widget>[
  NumPadRow(
    children: <CalculaterButton>[
      CalculaterButton('0'),
      CalculaterButton('.'),
      CalculaterButton('Ans'),
      CalculaterButton('='),
    ],
  ),
  NumPadRow(
    children: <CalculaterButton>[
      CalculaterButton('1'),
      CalculaterButton('2'),
      CalculaterButton('3'),
      CalculaterButton('-'),
    ],
  ),
  NumPadRow(
    children: <CalculaterButton>[
      CalculaterButton('4'),
      CalculaterButton('5'),
      CalculaterButton('6'),
      CalculaterButton('+'),
    ],
  ),
  NumPadRow(
    children: <CalculaterButton>[
      CalculaterButton('7'),
      CalculaterButton('8'),
      CalculaterButton('9'),
      CalculaterButton('X'),
    ],
  ),
  NumPadRow(
    children: <CalculaterButton>[
      CalculaterButton('%'),
      CalculaterButton('AC'),
      CalculaterButton('DEL'),
      CalculaterButton('/'),
    ],
  ),
];
