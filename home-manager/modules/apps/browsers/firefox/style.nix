{ theme, ... }:

let 
  background1 = "#${theme.colors.bg1}";
  background2 = "#${theme.colors.bg2}";
  background3 = "#${theme.colors.bg3}";
  background4 = "#${theme.colors.bg4}";
  foreground1 = "#${theme.colors.fg1}";
  foreground2 = "#${theme.colors.fg2}";
in {
  programs.firefox.profiles.default = {
    userChrome = ''
      /* ---- Nuke Stuff ---- */
      .titlebar-buttonbox-container,
      .titlebar-close,
      #urlbar .searchmode-switcher,
      #alltabs-button,
      #firefox-view-button {
        display: none !important;
        visibility: hidden !important;
      }


      /* ---- Tab Stuff ---- */

      #TabsToolbar {
        background-color: ${background1} !important;
        color: ${foreground2} !important;
        border: none !important;
      }

      .tabbrowser-tab {
        background-color: transparent !important;
      }

      .tab-background {
        background: none !important;
      }

      .tabbrowser-tab[selected="true"] .tab-label {
        color: ${foreground1} !important;
      }

      .tabbrowser-tab[selected="true"] .tab-background {
        background-color: ${background2} !important;
      }

      .tabbrowser-tab:hover .tab-background {
        background-color: ${background3} !important;
      }

      .tabbrowser-tab[selected="true"] .tab-close-button {
        color: ${foreground1} !important;        
      }

      .tabbrowser-tab[selected="true"] .tab-close-button:hover {
        color: ${foreground1} !important;
        background-color: ${background4} !important;
      }


      /* ---- Nav Bar Stuff ---- */

      #navigator-toolbox,
      #nav-bar {
        background-color: ${background2} !important;
        color: ${foreground1} !important;
        border: none !important;
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

      #urlbar .urlbar-button,
      #urlbar .urlbar-icon,
      #urlbar .urlbar-search-engine-button,
      #urlbar .searchmode-switcher,
      #identity-box,
      #urlbar-zoom-button {
        background-color: ${background1} !important;
        color: ${foreground2} !important;
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
        color: ${foreground2} !important;
      }


      /* ---- Dropdown Stuff ---- */

      menupopup {
        --panel-background: ${background1} !important;
        --panel-color: ${foreground2} !important;
        --panel-border-color: ${background4} !important;
        --panel-border-radius: 6px !important;
        --panel-border-size: 2px !important;
      }

      menuitem {
        background-color: transparent !important;
      }

      menuitem:hover,
      menu:hover {
        background-color: ${background3} !important;
      }

      panelview {
        background-color: ${background1} !important;
        color: ${foreground2} !important;
        border: 2px solid ${background4} !important;
        border-radius: 6px !important;
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


