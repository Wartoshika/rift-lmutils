-- globale varale
LmUtils = {}

-- gibt die laenge der tabelle zurueck
function LmUtils.tableLength(table)
  local count = 0
  for _ in pairs(table) do count = count + 1 end
  return count
end

-- ala in_array
function LmUtils.tableHasValue (tab, val)
    for index, value in pairs (tab) do
        if value == val then
            return true
        end
    end

    return false
end

-- abrunden
function LmUtils.round(num)
    return math.floor(num)
end

-- table key finden
function LmUtils.findTableKey(table, value)

    for k, v in pairs(table) do

        -- tables muessen ausgepackt werden zum vergleichen da
        -- in lua {} == {} false ergibt
        if type(value) == "table" and type(v) == "table" then
            if LmUtils.tablesAreEqual(v, value) then return k end
        else
            if v == value then return k end
        end
    end

    return v
end

-- tabellen vergleichen ohne referenzcheck
-- thanks to Lyqyd (http://www.computercraft.info/forums2/index.php?/topic/6055-comparing-tables-and-variables-and-tables-in-function-parameters/)
function LmUtils.tablesAreEqual(tableOne, tableTwo)
    if tableOne and tableTwo and type(tableOne) == "table" and type(tableTwo) == "table" then
        for k, v in pairs(tableOne) do
            if tableTwo[k] then
                if type(v) == "table" then
                    if not LmUtils.tablesAreEqual(v, tableTwo[k]) then return false end
                elseif type(v) ~= type(tableTwo[k]) then
                    return false
                else
                    if v ~= tableTwo[k] then return false end
                end
            else
                return false
            end
        end
        for k, v in pairs(tableTwo) do
            if not tableOne[k] then
                return false
            end
        end
    return true
    else
        return false
    end
end

-- gibt die keys der tabelle zurueck
function LmUtils.getTableKeys(t)

    local keys = {}
    for key, _ in pairs(t) do
        table.insert(keys, key)
    end
    return keys

end