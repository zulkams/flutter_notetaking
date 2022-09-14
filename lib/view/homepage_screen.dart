import 'package:flutter/material.dart';
import 'package:flutter_notetaking/constant.dart';
import 'package:flutter_notetaking/main.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: SvgPicture.asset('assets/icons/search.svg',
                    color: mainColor),
                onPressed: () {
                  /* ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar'))); */
                },
              ),
            ],
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TakeNotez',
                    style: GoogleFonts.asap(
                        textStyle: TextStyle(
                            fontSize: 24,
                            color: mainColor,
                            letterSpacing: .5,
                            fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 20, right: 20),
                        controller: _tabController,
                        labelColor: mainColor,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: mainColor,
                        /* indicator: */
                        /* CircleTabIndicator(color: mainColor, radius: 4), */
                        tabs: [
                          Tab(
                            icon: SvgPicture.asset('assets/icons/list.svg'),
                          ),
                          Tab(icon: SvgPicture.asset('assets/icons/grid.svg'))
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: double.maxFinite,
                      height: 300,
                      child: TabBarView(
                        controller: _tabController,
                        children: [Text("data"), Text("data")],
                      ))
                ],
              ),
            ),
          )),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;

    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
