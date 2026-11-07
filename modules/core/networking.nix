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
}
