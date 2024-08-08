import 'package:finderhostel/Pages/Home_Page.dart';
import 'package:finderhostel/Pages/add_listing.dart';
import 'package:finderhostel/model/category_widget.dart';
import 'package:finderhostel/presentation/building.dart';
import 'package:finderhostel/widgets/building_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../Theme/app_color.dart';
import '../model/building_near_you.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green[300],
            pinned: true,
            centerTitle: false,
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Hello,  ",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.white,
                          fontWeight: FontWeight.normal)),
                  TextSpan(
                      text: user.email!,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.white, fontWeight: FontWeight.normal))
                ]),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddHostelPage();
                  }));
                },
                hoverColor: Colors.cyan[400],
                icon: Icon(Icons.add_business_rounded),
                color: AppColor.white,
              ),
              const SizedBox(
                width: 24,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(76),
              child: SizedBox(
                child: Container(
                  height: 56,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              suffixIcon: Icon(Icons.search_sharp),
                              hintText: 'Search hostel'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(delegate: CategoryWidget()),
          SliverPadding(
            padding: const EdgeInsets.all(
              24,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near You",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BuildingNearYouWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nairobis popular',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return BuildingItem(
                building: popularInNairobi[index],
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 16),
                showDetail: false,
              );
            }, childCount: popularInNairobi.length)),
          )
        ],
      ),
    );
  }
}
