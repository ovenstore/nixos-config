{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    package = pkgs.vscodium;

    profiles.default = {
      enableExtensionUpdateCheck = false;

      userSettings = {
        "update.mode" = "start";      

        "telemetry.feedback.enabled" = false;
        "telemetry.telemetryLevel" = "off";

        "security.workspace.trust.enable" = false; 
        # "security.workspace.trust.untrustedFiles" = "open";
        # "security.workspace.trust.startupPrompt" = "never";

        "files.autosave" = "onFocusChange";

        "workbench.startupEditor" = "none"; 
      };

      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        bbenoist.nix
        ms-python.python
      ];
    };
  };
}
