import 'package:banca_movil/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: ( context, state ){
        return const HomeScreen();
      }
    ),
    GoRoute(
      path: '/transactions-history',
      name: TransactionsHistoryScreen.name,
      builder: (context, state) {
        return const TransactionsHistoryScreen();
      }
    ),
    GoRoute(
      path: '/transaction-details',
      name: TransactionDetailsScreen.name,
      builder: (context, state){
        return const TransactionDetailsScreen();
      }
    )
  ]
);