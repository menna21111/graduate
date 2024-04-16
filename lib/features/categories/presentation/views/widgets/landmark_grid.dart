import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/widgets/custom_error_msg.dart';
import 'package:graduation/features/categories/presentation/manger/landmarks_cubit/landmarks_cubit_cubit.dart';
import 'package:graduation/features/categories/presentation/views/widgets/customcard.dart';

class landmarkGrid extends StatelessWidget {
  landmarkGrid({Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandmarksCubitCubit, LandmarksCubitState>(
      builder: (context, state) {
        if (state is LandmarksCubitSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 11, right: 17),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.Landmarklist.length,
                clipBehavior: Clip.none,                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (MediaQuery.of(context).size.width * .431) /
                      (MediaQuery.of(context).size.height * .253),
                  crossAxisCount: 2,
                  crossAxisSpacing: 22,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    imglink:'assets/img/landmarks/${state.Landmarklist[index].imageCover!}',

                    text: state.Landmarklist[index].name!,
                    onTap: () => GoRouter.of(context).push('/Information',extra:state.Landmarklist[index]),
                  );
                },
              ),
            ),
          );
        } else if (state is LandmarksCubitFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
