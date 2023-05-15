import 'package:country/channels/channels.dart';
import 'package:country/src/generated/user/user.pbgrpc.dart';
import 'package:grpc/service_api.dart';

class UserService {
  var client = UserClient(Channels.user());

  ResponseFuture<LoginResponsePayload> login(
      {required String userName, required String password}) {
    var response =
        client.login(LoginPayload(userName: userName, password: password));
    return response;
  }

  ResponseFuture<Response> loginOTP({required String id, required String otp}) {
    var response = client.loginOTP(OTPPayload(iD: id, oTP: otp));
    return response;
  }

  ResponseFuture<Response> logOut({required String token}) {
    var response = client.logOut(Token(lastToken: token));
    return response;
  }
}
