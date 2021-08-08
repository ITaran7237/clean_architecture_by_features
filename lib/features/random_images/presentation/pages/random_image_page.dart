import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_app/features/random_images/presentation/bloc/random_image_bloc.dart';
import 'package:clean_architecture_app/features/random_images/presentation/widgets/loading_widget.dart';
import 'package:clean_architecture_app/features/random_images/presentation/widgets/image_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture_app/locator.dart';

class RandomImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Image Collection')),
        body: buildBody(context));
  }

  BlocProvider<RandomImageBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator<RandomImageBloc>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                child: BlocBuilder<RandomImageBloc, RandomImageState>(
                    builder: (context, state) {
                  if (state is RandomImageInitial) {
                    return Icon(Icons.photo, size: 80, color: Colors.grey);
                  } else if (state is LoadingState) {
                    return LoadingWidget();
                  } else if (state is OnGotNewRandomImageState) {
                    return CachedNetworkImage(
                        imageUrl: state.imageUrl, width: 300, height: 300);
                  } else if (state is ErrorState) {
                    return Center(
                        child: Text(state.message,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)));
                  } else {
                    return Container();
                  }
                }),
              ),
              ImageControls()
            ],
          ),
        ),
      ),
    );
  }
}
