part of ui;

List<Widget> numPad() {
  return <Widget>[
    for (int row = 0; row <= numPadRows.length - 1; row++) numPadRows[row]
  ];
}
