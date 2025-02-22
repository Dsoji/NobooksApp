part of 'nobooks_app.dart';

class NobooksWidgetInitializer extends StatelessWidget {
  final Widget child;

  const NobooksWidgetInitializer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: false,
      builder: (context) {
        return ProviderScope(
          child: ScreenUtilInit(
            designSize: const Size(1366, 1024),
            builder: (_, __) => child,
          ),
        );
      },
    );
  }
}
