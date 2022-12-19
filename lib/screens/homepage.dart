import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/provider/todo_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CommentProvider>(context, listen: false).getAllComments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider API'),
      ),
      body: Consumer<CommentProvider>(
        builder: (context, value, child) {
          // If the loading it true then it will show the circular progressbar
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // If loading is false then this code will show the list of todo item
          final comments = value.comments;
          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, index) {
              final comment = comments[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                    leading: CircleAvatar(child: Text(comment.postId.toString())),
                    title: Text(
                      comment.body,
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Name:${comment.name}",
                          textAlign: TextAlign.center,
                        ),
                        Text("E-mail:${comment.email}",
                            textAlign: TextAlign.center),
                        Text("ID:${comment.id}", textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
