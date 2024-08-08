import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddHostelPage extends StatefulWidget {
  @override
  _AddHostelPageState createState() => _AddHostelPageState();
}

class _AddHostelPageState extends State<AddHostelPage> {
  final _formKey = GlobalKey<FormState>();
  File? _image;
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _aboutController = TextEditingController();
  final _ratingController = TextEditingController();
  final _bathroomController = TextEditingController();
  final _bedroomController = TextEditingController();
  final _areaController = TextEditingController();
  final _priceController = TextEditingController();
  final _tagController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _locationController.dispose();
    _aboutController.dispose();
    _ratingController.dispose();
    _bathroomController.dispose();
    _bedroomController.dispose();
    _areaController.dispose();
    _priceController.dispose();
    _tagController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _addHostel() async {
    if (_formKey.currentState!.validate() && _image != null) {
      try {
        // // final storageRef = FirebaseStorage.instance.ref().child('hostels/${_nameController.text}.jpg');
        // await storageRef.putFile(_image!);
        // final downloadUrl = await storageRef.getDownloadURL();

        await FirebaseFirestore.instance.collection('hostels').add({
          // 'assets': downloadUrl,
          'name': _nameController.text,
          'location': _locationController.text,
          'about': _aboutController.text,
          'rating': double.parse(_ratingController.text),
          'bathroom': int.parse(_bathroomController.text),
          'bedroom': int.parse(_bedroomController.text),
          'area': int.parse(_areaController.text),
          'price': int.parse(_priceController.text),
          'tag': _tagController.text,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Hostel added successfully!'),
          ),
        );
        // Clear the form fields
        _nameController.clear();
        _locationController.clear();
        _aboutController.clear();
        _ratingController.clear();
        _bathroomController.clear();
        _bedroomController.clear();
        _areaController.clear();
        _priceController.clear();
        _tagController.clear();
        setState(() {
          _image = null;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error adding hostel: $e'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Hostel'),
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: _image != null
                        ? Image.file(_image!, fit: BoxFit.cover)
                        : Center(
                            child: Icon(
                              Icons.add_a_photo,
                              size: 48,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel location';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _aboutController,
                  decoration: InputDecoration(
                    labelText: 'About',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel about';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _ratingController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Rating',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel rating';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid rating';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _bathroomController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Bathroom',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of bathrooms';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _bedroomController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Bedroom',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of bedrooms';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _areaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Area',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel area';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid area';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel price';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid price';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _tagController,
                  decoration: InputDecoration(
                    labelText: 'Tag',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the hostel tag';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: _addHostel,
                  child: Text('Add Hostel'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[800],
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 48),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}