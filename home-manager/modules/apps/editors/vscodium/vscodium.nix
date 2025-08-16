{ pkgs, theme, ... }:

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

        "security.workspace.trust.enabled" = false; 
        "security.workspace.trust.untrustedFiles" = "open";
        "security.workspace.trust.startupPrompt" = "never";

        "files.autoSave" = "onFocusChange";

        "workbench.startupEditor" = "none";

        "editor.fontFamily" = "'${theme.fonts.code.name}'";
        "terminal.integrated.fontFamily" = "'${theme.fonts.code.vs-name}'";
      };

      extensions = with pkgs.vscode-extensions; [
        vscodevim.vim
        bbenoist.nix
        ms-python.python
        ms-toolsai.jupyter
      ];
    };
  };
}
