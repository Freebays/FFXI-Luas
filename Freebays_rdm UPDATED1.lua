--I feel like there is more that needs to happen up here, but we will get there when I get there
lock_weapons_during_combat = true
TP_Mode = 'Physical' --Does Physical, Magical, Piercing, Treasure Hunter, Odin?
DT_Mode = 'Off'
hud_text = nil

gear = {}
gear.Sucellos_MND = { name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Weapon Skill Damage +10%',}}
gear.Sucellos_STR = { name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon Skill Damage +10%',}}
gear.Sucellos_DW  = { name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10',}}
gear.Chirich1 = { name="Chirich Ring +1", bag="Wardrobe7" }
gear.Chirich2 = { name="Chirich Ring +1", bag="Wardrobe6" }

function get_sets()
--this function prepares my equipment get_sets
--I'm unsure if I need to add augement arguments for each piece of AF'

    sets.precast = {}

    --precast fast cast set
    sets.precast.fc= {
        main="Crocea Mors",
        ammo="impatiens",
        head="Atrophy chapeau +3",
        body="Vitiation tabard +3",
        hands="Volte gloves",
        legs="Kaykaus Tights +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        feet="Merlinic crackows", augments={'MND+12','Accuracy+9','Attack+9','Mag.Acc.+17','"Mag.Atk.Bns."+17'},
        neck="Voltsurge torque",
        waist="Witful belt",
        left_ear="Malignance earring",
        right_ear="Loquacious earring",
        left_ring="Weatherspoon Ring",
        right_ring="Prolix ring",
        back=gear.Sucellos_MND,
    }

    sets.precast.composure = {
        sub="Diamond Aspis",
        head="Lethargy Chappel +2",
        body="Lethargy Sayon +2",
        hands="Lethargy Gantherots +2",
        legs="Lethargy Fuseau +2",
        feet="Lethargy Houseaux +3",
    }

    sets.saboteur = {
        sub="Diamond Aspis",
        hands="Lethargy gantherots +2",
    }

--Midcast sets: these deal with sets that deal with MAcc, potency, etc.

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

    sets.midcast.enhancingduration = {
        main="Pukulatmuj +1",
        sub="Ammurapi Shield",
        ammo="Staunch Tathlum",
        head="Telchine Cap", augments={'Enhancing Magic effect duration +10%'},
        body="Vitiation tabard +3",
        hands="Atrophy Gloves +3",
        legs="Telchine braconi", augments={'Enhancing Magic effect duration +9%'},
        feet="Lethargy Houseaux +3",
        neck="Duelist's Torque +2",
        waist="Embla Sash",
        left_ear="Mimir earring",
        right_ear="Lethargy Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Ghostfyre Cape", augments={'Enfb.mag. skill +1','Enha.mag. skill +8','Mag. Acc.+10','Enh. Mag. eff. dur. +20',},
    }

    sets.midcast.enhancingpotency = {
        main="Pukulatmuj +1",
        sub="Ammurapi Shield",
        ammo="Staunch Tathlum",
        head="Telchine Cap", augments={'Enhancing Magic effect duration +10%'},
        body="Vitiation tabard +3",
        hands="Vitiation gloves +3",
        legs="Atrophy tights +2",
        feet="Lethargy Houseaux +3",
        neck="Duelist's Torque +2",
        waist="Olympus sash",
        left_ear="Mimir earring",
        right_ear="Lethargy Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back="Ghostfyre Cape", augments={'Enfb.mag. skill +1','Enha.mag. skill +8','Mag. Acc.+10','Enh. Mag. eff. dur. +20',},
    }
	
	sets.midcast.Barspells = {
	
		neck="Sroda Necklace",
		legs="Shedir Seraweels",
	
	}
	
	
	sets.midcast.Aquaveil = {
		head="Amalric Coif +1",
		
	
	
	
	
	}

    sets.midcast.healing = {
        main="Daybreak",
        sub="Ammurapi Shield",
        ammo="Hydrocera",
        head="Kaykaus mitra +1", augments={'MP+80','"Cure" spellcasting time -7%', 'Enmity-6'},
        body="Kaykaus Bliaut +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        hands="Kaykaus cuffs +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        legs="Kaykaus Tights +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        feet="Kaykaus boots +1", augments={'MP+80','"Cure" spellcasting time -7%', 'Enmity-6'},
        neck="Duelist's Torque +2",
        waist="Latria Sash",
        left_ear="Malignance earring",
        right_ear="Meili Earring",
        left_ring="Stikini Ring +1",
        right_ring="Sirona's Ring",
        back=gear.Sucellos_MND,

    }

    sets.midcast.elementalfreenuke = {
        main="Daybreak",
        sub="Ammurapi Shield",
        ammo="Ghastly tathlum",
        head="Lethargy chappel +2",
        body="Amalric doublet +1", augments={'MP+80','Mag.Acc.+20','"Mag.Atk.Bns"+20'},
        hands="Amalric gages +1", augments={'INT+12','Mag.Acc.+20','"Mag.Atk.Bns."+20'},
        legs="Lethargy fuseau +2",
        feet="Amalric nails +1", augments={'INT+12','Mag.Acc.+20','"Mag.Atk.Bns."+20'},
        neck="Sibyl Scarf",
        waist="Orpheus's sash",
        left_ear="Sortiarius earring",
        right_ear="Malignance earring",
        left_ring="Metamorph Ring +1",
        right_ring="Jhakri ring",
        back="Seshaw cape",
    }

    sets.midcast.elementalmb = {
        main="Daybreak",
        sub="Ammurapi Shield",
        ammo="Ghastly tathlum",
        head="Ea Hat",
        body="Amalric doublet +1", augments={'MP+80','Mag.Acc.+20','"Mag.Atk.Bns"+20'},
        hands="Amalric gages +1", augments={'INT+12','Mag.Acc.+20','"Mag.Atk.Bns."+20'},
        legs="Ea Slops",
        feet="Amalric nails +1", augments={'INT+12','Mag.Acc.+20','"Mag.Atk.Bns."+20'},
        neck="Sanctity necklace",
        waist="Latria Sash",
        left_ear="Sortiarius earring",
        right_ear="Malignance earring",
        left_ring="Resonance Ring",
        right_ring="Jhakri ring",
        back="Seshaw cape",

    }
	
--Enfeebling sets are broken down into three parts: Enfeeble, for general usage enfeebling, Enfeeblepotency for spells that don't deal with
--any sort of accuracy, and enfeeble accuracy, which are dictated on accuracy and potency. Because of this, sets are not 100% optimized for
--MAX MACC and MAX Pot

    sets.midcast.enfeebling = {
        main="Daybreak",
        sub="Ammurapi Shield",
        range="Ullr",
        head="Vitiation chapeau +3",
        body="Atrophy Tabard +3",
        hands="Kaykaus cuffs +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        legs="Lethargy Fuseau +2",
        feet="Vitiation boots +3",
        neck="Duelist's Torque +2",
        waist="Ovate rope",
        left_ear="Snotra Earring",
        right_ear="Malignance Earring",
        left_ring="Stikini ring +1",
        right_ring="Stikini ring +1",
        back=gear.Sucellos_MND,
    }


--This set is for Frazzle and Distract
	sets.midcast.enfeebleFD = {
		main="Daybreak",
		sub="Ammurapi Shield",
		range="Ullr",
        head="Vitiation Chapeau +3",
        body="Lethargy Sayon +2",
        hands="Kaykaus cuffs +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
        legs={ name="Chironic Hose", augments={'Mag. Acc.+28','MND+14','"Mag.Atk.Bns."+10',}},
        feet="Vitiation Boots +3",
        neck="Duelist's Torque +2",
        waist="Ovate Rope",
        left_ear="Malignance Earring",
        right_ear="Snotra Earring",
        left_ring="Stikini Ring +1",
        right_ring="Stikini Ring +1",
        back=gear.Sucellos_MND,
    }
    
--This set is for Paralyze, Slow and Addle
	sets.midcast.EnfeebleP = {
		main="Daybreak",
		sub="Ammurapi shield",
		range="Ullr",
        head="Vitiation Chapeau +3",
        body="Lethargy Sayon +2",
        hands="Kaykaus cuffs +1", augments={'MP+80', 'MND+12', 'Mag. Acc.+20'},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+28','MND+14','"Mag.Atk.Bns."+10',}},
        feet="Vitiation Boots +3",
        neck="Duelist's Torque +2",
        waist="Ovate Rope",
        left_ear="Malignance Earring",
        right_ear="Snotra Earring",
        left_ring="Stikini Ring +1",
        right_ring="Metamorph Ring +1",
        back=gear.Sucellos_MND,
	
	}
	
--Aftercast set: based on thinking, I think this will just revert back to idle or TP?
    sets.aftercast = {}

    sets.aftercast.idle = {
		main="Colada", augments={'DEX+9','Accuracy+29','"Treasure Hunter"+2'},
		sub="Daybreak",
        ammo="Staunch Tathlum",
        head="Vitiation chapeau +1",
        body="Atrophy Tabard +3",
        hands="Atrophy Gloves +3",
        legs="Vitiation tights +1",
        feet="Merlinic crackows", augments={'MND+12','Accuracy+9','Attack+9','Mag.Acc.+17','"Mag.Atk.Bns."+17'},
        neck="Duelist's Torque +2",
        waist="Flume belt +1",
        left_ear="Upsurge Earring",
        right_ear="Moonshade Earring",
        left_ring="Stikini Ring +1",
        right_ring="Defending Ring",
        back="Moonbeam Cape",
    }

    sets.aftercast.idledt = {
        sub="Sacro Bulwark",
        ammo="Staunch Tathlum",
        head="Malignance Chapeau",
        body="Lethargy Sayon +2",
        hands="Malignance gloves",
        legs="Carmine Cuisses +1",
        feet="Malignance boots",
        neck="Dualism Collar +1",
        waist="Flume Belt +1",
        left_ear="Eabani Earring",
        right_ear="Upsurge Earring",
        left_ring="Yacuruna Ring",
        right_ring="Defending Ring",
        back="Moonbeam Cape",
    }

--Melee oriented sets: this deals with TP and Weaponskills.

    sets.tp = {
        main="Naegling",
        sub="Thibron", augments={'TP Bonus +1000',},
        ammo="Aurgelmir orb",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Anu Torque",
        waist="Windbuffet Belt +1",
        left_ear="Eabani Earring",
        right_ear="Dedition Earring",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back=gear.Sucellos_DW,

    }
	
	sets.tpDT = {
        main="Naegling",
        sub="Thibron", augments={'TP Bonus +1000',},
        ammo="Aurgelmir orb",
        head="Malignance chapeau",
        body="Lethargy Sayon +2",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Anu Torque",
        waist="Flume Belt +1",
        left_ear="Dedition Earring",
        right_ear="Eabani Earring",
        left_ring=gear.Chirich1,
        right_ring="Defending Ring",
        back=gear.Sucellos_DW,

    }

    sets.tpmagic = { ---needs to be edited more
        main="Crocea Mors",
        sub="Daybreak",
        ammo="Aurgelmir orb",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Anu Torque",
        waist="Orpheus's Sash",
        left_ear="Eabani Earring",
        right_ear="Dedition Earring",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back=gear.Sucellos_DW,

    }
	
	sets.tpmagicDT = { ---needs to be edited more
        main="Crocea Mors",
        sub="Daybreak",
        ammo="Aurgelmir orb",
        head="Malignance chapeau",
        body="Lethargy Sayon +2",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Anu Torque",
        waist="Orpheus's Sash",
        left_ear="Eabani Earring",
        right_ear="Dedition Earring",
        left_ring=gear.Chirich1,
        right_ring="Defending Ring",
        back=gear.Sucellos_DW,

    }
	
	 sets.Odin = {
        main="Qutrub Knife",
        sub="Ethereal Dagger",
        ammo="Perfect Lucky Egg",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Ayanmo Manopolas +2",
        legs="Vitiation tights +3",
        feet="Malignance boots",
        neck="Sanctity Necklace",
        waist="Orpheus's Sash",
        left_ear="Eabani Earring",
        right_ear="Suppanomimi",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back=gear.Sucellos_DW,

    }
	
	sets.TH = {
        main="Naegling",
        sub="Colada",
        ammo="Perfect Lucky Egg",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Malignance gloves",
        legs="Malignance tights",
        feet="Malignance boots",
        neck="Anu Torque",
        waist="Windbuffet Belt +1",
        left_ear="Eabani Earring",
        right_ear="Dedition Earring",
        left_ring=gear.Chirich1,
        right_ring=gear.Chirich2,
        back=gear.Sucellos_DW,

    }
	
    sets.SavageBlade = {
        main="Naegling",
        sub="Thibron", augments={'TP Bonus +1000',},
        ammo="Aurgelmir orb",
        head="Vitiation chapeau +3",
        body="Vitiation tabard +3",
        hands="Atrophy Gloves +3",
        legs="Jhakri slops +2",
        feet="lethargy houseaux +3",
        neck="Republican Platinum Medal",
        waist="Sailfi Belt +1",
        left_ear="Malignance Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring",
        right_ring="Sroda Ring",
        back=gear.Sucellos_STR,
    }

    sets.SeraphBlade = {
        main="Crocea Mors",
        sub="Daybreak",
        ammo="Sroda Tathlum",
        head="Lethargy chappel +2",
        body="Lethargy sayon +2",
        hands="Jhakri Cuffs +2",
        legs="Lethargy fuseau +2",
        feet="Lethargy houseaux +3",
        neck="Sibyl scarf",
        waist="Orpheus's Sash",
        left_ear="Malignance Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring",
        right_ring="Weatherspoon ring",
        back=gear.Sucellos_MND,

    }
	
	sets.RedLotusBlade = {
        main="Crocea Mors",
        sub="Daybreak",
        ammo="Sroda Tathlum",
        head="Lethargy chappel +2",
        body="Lethargy sayon +2",
        hands="Jhakri Cuffs +2",
        legs="Lethargy fuseau +2",
        feet="Lethargy houseaux +3",
        neck="Sibyl scarf",
        waist="Orpheus's Sash",
        left_ear="Malignance Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring",
        right_ring="Weatherspoon ring",
        back=gear.Sucellos_MND,

    }
	
	sets.SanguineBlade = {
        main="Crocea Mors",
        sub="Daybreak",
        ammo="Sroda Tathlum",
        head="Pixie Hairpin +1",
        body="Lethargy sayon +2",
        hands="Jhakri Cuffs +2",
        legs="Lethargy fuseau +2",
        feet="Lethargy houseaux +3",
        neck="Sibyl scarf",
        waist="Orpheus's Sash",
        left_ear="Malignance Earring",
        right_ear="Moonshade Earring", augments={'"Mag.Atk.Bns"+4','TP Bonus +250'},
        left_ring="Epaminondas's ring", -- 
        right_ring="Weatherspoon ring", -- Replace with Freke Ring
        back=gear.Sucellos_MND,

    }

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
    local text = 'RDM MODE '
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

    -- Base TP mode selection
    if TP_Mode == 'Physical' then
        base_set = sets.tp
    elseif TP_Mode == 'Magic' then
        base_set = sets.tpmagic
    elseif TP_Mode == 'Piercing' then
        base_set = sets.tp -- placeholder, make later
    elseif TP_Mode == 'TH' then
        base_set = sets.TH 
    elseif TP_Mode == 'Odin' then
        base_set = sets.Odin
    end

    -- DT overlay
    if DT_Mode == 'On' then
        if TP_Mode == 'Magic' and sets.tpmagicDT then
            base_set = sets.tpmagicDT
        elseif sets.tpDT then
            base_set = sets.tpDT
        end
    end

    equip(base_set)
end

function self_command(command)
     if command == 'toggleTP' then
        if TP_Mode == 'Physical' then
            TP_Mode = 'Magic'
        elseif TP_Mode == 'Magic' then
            TP_Mode = 'Piercing'
        elseif TP_Mode == 'Piercing' then
            TP_Mode = 'TH'
        elseif TP_Mode == 'TH' then
            TP_Mode = 'Odin'
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
------------------------------------------------

function precast(spell)
---This functions performs right before the action is sent to the server

    if spell.action_type == 'Magic' then
        equip(lock_weapons(sets.precast.fc))
        end
    if spell.type=="WeaponSkill" then
        if spell.english == 'Savage Blade' then
            equip(lock_weapons(sets.SavageBlade))
            end
        end
        if spell.english == 'Seraph Blade' then
            equip(lock_weapons(sets.SeraphBlade))
        end
		if spell.english == 'Red Lotus Blade' then
			equip(lock_weapons(sets.RedLotusBlade))
			end
		if spell.english == 'Sanguine Blade' then
			equip(lock_weapons(sets.SanguineBlade))
			end
    if spell.type=="JobAbility" and spell.english == 'Composure' then
            equip(lock_weapons(sets.precast.composure))
        end
    if spell.type=="JobAbility" and spell.english == 'Saboteur' then
            equip(lock_weapons(sets.saboteur))
        end

end
-------------------------------------------------

function midcast(spell)
--This function performs after precast but before the action is sent to the server
local set = nil

    if spell.skill == "Enhancing Magic" then
        local base_set = sets.midcast.enhancingduration
        
        local potency_spells = {
            ['Enwater'] = true,
            ['Enfire'] = true,
            ['Enaero'] = true,
            ['Enthunder'] = true,
            ['Enblizzard'] = true,
            ['Enstone'] = true, 
            ['Gain-STR'] = true,
            ['Gain-DEX'] = true,
            ['Gain-VIT'] = true,
            ['Gain-AGI'] = true,
            ['Gain-INT'] = true,
            ['Gain-MND'] = true,
            ['Gain-CHR'] = true,
            ['Temper'] = true,
            ['Temper II'] = true,
        }
		
		local barspells = {
			['Barstone'] = true,
			['Barwater'] = true,
			['Baraero'] = true,
			['Barfire'] = true,
			['Barblizzard'] = true,
			['Barthunder'] = true,
			['Barsleep'] = true,
			['Barpoison'] = true,
			['Barparalyze'] = true,
			['Barblind'] = true,
			['Barsilence'] = true,
			['Barvirus'] = true,
			['Barpetrify'] = true,
			['Baramnesia'] = true,
			
		}
		
		
        if potency_spells[spell.english] then
            base_set = sets.midcast.enhancingpotency
		end
		
		if barspells[spell.english] then
			base set = set_combine(base_set, sets.midcast.barspells)
		end
		
		equip(lock_weapons(set))
		
	end
	
	if spell.skill == "Healing Magic" then
        equip(lock_weapons(sets.midcast.healing))
        end
	
	if spell.skill == "Enfeebling Magic" then
    local frazdistract = {
        ['Distract'] = true,
        ['Distract II'] = true,
        ['Distract III'] = true,
        ['Frazzle II'] = true,
        ['Frazzle III'] = true,
    }

    local enfeeblepotency = {
        ['Paralyze'] = true,
        ['Paralyze II'] = true,
        ['Slow'] = true,
        ['Slow II'] = true,
        ['Addle'] = true,
        ['Addle II'] = true,
    }

    local base_set = sets.midcast.enfeebling

    if frazdistract[spell.english] then
        base_set = sets.midcast.enfeebleFD
    elseif enfeeblepotency[spell.english] then
        base_set = sets.midcast.EnfeebleP
    end

    if buffactive['Saboteur'] then
        base_set = set_combine(base_set, sets.saboteur)
    end

    equip(lock_weapons(base_set))
end
end

------------------------------------------------

function aftercast(spell)
---This function performs after the action has taken place

    if player.status == 'Engaged' then
        equip_current_tp_set()
   ---     add_to_chat ('this confirms it goes back to tp set')
    else
        equip(sets.aftercast.idledt)
   ---     add_to_chat('this test confirms aftercast works')
end

end
--------------------------

function status_change(new,old)
    if new == 'Idle' then
        equip(sets.aftercast.idledt)
   ---     add_to_chat('This confirms that leaving combat is a state change')
    elseif new == 'Engaged' then
        equip_current_tp_set()
   ---     add_to_chat('I am unsure if I put in redundant logic')
    end
end