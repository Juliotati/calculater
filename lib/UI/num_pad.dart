part of ui;

class NumPad extends StatelessWidget {
  const NumPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        for (int row = 0; row <= numPadRow.length; row++) numPadRow[row],
      ],
    );
  }
}
