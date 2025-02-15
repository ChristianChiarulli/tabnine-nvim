local config = require("tabnine.config")
local auto_commands = require("tabnine.auto_commands")
local user_commands = require("tabnine.user_commands")
local status = require("tabnine.status")
local keymaps = require("tabnine.keymaps")

local M = {}

function M.setup(o)
	config.set_config(o)

	keymaps.setup()

	user_commands.setup()

	auto_commands.setup()

	status.setup()
end

return M
