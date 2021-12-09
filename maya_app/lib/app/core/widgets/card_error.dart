import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:maya_app/app/core/bloc/connection/connection_bloc.dart';

class CardError extends StatelessWidget {
  final ConnectionBloc connectionBloc = Modular.get();

  CardError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 75.h,
      ),
      child: Center(
        child: BlocBuilder<ConnectionBloc, String>(
            bloc: connectionBloc,
            builder: (context, state) {
              if (state == 'none') {
                return Container(
                  height: 5.h,
                  width: 70.w,
                  color: Theme.of(context).colorScheme.error,
                  child: Center(
                    child: Text(
                      'Connection Lost',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onError,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              } else {
                return const SizedBox();
              }
            }),
      ),
    );
  }
}
