import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatelessWidget {
  const DraggableScrollableSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.25,
      minChildSize: 0.25,
      maxChildSize: 0.25,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [BoxShadow(blurRadius: 15, color: Colors.black26)],
          ),
          child: ListView(
            controller: scrollController,
            children: const [
              Center(
                child: SizedBox(
                  width: 55,
                  child: Divider(thickness: 4, color: Colors.grey),
                ),
              ),
              SizedBox(height: 10),
              ListTile(title: Text("English")),
              ListTile(title: Text("العربيه")),
            ],
          ),
        );
      },
    );
  }
}
