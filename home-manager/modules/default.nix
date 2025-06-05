{ settings, ... }:

{
  imports = [
    ./desktop
    ./programs
    ./terminal
  ]; 
  # ++ (
  #  if settings.include.desktop
  #  then [ ./desktop ]
  #  else []
  #);
}
