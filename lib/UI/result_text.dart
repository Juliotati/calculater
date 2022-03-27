part of ui;

class ResultText extends StatelessWidget {
  const ResultText();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[200],
      ),
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 20),
      child: Consumer<CalculaterHelper>(
        builder: (_, CalculaterHelper helper, __) {
          return Text(
            helper.result,
            style: const TextStyle(fontSize: 35),
          );
        },
      ),
    );
  }
}
