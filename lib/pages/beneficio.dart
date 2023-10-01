import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class beneficio extends StatelessWidget {
  const beneficio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
      child: Column(
        children: [
          const Image(
              image: NetworkImage("https://www.queridodinero.com/wp-content/uploads/2018/11/Camisas-1024x684.jpg")
          ),
          Text("proksammsdc aksdksmakdmskdm kasmdksmakdm kasmdksmad"),
          MaterialButton(
            color: Colors.deepPurple,
            onPressed: () { },
            child: Row(
              children: [
                Icon(Icons.payment),
                Text("Comprar")
              ],
            ),
          )
        ],
      ),
    );
  }
}
