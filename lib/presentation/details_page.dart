import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/details_cubit/details_cubit.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: SafeArea(
        child: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {

            return Column(
              children: [
                // CachedNetworkImage(
                //   placeholder: (context, url) => CircularProgressIndicator(),
                //   imageUrl: imageUrl,
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
