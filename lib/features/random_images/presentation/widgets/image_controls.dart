import 'package:clean_architecture_app/features/random_images/presentation/bloc/random_image_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: FloatingActionButton(
        child: Text('New image'),
        onPressed: () {
          BlocProvider.of<RandomImageBloc>(context)
              .add(GetNewRandomImageEvent());
        },
      ),
    );
  }
}
