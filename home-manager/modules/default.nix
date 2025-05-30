{ settings, ... }:

{
  imports = [
    ./terminal
    ./desktop
  ]; 
  # ++ (
  #  if settings.desktop
  #  then [ ./desktop ]
  #  else []
  #);
}
