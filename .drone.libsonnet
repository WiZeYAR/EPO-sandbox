{
  // A function that generates a pipeline
  pipe: function(name, steps, type='docker', trigger) {
    kind: 'pipeline',
    type: type,
    steps: steps,
  },

  // A function that generates a pipeline step
  step: function(name, image, commands)
    assert std.isString(name);
    assert std.isString(image);
    assert std.isArray(commands);
    {
      name: name,
      image: image,
      commands: [
        assert std.isString(cmd);
        cmd
        for cmd in commands
      ],
    },

  // A function that transforms local jsonnet ci definitions
  // into global ci definitions by means of `cd`-ing into the
  // subrepo on every step.
  sub: function(pipelines, path)
    assert std.isArray(pipelines);
    assert std.isString(path);
    [
      pipe {
        steps: ['cd ' + path] + [
          assert std.isString(step);
          step
          for step in pipe.steps
        ],
      }
      for pipe in pipelines
    ],
}
