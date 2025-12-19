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

        "security.workspace.trust.enabled" = false; 
        "security.workspace.trust.untrustedFiles" = "open";
        "security.workspace.trust.startupPrompt" = "never";

        "files.autoSave" = "onFocusChange";

        "workbench.startupEditor" = "none";

        "vim.useSystemClipboard" = true;
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
