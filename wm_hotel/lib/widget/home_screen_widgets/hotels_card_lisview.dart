import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/hotel_detiles_screen.dart';
import 'package:wm_hotel/services/supabase.dart';
import 'package:wm_hotel/utilities/extension/navigator.dart';
import 'package:wm_hotel/widget/card_widget.dart';

class HotelsCardListView extends StatelessWidget {
  const HotelsCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SupabaseService().getHotels(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final list = snapshot.data ?? [];
          return SizedBox(
            height: 310,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
    );
  }
}
