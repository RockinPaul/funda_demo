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
              final links = details.images;
              final images = links
                  .map(
                    (e) => CachedNetworkImage(
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      imageUrl: e,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                  .toList();

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Carousel(
                        itemBuilder: (context, index) =>
                            images[index % images.length],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Text(details.description,
                          style: textTheme.bodyText1)),
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

typedef OnCurrentItemChangedCallback = void Function(int currentItem);

class Carousel extends StatefulWidget {
  final IndexedWidgetBuilder itemBuilder;

  const Carousel({Key? key, required this.itemBuilder}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late final PageController _controller;
  late int _currentPage;
  bool _pageHasChanged = false;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    _controller = PageController(
      viewportFraction: .85,
      initialPage: _currentPage,
    );
  }

  @override
  Widget build(context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          _pageHasChanged = true;
          _currentPage = value;
        });
      },
      controller: _controller,
      itemBuilder: (context, index) => AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          var result = _pageHasChanged ? _controller.page! : _currentPage * 1.0;

          // The horizontal position of the page between a 1 and 0
          var value = result - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);

          return Center(
            child: SizedBox(
              height: Curves.easeOut.transform(value) * size.height,
              width: Curves.easeOut.transform(value) * size.width,
              child: child,
            ),
          );
        },
        child: widget.itemBuilder(context, index),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
