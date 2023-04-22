import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../const/constant.dart';

class EtkinliklerForm extends StatefulWidget {
  const EtkinliklerForm({super.key});

  @override
  State<EtkinliklerForm> createState() => _EtkinliklerFormState();
}

class _EtkinliklerFormState extends State<EtkinliklerForm> {
  List<dynamic> sabah_etkinlikleri = [
    {
      "etkinlik_name": "Pilates",
      "etkinlik_image":
          "https://brtk.net/wp-content/uploads/2023/03/04/daupilates.jpg?ver=0e7caf909d5839bca58b9c15acee7c82", //"https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Grup pilatesi",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "08:30"
    },
    {
      "etkinlik_name": "Yoga",
      "etkinlik_image":
          "https://www.skechers.com.tr/blog/wp-content/uploads/2021/05/pexels-elly-fairytale-3822906.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Grup yogası",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "09:00"
    },
    {
      "etkinlik_name": "Sabah Koşusu",
      "etkinlik_image":
          "https://blog.decathlon.com.tr/wp-content/uploads/2016/04/1200x590.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Grup koşusu",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "09:30"
    },
  ];
  List<dynamic> oglen_etkinlikleri = [
    {
      "etkinlik_name": "Köpük Partisi",
      "etkinlik_image":
          "https://www.gercekalanya.com/images/haberler/19725.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Havuzda köpük partisi",
      "category": "oglenEtkinlikleri",
      "yer": "1",
      "etkinlik_saat": "12:30"
    },
    // {
    //   "food_name": "Börek",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Hamburger",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-7.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Patates Haşlaması",
    //   "food_image":
    //       "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // }
  ];
  List<dynamic> menu_aksamYemegi = [
    {
      "food_name": "Adana Kebap",
      "food_image":
          "https://iasbh.tmgrup.com.tr/040972/800/420/0/136/1152/740?u=https://isbh.tmgrup.com.tr/sbh/2020/03/05/en-harika-adana-kebap-tarifi-adana-kebap-nasil-yapilir-1583404717106.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Adana yöresine özgü acı kebap",
      "category": "ogleYemegi",
      "puan": 5
    },
    // {
    //   "food_name": "Tavuk",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Börek",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Hamburger",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-7.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Patates Haşlaması",
    //   "food_image":
    //       "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 2.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(
                  "assets/images/logo/logo.png",
                  width: 150,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SABAH ETKİNLİKLERİ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        sabahEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "ÖĞLEN ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ),
        oglenEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "ÇOCUK ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ),
        cocukEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "GECE ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ),
        geceEtkinlikleriListeleme()
      ]),
    );
  }

  Widget sabahEtkinlikleriListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 300,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: sabah_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = sabah_etkinlikleri[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kPrimaryColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              etkinlik_["etkinlik_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: kPrimaryColor,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              // Text(favoriDoctors[index]
                                              //         ['yildizOrtalamasi']
                                              //     .toString()),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget oglenEtkinlikleriListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 300,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: oglen_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = oglen_etkinlikleri[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kPrimaryColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              etkinlik_["etkinlik_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: kPrimaryColor,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              // Text(favoriDoctors[index]
                                              //         ['yildizOrtalamasi']
                                              //     .toString()),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget cocukEtkinlikleriListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 300,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: sabah_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = sabah_etkinlikleri[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kPrimaryColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              etkinlik_["etkinlik_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: kPrimaryColor,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              // Text(favoriDoctors[index]
                                              //         ['yildizOrtalamasi']
                                              //     .toString()),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget geceEtkinlikleriListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 300,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: sabah_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = sabah_etkinlikleri[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: kPrimaryColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              etkinlik_["etkinlik_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: kPrimaryColor,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              // Text(favoriDoctors[index]
                                              //         ['yildizOrtalamasi']
                                              //     .toString()),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
}
