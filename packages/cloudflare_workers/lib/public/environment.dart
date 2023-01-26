import '../interop/environment_interop.dart' as interop;
import 'kv_namespace.dart';
import 'do/durable_object_namespace.dart';

class Environment {
  final interop.Environment _delegate;

  Environment._(this._delegate);

  KVNamespace getKVNamespace(String name) =>
      kvNamespaceFromJsObject(_delegate.getKVNamespace(name));

  DurableObjectNamespace getDurableObjectNamespace(String name) =>
      durableObjectNamespaceFromJsObject(
          _delegate.getDurableObjectNamespace(name));
}

Environment environmentFromJsObject(interop.Environment obj) =>
    Environment._(obj);