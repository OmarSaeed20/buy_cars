import 'package:buy_cars/index.dart';

Widget searchWidget({required void Function() onTap}) => GestureDetector(
      onTap: onTap,
      child: Container(
        height: getProportionateScreenHeight(60),
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(25),
            vertical: getProportionateScreenHeight(25)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1.3),
        ),
        child: ListTile(
          title: Text(
            "ابحث عن سيارتك",
            style: TextStyle(fontSize: getProportionateScreenWidth(20)),
            textAlign: TextAlign.center,
          ),
          trailing: SvgPicture.asset(Images.search,
              height: getProportionateScreenHeight(28)),
        ),
      ),
    );
