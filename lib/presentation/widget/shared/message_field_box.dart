import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {

    final textFromFieldController = TextEditingController();


    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(30));

    final inputDecoration = InputDecoration(
        hintText: "Text your message",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final text = textFromFieldController.value.text;
            textFromFieldController.clear();
            onValue(text);
          },
        ));

    return TextFormField(
      controller: textFromFieldController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textFromFieldController.clear();
        onValue(value);
      },
      onChanged: (value) {},
    );
  }
}
