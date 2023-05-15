import 'package:grpc/grpc.dart';

class Channels {
  static ClientChannel user() {
    try {
      var channel = ClientChannel(
        'demousers.thoughtbox.one',
        port: 443,
        options: const ChannelOptions(
          credentials: ChannelCredentials.secure(),
          idleTimeout: Duration(minutes: 1),
        ),
      );
      return channel;
    } catch (e) {
      return ClientChannel(e.toString());
    }
  }
}
