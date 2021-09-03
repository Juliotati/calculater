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
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Center(
          child: Text(
            'calculater',
            style: GoogleFonts.graduate(),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 16.0),
        children: <Widget>[
          const InputText(),
          const ResultText(),
          const SizedBox(height: 13),
          const SizedBox(height: 16),
          ...numPad(),
        ],
      ),
    );
  }
}
