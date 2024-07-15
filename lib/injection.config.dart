// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'applicaiton/auth/auth/auth_bloc.dart' as _i9;
import 'applicaiton/auth/login_form/login_form_bloc.dart' as _i10;
import 'applicaiton/note/note_form/note_form_bloc.dart' as _i3;
import 'applicaiton/note/note_watcher/note_watcher_bloc.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/note/i_note_repository.dart' as _i4;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/notes/note_repository.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.NoteFormBloc>(() => _i3.NoteFormBloc());
    gh.lazySingleton<_i4.INoteRepository>(() => _i5.NoteRepository());
    gh.factory<_i6.NoteWatcherBloc>(
        () => _i6.NoteWatcherBloc(gh<_i4.INoteRepository>()));
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i10.LoginFormBloc>(
        () => _i10.LoginFormBloc(gh<_i7.IAuthFacade>()));
    return this;
  }
}
