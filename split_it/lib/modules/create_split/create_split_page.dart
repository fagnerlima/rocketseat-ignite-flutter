import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();

  int index = 0;

  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      StepOnePage(
        onChange: (value) {
          controller.eventName = value;
          setState(() {});
        },
      ),
      Container(color: Colors.green,),
      Container(color: Colors.blue,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      appBar: CreateSplitAppBarWidget(
        onTapBack: backPage,
        actualPage: index,
        size: pages.length,
      ),
      body: pages[index],
      bottomNavigationBar: BottomStepperBarWidget(
        onTapCancel: backPage,
        onTapNext: nextPage,
        enabledButtons: controller.enabledNavigateButton(),
      ),
    );
  }

  backPage() {
    if (index > 0) {
      setState(() => index--);
    }
  }

  nextPage() {
    if (index < pages.length - 1) {
      setState(() => index++);
    }
  }
}
