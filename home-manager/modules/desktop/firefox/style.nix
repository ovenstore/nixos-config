{ config, ... }:

let 
  background1 = "#${config.lib.stylix.colors.base00}";
  background2 = "#${config.lib.stylix.colors.base01}";
  background3 = "#${config.lib.stylix.colors.base02}";
  background4 = "#${config.lib.stylix.colors.base03}";
  foreground2 = "#${config.lib.stylix.colors.base04}";
  foreground1 = "#${config.lib.stylix.colors.base05}";
  accent1     = "#${config.lib.stylix.colors.base06}";
  accent2     = "#${config.lib.stylix.colors.base07}";
in {
  programs.firefox.profiles.default = {
    userChrome = ''
      /* ---- Nuke Stuff ---- */
      .titlebar-buttonbox-container,
      .titlebar-close,
      #alltabs-button,
      #firefox-view-button {
        display: none !important;
      }


      /* ---- Tab Stuff ---- */

      #TabsToolbar {
        background-color: ${background1} !important;
        color: ${foreground2} !important;
      }

      .tabbrowser-tab {
        background-color: transparent !important;
      }

      .tab-background {
        background: none !important;
      }

      .tabbrowser-tab[selected="true"] {
        color: ${foreground1} !important;
      }

      .tabbrowser-tab[selected="true"] .tab-background {
        background-color: ${background2} !important;
      }

      .tabbrowser-tab:hover .tab-background {
        background-color: ${background3} !important;
      }


      /* ---- Nav Bar Stuff ---- */

      #navigator-toolbox,
      #nav-bar {
        background-color: ${background2} !important;
        color: ${foreground1} !important;
      }

      #nav-bar .toolbarbutton-1:hover > .toolbarbutton-icon, 
      #nav-bar .toolbarbutton-1:hover > .toolbarbutton-badge-stack,
      #nav-bar .toolbarbutton-1[open] > .toolbarbutton-icon, 
      #nav-bar .toolbarbutton-1[open] > .toolbarbutton-badge-stack {
        background-color: ${background3} !important;
      }

      #nav-bar .toolbarbutton-1:active > .toolbarbutton-icon, 
      #nav-bar .toolbarbutton-1:active > .toolbarbutton-badge-stack {
        background-color: ${background4} !important;
      }

      #PersonalToolbar {
        background-color: ${background2} !important;
        color: ${foreground2} !important;
      }

      .bookmark-item {
        color: ${foreground2} !important;
      }

      .bookmark-item:hover,
      .bookmark-item[open] {
        background-color: ${background3} !important;
      }

      .bookmark-item:active {
        background-color: ${background4} !important;
      }


      /* ---- URL Bar Stuff ---- */

      #urlbar,
      #searchbar {
        background: transparent !important;
        border: none !important;
        box-shadow: none !important;
      }

      #urlbar-background,
      #searchbar-background {
        background-color: ${background1} !important;
        color: ${foreground2} !important;
      }

      #urlbar[open] #urlbar-background {
        border: 2px solid ${background4} !important;
        border-radius: 6px !important;
      }


      #urlbar input {
        color: ${foreground1} !important;
      }

      #urlbar input::placeholder {
        color: ${foreground2} !important;
      }

      .urlbarView-row {
        background-color: transparent !important;
        color: ${foreground2} !important;
      }

      .urlbarView-row:hover {
        background-color: ${background3} !important;
      }

      .urlbarView-row[selected] {
        background-color: ${background4} !important;
      }

      #identity-box {
        background-color: transparent !important;
      }


      /* ---- Dropdown Stuff ---- */

      menupopup {
        background-color: ${background1} !important;
        border: 2px solid ${background4} !important;
        border-radius: 6px !important;
      }

      menuitem {
        background-color: transparent !important;
      }

      menuitem:hover,
      menu:hover {
        background-color: ${background3} !important;
      }

      .panel-subview-body,
      .panel-viewstack {
        border: 2px solid ${background4} !important;
        border-radius: 6px !important;
        background-color: ${background1} !important;
        color: ${foreground2} !important;
      }

      .panel-subview-body > toolbarbutton:hover {
        background-color: ${background3} !important;
      }


      /* ---- Other Stuff ---- */

      #sidebar-box,
      #sidebar-header {
        background-color: ${background1} !important;
        color: ${foreground1} !important;
      }
    '';

    userContent = ''
      @-moz-document url("about:blank"), url("about:newtab") {
        body {
          background-color: ${background1} !important;
        }

        .personalize-button {
          display: none !important;
        }
      }
    '';
  };
}


