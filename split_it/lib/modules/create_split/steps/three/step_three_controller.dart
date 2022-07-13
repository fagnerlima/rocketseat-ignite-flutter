import 'package:mobx/mobx.dart';
import 'package:split_it/shared/models/item_model.dart';

part 'step_three_controller.g.dart';

class StepThreeController = _StepThreeControllerBase with _$StepThreeController;

abstract class _StepThreeControllerBase with Store {

  @observable
  ObservableList<ItemModel> items = ObservableList.of([]);

  @observable
  ItemModel item = ItemModel();

  @computed
  int get currentIndex => items.length;

  @computed
  bool get showButton => item.isValid;

  @action
  void addItem() {
    items.add(item);
    item = ItemModel();
  }

  @action
  void removeItem(int index) => items.removeAt(index);

  @action
  void onChanged({String? name, double? value}) {
    print('onChanged: $name, $value');
    item = item.copyWith(name: name, value: value);
  }
}
