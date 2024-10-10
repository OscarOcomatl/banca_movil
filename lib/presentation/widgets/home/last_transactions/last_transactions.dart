import 'package:banca_movil/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LastTransactions extends StatelessWidget {
  
  const LastTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
          LastTransactionsAndHistory(),
          _TransactionList(),
      ],
    );
  }



}

class LastTransactionsAndHistory extends StatelessWidget {
  const LastTransactionsAndHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final lastTransactionsTitleStyle = Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        lastTransactionsTitle(lastTransactionsTitleStyle),
        const _GoToHistory()
      ],
    );
  }

  Widget lastTransactionsTitle(TextStyle? style){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text('Ultimos Movimientos', style: style),
        );
  }

}

class _GoToHistory extends StatelessWidget {
  const _GoToHistory();

  @override
  Widget build(BuildContext context) {

    final style = Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600);

    return GestureDetector(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text('Ir al Historial', style: style),
        ),
      onTap: () => context.go('/transactions-history'),
    );
  }
}

class _TransactionList extends StatelessWidget{

  const _TransactionList();

  @override
  Widget build(BuildContext context){

    // final heigth = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: 410,
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _TransactionItem();
        },
        // ],
      ),
    );

  }
}

class _TransactionItem extends StatelessWidget {
  const _TransactionItem();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/transaction-details');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SizedBox(
          width: double.infinity,
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[350]
              ),
              child: const TransactionInfo(),
            ),
          ),
        ),
      ),
    );
  }
}

