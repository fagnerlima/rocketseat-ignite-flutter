import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    'Divida suas contas com seus amigos',
                    style: GoogleFonts.montserrat(
                      color: AppTheme.colors.title,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset('assets/images/emoji.png'),
                  title: Text(
                    'Faça seu login com uma das contas abaixo',
                    style: GoogleFonts.inter(
                      color: AppTheme.colors.button,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(color: AppTheme.colors.border)
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 15.5,),
                            Image.asset('assets/images/google.png'),
                            SizedBox(width: 15.5,),
                            Container(
                              width: 1,
                              color: AppTheme.colors.border,
                            )
                          ],
                        )
                      ),
                      Expanded(child: Container()),
                      Text(
                        'Entrar com Google',
                        style: GoogleFonts.inter(
                          color: AppTheme.colors.button,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        AppTheme.colors.backgroundPrimary
                    )
                ),
                icon: Image.asset('assets/images/google.png'),
                label: Text(
                  'Entrar com Google',
                  style: GoogleFonts.inter(
                    color: AppTheme.colors.button,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        AppTheme.colors.backgroundPrimary
                    )
                ),
                icon: Image.asset('assets/images/apple.png'),
                label: Text(
                  'Entrar com Apple',
                  style: GoogleFonts.inter(
                    color: AppTheme.colors.button,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}