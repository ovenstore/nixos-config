{ settings, ... }:

{
  time.timeZone = settings.timezone;

  i18n = {
    defaultLocale = settings.locale;
    extraLocaleSettings = {
      LC_ADDRESS = settings.locale;
      LC_IDENTIFICATION = settings.locale;
      LC_MEASUREMENT = settings.locale;
      LC_MONETARY = settings.locale;
      LC_NAME = settings.locale;
      LC_NUMERIC = settings.locale;
      LC_PAPER = settings.locale;
      LC_TELEPHONE = settings.locale;
      LC_TIME = settings.locale;
    };
  };
}


