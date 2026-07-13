lock_weapons_during_combat = true
TP_Mode = 'Physical' --Does Physical, Magical, Piercing, Treasure Hunter, Odin?
DT_Mode = 'Off'
hud_text = nil
--TEST TO SEE IF THIS WORKED

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

		main={ name="Iris", augments={'Blue Magic skill +15','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        sub={ name="Colada", augments={'DEX+8','Accuracy+29','"Treasure Hunter"+2',}},
        ammo="Impatiens",
        head={ name="Amalric Coif +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
        body="Luhlaza Jubbah +3",
        hands="Jhakri Cuffs +2",
        legs="Aya. Cosciales +2",
        feet="Jhakri Pigaches +2",
        neck="Voltsurge Torque",
        waist="Witful Belt",
        left_ear="Loquac. Earring",
        right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
        left_ring="Prolix Ring",
        right_ring="Kishar Ring",
        back="Swith Cape",

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

    sets.midcast.bluebuff = {
        main={ name="Iris", augments={'Blue Magic skill +15','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        head="Luhlaza Keffiyeh +3",
        body="Assimilator's jubbah +2",
        feet="Luhlaza Charuqs +3",
        neck={ name="Mirage Stole +1", augments={'Path: A',}},
        right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
    }

    sets.midcast.bluephysical = {
        main="Naegling",
        sub="Maxentius",
        ammo="Aurgelmir Orb",
        head="Luh. Keffiyeh +3",
        body="Luhlaza Jubbah +3",
        hands="CSM Gloves +1",
        legs="Jhakri Slops +2",
        feet="Luhlaza Charuqs +3",
        neck={ name="Mirage Stole +1", augments={'Path: A',}},
        waist="Prosilio Belt",
        left_ear="Mache Earring",
        right_ear="Flame Pearl",
        left_ring="Sroda Ring",
        right_ring="Ilabrat Ring",
        back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        }

    sets.midcast.bluemagic = {
        main="Maxentius",
        sub="Archduke's Sword",
        ammo="Ghastly Tathlum",
        head="Jhakri Coronal +2",
        body="Jhakri Robe +2",
        hands="Jhakri Cuffs +2",
        legs="Jhakri Slops +2",
        feet="Jhakri Pigaches +2",
        neck="Sibyl Scarf",
        waist="Orpheus's Sash",
        left_ear="Regal Earring",
        right_ear="Friomisi Earring",
        left_ring="Metamor. Ring +1",
        right_ring="Weather. Ring",
        back="Seshaw Cape",
    }

    sets.midcast.bluehealing = {
        main="Nibiru Cudgel",
        sub="Archduke's Sword",
        ammo="Hydrocera",
        head="Luh. Keffiyeh +3",
        body="Nyame Mail",
        hands="Nyame Gauntlets",
        legs="Gyve Trousers",
        feet="Nyame Sollerets",
        neck="Phalaina Locket",
        waist="Gishdubar Sash",
        left_ear="Regal Earring",
        right_ear="Meili Earring",
        left_ring="Gelatinous Ring",
        right_ring="Defending Ring",
        back="Aurist's Cape +1",

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

    sets.aftercast.idledt = {
        
        ammo="Staunch Tathlum",
        head="Malignance Chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Carmine Cuisses +1",
        feet="Malignance boots",
        neck="Elite royal collar",
        waist="Flume Belt +1",
        left_ear="Eabani Earring",
        right_ear="Upsurge Earring",
        left_ring="Gelatinous Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",
    }
	
----------------------------------------------------

	--MELEE SETS--
	
    sets.tp = {
        main="Naegling",
        sub="Thibron", augments={'TP Bonus +1000',},
		ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'"Triple Atk."+4','Attack+14',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+10','Accuracy+2','Attack+1',}},
        neck={ name="Mirage Stole +1", augments={'Path: A',}},
        waist="Sailfi Belt +1",
        left_ear="Dedition Earring",
        right_ear="Suppanomimi",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}

    }
    
    
    sets.tp2 = {
	
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
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
		
	}
	
	sets.tpDT = {
	
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
        right_ring="Defending Ring",
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
		
	}
	

    sets.blunt = {

        main="Maxentius",
        sub="Thibron", augments={'TP Bonus +1000',},
        ammo="Aurgelmir Orb",
        head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="Herculean Trousers", augments={'"Triple Atk."+4','Attack+14',}},
        feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+10','Accuracy+2','Attack+1',}},
        neck={ name="Mirage Stole +1", augments={'Path: A',}},
        waist="Sailfi Belt +1",
        left_ear="Dedition Earring",
        right_ear="Suppanomimi",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
    }

    sets.bluntDT = {
	
        main="Maxentius",
        sub="Thibron", augments={'TP Bonus +1000',},
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
        right_ring="Defending Ring",
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
		
	}

    sets.learning = {
        
        main={ name="Iris", augments={'Blue Magic skill +15','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
        sub="Nibiru Cudgel",
        ammo="Aurgelmir Orb",
        head="Luh. Keffiyeh +3",
        body="Assim. Jubbah +2",
        hands="Assim. Bazu. +1",
        legs={ name="Herculean Trousers", augments={'"Triple Atk."+4','Attack+14',}},
        feet="Luhlaza Charuqs +3",
        neck={ name="Mirage Stole +1", augments={'Path: A',}},
        waist="Flume Belt +1",
        left_ear="Mache Earring",
        right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}

    }

	
	sets.SavageBlade = {
	
		main="Naegling",
		sub="Thibron", augments={'TP Bonus +1000',},
		ammo="Oshasha's treatise",
        head="Hashishin kavuk +3",
        body="Assimilator's jubbah +2",
        hands="Jhakri cuffs +2",
        legs="Luhlaza shalwar +3",
        feet={ name="Herculean Boots", augments={'Weapon skill damage +5%','STR+9',}},
        neck="Republican platinum medal",
        waist="Sailfi belt +1",
        left_ear="Regal Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Cornelia's Ring",
        right_ring="Sroda Ring",
        back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		
	}

    sets.blackhalo = {

        main="Maxentius",
		sub="Thibron", augments={'TP Bonus +1000',},
		ammo="Oshasha's treatise",
        head="Hashishin kavuk +3",
        body="Assimilator's jubbah +2",
        hands="Jhakri cuffs +2",
        legs="Luhlaza shalwar +3",
        feet={ name="Herculean Boots", augments={'Weapon skill damage +5%','STR+9',}},
        neck="Republican platinum medal",
        waist="Sailfi belt +1",
        left_ear="Regal Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Cornelia's Ring",
        right_ring="Sroda Ring",
        back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},

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
	
end

function update_hud()
    local dt_color = DT_Mode == 'On' and '\\cs(255,50,50)' or '\\cs(50,255,50)'
    local text = 'BLU MODE '
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
    if TP_Mode == 'Physical' then
        base_set = sets.tp
    elseif TP_Mode == 'Blunt' then
        base_set = sets.blunt
    elseif TP_Mode == 'Learning' then
        base_set = sets.learning
    elseif TP_Mode == 'TH' then
		base_set = sets.th
    end 

    -- DT overlay
    if DT_Mode == 'On' then
        if TP_Mode == 'Physical' and sets.tpDT then
            base_set = sets.tpDT
        elseif TP_Mode == 'Blunt' and sets.blunt then
            base_set = sets.bluntDT
        end
    end

    equip(base_set)
end

function self_command(command)
     if command == 'toggleTP' then
        if TP_Mode == 'Physical' then
            TP_Mode = 'Blunt'
        elseif TP_Mode == 'Blunt' then
            TP_Mode = 'Learning'
        elseif TP_Mode == 'Learning' then
            TP_Mode = 'TH'
        else
            TP_Mode = 'Physical'
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

function precast(spell)

    if spell.action_type == 'Magic' then
        equip(lock_weapons(sets.precast.fc))
    end
    
    if spell.type=="WeaponSkill" then
        if spell.english == 'Savage Blade' then
            equip(lock_weapons(sets.SavageBlade))
            end
        end
        if spell.english == 'Black Halo' then
            equip(lock_weapons(sets.blackhalo))
        end

end

function midcast(spell)

---Blue Magic---
    if spell.skill == "Blue Magic" then
        local base_set = sets.midcast.bluebuff

        local potency_spells = {
           ['Erratic Flutter'] = true,
           ['Battery Charge'] = true,
           ['Carcharian Verve'] = true,
           ['Mighty Guard'] = true,
           ['Nat. Meditation'] = true,
           ['Occultation'] = true,
           ['Refueling'] = true,
           ['Saline Coat'] = true,
           ['Triumphant Roar'] = true,
           ['Cocoon'] = true,
           ['Barrier Tusk'] = true,
           ['Diamondhide'] = true,
           ['Magic Barrier'] = true,
           ['Metallic Body'] = true,
           ['Plasma Charge'] = true,
           ['Pyric Bulwark'] = true,
           ['Reactor Cool'] = true,
           ['Harden Shell'] = true,
           ['Fantod'] = true,

        }

        local physical_spells = {
            ['Asuran Claws'] = true,
            ['Bludgeon'] = true,
            ['Body Slam'] = true,
            ['Death Scissors'] = true,
            ['Dimensional Death'] = true,
            ['Empty Thrash'] = true,
            ['Quadrastrike'] = true,
            ['Ram Charge'] = true,
            ['Saurian Slide'] = true,
            ['Spinal Cleave'] = true,
            ['Sweeping Gouge'] = true,
            ['Uppercut'] = true,
            ['Sinker Drill'] = true,
            ['Thrashing Assault'] = true,
            ['Vertical Cleave'] = true,
            ['Whirl of Rage'] = true,
            ['Paralyzing Triad'] = true,
            ['Power Attack'] = true,
            ['Frypan'] = true,
            ['Mandibular Bite'] = true,
            ['Queasyshroom'] = true,
            ['Screwdriver'] = true,
            ['Spiral Spin'] = true,
            ['Sub-zero Smash'] = true,
            ['Tourbillion'] = true,
        }

        local healing_spells = {
            ['Healing Breeze'] = true,
            ['Magic Fruit'] = true,
            ['Plenilune Embrace'] = true,
            ['Pollen'] = true,
            ['Restoral'] = true,
            ['White Wind'] = true,
        }

        local damage_spells = {
            ['Blazing Bound'] = true,
            ['Death Ray'] = true,
            ['Delta Thrust'] = true,
            ['Glutinous Dart'] = true,
            ['Hecatomb Wave'] = true,
            ['Leafstorm'] = true,
            ['Rail Cannon'] = true,
            ['Regurgitation'] = true,
            ['Retinal Glare'] = true,
            ['Searing Tempest'] = true,
            ['Subduction'] = true,
            ['Thermal Pulse'] = true,
            ['Tenebral Crush'] = true,
        }

        if potency_spells[spell.english] then
            base_set = sets.midcast.bluebuff
        end

        if physical_spells[spell.english] then
            base_set = sets.midcast.bluephysical
        end

        if healing_spells[spell.english] then
            base_set = sets.midcast.bluehealing
        end

        if damage_spells[spell.english] then
            base_set = sets.midcast.bluemagic
        end

        equip(lock_weapons(base_set))

    end


---ETC Spells---



end

function aftercast(spell)

    if player.status == 'Engaged' then
        equip_current_tp_set()
    else
        equip(sets.aftercast.idledt)
    end

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