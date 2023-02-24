import '/index.dart';

Widget carType({required String name}) => Container(
      height: getProportionateScreenHeight(33),
      width: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
      ),
      child: Center(
        child: Text(
          name,
          style:
              const TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
