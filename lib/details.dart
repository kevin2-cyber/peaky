import 'package:flutter/material.dart';
import 'package:peaky/explore.dart';
import 'package:peaky/model/place.dart';
import 'package:peaky/util/constants.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.place});

  final Place place;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details>
with TickerProviderStateMixin {

   TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  static const List<Tab> tabs = [
    Tab(text: 'Overview',),
    Tab(text: 'Reviews',)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
             SliverAppBar(
               automaticallyImplyLeading: false,
              leading: Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppConstants.kColorPrimary,
                ),
                child: IconButton(
                    onPressed: ()=> Navigator.pop(context),
                    splashColor: Colors.amberAccent,
                    icon: Image.asset(AppConstants.back)
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppConstants.kColorPrimary,
                  ),
                  child: IconButton(
                      onPressed: (){},
                      splashColor: Colors.amberAccent,
                      icon: Image.asset(AppConstants.heart,)
                  ),
                ),
              ],
              floating: true,
              expandedHeight: 300,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${widget.place.image}'),
                    fit: BoxFit.fill
                  ),
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
              ),
               bottom: PreferredSize(
                 preferredSize: const Size(20,20),
                 child: Container(
                   color: Colors.white,
                   padding: const EdgeInsets.only(left: 16, right: 16),
                   child: TabBar(
                     tabs: tabs,
                     indicatorSize: TabBarIndicatorSize.tab,
                     controller: _tabController,
                     labelColor: AppConstants.kColorPrimaryContainer,
                     unselectedLabelColor: AppConstants.kColorOnPrimary,
                     indicatorColor: AppConstants.kColorPrimaryContainer,
                   ),
                 )
               ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                  '${widget.place.placeName}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.place.streetName}',
                                style: const TextStyle(
                                    fontSize: 16,
                                  color: AppConstants.kColorOnPrimary
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Text('${widget.place.ratings} Ratings'),
                              const Spacer(),
                              Image.asset(
                                AppConstants.location,
                                width: 24, height: 24,
                                fit: BoxFit.fill,
                                color: AppConstants.kColorPrimaryContainer,
                              ),
                              const Text(
                                  'Map Directions',
                                style: TextStyle(
                                  color: AppConstants.kColorPrimaryContainer,
                                ),
                              ),
                              const SizedBox(width: 16,)
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                  'Amenities',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppConstants.kColorPrimary),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))
                                  ),
                                  height: 50,
                                  width: 150,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.bed, size: 24,),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Master Bed',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppConstants.kColorPrimary),
                                      borderRadius: const BorderRadius.all(Radius.circular(10))
                                  ),
                                  height: 50,
                                  width: 150,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.set_meal, size: 24,),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Dinner',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: AppConstants.kColorPrimary),
                                      borderRadius: const BorderRadius.all(Radius.circular(10))
                                  ),
                                  height: 50,
                                  width: 100,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.sports_gymnastics, size: 24,),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Gym',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: AppConstants.kColorPrimary),
                                    borderRadius: const BorderRadius.all(Radius.circular(10))
                                ),
                                height: 50,
                                width: 155,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.sports_gymnastics, size: 24,),
                                    SizedBox(width: 10,),
                                    Text(
                                      'Swimming pool',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: AppConstants.kColorPrimary,
                          ),
                          const Row(
                            children: [
                              Text(
                                  'Description',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                  '${widget.place.description}',
                                style: const TextStyle(
                                  color: AppConstants.kColorOnPrimary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppConstants.kColorPrimary,
                      child: const Center(
                        child: Text(
                          'Will Implement this feature soon',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$${widget.place.price}/Night'),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Explore(place: widget.place,))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppConstants.kColorPrimaryContainer,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                child: const Text(
                    'Book Now',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}