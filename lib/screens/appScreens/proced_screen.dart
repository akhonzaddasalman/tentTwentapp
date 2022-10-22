// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tentwentyapp/components/buttons.dart';
import '../../Colors/colors.dart';
import '../../components/home_screen_appbar.dart';

class CinemaHall extends StatefulWidget {
  const CinemaHall({Key? key}) : super(key: key);

  @override
  _CinemaHallState createState() => _CinemaHallState();
}

class _CinemaHallState extends State<CinemaHall> with TickerProviderStateMixin {
  late List<Offset> positions;
  late List<ValueNotifier<bool>> states;
  late AnimationController ctrl;

  @override
  void initState() {
    super.initState();
    positions = [
      ...List.generate(16, (index) => (Offset(index + 1, 0))),
      for (int r = 1; r < 7; r++)
        ...List.generate(
            18, (index) => (Offset(index.toDouble(), r.toDouble()))),
    ];
    states = List.generate(positions.length, (index) => ValueNotifier(false));
    ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    Future.delayed(const Duration(milliseconds: 2000), () => ctrl.forward());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: buildAppBar(Icons.arrow_back_ios, "The king's Man",
              'March 5,2022 | 12:30 Hall 1'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                      top: 60,
                      left: 10,
                      child: Image.asset('assets/Images/line1.png')),
                  Positioned(
                      top: 70,
                      left: 145,
                      child: Text(
                        'Screen',
                        style: TextStyle(
                            color: kDescriptionColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                  Expanded(
                    child: SizedBox(
                      height: 350.h,
                      child: CustomMultiChildLayout(
                        delegate: CinemaHallDelegate(
                            ctrl, positions, const Size(24, 24)),
                        children: List.generate(
                            positions.length,
                            (index) => LayoutId(
                                id: index,
                                child: FittedBox(
                                  child: ValueListenableBuilder<bool>(
                                      valueListenable: states[index],
                                      builder: (context, state, child) {
                                        return TweenAnimationBuilder<double>(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            tween:
                                                Tween(end: state ? 0.8 : 0.2),
                                            builder: (context, t, child) {
                                              return Material(
                                                child: IconButton(
                                                  icon: Icon(
                                                      index == 100
                                                          ? Icons.event_seat
                                                          : Icons.event_seat,
                                                      color: kSeatColor
                                                          .withOpacity(t)),
                                                  padding: EdgeInsets.zero,
                                                  iconSize: 24,
                                                  tooltip:
                                                      'seat ${positions[index].dy.toInt() + 1}, ${positions[index].dx.toInt() + 1}',
                                                  onPressed: () {
                                                    states[index].value =
                                                        !state;
                                                    print(index);
                                                  },
                                                ),
                                              );
                                            });
                                      }),
                                ))),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.event_seat,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Selected',
                                      style: TextStyle(
                                          color: kDescriptionColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.event_seat,
                                      color: Colors.blue.shade100,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Not Available',
                                      style: TextStyle(
                                          color: kDescriptionColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.event_seat,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'VIP (150\$)',
                                      style: TextStyle(
                                          color: kDescriptionColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.event_seat,
                                      color: Colors.blue.shade100,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Regular (50\$)',
                                      style: TextStyle(
                                          color: kDescriptionColor,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.grey.shade200)),
                            child: Row(
                              children: [
                                Text(
                                  "4 / ",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                      color: kPrimaryColor),
                                ),
                                Text(
                                  "3 row",
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      color: kPrimaryColor),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.close,
                                  color: kPrimaryColor,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 50.h,
                              width: 108,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.grey.shade200)),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10.h,),
                                    Text(
                                      "3 row",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: kPrimaryColor),
                                    ),
                                    Text(
                                      "\$ 50",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 05,
                            ),
                            SizedBox(
                              height: 50.h,
                                width: 216.w,
                                child: buildTicketButton('Proceed to pay', () {}))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    ctrl.dispose();
  }
}

class CinemaHallDelegate extends MultiChildLayoutDelegate {
  final AnimationController ctrl;
  final List<Offset> positions;
  final Size seatSize;
  late Size cinemaHallSize;

  CinemaHallDelegate(this.ctrl, this.positions, this.seatSize)
      : super(relayout: ctrl) {
    double cols = positions.map((o) => o.dx).reduce(max) + 1;
    double rows = positions.map((o) => o.dy).reduce(max) + 1;
    cinemaHallSize = Size(cols * seatSize.width, rows * seatSize.height);
  }

  @override
  void performLayout(size) {
    final matrix = sizeToRect(cinemaHallSize, Offset.zero & size);
    final seatRect = MatrixUtils.transformRect(matrix, Offset.zero & seatSize);
    final center =
        size.center(Offset(-seatRect.width / 2, -seatRect.height / 2));

    int childId = 0;
    final constraints =
        BoxConstraints.tight(Size(seatRect.width, seatRect.height));
    final t = Curves.bounceOut.transform(ctrl.value);
    for (final position in positions) {
      layoutChild(childId, constraints);
      final offset = Offset(seatRect.left + position.dx * seatRect.width,
          seatRect.top + position.dy * seatRect.height);
      positionChild(childId, Offset.lerp(center, offset, t)!);
      childId++;
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}

Matrix4 sizeToRect(Size src, Rect dst,
    {BoxFit fit = BoxFit.contain, Alignment alignment = Alignment.center}) {
  FittedSizes fs = applyBoxFit(fit, src, dst.size);
  double scaleX = fs.destination.width / fs.source.width;
  double scaleY = fs.destination.height / fs.source.height;
  Size fittedSrc = Size(src.width * scaleX, src.height * scaleY);
  Rect out = alignment.inscribe(fittedSrc, dst);

  return Matrix4.identity()
    ..translate(out.left, out.top)
    ..scale(scaleX, scaleY);
}
