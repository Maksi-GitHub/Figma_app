import 'package:flutter/material.dart';
import 'package:flutter_app_figma/bottom_nav_bar.dart';
import 'package:flutter_app_figma/design/color.dart';
import 'package:flutter_app_figma/design/icons.dart';
import 'package:flutter_app_figma/design/your_cards.dart';
import 'package:flutter_app_figma/pages/income_speding_page.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class YourCard extends StatefulWidget {
  const YourCard({super.key});

  @override
  State<YourCard> createState() => _YourCardState();
}

class _YourCardState extends State<YourCard> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Your Card',
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: menuIcon,
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 250,
                    child: PageView(
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (int index) {
                          setState(() {
                            _currentPageIndex = index;
                          });
                        },
                        children: [
                          CreditCardWidget(
                            glassmorphismConfig: Glassmorphism(
                              blurX: 5.0,
                              blurY: 5.0,
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  spendingColor,
                                  incomeColor,
                                ],
                                stops: <double>[
                                  0.5,
                                  1,
                                ],
                              ),
                            ),
                            cardNumber: '',
                            expiryDate: '',
                            cardHolderName: '',
                            cvvCode: '',
                            showBackView: false,
                            onCreditCardWidgetChange: (CreditCardBrand) {},
                          ),
                          CreditCardWidget(
                            glassmorphismConfig: Glassmorphism(
                              blurX: 5.0,
                              blurY: 5.0,
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Colors.black,
                                  Colors.white,
                                ],
                                stops: <double>[
                                  0.3,
                                  1,
                                ],
                              ),
                            ),
                            cardNumber: '',
                            expiryDate: '',
                            cardHolderName: '',
                            cvvCode: '',
                            showBackView: false,
                            onCreditCardWidgetChange: (CreditCardBrand) {},
                          ),
                          CreditCardWidget(
                            glassmorphismConfig: Glassmorphism(
                              blurX: 5.0,
                              blurY: 5.0,
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Colors.green,
                                  Colors.yellow,
                                ],
                                stops: <double>[
                                  0.5,
                                  1,
                                ],
                              ),
                            ),
                            cardNumber: '',
                            expiryDate: '',
                            cardHolderName: '',
                            cvvCode: '',
                            showBackView: false,
                            onCreditCardWidgetChange: (CreditCardBrand) {},
                          ),
                          CreditCardWidget(
                            glassmorphismConfig: Glassmorphism(
                              blurX: 5.0,
                              blurY: 5.0,
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[
                                  Colors.pink,
                                  Colors.purple,
                                ],
                                stops: <double>[
                                  0.5,
                                  1,
                                ],
                              ),
                            ),
                            cardNumber: '',
                            expiryDate: '',
                            cardHolderName: '',
                            cvvCode: '',
                            showBackView: false,
                            onCreditCardWidgetChange: (CreditCardBrand) {},
                          )
                        ])
                        ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: ScaleEffect(
                      activeDotColor: primaryColor,
                      dotColor: primaryColor.withOpacity(0.3),
                      dotHeight: 5,
                      dotWidth: 5),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, right: 20, top: 20),
                      child: InkWell(
                        child: Container(
                          height: 66,
                          width: 148,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: borderUpDown),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: containerUpDowm,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: upArrow,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 20, top: 5),
                                    child: Text(
                                      'Income',
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: textColor,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Text(
                                        incomeSpending[_currentPageIndex]
                                            ['income'],
                                        style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                color: textColor,
                                                fontWeight: FontWeight.w700))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          String pageType = 'Income';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  IncomeSpendingPage(pageType: pageType),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 35, top: 20),
                      child: InkWell(
                        child: Container(
                          height: 66,
                          width: 148,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: borderUpDown),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: 46,
                                  width: 46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: containerUpDowm,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(14),
                                    child: downArrow,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 10, top: 5),
                                    child: Text(
                                      'Spending',
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: textColor,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Text(
                                        incomeSpending[_currentPageIndex]
                                            ['spending'],
                                        style: GoogleFonts.inter(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                color: textColor,
                                                fontWeight: FontWeight.w700))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          String pageType = 'Spending';
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  IncomeSpendingPage(pageType: pageType),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: containerTransaction,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(left: 20, top: 20),
                            child: Text('Transaction',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: textColor,
                                        fontWeight: FontWeight.w600))),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 200, top: 20),
                            child: Text('See all',
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w400))),
                          )
                        ],
                      ),
                      Container(
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
                                  child: Text(
                                      spending[_currentPageIndex]
                                          ['nameSpending'],
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: textColor,
                                              fontWeight: FontWeight.w600))),
                                ),
                                Text(
                                    spending[_currentPageIndex]['dateSpending'],
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
                            Text(spending[_currentPageIndex]['spending'],
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: spendingColor,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
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
                                  child: Text(
                                      income[_currentPageIndex]['nameIncome'],
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: textColor,
                                              fontWeight: FontWeight.w600))),
                                ),
                                Text(income[_currentPageIndex]['dateIncome'],
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
                            Text(income[_currentPageIndex]['income'],
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: incomeColor,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
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
                                  child: Text(
                                      spending[_currentPageIndex]
                                          ['nameSpending'],
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: textColor,
                                              fontWeight: FontWeight.w600))),
                                ),
                                Text(
                                    spending[_currentPageIndex]['dateSpending'],
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
                            Text(spending[_currentPageIndex]['spending'],
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: spendingColor,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
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
                                  child: Text(
                                      income[_currentPageIndex]['nameIncome'],
                                      style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                              fontSize: 16,
                                              color: textColor,
                                              fontWeight: FontWeight.w600))),
                                ),
                                Text(income[_currentPageIndex]['dateIncome'],
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
                            Text(income[_currentPageIndex]['income'],
                                style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: incomeColor,
                                        fontWeight: FontWeight.w600)))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: const BottomNavBar(),
    );
  }
}
  