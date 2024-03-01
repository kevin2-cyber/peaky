import 'package:flutter/material.dart';
import 'package:peaky/util/constants.dart';

import 'model/place.dart';

class Explore extends StatefulWidget {
  const Explore({super.key, required this.place});

  final Place place;

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 300,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            'Explore Natural\nBeauty of the World',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                            'Your imagination is your only limit with\n this new travel agency',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppConstants.kColorOnPrimary,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () => Navigator.pop(context),
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                          color: AppConstants.kColorPrimaryContainer,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          textColor: Colors.white,
                          child: const Text('Explore Now'),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${widget.place.image}'),
              fit: BoxFit.fill,
            )
          ),
        ),
      ),
    );
  }
}
