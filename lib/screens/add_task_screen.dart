import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/task_model.dart';
import '../services/task_service.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  final TaskService taskService = TaskService();

  String selectedPriority = 'High';
  String selectedStatus = 'Pending';
  DateTime? selectedDeadline;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDeadline ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDeadline) {
      setState(() {
        selectedDeadline = picked;
      });
    }
  }

  void saveTask() async {
    if (selectedDeadline == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please select a deadline")),
      );
      return;
    }

    final task = TaskModel(
      title: titleController.text.trim(),
      description: descriptionController.text.trim(),
      priority: selectedPriority,
      deadline: DateFormat('dd MMMM').format(selectedDeadline!),
      status: selectedStatus,
    );

    await taskService.createTask(task);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: SingleChildScrollView(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: [
      TextField(
        controller: titleController,
        decoration: const InputDecoration(
          labelText: "Task Title",
        ),
      ),

      const SizedBox(height: 12),

      TextField(
        controller: descriptionController,
        decoration: const InputDecoration(
          labelText: "Description",
        ),
      ),

      const SizedBox(height: 12),

      DropdownButtonFormField<String>(
        value: selectedPriority,
        decoration: const InputDecoration(
          labelText: "Priority",
        ),
        items: ['Low', 'Medium', 'High'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedPriority = newValue!;
          });
        },
      ),

      const SizedBox(height: 12),

      DropdownButtonFormField<String>(
        value: selectedStatus,
        decoration: const InputDecoration(
          labelText: "Status",
        ),
        items: ['Pending', 'In Progress', 'Completed']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedStatus = newValue!;
          });
        },
      ),

      const SizedBox(height: 16),

      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      selectedDeadline == null
          ? 'No deadline selected'
          : 'Deadline: ${DateFormat('dd MMMM yyyy').format(selectedDeadline!)}',
    ),

    const SizedBox(height: 10),

    SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _selectDate(context),
        child: const Text("Select Date"),
      ),
    ),
  ],
),

      const SizedBox(height: 20),

      ElevatedButton(
        onPressed: saveTask,
        child: const Text("Save Task"),
      ),
    ],
  ),
),
    );
  }
}