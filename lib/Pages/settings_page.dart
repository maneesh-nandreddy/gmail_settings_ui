// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, library_private_types_in_public_api

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
 const SettingsPage({super.key});

 @override
 State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
 bool isSearchClicked = false;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: isSearchClicked ? Container() : const Text("Search Bar"),
       actions: [
         IconButton(
           onPressed: () {
             setState(() {
               isSearchClicked = !isSearchClicked; // Toggle search bar visibility
             });
           },
           icon: const Icon(Icons.search),
         ),
       ],
     ),
     // ignore: prefer_const_constructors
     body: Column(
       children: [
         // Settings title and tabs in a separate column
         Column(
           crossAxisAlignment: CrossAxisAlignment.start, // Align tabs to the left
           children: [
             Text(
               'Settings',
               style: TextStyle(
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
             // Tab bar positioned directly below the title
             Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Ensure tabs take only needed width
                  //Tab bar section start
                  children: const [
                    Text('General'),
                    SizedBox(width: 15),
                    Text('Labels'),
                    SizedBox(width: 15),
                    Text('Inbox'),
                    SizedBox(width: 15),
                    Text('Accounts and Import'),
                    SizedBox(width: 15),
                    Text('Filters and Blocked Addresses'),
                    SizedBox(width: 15),
                    Text('Forwarding and POP/IMAP'),
                    SizedBox(width: 15),
                    Text('Chat and Meet'),
                    SizedBox(width: 15),
                    Text('Advanced'),
                    SizedBox(width: 15),
                    Text('Offline'),
                    SizedBox(width: 15,)
                  ],
                  //tab bar section start
                ),
             ),
           ],
          ),
          Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20.0),
           child: MyLanguageSettings(),
         ),
       ],
     ),
   );
 }
}

// ignore: use_key_in_widget_constructors
class MyLanguageSettings extends StatefulWidget {
 @override
 _MyLanguageSettingsState createState() => _MyLanguageSettingsState();
}

class _MyLanguageSettingsState extends State<MyLanguageSettings> {
 String selectedLanguage = 'English (US)';
 bool enableInputTools = true;
 bool rightToLeftEditingSupport = false;

 @override
 Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.start, // Center the section
     children: [
       Text(
         'Language:',
         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
       ),
       SizedBox(height: 10),
       Row(
         children: [
           Text(
             'Gmail display language:',
             style: TextStyle(fontSize: 16),
           ),
           SizedBox(width: 10),
           DropdownButton<String>(
             value: selectedLanguage,
             onChanged: (String? newValue) {
               setState(() {
                 selectedLanguage = newValue!;
               });
             },
             items: [
               'English (US)',
               'Afrikaans',
               'Azərbaycanca',
               'Bahasa Indonesia',
               'Bahasa Melayu',
               'Català',
               'Cambodian',
               'Chinese ',
               'Croatian',
               'Czech',
               'Danish',
               'Dutch',
               'English',
               'Estonian',
               'Fiji',
               'Finnish',
               'Georgian',
               'German',
               'Greek',
               'Gujarati',
               'Hebrew',
               'Hindi',
             ].map<DropdownMenuItem<String>>((String value) {
               return DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
               );
             }).toList(),
           ),
         ],
       ),
     ],
   );
 }
}
