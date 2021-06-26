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
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            bottom: 8.0,
            left: 10.0,
            right: 20,
          ),
          child: Consumer<CalculaterHelper>(
            builder: (_, CalculaterHelper helper, __) {
              return Text(
                helper.result,
                style: const TextStyle(fontSize: 35),
              );
            },
          ),
        ),
      ),
    );
  }
}
