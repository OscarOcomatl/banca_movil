import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionDetailsScreen extends StatelessWidget {

  const TransactionDetailsScreen({super.key});

  static const String name = 'transaction-details';

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.bodyMedium;
    final amountTextStyle = Theme.of(context).textTheme.headlineLarge;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del movimiento ', style: titleStyle,),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            context.push('/home');
          },
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _AmountInfo(amountTextStyle: amountTextStyle),
            const _OriginatorAndBeneficiaryInfo(),
            const _TransactionDetails()
          ],
        ),
      )
    );
  }
}

class _TransactionDetails extends StatelessWidget {
  const _TransactionDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: SizedBox(
          height: 410,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Detalles de la transferencia', style: titleStyle,),
               const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _InfoDetails(keyParameter: 'Monto', value: 450.00,),
                  _InfoDetails(keyParameter: 'Concepto', value: 'Transferencia a mi reina',),
                  _InfoDetails(keyParameter: 'Cuenta', value: '6876544646456548',),
                  _InfoDetails(keyParameter: 'Fecha', value: 'Octube 28, 2024',),
                  _InfoDetails(keyParameter: 'Hora', value: '11:49:00 PM',),
                  _InfoDetails(keyParameter: 'Número de referencia:', value: '2098429854028',),
                  _InfoDetails(keyParameter: 'Clave de rastreo:', value: 'MBAN0824598742987529',),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text('Clave de rastreo:'),
                  //     Text('MBAN0824598742987529', textAlign: TextAlign.right,)
                  //   ],
                  // )
                ],
               )
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoDetails extends StatelessWidget {

  final keyParameter;
  final value;

   const _InfoDetails({
    super.key,
    required this.keyParameter,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(keyParameter),
          value is int ?  Text('\$$value', textAlign: TextAlign.right,) : Text('$value', textAlign: TextAlign.right,)
        ],
      ),
    );
  }
}

class _OriginatorAndBeneficiaryInfo extends StatelessWidget {
  const _OriginatorAndBeneficiaryInfo();

  @override
  Widget build(BuildContext context) {

return Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  child: Container(
    color: Colors.red,
    height: 150,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 5),
          child: Container(
            height: 140,
            width: 2,
            color: Colors.green,
          ),
        ),
        Expanded( // Usar Expanded aquí para que ocupe el espacio restante
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ordenante
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: 60,
                  color: Colors.grey,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('De', style: TextStyle(fontSize: 12)),
                          Text('Cristiano Ronaldo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Text('VISA  '),
                              Icon(Icons.circle, size: 5),
                              Text('  9506')
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 20),
                          Text('CR7', textAlign: TextAlign.right),
                          Text('BanMexico'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5), // Espacio entre los contenedores
              // Beneficiario
              Container(
                height: 60,
                color: Colors.grey,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Para', style: TextStyle(fontSize: 12)),
                        Text('Georgina Rodriguez', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Text('VISA  '),
                            Icon(Icons.circle, size: 5),
                            Text('  9904')
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Georgina'),
                        Text('Bienestar'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);


    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //   child: Container(
    //     color: Colors.red,
    //     height: 150,
    //     child: Row(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.only(left: 10),
    //           child: Container(
    //             height: 140,
    //             width: 2,
    //             color: Colors.green,
    //           ),
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 5),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               // Ordenante
    //               Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 5),
    //                 child: Container(
    //                   height: 60,
    //                   color: Colors.grey,
    //                   child: const Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text('De', style: TextStyle(fontSize: 12)),
    //                           Text('Cristiano Ronaldo',style: TextStyle(fontSize: 16, fontWeight:FontWeight.w500), ),
    //                           Row(
    //                             // mainAxisAlignment: MainAxisAlignment,
    //                             children: [
    //                               Text('VISA  ',),
    //                               Icon(Icons.circle, size: 5,),
    //                               Text('  9506')
    //                             ],
    //                           ),
    //                         ],
    //                       ),
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.end,
                                            
    //                         children: [
    //                           SizedBox(height: 20,),
    //                           Text('CR7', textAlign: TextAlign.right,),
    //                           Text('BanMexico'),
    //                         ],
    //                       )
    //                     ]
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(width: 20,),
    //               //Beneficiario
    //               Padding(
    //                 padding: const EdgeInsets.symmetric(vertical: 5, ),
    //                 child: Expanded(
    //                   child: Container(
    //                     height: 60,
    //                     // width: 270,
    //                     color: Colors.grey,
    //                     child: const Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             Text('Para', style: TextStyle(fontSize:12),),
    //                             Text('Georgina Rodriguez', style: TextStyle(fontSize:16, fontWeight: FontWeight.w500),),
    //                             Row(
    //                               // mainAxisAlignment: MainAxisAlignment,
    //                               children: [
    //                                 Text('VISA  '),
    //                                 Icon(Icons.circle, size: 5,),
    //                                 Text('  9904')
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                         Column(
    //                           crossAxisAlignment: CrossAxisAlignment.end,
    //                           children: [
    //                             SizedBox(height: 20,),
    //                             Text('Georgina'),
    //                             Text('Bienestar'),
    //                           ],
    //                         )
    //                       ]
    //                     )
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

class _AmountInfo extends StatelessWidget {
  const _AmountInfo({
    super.key,
    required this.amountTextStyle,
  });

  final TextStyle? amountTextStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        height: 100,
        // color: Colors.red,
        child: Column(
          children: [
            Container(
              child: Center(child: Text('Monto Total')),
            ),
            Container(
              child: Center(
                child: Text('450.00', style: amountTextStyle,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_rounded, color:  Colors.green, size: 10,),
                    SizedBox(width: 5,),
                    Text('Recibido')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}