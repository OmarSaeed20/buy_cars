import 'package:buy_cars/index.dart';

Widget listCars(HomeController controller) => SizedBox(
      height: getProportionateScreenHeight(100),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listCar.length,
        itemBuilder: (context, index) {
          final list = controller.listCar[index];
          return Column(
            children: [
              Container(
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenHeight(60),
                padding: EdgeInsets.all(getProportionateScreenHeight(3)),
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(10)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.red)
                    // image:
                    //     DecorationImage(image: AssetImage(list.image))
                    ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Image.asset(
                    list.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(height: getProportionateScreenHeight(4)),
              TextWidget(
                list.name,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          );
        },
      ),
    );
