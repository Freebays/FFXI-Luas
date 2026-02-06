
gear = {}
gear.Toutatis_EVIS = { name="Toutatis's cape", augments={'DEX+20','Accuracy+20 Attack+20','Critical hit rate +10%',}}

function get_sets()

    sets.precast = {} --Does melee even need a fuckin precast LOL

	

    sets.midcast = {


    }

    sets.midcast.treasurehunter = {
        ammo="Perfect Lucky Egg",
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
        right_ring="Gere Ring",
        back="Laic Mantle",
        ---This is pretty much a TP set with Treasure Hunter
    }

    sets.midcast.regtp = {
        ammo="Perfect Lucky Egg",
        head="Malignance chapeau",
        body="Malignance Tabard",
        hands="Plunderer's armlets +1",
        legs="Malignance tights",
        feet="Malignance Boots",
        neck="Anu Torque",
        waist="Windbuffet belt +1",
        left_ear="Eabani Earring",
        right_ear="Mache Earring",
        left_ring="Moonbeam Ring",
        right_ring="Chirich ring +1",
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

function precast(spell)


if spell.type=="WeaponSkill" then
    if spell.english == 'Evisceration' then
        equip(sets.evisceration)
        end

end

end


function midcast (spell)


----SORRY GUESS I DONT NEED A MIDCAST SET? WHO FUCKIN KNOWS?

end

function aftercast(spell)
---This function performs after the action has taken place

	if player.status == 'Engaged' then
    equip(sets.midcast.treasurehunter)
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
        equip(sets.midcast.treasurehunter)
        ---     add_to_chat('I am unsure if I put in redundant logic')
        end
        end






end
