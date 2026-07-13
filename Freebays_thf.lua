TP_Mode = 'Piercing'
DT_Mode = 'Off'
hud_text = nil

gear = {}
gear.Toutatis_EVIS = { name="Toutatis's cape", augments={'DEX+20','Accuracy+20 Attack+20','Critical hit rate +10%',}}
gear.Toutatis_SAVAGE = { name="Toutatis's cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}

function get_sets()

    sets.precast = {} --Does melee even need a fuckin precast LOL

	

    sets.midcast = {


    }

    sets.th = {
        
        main="Naegling",
        sub="Fusetto +2", augments={'TP Bonus +1000',},
        ammo="Aurgelmir orb",
        head="Adhemar Bonnet +1",
        body="Malignance Tabard",
        hands="Plunderer's armlets +1",
        legs="Malignance tights",
        feet="Malignance Boots",
        neck="Anu Torque",
        waist="Reiki Yotai",
        left_ear="Eabani Earring",
        right_ear="Skulker's Earring",
        left_ring="Moonbeam Ring",
        right_ring="Hoxne ring",
        back="Null Shawl",
        ---This is pretty much a TP set with Treasure Hunter
    }

    sets.tp = {
        
        main="Tauret",
        sub="Shijo",
        ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'"Triple Atk."+4','Attack+14',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+10','Accuracy+2','Attack+1',}},
        neck="Anu Torque",
        waist="Reiki Yotai",
        left_ear="Sherida Earring",
        right_ear="Skulker's Earring",
        left_ring="Petrov Ring",
        right_ring="Gere Ring",
        back="Null Shawl",
    }

    sets.tpDT = {

        main="Tauret",
        sub="Shijo",
        ammo="Perfect Lucky Egg",
        head="Adhemar Bonnet +1",
        body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Malignance tights",
        feet="Malignance Boots",
        neck="Anu Torque",
        waist="Reiki Yotai",
        left_ear="Eabani Earring",
        right_ear="Skulker's Earring",
        left_ring="Moonbeam Ring",
        right_ring="Gere Ring",
        back="Null Shawl",

    }

    sets.Slashing = {
        
        main="Naegling",
        sub="Fusetto +2", augments={'TP Bonus +1000',},
        ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'"Triple Atk."+4','Attack+14',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+10','Accuracy+2','Attack+1',}},
        neck="Anu Torque",
        waist="Reiki Yotai",
        left_ear="Eabani Earring",
        right_ear="Skulker's Earring",
        left_ring="Moonbeam Ring",
        right_ring="Gere Ring",
        back="Null Shawl",
    }

    sets.slashingDT = {

        main="Naegling",
        sub="Fusetto +2", augments={'TP Bonus +1000',},
        ammo="Aurgelmir Orb",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance Gloves",
        legs="Malignance tights",
        feet="Malignance Boots",
        neck="Anu Torque",
        waist="Reiki Yotai",
        left_ear="Eabani Earring",
        right_ear="Skulker's Earring",
        left_ring="Moonbeam Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",

    }

    sets.evisceration = {
        ammo="Yetshila",
        head="Adhemar Bonnet +1",
        body="Mummu jacket +2",
        hands="Mummu Wrists +2",
        legs="Mummu kecks +2",
        feet="Adhemar Gamashes +1",
        neck="Soil gorget",
        waist="Soil belt",
        left_ear="Odr Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring",
        right_ring="Mummu Ring",
        back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
    }

    sets.SavageBlade = {
        main="Naegling",
        sub="Fusetto +2",
        ammo="Oshasha's Treatise",
        head="Pill. Bonnet +3",
        body="Nyame Mail",
        hands="Meg. Gloves +2",
        legs="Plun. Culottes +3",
        feet={ name="Herculean Boots", augments={'Weapon skill damage +5%','STR+9',}},
        neck="Rep. Plat. Medal",
        waist="Sailfi Belt +1",
        left_ear="Sherida Earring",
        right_ear="Moonshade Earring",
        left_ring="Sroda Ring",
        right_ring="Cornelia's Ring",
        back={ name="Toutatis's cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},

    }
	
	sets.aftercast = {}
	
	sets.aftercast.idle = {
	
		range="Junior Musketeer's Chakram +1",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Trotter Boots",
        neck="Anu Torque",
        waist="Windbuffet belt +1",
        left_ear="Eabani Earring",
        right_ear="Upsurge earring",
        left_ring="Moonbeam Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",
	}

-------------HUD TEXT-----------------------------

	function init_hud()
		hud_text = texts.new()
		hud_text:font('Consolas')
		hud_text:size(12)
		hud_text:pos(30, 200) -- X,Y position on screen
		hud_text:color(255, 255, 255)
		hud_text:bg_color(0, 0, 0, 150)
		hud_text:show()
	end

	init_hud()
	update_hud()
    
end

function update_hud()
    local dt_color = DT_Mode == 'On' and '\\cs(255,50,50)' or '\\cs(50,255,50)'
    local text = 'THF MODE '
    text = text .. 'TP: ' .. TP_Mode .. ' '
    text = text .. dt_color .. 'DT: ' .. DT_Mode

    hud_text:text(text)
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

---Below two functions deal with magic vs physical TP sets, macro'd to \ on Windower

function equip_current_tp_set()
	equip({left_ring=empty, right_ring=empty}) -- clear leftover DT rings
    
    add_to_chat(122, 'TP Mode: '..TP_Mode..' | DT: '..DT_Mode)

    local base_set = nil

    -- Base TP mode selection, want to migrate to Switch Case?
    if TP_Mode == 'Piercing' then
        base_set = sets.tp
    elseif TP_Mode == 'Slashing' then
        base_set = sets.Slashing
    elseif TP_Mode == 'TH' then
        base_set = sets.th
    end 

    -- DT overlay
    if DT_Mode == 'On' then
        if TP_Mode == 'Piercing' and sets.tpDT then
            base_set = sets.tpDT
        elseif TP_Mode == 'Slashing' and sets.slashingDT then
            base_set = sets.slashingDT
        end
    end

    equip(base_set)
end

function self_command(command)
     if command == 'toggleTP' then
        if TP_Mode == 'Piercing' then
            TP_Mode = 'Slashing'
        elseif TP_Mode == 'Slashing' then
            TP_Mode = 'TH'
        else
            TP_Mode = 'Piercing'
        end
		
        ---add_to_chat(122, 'TP Mode: '..TP_Mode)
        if player.status == 'Engaged' then equip_current_tp_set() end
		update_hud()
    end

    -- Toggle DT mode
    if command == 'toggleDT' then
        if DT_Mode == 'Off' then
            DT_Mode = 'On'
        else
            DT_Mode = 'Off'
        end

        ---add_to_chat(122, 'DT Mode: '..DT_Mode)
        if player.status == 'Engaged' then equip_current_tp_set() end
		update_hud()
    end

end

-----END OF EQUIP FUNCTION---

function precast(spell)


if spell.type=="WeaponSkill" then
    if spell.english == 'Evisceration' then
        equip(sets.evisceration)
        end
    if spell.english == 'Savage Blade' then
        equip(sets.SavageBlade)
        end

end

end


function midcast (spell)


----SORRY GUESS I DONT NEED A MIDCAST SET? WHO FUCKIN KNOWS?

end

function aftercast(spell)
---This function performs after the action has taken place

	if player.status == 'Engaged' then
    equip_current_tp_set()
    ---     add_to_chat ('this confirms it goes back to tp set')
    else
        equip(sets.aftercast.idle)
        ---     add_to_chat('this test confirms aftercast works')
        end
end

function status_change(new,old)
if new == 'Idle' then
    equip(sets.aftercast.idle)
    ---     add_to_chat('This confirms that leaving combat is a state change')
    elseif new == 'Engaged' then
        equip_current_tp_set()
        ---     add_to_chat('I am unsure if I put in redundant logic')
        end
        end
