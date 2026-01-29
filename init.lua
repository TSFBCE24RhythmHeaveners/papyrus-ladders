minetest.register_on_mods_loaded(function()
	for node,papyrus in pairs(minetest.registered_nodes) do
		minetest.override_item(node,{
			walkable = false,
			climbable = true,
		})
	end
end)
