import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../services/todo_services.dart';

/* 
 class TodoProvider extends ChangeNotifier {
  final _service = TodoService();
  bool isLoading = false;
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();

    _todos = response;
    isLoading = false;
    notifyListeners();
  }
}  */

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