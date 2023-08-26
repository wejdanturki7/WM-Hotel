import 'package:flutter/material.dart';
import 'package:wm_hotel/services/supabase.dart';
import 'package:wm_hotel/widget/home_screen_widgets/titled_city_icon.dart';

class CiteisListView extends StatelessWidget {
  const CiteisListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SupabaseService().getCites(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final list = snapshot.data ?? [];
          return SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                for (final cities in list) ...[
                  CityIcon(
                    cities: cities,
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
