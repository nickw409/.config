return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},

   {
      "nvim-treesitter/nvim-treesitter",
      build = function()
         require("nvim-treesitter.install").update({ with_sync = true })()
      end,
      config = function()
         local configs = require("nvim-treesitter.configs")
         
         configs.setup({
            ensure_installed = {"c", 
                                 "lua", 
                                 "vim", 
                                 "query", 
                                 "javascript", 
                                 "html", 
                                 "css", 
                                 "java", 
                                 "python", 
                                 "cpp",
                                 "bash",
                                 "gitignore",
                                 "go",
                                 "http",
                                 "json",
                                 "kotlin",
                                 "make",
                                 "cmake",
                                 "php",
                                 "regex",
                                 "ruby",
                                 "rust",
                                 "sql",
                                 "typescript",
                                 "vimdoc",
                                 "ssh_config",
                                 "todotxt" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
         })
      end
   },
}
