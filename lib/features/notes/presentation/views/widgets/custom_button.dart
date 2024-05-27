import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),

          color: const Color(0xff62FCD7),
        ),
        child: const Center(child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),),
      ),
    );
  }
}
