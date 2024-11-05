local function get_multiplier()
    local mod = BLT.Mods:GetMod("XP Multiplier")
    return mod and mod:GetOption("xp_multiplier") or 2 
end

function ExperienceManager:mission_xp()
    local multiplier = get_multiplier()
    local total_xp = self._global.mission_xp_total and Application:digest_value(self._global.mission_xp_total, false) or 0
    local current_xp = self._global.mission_xp_current and Application:digest_value(self._global.mission_xp_current, false) or 0

    -- Aplicar el multiplicador de experiencia
    return (total_xp + current_xp) * multiplier
end
