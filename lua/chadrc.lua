-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "github_dark",

	tabufline = {
		--  more opts
		order = { "treeOffset", "buffers", "tabs", "btns", 'abc' },
		modules = {
		  -- You can add your custom component
		  abc = function()
			return "hi"
		  end,
		}
	  },
	
	  statusline = {
		-- more opts
		order = {...}, -- check stl/utils.lua file in ui repo 
		modules = {
		  -- The default cursor module is override
		  cursor = function()
			return "%#BruhHl#" .. " bruh " -- the highlight group here is BruhHl,
		  end
		}
	  }
}

return M
