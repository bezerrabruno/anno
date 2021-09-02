import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'my_float_button_widget.dart';

class MyButtomBar extends StatelessWidget {
  final barBloc;

  const MyButtomBar({
    Key? key,
    required this.barBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocBuilder<Bloc<dynamic, int>, int>(
      bloc: barBloc,
      builder: (context, index) {
        return Container(
          height: 6.5.h,
          width: size.width,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, 6.5.h),
                painter: PathPainter(),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                _iconButtonTask(context, index),
                SizedBox(
                  width: 20.w,
                ),
                _iconButtonTimer(context, index),
              ]),
              Center(
                heightFactor: 0.6,
                child: MyFloatbutton(
                  popUp: Container(), //index == 0 ? PopUpDay() : PopUpTime(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _iconButtonTask(
    BuildContext context,
    int index,
  ) {
    return GestureDetector(
      //onTap: () => _barBloc.add(PageHomeEvent.changePage0),
      child: SizedBox(
        height: double.maxFinite,
        width: 20.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              index == 0 ? Icons.task : Icons.task_outlined,
              color: index == 0 ? Colors.white : Colors.grey[600],
              size: 30,
            ),
            Text(
              'Task',
              style: TextStyle(
                fontSize: 16.sp,
                color: index == 0 ? Colors.white : Colors.grey[600],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _iconButtonTimer(
    BuildContext context,
    int index,
  ) {
    return Container(
      height: double.maxFinite,
      width: 20.w,
      child: GestureDetector(
        //onTap: () => _barBloc.add(PageHomeEvent.changePage1),
        child: SizedBox(
          height: double.maxFinite,
          width: 20.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                index == 1 ? Icons.timer : Icons.timer_outlined,
                color: index == 1 ? Colors.white : Colors.grey[600],
                size: 30,
              ),
              Text(
                'Timer',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: index == 1 ? Colors.white : Colors.grey[600],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color.fromRGBO(12, 12, 77, 1)
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0)
      ..quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20)
      ..arcToPoint(Offset(size.width * 0.60, 20),
          radius: Radius.circular(10), clockwise: false)
      ..quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0)
      ..quadraticBezierTo(size.width * 0.80, 0, size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
