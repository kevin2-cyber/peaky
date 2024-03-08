import 'package:flutter/material.dart';
import 'package:peaky/screens/details.dart';
import 'package:peaky/model/place.dart';

import '../util/constants.dart';

class PlaceCard extends StatefulWidget {
  const PlaceCard({super.key, required this.place});

  final Place place;

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  final List<bool> _isFavorited = List.filled(AppConstants.kDummyData.length, false);
  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(place: widget.place))),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${widget.place.image}'),
              colorFilter: const ColorFilter.mode(Colors.black26, BlendMode.darken),
              fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppConstants.kColorPrimary,
                  ),
                  child: IconButton(
                      onPressed: () => setState(
                              () => _isFavorited[selectedIndex] = !_isFavorited[selectedIndex]),
                      splashColor: Colors.amberAccent,
                      icon: _isFavorited[selectedIndex] ? Image.asset(AppConstants.favourite, height: 30, width: 30,) : Image.asset(AppConstants.heart, height: 30, width: 30,)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                          '${widget.place.placeName}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        '${widget.place.price}/Night',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
