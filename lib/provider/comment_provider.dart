import 'package:flutter/material.dart';

import '../model/comment.dart';
import '../services/comment_services.dart';


 class CommentProvider extends ChangeNotifier {
  final _service = CommentService();
  bool isLoading = false;
  List<CommentModel> _comments = [];
  List<CommentModel> get comments => _comments;

  Future<void> getAllComments() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAllComments();

    _comments = response;
    isLoading = false;
    notifyListeners();
  }
} 