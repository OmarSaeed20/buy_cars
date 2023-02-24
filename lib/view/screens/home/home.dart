import '/index.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // List cars
              listCars(controller),

              // poster
              Container(
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: Image.asset(Images.car3)),

              // search
              searchWidget(onTap: () {}),

              // car type
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(20),
                    vertical: getProportionateScreenHeight(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    carType(name: "أمريكى"),
                    carType(name: "أوروبى"),
                    carType(name: "آسيوى"),
                  ],
                ),
              ),

              // List cars
              listGridCars(controller),
              Image.asset(
                Images.car2,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
