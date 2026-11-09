{ ... }:

{
  # Enable networking
  # Wi-Fi is managed by NetworkManager

  networking = {
    networkmanager.enable = true;
    # Firewall baseline lives here, independent of Tailscale.
    nftables.enable = true;
    firewall.enable = true;
  };

  # Do not block boot on network-online.
  systemd.network.wait-online.enable = false;
  boot.initrd.systemd.network.wait-online.enable = false;
}
