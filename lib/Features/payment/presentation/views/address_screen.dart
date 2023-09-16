import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/edit_address_screen.dart';
import 'package:signin_signup/core/widgets/custom_container_details.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';


class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Name',
                style:
                TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 3,),
              CustomContainerDetails(textColor: Colors.grey,size: size,text: 'Mohamed Gamal Montaseb'),
              const SizedBox(height: 14,),
              const Text(
                'Phone Number',
                style:
                TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 3,),
              CustomContainerDetails(textColor: Colors.grey,size: size,text: '+20 123456789'),
              const SizedBox(height: 14,),
              const Text(
                'Address 1',
                style:
                TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 3,),
              CustomContainerDetails(textColor: Colors.grey,size: size,text: '20 Emad El Din St., DOWNTOWN'),
              const SizedBox(height: 14,),
              const Text(
                'Address 2',
                style:
                TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 3,),
              CustomContainerDetails(textColor: Colors.grey,size: size,text: '37 Baghdad St., El Korba'),
              const SizedBox(height: 5,),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditAddressScreen()));
                    },
                    child: const Text( 'Edit Address Information',style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),)
                ),
              ),
              const SizedBox(height: 40,),
              const Text(
                'Add a Mark',
                style:
                TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/images/map.png',fit: BoxFit.cover,),
              ),
              const SizedBox(height: 30,),
              Center(
                child: CustomMainButton(
                  size: size*0.65,
                  backgroundColor: Colors.black,
                  text: 'Deliver to This Address',
                  textColor: Colors.white,
                  onPressed: (){Navigator.pop(context);},
                  borderRadius: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
