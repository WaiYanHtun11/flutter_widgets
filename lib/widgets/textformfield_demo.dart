import 'package:flutter/material.dart';
class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});
  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  Widget buildInputForm(icon,label,hint,type,{prefix}){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal:24),
      child: TextFormField(
        keyboardType: type,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          filled: true,
          fillColor: Colors.white70,
          icon: Icon(icon),
          labelText: label,
          hintText: hint,
          prefixText: prefix,
          prefixStyle: const TextStyle(color: Colors.deepOrange)
        ),
      ),
    );
  }
  Widget buildSignUpButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
            onPressed: (){},
            child: const Text('Sign Up')
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            children: [
              const SizedBox(height: 64),
              const Center(
                child: CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(
                      Icons.account_circle,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text('Sign Up Form',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700
                )
              ),
              const SizedBox(height: 24),
              buildInputForm(Icons.person, 'Name *', 'Type Your Name', TextInputType.text),
              buildInputForm(Icons.mail, 'Mail *','Type Your Mail', TextInputType.text),
              buildInputForm(
                  Icons.phone,
                  'Phone *',
                  'How can we reach you?',
                  TextInputType.phone,
                  prefix: '+95 9'
              ),
              buildSignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}
