// Mocks generated by Mockito 5.3.2 from annotations
// in software/test/services/snap_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:desktop_notifications/src/notifications_client.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:snapd/src/snapd_client.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeNotificationsClient_0 extends _i1.SmartFake
    implements _i2.NotificationsClient {
  _FakeNotificationsClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNotification_1 extends _i1.SmartFake implements _i2.Notification {
  _FakeNotification_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNotificationsServerInformation_2 extends _i1.SmartFake
    implements _i2.NotificationsServerInformation {
  _FakeNotificationsServerInformation_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSnapdSystemInfoResponse_3 extends _i1.SmartFake
    implements _i3.SnapdSystemInfoResponse {
  _FakeSnapdSystemInfoResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSnap_4 extends _i1.SmartFake implements _i3.Snap {
  _FakeSnap_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSnapdConnectionsResponse_5 extends _i1.SmartFake
    implements _i3.SnapdConnectionsResponse {
  _FakeSnapdConnectionsResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSnapdLoginResponse_6 extends _i1.SmartFake
    implements _i3.SnapdLoginResponse {
  _FakeSnapdLoginResponse_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSnapdChange_7 extends _i1.SmartFake implements _i3.SnapdChange {
  _FakeSnapdChange_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Notification].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotification extends _i1.Mock implements _i2.Notification {
  MockNotification() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.NotificationsClient get client => (super.noSuchMethod(
        Invocation.getter(#client),
        returnValue: _FakeNotificationsClient_0(
          this,
          Invocation.getter(#client),
        ),
      ) as _i2.NotificationsClient);
  @override
  int get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: 0,
      ) as int);
  @override
  _i4.Future<String> get action => (super.noSuchMethod(
        Invocation.getter(#action),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<_i2.NotificationClosedReason> get closeReason =>
      (super.noSuchMethod(
        Invocation.getter(#closeReason),
        returnValue: _i4.Future<_i2.NotificationClosedReason>.value(
            _i2.NotificationClosedReason.expired),
      ) as _i4.Future<_i2.NotificationClosedReason>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [NotificationsClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockNotificationsClient extends _i1.Mock
    implements _i2.NotificationsClient {
  MockNotificationsClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Notification> notify(
    String? summary, {
    String? body = r'',
    String? appName = r'',
    String? appIcon = r'',
    int? expireTimeoutMs = -1,
    int? replacesId = 0,
    List<_i2.NotificationHint>? hints = const [],
    List<_i2.NotificationAction>? actions = const [],
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #notify,
          [summary],
          {
            #body: body,
            #appName: appName,
            #appIcon: appIcon,
            #expireTimeoutMs: expireTimeoutMs,
            #replacesId: replacesId,
            #hints: hints,
            #actions: actions,
          },
        ),
        returnValue: _i4.Future<_i2.Notification>.value(_FakeNotification_1(
          this,
          Invocation.method(
            #notify,
            [summary],
            {
              #body: body,
              #appName: appName,
              #appIcon: appIcon,
              #expireTimeoutMs: expireTimeoutMs,
              #replacesId: replacesId,
              #hints: hints,
              #actions: actions,
            },
          ),
        )),
      ) as _i4.Future<_i2.Notification>);
  @override
  _i4.Future<List<String>> getCapabilities() => (super.noSuchMethod(
        Invocation.method(
          #getCapabilities,
          [],
        ),
        returnValue: _i4.Future<List<String>>.value(<String>[]),
      ) as _i4.Future<List<String>>);
  @override
  _i4.Future<_i2.NotificationsServerInformation> getServerInformation() =>
      (super.noSuchMethod(
        Invocation.method(
          #getServerInformation,
          [],
        ),
        returnValue: _i4.Future<_i2.NotificationsServerInformation>.value(
            _FakeNotificationsServerInformation_2(
          this,
          Invocation.method(
            #getServerInformation,
            [],
          ),
        )),
      ) as _i4.Future<_i2.NotificationsServerInformation>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [SnapdClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnapdClient extends _i1.Mock implements _i3.SnapdClient {
  MockSnapdClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get allowInteraction => (super.noSuchMethod(
        Invocation.getter(#allowInteraction),
        returnValue: false,
      ) as bool);
  @override
  set allowInteraction(bool? _allowInteraction) => super.noSuchMethod(
        Invocation.setter(
          #allowInteraction,
          _allowInteraction,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set userAgent(String? value) => super.noSuchMethod(
        Invocation.setter(
          #userAgent,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> loadAuthorization() => (super.noSuchMethod(
        Invocation.method(
          #loadAuthorization,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void setAuthorization(
    String? macaroon,
    List<String>? discharges,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setAuthorization,
          [
            macaroon,
            discharges,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<_i3.SnapdSystemInfoResponse> systemInfo() => (super.noSuchMethod(
        Invocation.method(
          #systemInfo,
          [],
        ),
        returnValue: _i4.Future<_i3.SnapdSystemInfoResponse>.value(
            _FakeSnapdSystemInfoResponse_3(
          this,
          Invocation.method(
            #systemInfo,
            [],
          ),
        )),
      ) as _i4.Future<_i3.SnapdSystemInfoResponse>);
  @override
  _i4.Future<List<_i3.Snap>> getSnaps() => (super.noSuchMethod(
        Invocation.method(
          #getSnaps,
          [],
        ),
        returnValue: _i4.Future<List<_i3.Snap>>.value(<_i3.Snap>[]),
      ) as _i4.Future<List<_i3.Snap>>);
  @override
  _i4.Future<_i3.Snap> getSnap(String? name) => (super.noSuchMethod(
        Invocation.method(
          #getSnap,
          [name],
        ),
        returnValue: _i4.Future<_i3.Snap>.value(_FakeSnap_4(
          this,
          Invocation.method(
            #getSnap,
            [name],
          ),
        )),
      ) as _i4.Future<_i3.Snap>);
  @override
  _i4.Future<List<_i3.SnapApp>> getApps({
    List<String>? names,
    _i3.SnapdAppFilter? filter,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getApps,
          [],
          {
            #names: names,
            #filter: filter,
          },
        ),
        returnValue: _i4.Future<List<_i3.SnapApp>>.value(<_i3.SnapApp>[]),
      ) as _i4.Future<List<_i3.SnapApp>>);
  @override
  _i4.Future<_i3.SnapdConnectionsResponse> getConnections({
    String? snap,
    String? interface,
    _i3.SnapdConnectionFilter? filter,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getConnections,
          [],
          {
            #snap: snap,
            #interface: interface,
            #filter: filter,
          },
        ),
        returnValue: _i4.Future<_i3.SnapdConnectionsResponse>.value(
            _FakeSnapdConnectionsResponse_5(
          this,
          Invocation.method(
            #getConnections,
            [],
            {
              #snap: snap,
              #interface: interface,
              #filter: filter,
            },
          ),
        )),
      ) as _i4.Future<_i3.SnapdConnectionsResponse>);
  @override
  _i4.Future<String> connect(
    String? snap,
    String? plug,
    String? slotSnap,
    String? slot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #connect,
          [
            snap,
            plug,
            slotSnap,
            slot,
          ],
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> disconnect(
    String? plugSnap,
    String? plug,
    String? slotSnap,
    String? slot,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #disconnect,
          [
            plugSnap,
            plug,
            slotSnap,
            slot,
          ],
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<List<_i3.Snap>> find({
    String? query,
    String? name,
    String? section,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #find,
          [],
          {
            #query: query,
            #name: name,
            #section: section,
          },
        ),
        returnValue: _i4.Future<List<_i3.Snap>>.value(<_i3.Snap>[]),
      ) as _i4.Future<List<_i3.Snap>>);
  @override
  _i4.Future<_i3.SnapdLoginResponse> login(
    String? email,
    String? password, {
    String? otp,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [
            email,
            password,
          ],
          {#otp: otp},
        ),
        returnValue:
            _i4.Future<_i3.SnapdLoginResponse>.value(_FakeSnapdLoginResponse_6(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
            {#otp: otp},
          ),
        )),
      ) as _i4.Future<_i3.SnapdLoginResponse>);
  @override
  _i4.Future<dynamic> logout(int? id) => (super.noSuchMethod(
        Invocation.method(
          #logout,
          [id],
        ),
        returnValue: _i4.Future<dynamic>.value(),
      ) as _i4.Future<dynamic>);
  @override
  _i4.Future<String> install(
    String? name, {
    String? channel,
    String? revision,
    bool? classic = false,
    bool? dangerous = false,
    bool? devmode = false,
    bool? jailmode = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #install,
          [name],
          {
            #channel: channel,
            #revision: revision,
            #classic: classic,
            #dangerous: dangerous,
            #devmode: devmode,
            #jailmode: jailmode,
          },
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> refresh(
    String? name, {
    String? channel,
    bool? classic = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [name],
          {
            #channel: channel,
            #classic: classic,
          },
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> remove(
    String? name, {
    bool? purge = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #remove,
          [name],
          {#purge: purge},
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> enable(String? name) => (super.noSuchMethod(
        Invocation.method(
          #enable,
          [name],
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> disable(String? name) => (super.noSuchMethod(
        Invocation.method(
          #disable,
          [name],
        ),
        returnValue: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<_i3.SnapdChange> getChange(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getChange,
          [id],
        ),
        returnValue: _i4.Future<_i3.SnapdChange>.value(_FakeSnapdChange_7(
          this,
          Invocation.method(
            #getChange,
            [id],
          ),
        )),
      ) as _i4.Future<_i3.SnapdChange>);
  @override
  _i4.Future<List<_i3.SnapdChange>> getChanges({
    _i3.SnapdChangeFilter? filter,
    String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getChanges,
          [],
          {
            #filter: filter,
            #name: name,
          },
        ),
        returnValue:
            _i4.Future<List<_i3.SnapdChange>>.value(<_i3.SnapdChange>[]),
      ) as _i4.Future<List<_i3.SnapdChange>>);
  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
