import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power_store1/constants/Buttons/custom_buttons.dart';
import 'package:power_store1/view/MyProfile/my_profile.dart';

import '../../../constants/SizeConfig/size_config.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: 45,
                ),
              ),
              Positioned(
                top: SizeConfig.defaultSize! * 2.5,
                left: SizeConfig.defaultSize! * 20,
                child: Text(
                  ': Terms & Conditions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              ArrowBack(
                onTap: () {
                  Get.back();
                },
              ),
            ],
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Text("أهلاً وسهلاً بك في ديجي شي",
                maxLines: null,),
                Text(maxLines: null,"تضمن هذه الصفحة شروط الاستفادة من خدمات التجارة الإلكترونية المقدمة من ديجي شي لذا يرجى قراءتها بعناية قبل عملية الشراء وعند استفادتك من خدماتنا فهذا يعني أنك توافق على هذه الشروط والأحكام")
              ],
            ),
          )
        ],
      ),
    );
  }
}
