import 'package:flutter/material.dart';
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

  static List<Widget> tabViews = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
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
                   margin: const EdgeInsets.only(top: 10),
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
                height: MediaQuery.of(context).size.height * 0.6,
                child: TabBarView(controller: _tabController,children: tabViews,),
            ),
            ),
          ],
        ),
      ),
    );
  }
}