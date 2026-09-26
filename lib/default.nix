{ lib }:

  let
    # Internal shorthand to reference types cleanly
    inherit (lib) types;
  in
  {
    # Creates a standard option with a type and default value
    mkOpt = type: default: lib.mkOption { inherit type default; };

    # Creates an option with a type, default value, and documentation string
    mkOpt' = type: default: description: lib.mkOption { inherit type default description; };

    # Creates a boolean option (useful when you need a default of 'true')
    mkBoolOpt = default: lib.mkOption { inherit default; type = types.bool; };
  
    # Optional Addition: An alternative to mkEnableOption that allows custom descriptions
    mkBoolOpt' = default: description: lib.mkOption { inherit default description; type = types.bool; };
}

