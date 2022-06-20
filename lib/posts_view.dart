import 'package:bloc_cubit/post.dart';
import 'package:bloc_cubit/posts_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc & Cubit")),
      body: BlocBuilder<PostsCubit, List<Post>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return const Center(
              child: CupertinoActivityIndicator(radius: 24,)
            );
          }

          return ListView.builder(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text(posts[index].title.toString()),
              ),
            )
          );
        }
      ),
    );
  }
}