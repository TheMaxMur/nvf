{
  config,
  lib,
  ...
}: let
  inherit (lib.options) mkEnableOption mkOption;
  inherit (lib.types) int bool;
in {
  options.vim.tidal = {
    enable = mkEnableOption "tidalcycles tools and plugins";

    flash = mkOption {
      description = ''When sending a paragraph or a single line, vim-tidal will "flash" the selection for some milliseconds'';
      type = int;
      default = 150;
    };

    openSC = mkOption {
      description = "Automatically run the supercollider CLI, sclang, alongside the Tidal GHCI terminal.";
      type = bool;
      default = true;
    };
  };
}
