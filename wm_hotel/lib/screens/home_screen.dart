import 'package:flutter/material.dart';
import 'package:wm_hotel/services/supabase.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';
import 'package:wm_hotel/utilities/ui_classes/spaces.dart';
import 'package:wm_hotel/widget/home_screen_widgets/city_listview.dart';
import 'package:wm_hotel/widget/home_screen_widgets/hotels_card_lisview.dart';
import 'package:wm_hotel/widget/home_screen_widgets/search_field.dart';
import 'package:wm_hotel/widget/home_screen_widgets/title_and_link.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final currentUserId = SupabaseService.supabase.auth.currentSession?.user.id;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
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
          top: 30,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hello Wejdan", //TODO return user name from database here
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(
                    "https://cdn.icon-icons.com/icons2/2490/PNG/512/hotel_icon_150155.png",
                    width: MediaQuery.of(context).size.width * 0.35,
                    color: AppColors.whiteColor,
                  )
                ],
              ),
              const SearchField(),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: AppColors.whiteColor,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                  const CiteisListView(),
                  Spaces.spaceH32,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TitleAndLinkRow(
                      title: "Favorite place to holiday",
                      linkTitle: "See all",
                    ),
                  ),
                  Spaces.spaceH24,
                  const HotelsCardListView(),
                ],
              ),
            ),
          ),
        ),
      ],
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
