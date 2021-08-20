import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/details_cubit/details_cubit.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: SafeArea(
        child: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            if (state is DetailsLoadInProgress) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is DetailsLoadFailure) {
              return Center(child: Text('${state.message}'));
            }
            if (state is DetailsLoadSuccess) {
              final details = state.object;
              final image = details.images.first;
              return Column(
                children: [
                  CachedNetworkImage(
                    placeholder: (context, url) => CircularProgressIndicator(),
                    imageUrl: image,
                  ),
                  Text(details.description, style: textTheme.bodyText1),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
