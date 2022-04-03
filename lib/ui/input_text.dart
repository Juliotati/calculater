part of ui;

class InputText extends StatelessWidget {
  const InputText();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[200],
      ),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Consumer<CalculaterHelper>(
        builder: (_, CalculaterHelper helper, __) {
          return Text(
            helper.defaultInput,
            style: const TextStyle(fontSize: 25),
          );
        },
      ),
    );
  }
}
