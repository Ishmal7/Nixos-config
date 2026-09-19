{config, pkgs, ... }: 
{
  programs.noctalia = {
    enable = true;
    settings = {
      
      order = [ "main" ]; # layer-shell creation order

      bar.default = {
        position = "top"; # top | bottom | left | right
        enabled = true;
        auto_hide = false; # slide out after pointer leaves; reveal from edge trigger strip
        smart_auto_hide = false; # show when the active workspace is empty; hide when it has windows
        show_on_workspace_switch = true; # with auto_hide: briefly reveal when the active workspace changes
        reserve_space = true; # reserve compositor exclusive zone / push windows away
        layer = "top"; # top | overlay; overlay appears above fullscreen apps

        thickness = 34; # bar cross-axis size in pixels (height for horizontal, width for vertical)
        background_opacity = 0.8; # 0.0 (transparent) to 1.0 (opaque)
        border = "outline"; # color role or #RRGGBB for the bar outline
        border_width = 0.0; # inside outline width in pixels; 0 disables it
        shadow = true; # cast the global [shell.shadow]
        contact_shadow = false; # dark gradient between an attached panel and the bar (depth at the seam)
        panel_overlap = 1; # logical px an attached panel overlaps the bar edge to hide the seam
        radius = 12; # global corner radius fallback
        radius_top_left = 12;
        radius_top_right = 12;
        radius_bottom_left = 12;
        radius_bottom_right = 12;
        concave_edge_corners = true; # carve the screen-edge corners inward; requires margin_edge = 0
        margin_ends = 100; # inset from each end of the bar along its main axis
        margin_edge = 0; # distance from the nearest screen edge (positive values float the bar)
        margin_opposite_edge = 0; # extra reserved space on the inward side of the bar (below for top, above for bottom)
        padding = 14; # main-axis padding from bar edges to start/end widget sections
        widget_spacing = 6; # gap between widgets within a section
        hover_highlight = true; # softly tint the widget under the mouse pointer with its foreground color
        scale = 1.0; # content scale multiplier for icons, spacing, and base text size
        font_scale = 1.0; # additional text-only scale multiplier
        font_weight = 500; # CSS weight 100–1000 (e.g. 400 regular, 700 bold); primary label weight for bar widgets
        font_family = ""; # typeface for this bar's widgets; empty inherits the global font

        # Default capsule style for all widgets on this bar (see Widget Capsule section)
        capsule = false;
        capsule_fill = "surface_variant";
        capsule_thickness = 0.76; # capsule size across the bar as a fraction of bar thickness (1.0 fills the bar)
        capsule_radius = 8.0; # omit for automatic pill radius
        capsule_opacity = 1.0;
        # capsule_border = "outline"; # omit this key for no border by default

        start = [ "launcher" "wallpaper" "workspaces" ];
        center = [ "clock" "media" "battery" ];
        end = [ "tray" "notifications" "clipboard" "network" "bluetooth" "volume" "brightness" "control-center" "session" ];
      };

      dock.default = {
        enabled = true;      # set true to activate
        position = "bottom";   # top | bottom | left | right
        active_monitor_only = false;      # when true, only show apps/windows from the active monitor
        monitors = [];         # connector names to show on; empty = all outputs

        icon_size = 48;
        main_axis_padding = 16;          # inner padding along the icon row (main axis)
        cross_axis_padding = 8;          # inner padding perpendicular to the icon row
        item_spacing = 6;          # gap between items in pixels
        background_opacity = 0.65;
        border = "outline";  # color role or #RRGGBB for the dock outline
        border_width = 0.0;        # inside outline width in pixels; 0 disables it
        shadow = true;       # cast the global [shell.shadow]
        radius = 16;
        radius_top_left = 16;         # optional per-corner overrides
        radius_top_right = 16;
        radius_bottom_left = 16;
        radius_bottom_right = 16;
        concave_edge_corners = true;      # carve the screen-edge corners inward; requires margin_edge = 0
        margin_ends = 0;          # inset from each end of the dock along its main axis
        margin_edge = 0;          # distance from the nearest screen edge (positive values float the dock)

        show_running = true;       # also show running apps not in the pinned list
        auto_hide = true;      # slide out when pointer leaves; reveal from edge trigger strip
        smart_auto_hide = true;      # show when the active workspace is empty; hide when it has windows
        reserve_space = false;       # reserve compositor exclusive zone / push windows away
        layer = "top";      # top | overlay — overlay keeps the dock above fullscreen apps

        active_scale = 1.0;        # icon scale for the focused app (clamped 0.1–1.75)
        inactive_scale = 0.85;       # icon scale for non-focused apps (clamped 0.1–1.0)
        magnification = true;       # magnify icons near the pointer (macOS-style)
        magnification_scale = 1.45;       # max scale multiplier at the pointer center (1.0–2.0; 1.0 = off)
        active_opacity = 1.0;
        inactive_opacity = 0.85;
        show_instance_count = true;       # badge with window count when an app has 2+ windows
        show_dots = false;      # running-window indicator dots below app icons

        launcher_position = "none";     # none | start | end - optional launcher button on the dock
        launcher_icon = "grid-dots"; # Tabler glyph for the launcher button
        launcher_custom_image = "";    # image path; overrides launcher_icon when set
        launcher_custom_image_colorize = false; # tint the custom image with the icon color

        # Desktop entry IDs, StartupWMClass, or human-readable names
        pinned = ["firefox" "yazi" "discord" "spotify" "Alacritty" "obsidian"]; 
      };
    };
  };
}
