import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/tabs/tasks/defult_elvated_button.dart';
import 'package:todo/tabs/tasks/defult_text_form_field.dart';

class TaskBottomSheet extends StatefulWidget {
  static const String routeName = 'TaskBottomSheet';
  String discrebtion = '';
  String title = '';

  @override
  State<TaskBottomSheet> createState() => _TaskBottomSheetState();
}

class _TaskBottomSheetState extends State<TaskBottomSheet> {
  TextEditingController titleController = TextEditingController();
  TextEditingController discrebtionController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd/MM/yyyy');
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Text('Add new task',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                DefultTextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Title can not be embty';
                      } else {
                        return null;
                      }
                    },
                    controller: titleController,
                    hinttext: 'enter task title'),
                SizedBox(height: 30),
                DefultTextFormField(
                    maxlines: null,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Discrebtion can not be embty';
                      } else {
                        return null;
                      }
                    },
                    controller: discrebtionController,
                    hinttext: 'enter task discrabtion'),
                SizedBox(height: 30),
                InkWell(
                  onTap: () async {
                    selectedDate = (await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 360)),
                        initialEntryMode: DatePickerEntryMode.calendarOnly))!;
                    setState(() {});
                  },
                  child: Column(
                    children: [
                      Text(
                        'Select date',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 10),
                      Text(
                        dateFormat.format(selectedDate),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                DefultElvatedButton(
                    label: 'Submit',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        widget.discrebtion = discrebtionController.text;
                        widget.title = titleController.text;
                        print(widget.discrebtion);
                        print(widget.title);
                        addTask();
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addTask() {
    print('task add');
  }
}
