import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
InputDecoration AppInput(label) {
  return InputDecoration(
    border: const OutlineInputBorder(),
    labelText: label,
    contentPadding: const EdgeInsets.all(20),
  );
}

// ignore: non_constant_identifier_names
ButtonStyle AppButton() {
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    backgroundColor: Colors.teal,
    padding: const EdgeInsets.all(20),
  );
}

// ignore: non_constant_identifier_names
SizedBox SizedBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(alignment: Alignment.center,padding: const EdgeInsets.all(8),child: child,),
  );
}