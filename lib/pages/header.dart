import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Title",
                  style: TextStyle(color: AppColors.mainColor, fontSize: 25),
                ),
              ],
            ),
            Center(
              child: Container(
                width: 45,
                height: 45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
