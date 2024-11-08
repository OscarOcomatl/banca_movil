import 'package:flutter/material.dart';

class CardDescription extends StatelessWidget {
  const CardDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold);
    final characteresStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 190,
          color: const Color.fromRGBO(12, 57, 88, 1),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 70,
                      width: 120,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Debito',style: textStyle,),
                          Text('Banco Azteca', style: characteresStyle,)
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 70,
                      width: 100,
                      // color: Colors.red,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
        // Red Circle
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        // Yellow Circle
        Positioned(
          left: 50, // Adjust this value to control the overlap
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
            ),
          ),
        ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      // width: 10,
                      width: 100,
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}