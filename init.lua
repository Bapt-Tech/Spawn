minetest.register_chatcommand("spawn", {
    description = "Teleport to world spawn point",
    privs = { interact = true },
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if player then
            if playerinpvp[name] and playerinpvp[name] > 0 then
                minetest.chat_send_player(name, "You are in PvP")
                return true
            end
            player:set_pos({ x = 0, y = 15.5, z = 0 })
            return true, "Teleported to world spawn point"
        else
            return false, "Player not found"
        end
    end,
})
minetest.register_chatcommand("park", {
    description = "Teleport to world spawn point",
    privs = { interact = true },
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if player then
            if playerinpvp[name] and playerinpvp[name] > 0 then
                minetest.chat_send_player(name, "You are in PvP")
                return true
            end
            player:set_pos({ x = 314, y = -28936.5, z = 2419 })
            return true, "Teleported to O.P. Park"
        else
            return false, "Player not found"
        end
    end,
})