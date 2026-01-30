minetest.register_on_mods_loaded(function()
	for node,def in pairs(minetest.registered_nodes) do
		if def.default:papyrus > 0 then
			minetest.override_item(node,{
				walkable = false,
				climbable = true,
			})
		end
	end
end)
