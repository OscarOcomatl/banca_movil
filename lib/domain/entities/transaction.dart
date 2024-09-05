


class Transaction {
  
  final int id; // Id de la transaccion
  final String orderingAccount; // Cuenta ordenante
  final String orderingPerson; // Persona ordenante
  final String issuingInstitution; // Institucion ordenante
  final String receivingAccount;
  final String recivingPerson;
  final String recivingBank;
  final double amount;
  final String concept;
  final String trackingNumber; //clave de rastreo
  final DateTime date;
  final DateTime hour;

  Transaction({
    
    required this.id,
    required this.orderingAccount,
    required this.orderingPerson,
    required this.issuingInstitution,
    required this.receivingAccount,
    required this.recivingPerson,
    required this.recivingBank,
    required this.amount,
    required this.concept,
    required this.trackingNumber,
    required this.date,
    required this.hour,
    
  });
}