import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PayMent extends StatefulWidget {
  const PayMent({Key? key}) : super(key: key);

  @override
  State<PayMent> createState() => _PayMentState();
}

class _PayMentState extends State<PayMent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الإشتراك بباقة"),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              children: [
                Image.asset(
                  'images/Logo.png',
                  height: 100,
                  width: 250,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(20),
                    CardNumberInputFormatter(),
                  ],
                  decoration: InputDecoration(
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Icon(Icons.payment),
                    ),
                    label: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          "رقم بطاقة الإئتمان",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

// من اجل تنسيق رقم البطاقة

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write(" "); // space
      }
    }

    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(offset: buffer.toString().length));
  }
}
