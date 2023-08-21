## Isar Bug Example Project
This project is a minimal example to reproduce a bug related to https://github.com/isar/isar/issues/1393

To reproduce the bug just start the app and tap the "Insert to DB" button.
An exception will be thrown:

```
[ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: Invalid argument:  <- _List len:1 (from dart:core)
is unsendable object (see restrictions listed at`SendPort.send()` documentation for more information): Instance of 'Future<Null>'
```

Flutter Version: 3.13.0
