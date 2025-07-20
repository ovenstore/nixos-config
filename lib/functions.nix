{
  hex_to_rgba = hex:
    let
      r = builtins.substring 0 2 hex;
      g = builtins.substring 2 2 hex;
      b = builtins.substring 4 2 hex;
      r_dec = builtins.fromJSON "0x${r}";
      g_dec = builtins.fromJSON "0x${g}";
      b_dec = builtins.fromJSON "0x${b}";
    in 
      "${toString r_dec}, ${toString g_dec}, ${toString b_dec}"; 
}

