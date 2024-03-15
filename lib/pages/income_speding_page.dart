import 'package:flutter/material.dart';
import 'package:flutter_app_figma/design/color.dart';
import 'package:flutter_app_figma/design/icons.dart';
import 'package:flutter_app_figma/design/your_cards.dart';
import 'package:google_fonts/google_fonts.dart';

class IncomeSpendingPage extends StatelessWidget {
  final String pageType;

  const IncomeSpendingPage({super.key, required this.pageType});

  @override
  Widget build(BuildContext context) {
    final String total =
        pageType == 'Income' ? 'Total incomes' : 'Total spends';
    final String amount = pageType == 'Income' ? '\$472.55' : '\$1000.00';
    final String statistic =
        pageType == 'Income' ? 'Incomes statistic' : 'Spends statistic';
    final Color diagram = pageType == 'Income' ? backgroundColor : primaryColor;
    final List transaction = pageType == 'Income' ? income : spending;
    final String name = pageType == 'Income' ? 'nameIncome' : 'nameSpending';
    final String date = pageType == 'Income' ? 'dateIncome' : 'dateSpending';
    final String money = pageType == 'Income' ? 'income' : 'spending';
    final Color moneyColor = pageType == 'Income' ? incomeColor : spendingColor;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: back,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        backgroundColor: backgroundColor,
        title: Text(
          pageType,
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
                  fontSize: 24, color: textColor, fontWeight: FontWeight.w600)),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    height: 337,
                    width: 316,
                    decoration: BoxDecoration(
                        color: containerSignUpIn,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    top: 20,
                    left: 24,
                    child: Text(total,
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: textColor2,
                                fontWeight: FontWeight.w400,
                                fontSize: 14))),
                  ),
                  Positioned(
                    top: 42,
                    left: 24,
                    child: Text(amount,
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: textColor2,
                                fontWeight: FontWeight.w700,
                                fontSize: 16))),
                  ),
                  Positioned(
                    top: 23,
                    right: 16,
                    child: Container(
                      height: 34,
                      width: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: primaryColor),
                      child: Row(
                        children: [
                          Container(
                            margin:
                                const EdgeInsets.only(top: 9, left: 15, bottom: 10),
                            child: Text('Month',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        color: textColor2,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12))),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 16, left: 8, bottom: 15),
                            child: monthArrow,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 86,
                      left: 32,
                      child: SizedBox(
                        height: 144,
                        width: 250,
                        child: Row(
                          children: [
                            Container(
                              height: 144,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 38),
                              height: 106,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 68),
                              height: 76,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 38),
                              height: 106,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 9),
                              height: 135,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 97),
                              height: 47,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              height: 95,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: diagram),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      top: 245,
                      left: 32,
                      child: Row(
                        children: [
                          Text('S',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 28,
                          ),
                          Text('M',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 27,
                          ),
                          Text('T',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 26,
                          ),
                          Text('W',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 29,
                          ),
                          Text('T',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 29,
                          ),
                          Text('F',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                          const SizedBox(
                            width: 29,
                          ),
                          Text('S',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      color: textColor2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16))),
                        ],
                      )),
                  Positioned(
                    top: 293,
                    left: 31,
                    child: Container(
                      height: 9,
                      width: 9,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: diagram),
                    ),
                  ),
                  Positioned(
                      top: 289,
                      left: 47,
                      child: Text(statistic,
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: textColor2,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))))
                ]),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(left: 24, top: 24),
                      child: Text('This Month',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: textColor,
                                  fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 179, top: 29),
                      child: Text('See all',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w400))),
                    )
                  ],
                ),
                Column(
                    children: List.generate(transaction.length, (index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    width: 327,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: backgroundColor),
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: cube,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(transaction[index][name],
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          color: textColor,
                                          fontWeight: FontWeight.w600))),
                            ),
                            Text(transaction[index][date],
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: textColor,
                                        fontWeight: FontWeight.w400))),
                          ],
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Text(transaction[index][money],
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    color: moneyColor,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  );
                }))
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 45.5,
            right: 45.5,
            child: SizedBox(
              height: 74,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: backgroundColor,
                ),
                child: Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 40, top: 25, bottom: 25),
                      child: Row(
                        children: [
                          Container(
                            child: home,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 10, top: 2, bottom: 2),
                            child: Text('Home',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: incomeColor,
                                        fontWeight: FontWeight.w500))),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 35, top: 25, bottom: 22.59),
                      child: search,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 35, top: 25, bottom: 25),
                      child: bell,
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 35, top: 25, bottom: 25),
                      child: user,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
