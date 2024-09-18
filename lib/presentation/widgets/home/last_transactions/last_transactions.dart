import 'package:flutter/material.dart';

class LastTransactions extends StatelessWidget {
  
  const LastTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: Column(
          children: [
            LastTransactionsAndHistory(),
            //TODO: _TransactionList()
            // _TransactionItem(),
            // _TransactionItem(),
            // _TransactionItem(),
            // _TransactionItem(),
          ],
        ),
      ),
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
    final goToHistoryStyle = Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        lastTransactionsTitle(lastTransactionsTitleStyle),
        goToHistory(goToHistoryStyle)
      ],
    );
  }

  Widget lastTransactionsTitle(TextStyle? style){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Text('Ultimos Movimientos', style: style),
        );
  }

  Widget goToHistory(TextStyle? style){
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Text('Ir al Historial', style: style),
        );
  }
}

class _TransactionList extends StatelessWidget{

  const _TransactionList();

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return const _TransactionItem();
            }
          ),
        ],
      ),
    );
  }
}

class _TransactionItem extends StatelessWidget {
  const _TransactionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey[350]
            ),
          ),
        ),
      ),
    );
  }
}