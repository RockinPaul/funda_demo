import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/feed_cubit/feed_cubit.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  void initState() {
    super.initState();
    // Make sure State object has mounted in order to access its context.
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<FeedCubit>().fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feed')),
      body: SafeArea(
        child: BlocBuilder<FeedCubit, FeedState>(
          builder: (context, state) {
            if (state is FeedLoadInProgress) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is FeedLoadFailure) {
              return Center(child: Text('${state.message}'));
            }
            if (state is FeedLoadSuccess) {
              final objects = state.objects;
              return ListView.builder(
                itemBuilder: (context, index) {
                  final object = objects[index];

                  return ListTile();
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
