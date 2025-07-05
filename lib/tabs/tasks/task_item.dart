import 'package:flutter/material.dart';
import 'package:todo/app_theme.dart';

class TaskItem extends StatefulWidget {
  static const String routName = 'TaskItem';

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool _onPressed = false;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      height: 115,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
          color: AppTheme.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _onPressed ? AppTheme.green : AppTheme.primary,
            ),
            height: 62,
            width: 4,
          ),
          Container(
            margin: EdgeInsets.only(right: 40),
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _onPressed
                    ? Text('Play basket ball',
                        style: TextStyle(
                            color: AppTheme.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                    : Text('Play basket ball', style: textTheme.titleMedium),
                Text('this is the task discribtion',
                    style: textTheme.titleSmall),
              ],
            ),
          ),
          _onPressed
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _onPressed = false;
                    });
                  },
                  child: Text(
                    'Done!',
                    style: TextStyle(
                        color: AppTheme.green,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _onPressed = true;
                    });
                  },
                  child: Image.asset('assets/images/Icon awesome-check.png'),
                  // child: Icon(
                  //   Icons.check_rounded,
                  //   size: 30,
                  //   weight: 50,
                  // ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // )
                  ))
        ],
      ),
    );
  }
}
