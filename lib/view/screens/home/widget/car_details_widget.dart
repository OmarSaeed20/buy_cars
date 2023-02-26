import '/index.dart';

Widget detailsCarWidget({
  required String imagePath,
  required String title,
  required String num,
}) =>
    Container(
      padding: const EdgeInsetsDirectional.all(2),
      height: getProportionateScreenHeight(45),
      width: getProportionateScreenHeight(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(5)),
        color: Colors.grey.shade200,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            imagePath,
            height: getProportionateScreenHeight(12),
            width: getProportionateScreenHeight(12),
            // color: color ?? Colors.blueAccent,
          ),
          TextWidget(
            title,
            fontSize: getProportionateScreenWidth(10),
          ),
          TextWidget(
            num,
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(12),
          ),
        ],
      ),
    );
