import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 30.0, right: 10, left: 10),
      child:  SingleChildScrollView(
          child:  Column(
            children: [
               SizedBox(height: 5),
              CustomTextFailed(hint: 'Titel'),
              SizedBox(height: 15),
              CustomTextFailed(maxLines: 8, hint: 'Contant'),
               SizedBox(height: 15),
              CustomButton(),
               SizedBox(height: 50),
            ],
          ),
        ),
     
    );
  }
}
