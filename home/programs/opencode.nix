{ pkgs, ... }:

{
  programs.opencode = {
    enable = true;

    # OpenCode V2 (2.1.4; git-backed plugins such as Superpowers require >= 2.0.4).
    # Installed through the desktop package on this machine.
    # package = pkgs.opencode-desktop;

    settings = {
      # Superpowers: https://github.com/obra/superpowers
      # Install docs: https://github.com/obra/superpowers/blob/main/.opencode/INSTALL.md
      # OpenCode V2 (2.0.4 and later) uses the `plugins` key for git-backed plugin specs.
      plugins = [
        "superpowers@git+https://github.com/obra/superpowers.git"
      ];

      provider = {
        ollama = {
          npm = "@ai-sdk/openai-compatible";
          name = "Ollama";
          options = {
            baseURL = "http://192.168.0.156:11434/v1";
          };
          models = {
            "hf.co/unsloth/gemma-4-26B-A4B-it-GGUF:UD-Q4_K_M" = {
              name = "hf.co/unsloth/gemma-4-26B-A4B-it-GGUF:UD-Q4_K_M";
	      limit = {
	        context = 65536;
		#output = 8192;
	      };
            };
            "qwen3.5:9b" = {
              name = "qwen3.5:9b";
	      limit = {
	        context = 131072;
		output = 8192;
	      };
            };
	    "qwen3.8:27b" = {
	      name = "qwen3.8:27b";
	      limit = {
	        context = 32678;
		output = 8192;
	      };
	    };
          };
        };
      };
    };
  };
}
