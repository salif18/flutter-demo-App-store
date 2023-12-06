import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _pseudoController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String selectedOptionsValue = "Sexe";

  //vider les champs
  @override
  void dispose(){
    super.dispose();
    _pseudoController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  _sendFormData(){
     if(_formKey.currentState!.validate()){
      final pseudo = _pseudoController.text;
      final number = _numberController.text;
      final email = _emailController.text;
      final password = _passwordController.text;
         
         print("$pseudo a entre le number $number et email $email et de password $password");
         dispose();
     }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body:SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                
                decoration: const InputDecoration(
                  hintText: "Entrez votre pseudo..",
                  labelText: "Pseudo",
                  border: OutlineInputBorder(),
                ),
                controller: _pseudoController,
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return "Veuillez bien remplir les champs au moins 3 carracteres";
                  }
                },
                keyboardType: TextInputType.name,
              ),
            ),
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                
                decoration: const InputDecoration(
                  hintText: "Entrez votre numero..",
                  labelText: "Numero",
                  border: OutlineInputBorder(),
                ),
                controller: _numberController,
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return "Veuillez bien remplir les champs";
                  }
                },
                keyboardType: TextInputType.phone,
              ),
            ),
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                
                decoration: const InputDecoration(
                  hintText: "Entrez votre email..",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains("@")) {
                    return "Veuillez bien remplir les champs ";
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.all(5),
              child: DropdownButtonFormField(
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                items: const [
                   DropdownMenuItem(value:'Sexe' ,child:Text('Definir votre sexe')),
                   DropdownMenuItem(value:'masculin' ,child:Text('Masculin')),
                   DropdownMenuItem(value:'feminin' ,child:Text('Feminin')),
                ], 
                value: selectedOptionsValue,
                onChanged: (value){
                    setState(() {
                      selectedOptionsValue = value!;
                    });
                }
              ),
            ),
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: const EdgeInsets.all(5),
              child: TextFormField(
                
                decoration: const InputDecoration(
                  hintText: "Entrez votre password..",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 6) {
                    return "Veuillez bien remplir les champs au moins 6 carracteres";
                  }
                },
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            
            ElevatedButton(
              onPressed:_sendFormData , 
              child: const Text('Envoyer',)
            ),
            
          ],
        ),
      ),
      ),
    );
  }
}
