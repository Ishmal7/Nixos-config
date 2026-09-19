{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;

        plugins = let
          nvim-treesitter-with-plugins = pkgs.vimPlugins.nvim-treesitter.withPlugins (treesitter-plugins:
            with treesitter-plugins; [
              bash
              c
              cpp
              lua
              nix
              python
            ]);
        in
          with pkgs.vimPlugins; [
	    telescope-nvim
            nvim-treesitter-with-plugins
          ];
    
        viAlias = true;
        vimAlias = true;

        initLua = ''
            -- Numbers and navigation
            vim.opt.number = true
            vim.opt.scrolloff = 8

            -- Indentation
            vim.opt.tabstop = 4
            vim.opt.shiftwidth = 4
            vim.opt.expandtab = true

            -- Basic UI
            vim.opt.termguicolors = true
            vim.opt.cursorline = true

            -- Search
            vim.opt.ignorecase = true
            vim.opt.smartcase = true

            -- Mouse
            vim.opt.mouse = "a"
        '';
    };
}
