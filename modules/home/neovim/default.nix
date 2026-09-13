# nvim.nix by poligle

{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;

	  plugins = [
            {
              plugin = (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [ 
                p.tree-sitter-nix
                p.tree-sitter-lua
                p.tree-sitter-python
	      ]));
              type = "lua";
              config = ''
                require('nvim-treesitter.configs').setup {
                  highlight = { enable = true },
                }
              '';
             }
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
