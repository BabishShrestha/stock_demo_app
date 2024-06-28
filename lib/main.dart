import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_demo_app/core/config/dependency_injection/di.dart';
import 'package:stock_demo_app/core/theme/bloc/theme_cubit.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/filter_cubit/filter_cubit.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/bloc/stock_bloc/stock_bloc.dart';
import 'package:stock_demo_app/features/stock_chart/presentation/views/stock_chart_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => getIt<ThemeCubit>(),
        ),
        BlocProvider<StockBloc>(
          create: (_) => getIt<StockBloc>(),
        ),
        BlocProvider(create: (_) => getIt<FilterStockTimeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(builder: (context, themeData) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          useInheritedMediaQuery: true,
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Stock Demo App',
              theme: themeData,
              home: child,
            );
          },
          child: const StockChartView(),
        );
      }),
    );
  }
}
