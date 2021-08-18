part of app;

class CalculaterPage extends StatefulWidget {
  const CalculaterPage();

  @override
  _CalculaterPageState createState() => _CalculaterPageState();
}

class _CalculaterPageState extends State<CalculaterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Center(
          child: Text(
            'calculater',
            style: GoogleFonts.graduate(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              ...numPad(),
              const SizedBox(height: 13),
              const ResultText(),
              const Expanded(
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              const InputText(),
            ],
          ),
        ),
      ),
    );
  }
}
