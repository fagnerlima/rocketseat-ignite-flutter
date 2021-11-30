import 'package:flutter/material.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppTheme.colors.backButton,
                  ),
                  onPressed: () => backPage(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text.rich(TextSpan(
                  text: '${index + 1}'.padLeft(2, '0'),
                  style: AppTheme.textStyles.stepperIndicatorPrimary,
                  children: [
                    TextSpan(
                      text: ' - ${pages.length.toString().padLeft(2, '0')}',
                      style: AppTheme.textStyles.stepperIndicatorSecondary,
                    )
                  ]
                )),
              ),
            ],
          ),
        ),
      ),
      body: pages[index],
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 60,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: backPage,
                      child: Text(
                        'Cancelar',
                        style: AppTheme.textStyles.stepperNextButton,
                      )
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 60,
                    color: AppTheme.colors.divider,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: nextPage,
                      child: Text(
                        'Continuar',
                        style: AppTheme.textStyles.stepperNextButton,
                      )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
