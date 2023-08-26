import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/card_widget.dart';
import 'package:wm_hotel/widget/home_screen_widgets/title_and_link.dart';
import 'package:wm_hotel/widget/home_screen_widgets/titled_city_icon.dart';

/////////////////////////////////TODO Scaffold will be removed ////////////
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 30.0,
                      right: 20,
                      left: 20,
                    ),
                    child: TitleAndLinkRow(
                      title: "Popular cities",
                      linkTitle: "See all",
                    ),
                  ),
                  Spaces.spaceH16,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      //TODO return cities from database as City icon using listview bulider
                      children: [
                        Spaces.spaceW16,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                        Spaces.spaceW8,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                        Spaces.spaceW8,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                        Spaces.spaceW8,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                        Spaces.spaceW8,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                        Spaces.spaceW8,
                        const CityIcon(
                          imgUrl: "assets/img/hotel.jpg",
                          city: "City",
                        ),
                      ],
                    ),
                  ),
                  Spaces.spaceH32,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TitleAndLinkRow(
                      title: "Favorite place to holiday",
                      linkTitle: "See all",
                    ),
                  ),
                  Spaces.spaceH24,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Spaces.spaceW24,
                        CardWidget(),
                        Spaces.spaceW24,
                        CardWidget(),
                        Spaces.spaceW24,
                        CardWidget(),
                        Spaces.spaceW24,
                        CardWidget(),
                        Spaces.spaceW24,
                        CardWidget(),
                        Spaces.spaceW24,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/**
  CSCPicker(
                    showCities: false,
                    showStates: false,
                    onCountryChanged: (country) {
                      setState(() {});
                    },
                    layout: Layout.vertical,
                    flagState: CountryFlag.DISABLE,
                  ),
 */