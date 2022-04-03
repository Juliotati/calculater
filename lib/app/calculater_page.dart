part of app;

class CalculaterPage extends StatelessWidget {
  const CalculaterPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('calculater'),
      ),
      body: Column(
        children: <Widget>[
          const InputText(),
          const ResultText(),
          Flexible(
            child: ListView(
              children: numPad,
            ),
          ),
        ],
      ),
    );
  }
}
