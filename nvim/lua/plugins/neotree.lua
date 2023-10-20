return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function ()
	require("neo-tree").setup({
		close_if_last_window = true,
		commands = {},
		window = {
			position = "left",
			width = 20,
			mapping_options = {
					noremap = true,
					nowait = true,
				},
			mappings = {
					["<Space>"] = {
						"toggle_node",
						nowait = false,
					},
					["<cr>"] = "open",
					["<esc>"] = "cancel",
					["S"] = "open_split",
					["s"] = "open_vsplit",
					["t"] = "open_tabnew",
					["C"] = "close_node",
					["z"] = "close_all_nodes",
					["q"] = "close_window",
					["R"] = "refresh",
					["a"] = {
						"add",
						config = {
							show_path = "none" -- none or relative or absolute
						}
					},
					["A"] = "add_directory",
				},
		}})
	end,
}
