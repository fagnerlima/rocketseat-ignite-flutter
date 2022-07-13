import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';

class StepMultiInputText extends StatelessWidget {
  final int count;
  final ValueChanged<String> itemName;
  final ValueChanged<double> itemValue;

  final valueInputTextController = MoneyMaskedTextController(
    leftSymbol: 'R\$',
    decimalSeparator: ','
  );

  StepMultiInputText({
    Key? key,
    required this.count,
    required this.itemName,
    required this.itemValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text('$count'),
          ),
          Expanded(
            flex: 4,
            child: StepInputTextWidget(
              onChanged: (value) => itemName(value),
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
              onChanged: (value) => itemValue(double.parse(value
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
