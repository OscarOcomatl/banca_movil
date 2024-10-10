import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionsHistoryScreen extends StatelessWidget {
   
  const TransactionsHistoryScreen({super.key}) ;

  static const String name = 'transaction-history';
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis movimientos'),
        leading: IconButton(
          onPressed: (){
            context.push('/home');
          }, 
          icon: const Icon(Icons.arrow_back)
        )
      ),
      body: const Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _ActionsBar(),
          _LineDecoration(),
          _TransactionsList()
        ],
      )
    );
  }
}

class _ActionsBar extends StatelessWidget {

  const _ActionsBar();

  @override
  Widget build(BuildContext context){

    final labelsStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold);  
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 100,
              // color: Colors.red, //Container
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: GestureDetector(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Filtrar', style: labelsStyle,),
                                const Icon(Icons.arrow_drop_down)
                              ],
                            ),
                            onTap: (){
                              // TODO: Open date picker (Filter by interval) 
                            },
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text('Todo', style: labelsStyle),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

class _LineDecoration extends StatelessWidget {

  const _LineDecoration();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 1,
        color:  Colors.black38,
      ),
    );
  }
}

class _TransactionsList extends StatelessWidget {

  const _TransactionsList();

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 50,
                // color: Colors.white10,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border.all(strokeAlign: BorderSide.strokeAlignOutside, width: .1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const TransactionInfo(amountColor: Colors.green,)
              )
            );
          }
        ),
      ),
    );
  }
}