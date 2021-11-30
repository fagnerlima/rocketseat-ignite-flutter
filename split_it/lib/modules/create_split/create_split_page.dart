import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar.dart';
import 'package:split_it/modules/create_split/widgets/create_split_app_bar.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  _CreateSplitPageState createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final pages = [
    Container(color: Colors.red,),
    Container(color: Colors.green,),
    Container(color: Colors.blue,),
  ];
  int index = 0;

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
