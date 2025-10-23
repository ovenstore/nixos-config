{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    qemu
    virt-viewer
  ];

  programs.virt-manager.enable = true;

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
      };
    };

    spiceUSBRedirection.enable = true;
  };

  services.spice-vdagentd.enable = true;
}
