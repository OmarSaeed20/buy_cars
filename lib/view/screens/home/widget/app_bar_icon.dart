import '/index.dart';

Widget appBarIcon(
  String image, {
  Color? imageColor,
  Color? backColor,
  double? pLeft,
  double? pRight,
  double? pLeTop,
  double? pLeBott,
  double? imagHei,
  double? imagWid,
  required void Function()? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(pLeft ?? 16.0),
            right: getProportionateScreenWidth(pRight ?? 16.0),
            top: getProportionateScreenWidth(pLeTop ?? 4.0),
            bottom: getProportionateScreenWidth(pLeBott ?? 4.0)),
        child: Container(
          width: getProportionateScreenWidth(40.0),
          decoration: BoxDecoration(
              color: backColor ?? Colors.transparent,
              borderRadius: BorderRadius.all(
                  Radius.circular(getProportionateScreenWidth(10.0)))),
          child: SvgPicture.asset(
            image,
            color: imageColor ?? Colors.white,
            height: getProportionateScreenHeight(imagHei ?? 17),
            width: getProportionateScreenHeight(imagWid ?? 17),
          ),
        ),
      ),
    );
