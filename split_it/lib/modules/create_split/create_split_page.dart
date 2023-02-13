import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:split_it/modules/create_split_success/create_split_success_page.dart';
import 'package:split_it/shared/repositories/events_repository.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController(repository: EventsRepository());

  late List<Widget> pages;
  late ReactionDisposer _disposer;

  @override
  void initState() {
    pages = [
      StepOnePage(controller: controller),
      StepTwoPage(controller: controller),
      StepThreePage(controller: controller,),
    ];
    _disposer = autorun((_) {
      if (controller.status == CreateSplitStatus.success) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>
                CreateSplitSuccessPage(controller: controller)));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
        onTapBack: controller.backPage,
        controller: controller,
        size: pages.length,
      ),
      body: Observer(builder: (context) => pages[controller.currentPage],),
      bottomNavigationBar: BottomStepperBarWidget(
        onTapCancel: controller.backPage,
        controller: controller,
      ),
    );
  }
}
