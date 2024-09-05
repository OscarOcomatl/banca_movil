
enum CardType { debit, credit }

class Card {
  final int clientId;
  final String bankName;
  final CardType type;
  final String number;
  final String beneficiary;
  final DateTime expiredDate;

  Card({
    
    required this.clientId,
    required this.bankName,
    required this.type,
    required this.number,
    required this.beneficiary,
    required this.expiredDate,   
    
  });

}