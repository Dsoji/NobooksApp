import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nobook/src/core/constants/assets.dart';
import 'package:nobook/src/core/extensions/size_extension.dart';

//import 'package:nobook/src/core/themes/color.dart';
import 'package:nobook/src/core/utils/sizing/sizing.dart';
import 'package:nobook/src/core/widgets/app_text.dart';
//import 'package:nobook/src/features/dashboard/view/screen/dashboard_calender.dart';
import 'package:nobook/src/features/dashboard/view/screen/dashboard_navigation.dart';
import 'package:nobook/src/features/dashboard/view/screen/dashboard_board.dart';
import 'package:nobook/core.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool expand = true;

  toggleminimize() {
    expand = !expand;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Structure(
      animateDuration: const Duration(
          milliseconds:
              100), // no need to add animation inside Dashboard navigation widget use this animateDuration instead
      animateReverseDuration: const Duration(milliseconds: 100),
      expandLeftBar: expand,
      appBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AppText.semiBold('Hi, Boluwatife🧑'),
          const XMargin(250),
          SizedBox(
            width: context.width * 0.25,
            height: context.height * 0.065,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.red,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18,
                  ),
                  hintText: 'Search for anything',
                  hintStyle: TextStyle(fontSize: 10, color: Colors.black)),
            ),
          ),
          //const XMargin(10),
          SvgPicture.asset(Assets.libraryIcon),
          //const XMargin(10),
          SvgPicture.asset(Assets.notificationIcon),
          // const XMargin(10),
          Image.asset(
            Assets.dp,
            height: 30,
          )
        ],
      ),
      leftBar: DashBoardNavigation(expand: toggleminimize, isSelected: expand),
      //rightBar: const DashboardCalender(),
      body: const DashboardBoard(),
    );
  }
}
