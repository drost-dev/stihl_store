import 'package:stihl_store/repos/database/database_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRepo implements DatabaseRepo {
  final SupabaseClient _sb;

  SupabaseRepo._init(this._sb);

  static Future<SupabaseRepo> init() async {
    await Supabase.initialize(
      url: 'https://fzrhzhwsrhkdvwxflyds.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cmh6aHdzcmhrZHZ3eGZseWRzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc1MzA4NzQsImV4cCI6MjA1MzEwNjg3NH0.YARPULKOwkFsQpOrfuh1gSpeVQXXdkFSuYGx2t1wMAA',
    );
    SupabaseRepo repo = SupabaseRepo._init(Supabase.instance.client);
    return repo;
  }

  Future<AuthResponse> signUp(
      {required String name,
      required String surname,
      required String login,
      required String password,
      required String email}) async {
    return await _sb.auth.signUp(
      password: password,
      email: email,
      data: {'name': name, 'surname': surname, 'login': login},
    );
  }

  Future<AuthResponse> login(
      {required String email, required String password}) async {
    return await _sb.auth.signInWithPassword(
      password: password,
      email: email,
    );
  }
}
