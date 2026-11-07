{ config, ... }:

{
  services.tailscale.enable = true;

  # Tailscale-specific firewall allowances. The firewall/nftables baseline
  # is owned by modules/core/networking.nix.
  networking.firewall = {
    # Always allow traffic from the Tailscale network.
    trustedInterfaces = [ config.services.tailscale.interfaceName ];
    # Allow the Tailscale UDP port through the firewall.
    allowedUDPPorts = [ config.services.tailscale.port ];
  };

  # Force tailscaled to use nftables. This avoids the iptables-compat
  # translation layer on nftables-only systems.
  systemd.services.tailscaled.serviceConfig.Environment = [
    "TS_DEBUG_FIREWALL_MODE=nftables"
  ];

  # Do not block boot on network-online.
  systemd.network.wait-online.enable = false;
  boot.initrd.systemd.network.wait-online.enable = false;
}
