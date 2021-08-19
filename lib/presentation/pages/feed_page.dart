import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/blocs/feed_cubit/feed_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
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
              final feed = state.feed;
              final objects = feed.objects;

              return ListView.builder(
                itemCount: objects.length,
                itemBuilder: (context, index) {
                  final object = objects[index];
                  return FeedTile(
                    imageUrl: object.foto ?? '',
                    address: object.adres ?? '',
                    postcode: object.postcode ?? '',
                    price: object.koopprijs.toString(),
                  );
                  return ListTile(
                    title: Text('${object.foto}'),
                  );
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

class FeedTile extends StatelessWidget {
  final String imageUrl;
  final String address;
  final String postcode;
  final String price;

  const FeedTile({
    Key? key,
    required this.imageUrl,
    required this.address,
    required this.postcode,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Row(
        children: [
          CachedNetworkImage(
            placeholder: (context, url) => CircularProgressIndicator(),
            imageUrl: imageUrl,
          ),
          SizedBox(width: 15),
          Column(
            children: [
              Text(address),
              Text(price),
              Text(postcode),
            ],
          )
        ],
      ),
    );
  }
}
