import '/index.dart';

PreferredSizeWidget appBar() => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blueGrey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              appBarIcon("assets/icons/notification.svg",
                  imagHei: 20,
                  imagWid: 18,
                  onTap: () {},
                  pLeTop: 20,
                  pLeBott: 0,
                  pLeft: 0,
                  pRight: 0),
              Positioned(
                // top: getProportionateScreenHeight(.5),
                right: getProportionateScreenHeight(5),
                left: getProportionateScreenHeight(18),
                bottom: getProportionateScreenHeight(10),
                child: Container(
                  height: getProportionateScreenHeight(16),
                  width: getProportionateScreenHeight(16),
                  margin: EdgeInsets.all(getProportionateScreenWidth(1)),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(
                        color: Colors.white,
                        width: getProportionateScreenWidth(1.2)),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: TextWidget(
                      "2",
                      textAlign: TextAlign.center,
                      fontSize: 10,
                      color: AppColors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          appBarIcon("assets/icons/menu.svg",
              imagHei: 14,
              imagWid: 14,
              onTap: () {},
              pLeTop: 10,
              pLeBott: 0,
              pLeft: 0,
              pRight: 0),
        ],
      ),
    );
