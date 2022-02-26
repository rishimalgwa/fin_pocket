import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fin_pocket/comman/constants/url.dart';
import 'package:fin_pocket/comman/errors/failures.dart';
import 'package:fin_pocket/comman/utils/network_info.dart';
import 'package:fin_pocket/features/auth/data/sign_up_req.dart';
import 'package:fin_pocket/features/auth/data/signup_response.dart';

class SignupRepo {
  final Dio _dio = Dio();
  final NetworkInfoImpl _networkInfo = NetworkInfoImpl();
  Future<Either<Failure, SignUpResponse>> signup(SignUpRequest request) async {
    String url = signupUrl;

    if (await _networkInfo.isConnected()) {
      try {
        final Response response = await _dio.post(
          url,
          data: jsonEncode(request.toJson()),
        );

        var body = response.data as Map<String, dynamic>;
        switch (response.statusCode) {
          case 201:
            return Right(SignUpResponse.fromJson(body));

          default:
            return Left(UnidentifiedFailure());
        }
      } catch (e) {
        log(e.toString());
        if (e is DioError) {
          log(e.response?.data.toString() ?? '');
          switch (e.response?.statusCode) {
            case 500:
              return Left(ServerFailure());
            case 409:
              return Left(UserExistFailure());
            default:
              return Left(UnidentifiedFailure());
          }
        }

        return Left(UnidentifiedFailure());
      }
    } else {
      return Left(InternetFailure());
    }
  }
}
