import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';

class StepMultiInputText extends StatefulWidget {
  final int count;
  final String? initialName;
  final double? initialValue;
  final ValueChanged<String> itemName;
  final ValueChanged<double> itemValue;


  StepMultiInputText({
    Key? key,
    required this.count,
    required this.itemName,
    required this.itemValue,
    this.initialName,
    this.initialValue
  }) : super(key: key);

  @override
  State<StepMultiInputText> createState() => _StepMultiInputTextState();
}

class _StepMultiInputTextState extends State<StepMultiInputText> {
  late MoneyMaskedTextController valueInputTextController;
  
  @override
  void initState() {
    super.initState();
    valueInputTextController = MoneyMaskedTextController(
        initialValue: widget.initialValue ?? 0.0,
        leftSymbol: 'R\$',
        decimalSeparator: ','
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text('${widget.count}'),
          ),
          Expanded(
            flex: 4,
            child: StepInputTextWidget(
              initialValue: widget.initialName,
              onChanged: (value) => widget.itemName(value),
              hintText: 'Ex: Picanha',
              textAlign: TextAlign.start,
              padding: EdgeInsets.zero,
            ),
          ),
          Expanded(
            flex: 2,
            child: StepInputTextWidget(
              controller: valueInputTextController,
              textInputType: TextInputType.number,
              onChanged: (value) => widget.itemValue(double.parse(value
                  .replaceAll('R\$', '')
                  .replaceAll('.', '')
                  .replaceAll(',', '.'))), // TODO fix
              hintText: 'R\$ 0,00',
              textAlign: TextAlign.start,
              padding: EdgeInsets.zero,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete)
          )
        ],
      ),
    );
  }
}
