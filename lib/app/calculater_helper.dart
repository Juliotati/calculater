part of app;

class CalculaterHelper with ChangeNotifier {
  String result = '0';
  String defaultInput = '0';
  String expression = '';

  void computeInput(String userInput) {
    if (userInput == 'DEL') {
      _delete();
    } else if (userInput == '=') {
      _compute();
    } else if (userInput == 'AC') {
      _reset();
    } else if (userInput == 'Ans') {
      _continueFromAnswer();
    } else {
      if (defaultInput == '0') {
        defaultInput = userInput;
      } else {
        defaultInput = defaultInput + userInput;
      }
    }
    notifyListeners();
  }

  void _delete() {
    defaultInput = defaultInput.substring(0, defaultInput.length - 1);
    if (defaultInput == '') _reset();
  }

  void _reset() {
    defaultInput = '0';
    result = '0';
  }

  void _continueFromAnswer() {
    defaultInput = result;
  }

  void _compute() {
    expression = defaultInput;
    expression = expression.replaceAll('X', '*');
    expression = expression.replaceAll('%', '⁒');

    final Parser p = Parser();
    final Expression exp = p.parse(expression);
    final ContextModel cm = ContextModel();

    result = '${exp.evaluate(EvaluationType.REAL, cm)}';
  }
}
