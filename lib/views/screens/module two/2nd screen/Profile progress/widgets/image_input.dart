import 'dart:io';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class UserImagePicker extends StatefulWidget {
  UserImagePicker( this.imagePickFn);
  final void Function(File pickedImage) imagePickFn;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {


  File? _pickedImage;

  void _pickImage() async {
    final pickImageFile =
    await ImagePicker().pickImage(
        imageQuality: 50,maxWidth: 150,
        source: ImageSource.gallery);

    setState(() {
      _pickedImage = File(pickImageFile!.path);
    });
    widget.imagePickFn(File(pickImageFile!.path));
  }

  File? _clickedImage;

  void _clickPic() async {
    final clickImageFile =
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = File(clickImageFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Stack(
        //   clipBehavior: Clip.none,
        //
        //   children: [
        //     CircleAvatar(foregroundImage: _pickedImage != null ? FileImage(_pickedImage!) : null,
        //       backgroundImage: AssetImage("assets/images/png/img_5.png"),
        //     ),
        //     Positioned(
        //         bottom: 0,
        //         right: -25,
        //         child: RawMaterialButton(
        //           onPressed: () {},
        //           elevation: 2.0,
        //           fillColor: Color(0xFFF5F6F9),
        //           child: Icon(Icons.camera_alt_outlined, color: Colors.blue,),
        //           padding: EdgeInsets.all(15.0),
        //           shape: CircleBorder(),
        //         )),
        //   ],
        // ),
        Stack(
          clipBehavior: Clip.none,
          children:[CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/png/img_5.png"),
            backgroundColor: Colors.grey,
            foregroundImage:
            _pickedImage != null ? FileImage(_pickedImage!) : null,

          ),
            Positioned(
              bottom: 0,
              right: -20,
              child:Container(
                width: 70,
                height: 33,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(shape: BoxShape.circle,color: ColorResources.CERISE),
                  child: IconButton(onPressed: _pickImage, icon: Icon(Icons.add,color: Colors.white,size: 20,))), )

        ]),
        // FlatButton.icon(
        //   textColor: Theme.of(context).primaryColor,
        //   onPressed: _pickImage,
        //   icon: Icon(Icons.image),
        //   label: Text('Upload Image'),
        // ),
      ],
    );
  }
}
