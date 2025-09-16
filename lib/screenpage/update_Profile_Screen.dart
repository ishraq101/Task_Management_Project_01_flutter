import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';
import 'package:login_page_design/widgets/tm_appbar.dart';

import '../widgets/photo_picker_card.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  final TextEditingController _nameediting = TextEditingController();
  final TextEditingController _emailediting = TextEditingController();
  final TextEditingController _firstnameediting = TextEditingController();
  final TextEditingController _lastnameediting = TextEditingController();
  final TextEditingController _mobileediting = TextEditingController();
  final TextEditingController _passwordediting = TextEditingController();


  final GlobalKey <FormState> _formkey = GlobalKey <FormState>();
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMappbar(
        automaticallyImplyLeading: false,
        updateprofile: true,
      ),
      body: Screenbackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Update Profile',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  PhotoPickerField(
                    onTap: _pickImage,
                    selectedPhoto: _selectedImage,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _nameediting,
                    decoration: InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _emailediting,
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _firstnameediting,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                    ),
                  ),
                  const SizedBox(height: 8),

                  TextFormField(
                    controller: _lastnameediting,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _mobileediting,
                    decoration: InputDecoration(
                      hintText: 'Mobile',
                    ),
                  ),

                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordediting,
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 8),

                  FilledButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Icon(Icons.update), Text('Update Profile')],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void>_pickImage() async {
    XFile? pickedImage = await _imagePicker.pickImage(source: ImageSource.gallery);
    if(pickedImage!=null){
      _selectedImage = pickedImage;
      setState(() {});
    }
  }

  @override
  void dispose() {
    _nameediting.dispose();
    _emailediting.dispose();
    _firstnameediting.dispose();
    _lastnameediting.dispose();
    _mobileediting.dispose();
    _passwordediting.dispose();
    super.dispose();
  }

}

