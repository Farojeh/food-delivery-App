import 'package:advanced_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackgroundView extends StatelessWidget {
  final bool goback ;
  final Widget screen;
  const BackgroundView({super.key, required this.screen, required this.goback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: ColorsMe.primaryback,
              ),
              Positioned(
                top: 0,
                child: Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width,
                color: ColorsMe.primaryback,
              ),),
              Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/splash_bg.png",
                      fit: BoxFit.cover,
                      color: Colors.black,
                    ),
                  )),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      "assets/images/app_logo.png",
                      color: Colors.black,
                      fit: BoxFit.contain,
                    ),
                  )),
             goback? Positioned(
                  top: 30,
                  left: 15,
                  child: InkWell(
                    overlayColor:
                        WidgetStatePropertyAll(Colors.white.withOpacity(0)),
                    onTap: () => GoRouter.of(context).pop(),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Back",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                        )
                      ],
                    ),
                  )):Container(),
              Positioned(
                top: MediaQuery.of(context).size.height*0.24,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  decoration:const  BoxDecoration(
                      color: Colors.white,
                      borderRadius:const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: screen,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
