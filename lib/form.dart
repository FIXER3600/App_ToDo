import 'package:flutter/material.dart';

class Formulary extends StatefulWidget {
  const Formulary({super.key});

  @override
  State<Formulary> createState() => _FormularyState();
}

class _FormularyState extends State<Formulary> {
  final TextEditingController formController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: formController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height:30),
              const Padding(
                padding: EdgeInsets.all(10),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pop(context, formController.text);    
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
