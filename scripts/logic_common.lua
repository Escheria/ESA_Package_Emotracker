function hasCharge()
    if Tracker:ProviderCountForCode("charge") > 0 or Tracker:ProviderCountForCode("supercharge") > 0 then
        return true
    else
        return false
    end
end

function canEnterUnderwater()
    if hasJumpOrVDash() and Tracker:ProviderCountForCode("hookshot") > 0 then
        return true
    else
        return false
    end
end

function canEnterJungle()
    local vDashWay = Tracker:ProviderCountForCode("v_dash") > 0
    local jumpWay = Tracker:ProviderCountForCode("jump") > 0 and Tracker:ProviderCountForCode("hookshot") > 0
    if (hasCharge() and (vDashWay or jumpWay)) then
        return true
    else
        return false
    end
end

function canEnterTemple()
    local hasAccess = Tracker:ProviderCountForCode("power") > 0
    local canGetToTemple = hasJumpOrVDash()
    if hasAccess and canGetToTemple then
        return true
    else
        return false
    end
end

function hasHOrVDash()
    if Tracker:ProviderCountForCode("v_dash") > 0 or Tracker:ProviderCountForCode("h_dash") > 0 then
        return true
    else
        return false
    end
end


function hasJumpOrVDash() 
    if Tracker:ProviderCountForCode("v_dash") > 0 or Tracker:ProviderCountForCode("jump") > 0 then
        return true
    else
        return false
    end
end

function canDefeatMender()
    if Tracker:ProviderCountForCode("power") > 0 and (Tracker:ProviderCountForCode("supercharge") > 0 or Tracker:ProviderCountForCode("bike") > 0) then
        return true
    else
        return false
    end
end