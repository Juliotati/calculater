part of ui;

class CalculaterButton extends StatelessWidget {
  const CalculaterButton(
    this.label, {
    Key? key,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        constraints: const BoxConstraints(minHeight: 50, minWidth: 70),
        fillColor:  Colors.white,
        hoverColor: Colors.blue,
        splashColor: Colors.blueGrey,
        disabledElevation: 2.0,
        focusElevation: 1.0,
        highlightElevation: 0.0,
        onPressed: () => context.read<CalculaterHelper>().computeInput(label),
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
