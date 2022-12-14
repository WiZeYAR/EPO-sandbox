// -------- IMPORTS
// local lib = import 'monorepo-pipeline.jsonnet';

// -------- LIST OF ALL SUBPROJECTS

// Every subproject should define an automation pipeline list
// in its `.drone.jsonnet`, and then included here.
//
//
local SUBPROJECTS = [
  // lib.sub(import 'path/to/subproject', 'path/to/subproject'),
  // lib.sub(import './py_utils/.drone.jsonnet', './py_utils'),
  // lib.sub(import './ts_utils/.drone.jsonnet', './ts_utils'),
  import './py_utils/.drone.jsonnet',
];


// -------- DEFINING PIPELINES
std.flattenArrays(SUBPROJECTS)
