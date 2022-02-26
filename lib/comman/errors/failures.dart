class Failure {
  final String message;
  Failure({required this.message});
}

class InternetFailure extends Failure {
  InternetFailure() : super(message: "Internet not available");
}

class UserExistFailure extends Failure {
  UserExistFailure() : super(message: "Player exists");
}

class ServerFailure extends Failure {
  ServerFailure()
      : super(
            message:
                "Our servers aren't responding at the moment. Please try again soon");
}

class GeneralTryAgainFailure extends Failure {
  GeneralTryAgainFailure()
      : super(message: "Something went wrong, please try again!");
}

class RequestTimeoutFailure extends Failure {
  RequestTimeoutFailure()
      : super(
            message:
                "The server took too long to respond. Please try again later.");
}

class UnidentifiedFailure extends Failure {
  final String? errorMessage;
  UnidentifiedFailure({this.errorMessage})
      : super(
            message:
                errorMessage ?? "An error occured, please try again later.");
}

class UnAuthenticatedFailure extends Failure {
  UnAuthenticatedFailure()
      : super(message: "Could not be authenticated. Please log in again.");
}

class UnexpectedError extends Failure {
  UnexpectedError()
      : super(message: "unexpected error occurred while fetching the posts");
}

class UserNotFound extends Failure {
  UserNotFound()
      : super(message: "No account exists with this email, try signing up!");
}
