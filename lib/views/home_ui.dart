import 'package:flutter/material.dart';
import 'package:kinkun_app/models/food_list.dart';
import 'package:kinkun_app/views/detail_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<FoodList> foodlistInfo = [
    FoodList(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      lat: '13.7073451',
      lng: '100.3539168',
    ),
    FoodList(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      lat: '0',
      lng: '0',
    ),
    FoodList(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      lat: '0',
      lng: '0',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'กินกัน',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.asset(
                'assets/images/fastfood.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.green[900],
                  );
                },
                itemCount: foodlistInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: foodlistInfo[index].name!,
                            website: foodlistInfo[index].website!,
                            facebook: foodlistInfo[index].facebook!,
                            mobile: foodlistInfo[index].mobile!,
                            image: foodlistInfo[index].image!,
                            lat: foodlistInfo[index].lat!,
                            lng: foodlistInfo[index].lng!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + foodlistInfo[index].image!,
                    ),
                    title: Text(
                      foodlistInfo[index].name!,
                    ),
                    subtitle: Text(
                      foodlistInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green[500],
                      size: 40.0,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
