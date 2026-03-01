import 'package:flutter_riverpod/legacy.dart';
import 'package:safarsync_app/services/auth_service.dart';

class AuthState {
  final bool isLoading;
  final bool isAuthenticated;
  final String? userEmail;
  final String? error;

  const AuthState({
    this.isLoading = false,
    this.isAuthenticated = false,
    this.userEmail,
    this.error,
  });

  AuthState copyWith({
    bool? isLoading,
    bool? isAuthenticated,
    String? userEmail,
    String? error,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      userEmail: userEmail ?? this.userEmail,
      error: error,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());

  final AuthService _authService = AuthService();

  /// Fake login (Firebase comes later)
  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final user = await _authService.signInwithEmail(email, password);
      if (user != null) {
        state = state.copyWith(
          isLoading: false,
          isAuthenticated: true,
          userEmail: user.email,
        );
      }
      // else {
      //   state = state.copyWith(
      //     isLoading: false,
      //     error: 'Login failed. Please try again.',
      //   );
      // }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loginWithGoogle() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final userCredential = await _authService.signInWithGoogle();
      if (userCredential != null) {
        state = state.copyWith(
          isLoading: false,
          isAuthenticated: true,
          userEmail: userCredential.user?.email,
        );
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void logout() {
    state = const AuthState();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});
