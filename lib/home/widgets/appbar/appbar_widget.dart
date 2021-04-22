import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/widgets.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    height: 161,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                  text: "Henrique",
                                  style: AppTextStyles.titleBold,
                                )
                              ]),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/37311937?s=400&u=b4cecb83438852a658222e3e2eb6ef9e75093335&v=4"))),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: ScoreCardWidget(),
                  )
                ],
              ),
            ));
}
