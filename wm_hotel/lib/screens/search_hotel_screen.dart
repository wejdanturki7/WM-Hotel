import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/hotel_detiles_screen.dart';
import 'package:wm_hotel/services/supabase.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/utilities/extension/screen.dart';
import 'package:wm_hotel/widget/appbar_widget.dart';
import 'package:wm_hotel/widget/card_widget.dart';

class SearchHotelScreen extends StatefulWidget {
  const SearchHotelScreen({super.key, required this.qurey});

  final String qurey;

  @override
  State<SearchHotelScreen> createState() => _SearchHotelScreenState();
}

class _SearchHotelScreenState extends State<SearchHotelScreen> {
  final currentUserId = SupabaseService.supabase.auth.currentSession?.user.id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.getWidth(),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            WAppBar(
              title: "Search",
              arrowBack: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: FutureBuilder(
                future: SupabaseService().searchHotelsByName(widget.qurey),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final list = snapshot.data ?? [];
                    return SizedBox(
                      height: context.getHeight(),
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: GridView.count(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(15),
                        primary: false,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 150,
                        crossAxisCount: 1,
                        children: [
                          for (final hotels in list) ...[
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: CardWidget(
                                hotels: hotels,
                                onTap: () {
                                  context.push(
                                      screen: HoteleDetilesScreen(
                                    hotels: hotels,
                                  ));
                                },
                              ),
                            ),
                          ]
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
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
