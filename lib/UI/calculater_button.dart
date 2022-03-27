part of ui;

class CalculaterButton extends StatelessWidget {
  const CalculaterButton(
    this.label, {
    this.flex = 1,
    Key? key,
  }) : super(key: key);

  final String label;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(10),
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
      ),
    );
  }
}
