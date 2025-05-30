{
  services.keyd = {
    enable = true;

    keyboards.default.settings = {
      main = {
        capslock = "esc";
        leftalt = "layer(leftalt)";
      };

      leftalt = {
        h = "left";
        j = "down";
        k = "up";
        l = "right";
      };
    };
  };
}

