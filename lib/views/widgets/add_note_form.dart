import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_failed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subTitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 5),
          CustomTextFailed(
            hint: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          const SizedBox(height: 15),
          CustomTextFailed(
            maxLines: 8,
            hint: 'Contant',
            onSaved: (value) {
              subTitel = value;
            },
          ),
          const SizedBox(height: 15),
          CustomButton(onTap: () {
            if(formKey.currentState!.validate())
            {
              formKey.currentState!.save();
            }
            else
            {
              autovalidateMode=AutovalidateMode.always;
              setState(() {
                
              });
            }
          },),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
