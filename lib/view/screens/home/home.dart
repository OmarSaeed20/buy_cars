import '/index.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SizedBox(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              kHeightBox10,
              // List cars
              listCars(controller),

              // poster
              Image.asset(Images.car3),

              // search
              searchWidget(onTap: () {}),

              // car type
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(20),
                    vertical: getProportionateScreenHeight(0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    carType(name: "أمريكى"),
                    carType(name: "أوروبى"),
                    carType(name: "آسيوى"),
                  ],
                ),
              ),
              kHeightBox20,
              // List cars
              gridList(controller, itemCount: controller.listGridCar.length),
              kHeightBox5,
              Image.asset(
                Images.car2,
                width: Dimensions.screenWidth,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
