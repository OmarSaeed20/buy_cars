import '/index.dart';

Widget detailsCarWidget(
        {required String imagePath,
        required String title,
        required String num}) =>
    Container(
      padding: const EdgeInsetsDirectional.all(2),
      height: getProportionateScreenHeight(53),
      width: getProportionateScreenHeight(43),
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
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(10),
            ),
          ),
          TextWidget(
            text: num,
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(12),
          ),
        ],
      ),
    );
