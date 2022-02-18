import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/shared/util/date_utils.dart';

DateTime dateTime(int year, int month, int day) => DateTime(year, month, day);

void main() {
  test('deve formatar datas', () {
    expect(DateUtils.formatDate(dateTime(1991, 10, 15)), '15/10/1991');
  });
}