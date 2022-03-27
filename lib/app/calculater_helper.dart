part of app;

class CalculaterHelper with ChangeNotifier {
  static String _formattedNum(String input, int decimal) {
    return double.parse(input).toStringAsFixed(decimal);
  }

  String result = _formattedNum('0', 0);
  String defaultInput = _formattedNum('0', 0);
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
      if (defaultInput == _formattedNum('0', 0)) {
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
    defaultInput = _formattedNum('0', 0);
    result = _formattedNum('0', 0);
  }

  void _continueFromAnswer() {
    defaultInput = result;
  }

  void _compute() {
    expression = defaultInput;
    expression = expression.replaceAll('X', '*');
    expression = expression.replaceAll('%', '⁒');

    final Parser _parser = Parser();
    final Expression _exp = _parser.parse(expression);
    final ContextModel _contextModel = ContextModel();

    final String _result =
        '${_exp.evaluate(EvaluationType.REAL, _contextModel)}';

    return _formatFinalResult(_result);
  }

  void _formatFinalResult(String _result) {
    if (_result.contains('.')) {
      final int _decimalLength = _result.split('.').last.characters.length;
      final String _decimals = _result.split('.').last;

      if (_decimalLength == 1 && _decimals == '0') {
        result = _formattedNum(_result, 0);
        return;
      }

      if (_decimalLength == 1 && _decimals != '0') {
        result = _formattedNum(_result, 1);
        return;
      }

      if (_decimalLength >= 2) {
        result = _formattedNum(_result, 2);
        return;
      }
    }
  }
}
