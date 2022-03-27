part of ui;

List<Widget> get numPad {
  return <Widget>[
    for (final Widget row in numPadRows) row,
  ];
}
