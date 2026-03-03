import 'package:flutter/material.dart';
import '../widgets/calculator_button.dart';
import '../utils/calculator_logic.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  double? _firstOperand;
  String? _operator;
  bool _shouldClearInput = false;

  void _onButtonPressed(String text) {
    setState(() {
      if (text == "C") {
        _output = "0";
        _firstOperand = null;
        _operator = null;
        _shouldClearInput = false;
      } else if (["+", "-", "x", "÷"].contains(text)) {
        _firstOperand ??= double.tryParse(_output);
        _operator = text;
        _shouldClearInput = true;
      } else if (text == "=") {
        if (_firstOperand != null && _operator != null) {
          double secondOperand = double.tryParse(_output) ?? 0;
          double result = CalculatorLogic.calculate(
            _firstOperand!,
            secondOperand,
            _operator!,
          );
          _output = CalculatorLogic.formatResult(result);
          _firstOperand = null;
          _operator = null;
          _shouldClearInput = true; // Result is shown, next number clears it
        }
      } else {
        // Number or dot
        if (_shouldClearInput) {
          _output = "";
          _shouldClearInput = false;
        }
        if (_output == "0" && text != ".") {
          _output = text;
        } else if (text == "." && _output.contains(".")) {
          return;
        } else {
          _output += text;
        }
      }
    });
  }

  Widget _buildButtonRow(List<String> buttons) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.map((text) {
          Color bgColor = const Color(0xFF333333);
          Color txtColor = Colors.white;

          if (["C", "+/-", "%"].contains(text)) {
            bgColor = const Color(0xFFA5A5A5);
            txtColor = Colors.black;
          } else if (["÷", "x", "-", "+", "="].contains(text)) {
            bgColor = const Color(0xFFFF9F0A);
          }

          return CalculatorButton(
            text: text,
            backgroundColor: bgColor,
            textColor: txtColor,
            flex: text == "0" ? 2 : 1,
            onPressed: () => _onButtonPressed(text),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Text(
                  _output,
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            _buildButtonRow(["C", "+/-", "%", "÷"]),
            _buildButtonRow(["7", "8", "9", "x"]),
            _buildButtonRow(["4", "5", "6", "-"]),
            _buildButtonRow(["1", "2", "3", "+"]),
            _buildButtonRow(["0", ".", "="]),
          ],
        ),
      ),
    );
  }
}
