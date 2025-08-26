import 'package:degdeg_app/application/screens/HelpCenter%20.dart';
import 'package:degdeg_app/model/shirkadahaModel.dart';
import 'package:flutter/material.dart';

class Topartwidget extends StatelessWidget {
  final CompanyDetailModel? companyDetail;

  const Topartwidget({super.key, this.companyDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      width: double.infinity,
      color: Color(0xfff5f5f5),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(width: 100, height: 120, 'assets/images/degdeg2.jpeg'),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return HelpCenter(companyDetail: companyDetail,);
                        },
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Image.asset('assets/images/headphones11.png'),
                ),
                SizedBox(width: 20),
                Image.asset('assets/images/bell (1).png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
