local lib = import '../.drone.libsonnet';
[
  lib.pipe(
    'TS Utils',
    [
      lib.step('run', 'node', [
        'yarn install --dev',
        'yarn start',
      ]),
    ],

  ),
]
