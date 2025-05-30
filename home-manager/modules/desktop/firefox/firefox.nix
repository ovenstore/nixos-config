{ pkgs, settings, ... }:

{
  programs.firefox = {
    enable = true;

    policies = {
      DisplayBookmarksToolbar = "always";
      DownloadDirectory = "/home/${settings.username}/Downloads";
      PromptForDownloadLocation = false;

      DisableFirefoxScreenshots = true;
      DisablePocket = true;
      DisableProfileImport = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      SkipTermsOfUse = true;

      DisableTelemetry = true;
      OfferToSaveLogins = true;
      PasswordManagerEnabled = true;

      FirefoxHome = {
        Search = false;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        SponsoredPocket = false;
        Snippets = false;
        Locked = true;
      };

      Homepage = {
        StartPage = "homepage";
        URL = "about:newtab";
        Locked = true;
      };

      FirefoxSuggest = {
        WebSuggestions = false;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = true;
      };

      UserMessaging = {
        ExtensionRecommendations = false;
        FeatureRecommendations = false;
        MoreFromMozilla = false;
        SkipOnboarding = true;
        UrlbarInterventions = false;
        WhatsNew = false;
        Locked = true;
      };
    };

    profiles = {
      default = {
        id = 0;
        isDefault = true;

        settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "browser.aboutConfig.showWarning" = false;
          "browser.sessionstore.resume_from_crash" = false;
        };
      };  
    };
  };
}
