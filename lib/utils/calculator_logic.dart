class CalculatorLogic {
  static double calculate(double first, double second, String operator) {
    switch (operator) {
      case '+':
        return first + second;
      case '-':
        return first - second;
      case 'x':
      case '*':
        return first * second;
      case '/':
      case '÷':
        if (second == 0) return double.nan; // Handle division by zero
        return first / second;
      default:
        return 0;
    }
  }

  // Simple formatter to remove trailing .0
  static String formatResult(double result) {
    if (result.isNaN) return "Error";
    String s = result.toString();
    if (s.endsWith(".0")) {
      return s.substring(0, s.length - 2);
    }
    return s;
  }
}
