import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/shared/util/number_utils.dart';

String currencyOutput(String value) => 'R\$ $value';

void main() {
  test('deve formatar valores monetários', () {
    expect(NumberUtils.formatCurrency(150), currencyOutput('150,00'));
    expect(NumberUtils.formatCurrency(23859), currencyOutput('23.859,00'));
    expect(NumberUtils.formatCurrency(99.9), currencyOutput('99,90'));
    expect(NumberUtils.formatCurrency(199.98), currencyOutput('199,98'));
  });
}