--Change this value to select the multiplier
multiplier = 2

function ExperienceManager:mission_xp()
    local multiplier = get_multiplier()
    local total_xp = self._global.mission_xp_total and Application:digest_value(self._global.mission_xp_total, false) or 0
    local current_xp = self._global.mission_xp_current and Application:digest_value(self._global.mission_xp_current, false) or 0

    return (total_xp + current_xp) * multiplier
end
