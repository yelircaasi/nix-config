let
  keys = {
    a = "A";
    b = "B";
    ctrl = "CTRL";
  };
in {
  app1 = {
    chord1 = {
      mod1 = keys.ctrl;
      base1 = keys.a;
    };
    chord2 = {base1 = keys.b;};
  };
}
