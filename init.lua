-- Apply movement attributes to leaves after all mods have been loaded
minetest.register_on_mods_loaded(function()
	for node,def in pairs(minetest.registered_nodes) do
		if def.papyrus > 0 then
			minetest.override_item(node,{
				walkable = false,
				climbable = true,
				move_resistance = resistance,
			})
		end
	end
end)
