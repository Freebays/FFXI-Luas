lock_weapons_during_combat = true
TP_Mode = 'Physical' --- Default mode (Physical or Magic)

gear = {}
gear.Chirich1 = { name="Chirich Ring +1", bag="Wardrobe7" }
gear.Chirich2 = { name="Chirich Ring +1", bag="Wardrobe6" }
gear.Rosmertas_TP = { name="Rosmerta's cape", augments={'DEX+20','Accuracy+20','Attack+20','"Double Attack"+10%',}}
gear.Rosmertas_WS = { name="Rosmerta's cape", augments={'STR+20','Accuracy+20','Attack+20','Weapon skill damage +10%',}}

function get_sets()

-------------------------------------------------------------

	--PRECAST--
	
	sets.precast = {}
	
	
	sets.precast.fc = {

		ammo="",
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",

	}

-------------------------------------------------------

	--MIDCAST--
	sets.midcast = {
	
		ammo="",
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",
	
	}
	
-----------------------------------------------------
	
	--AFTERCAST--
	sets.aftercast = {
	
		ammo="",
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",
	
	}
	
----------------------------------------------------

	--MELEE SETS--
	sets.tp = {
	
		main="Naegling",
		sub="Thibron", augments={'TP Bonus +1000'},
		ammo="Aurgelmir orb",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Mirage stole +1",
        waist="Reiki Yotai",
        left_ear="Dedition Earring",
        right_ear="Suppanomimi",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back=gear.Rosmertas_TP,
		
	}
	
	sets.tpDT = {
	
		ammo="",
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="Dedition Earring",
        right_ear="Suppanomimi",
        left_ring="",
        right_ring="",
        back="",
		
	}
	
	
	sets.SavageBlade = {
	
		main="Naegling",
		sub="Thibron", augments={'TP Bonus +1000',},
		ammo="Aurgelmir orb",
        head="",
        body="",
        hands="",
        legs="Jhakri slops +2",
        feet="",
        neck="Republican platinum medal",
        waist="",
        left_ear="",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring",
        right_ring="Sroda Ring",
        back=gear.Rosmertas_WS,
		
	}
	
end

function lock_weapons(equip_set)
local set = table.copy(equip_set)
if player.status == 'Engaged' then
    set.main = nil
    set.sub = nil
    set.range= nil
    -- set.range = nil -- optional
    end
    return set
    end

    function table.copy(t)
    local t2 = {}
    for k,v in pairs(t) do
        t2[k] = v
        end
        return t2
        end
		
function equip_current_tp_set()
	-- Clear both rings to prevent leftovers from DT
	equip({left_ring=empty, right_ring=empty})
	
    add_to_chat(122, 'Equipping TP Mode: '.. TP_Mode)
	
    if TP_Mode == 'Physical' then
        equip(sets.tp)
    
	elseif TP_Mode == 'PhysicalDT' then
		equip(sets.tpDT)
    
	elseif TP_Mode == 'Magic' then
        equip(sets.tpmagic)
		
	elseif TP_Mode == 'MagicDT' then
		equip(sets.tpmagicDT)
	end
end

function self_command(command)
    if command == 'toggleTP' then
        if TP_Mode == 'Physical' then
            TP_Mode = 'PhysicalDT'
        elseif TP_Mode == 'PhysicalDT' then
            TP_Mode = 'Magic'
        elseif TP_Mode == 'Magic' then
            TP_Mode = 'MagicDT'
        else
            TP_Mode = 'Physical'
        end
		
		add_to_chat(122, 'TP Mode: '..TP_Mode)
		
		if player.status == 'Engaged' then
            equip_current_tp_set()
            end
        end
end

function precast(spell)














end

function midcast(spell)













end

function aftercast(spell)















end

function status_change(new,old)
    if new == 'Idle' then
        equip(sets.aftercast.idledt)
   ---     add_to_chat('This confirms that leaving combat is a state change')
    elseif new == 'Engaged' then
        equip_current_tp_set()
   ---     add_to_chat('I am unsure if I put in redundant logic')
    end
end