AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Redevelopment"
--SWEP.SubCategory = "1DickGay"

SWEP.PrintName = "Mozzarella"
SWEP.TrueName = "M4 Super 90"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
	["Country of Origin"] = [[Who the fuck read these]],
	["Calibre"] = "12 Gauge",
}

SWEP.Credits = {
}

SWEP.Description = [[Semi-automatic shotgun designed for close-quarters urban warfare. Uses an innovative short-stroke gas system that eliminates complex mechanisms found on most gas-operated automatic weapons. Its main use is in destroying locked doors.".]]

SWEP.ViewModel = "models/weapons/arc9/myt_uc/c_m1014.mdl"
SWEP.WorldModel = "models/weapons/arc9/myt_uc/c_m1014.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/arc9/myt_uc/c_m1014.mdl"
SWEP.WorldModelOffset = {
	Pos = Vector(0, 0, 0),
	Ang = Angle(0, 0, 0),
	TPIKPos = Vector(-8, 5, -2),
	TPIKAng = Angle(-6, 0, 180),
	TPIKPosSightOffset = Vector(4, -0.5, -3),
	TPIKPosReloadOffset = Vector(0, 0, 0),
	TPIKAngReloadOffset = Angle(0, 0, 0),

	TPIKPosAlternative = Vector(-16, 4, 1.5),
	Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 20 -- 5 pellets to kill
SWEP.DamageMin = 10 -- land 10 pellets to kill

SWEP.RangeMin = 4
SWEP.RangeMax = 40

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1240 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15


-------------------------- MAGAZINE

SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 4 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.ShotgunReload = true
SWEP.ManualAction = false
SWEP.ManualActionNoLastCycle = true
SWEP.CanReloadWhileUnCycled = true

-------------------------- FIREMODES
SWEP.Num = 8
SWEP.RPM = 220

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
	{
		Mode = 1,
	},
}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 5

-- General recoil multiplier
SWEP.Recoil = 4

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.25 -- Multiplier for vertical recoil

SWEP.RecoilPerShot = 0.24

-------------------------- SPREAD

SWEP.Spread = 1/30

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 10

SWEP.SpreadAddMove = 1/70
SWEP.SpreadAddMidAir = 1/970
SWEP.SpreadMultHipFire = 100/30
SWEP.SpreadMultCrouch = 0.5

SWEP.SpreadMultSights = 1
SWEP.RecoilModifierCapSights = 2.5
SWEP.RecoilModifierCapCrouch = 5

-------------------------- HANDLING

SWEP.FreeAimRadius = 6
SWEP.FreeAimRadiusSights = 3
SWEP.Sway = 1

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.5
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.25

SWEP.SwayMultSights = 0.4

SWEP.AimDownSightsTime = 0.6
SWEP.SprintToFireTime = 0.5

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.6
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false

SWEP.BashDamage = 100
SWEP.BashLungeRange = 0
SWEP.BashRange = 128
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.8
SWEP.BashWhileSprint = true

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos = Vector(-2.72, -4, 1.25),
	Ang = Angle(0,-0.25,0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos = Vector(0, 15, -4),
		Ang = Angle(0, 0, -45),
	},
	Magnification = 1.1,
	CrosshairInSights = false
}

SWEP.Crosshair = true
SWEP.PeekPos = Vector(1.5, -1, -1.5)
SWEP.PeekAng = Angle(0, 0, -10)

SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintAng = Angle(40, -15, -15)
SWEP.SprintPos = Vector(3, 2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, -1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16, 45, 6)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false
SWEP.BarrelLength = 52
-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/shotgun_shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = false
SWEP.NoShellEjectManualAction = true

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

-------------------------- SOUNDS

local path1 = "arc9_ucalpha/870/"
local path = "arc9_ucalpha/m1014/"
local common = "arc9_ucalpha/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.DryFireSound =  path1 .. "eject.ogg"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["idle_empty"] = {
		Source = "idle_empty",
	},
	["draw"] = {
		Source = "draw",
		FireASAP = true,
		MinProgress = 0.35,
	},
	["ready"] = {
		Source = "equip",
		EventTable = {
			{s = path1 .. "rack_1.ogg", t = 0.44},
			{s = path .. "breechclose.ogg", t = 0.5},
			{s = common .. "shoulder.ogg",  t = 0.75},
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, }, { t = 0.6, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 1, },
		},
		FireASAP = true,
		MinProgress = 0.6,
	},
	["draw_cycle"] = {
		Source = "draw_cycle",
		EventTable = {
			{s = path1 .. "rack_1.ogg",  t = 8/30},
			{s = path1 .. "rack_2.ogg",  t = 13/30},
			{s = common .. "shoulder.ogg",  t = 0.6},
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, }, { t = 0.6, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 1, },
		},
		FireASAP = true,
		MinProgress = 0.6,
		EjectAt = 9/30,
	},
	["draw_empty"] = {
		Source = "draw_empty",
	},
	["holster"] = {
		Source = "holster",
	},
	["holster_empty"] = {
		Source = "holster_empty",
	},
	["fire"] = {
		Source = "fire",
		EventTable = {
			{s = path .. "mech.ogg", t = 0}, -- Not temporary
			{s = path1 .. "eject.ogg", t = 0}, -- Not temporary
		},
	},
	["fire_empty"] = {
		Source = "fire_empty",
		Time = 23 / 30,
		EventTable = {
			{s = path .. "mech_last.ogg", t = 0}, -- Not temporary
			{s = path1 .. "eject.ogg", t = 0}, -- Not temporary
		},
	},
	["cycle"] = {
		Source = {"cycle"},
		EventTable = {
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path1 .. "rack_1.ogg",  t = 0},
			{s = path1 .. "eject.ogg",  t = 0.075},
			{s = path1 .. "rack_2.ogg",  t = 0.2},
		},
		EjectAt = 8 / 40,
		FireASAP = true,
		MinProgress = 24/40,
	},  
	["cycle_forced"] = {
		Source = {"cycle_forced"},
		EventTable = {
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path1 .. "rack_1.ogg",  t = 11/30},
			{s = path1 .. "eject.ogg",  t = 13/30},
			{s = path1 .. "rack_2.ogg",  t = 16/30},
		},
		EjectAt = 22 / 40,
		FireASAP = true,
		MinProgress = 24/40,
	},  

	["reload_start_empty"] = {
		Source = "reload_1_emp",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
		EventTable = {   
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path .. "breechload.ogg",  t = 12/30},
			{s = path .. "breechclose.ogg",  t = 29/30},
		},
		RestoreAmmo = 1,
		RefillProgress = 35/40,
		MinProgress = 35/40,
		MagSwapTime = 35/40,
	}, 
	["reload_start_emp"] = {
		Source = "reload_1pump_emp2",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
		EventTable = {   
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path1 .. "rack_1.ogg",  t = 5/30},
			{s = path1 .. "eject.ogg",  t = 8/30},
			{s = path1 .. "rack_2.ogg",  t = 11/30},
			{s = common .. "shotgun_insert_3.ogg",  t = 31/30},
		},
		RestoreAmmo = 1,
		EjectAt = 8 / 40,
	}, 
	["reload_start_emp2"] = {
		Source = "reload_1pump_emp",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
		EventTable = {   
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path1 .. "rack_1.ogg",  t = 5/30},
			{s = path1 .. "eject.ogg",  t = 8/30},
			{s = path1 .. "rack_2.ogg",  t = 11/30},
			{s = common .. "shotgun_insert_3.ogg",  t = 31/30},
		},
		RestoreAmmo = 1,
		EjectAt = 8 / 40,
	},  

	["reload_start"] = {
		Source = "reload_1",
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 1, }, { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.3, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
		},
		EventTable = {   
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = common .. "shotgun_insert_3.ogg",  t = 25/30},
		},
		RestoreAmmo = 1,
		RefillProgress = 35/40,
		MinProgress = 35/40,
	},   
	["reload_insert"] = {
		Source = "reload_2",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },  },
		EventTable = { 
			{s = common .. "shotgun_insert_3.ogg",  t = 18/30},
			{s = common .. "cloth_4.ogg",  t = 0},
		},
		RefillProgress = 32 / 40,
	},
	["reload_insert_emp"] = {
		Source = "reload_2pump_end",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },  },
		EventTable = { 
			{s = path1 .. "rack_1.ogg",  t = 6/30},
			{s = path1 .. "eject.ogg",  t = 9/30},
			{s = path1 .. "rack_2.ogg",  t = 12/30},
			{s = common .. "shotgun_insert_3.ogg",  t = 34/30},
			{s = common .. "cloth_4.ogg",  t = 0},
		},
		EjectAt = 9/30,
		RefillProgress = 32 / 40,
	},
	["reload_emptoloop"] = {
		Source = {"reload_2_emp"},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
		},
		EventTable = { 
			{s = common .. "shotgun_insert_3.ogg",  t = 18/30},
			{s = common .. "cloth_4.ogg",  t = 0},
		},
		RestoreAmmo = 0, -- WHO FUCKING BROKE THIS, insert is now consider 1 + RestoreAmmo
		RefillProgress = 60/40,
	},
	["reload_finish"] = {
		Source = "reload_3",
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 1, rhik = 0, }, { t = 0.4, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
		},
		EventTable = {
			{s = common .. "shoulder.ogg",  t = 0.4},
		},
		FireASAP = true,
		MinProgress = 9/30, 
	},  
	["reload_finish_empty"] = {
		Source = "reload_3pump",
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },	{ t = 0.3, lhik = 1, rhik = 0, }, 
		{ t = 0.7, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
		},
		EventTable = {
			{s = path1 .. "rack_1.ogg",  t = 6/30},
			{s = path1 .. "eject.ogg",  t = 9/30},
			{s = path1 .. "rack_2.ogg",  t = 12/30},
			{s = common .. "shoulder.ogg",  t = 0.6},
		},
		FireASAP = true,
		MinProgress = 24/40, 
		RefillProgress = 24/40,
		EjectAt = 9/30,
	},  
	["reload_end_empty"] = {
		Source = "reload_3_emp",
		IKTimeLine = {  { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 1, },},
		EventTable = {
			{s = common .. "shoulder.ogg",  t = 0.4},
		},
		FireASAP = true,
		MinProgress = 32/40,
	},  
	["bash"] = { Source = {"idle"},},	-- has to exist for translateanim to work
	["bash_bayo"] = { Source = {"stab"},},	
}
SWEP.Bash = true
SWEP.Hook_BlockHasAnimation = function (wep, anim) -- use normal bash fuction if no bayonet and not in UBGL
	if anim == "bash" and !wep:HasElement("has_bayonet") and !wep:GetUBGL() then return false end
end

SWEP.Bodge_Cycle = 0
SWEP.Bodge_Reload = 0
SWEP.Bodge_StoreCycle = 0
SWEP.Hook_Think = function(wep) 
	-- for reloading when the gun is not chambered (uncycled, holding down the attack button)
	if wep.Bodge_Cycle == 1 and !wep:GetUBGL() then
		-- uncycled state kinda disables the whole primary attack function so i cant use Hook_PrimaryAttack
		if wep:GetOwner():KeyPressed(IN_ATTACK) then
			wep:SetNeedsCycle(false)
		end
	end
end

SWEP.Hook_BlockAnimation = function(wep, curanim)
	if wep.Bodge_Cycle == 1 and !wep:GetUBGL() then
		if	curanim == "cycle"			then return true end
		if	curanim == "cycle_forced"	then return true end
	end	
end
SWEP.Hook_TranslateAnimation = function(wep, curanim)
	if !wep:GetUBGL() then -- only checking the gun not the ubgl
	
	-- uncycled state
	if wep:Clip1() == 0 then
		if	curanim == "reload_start" or "reload_start_empty" then wep.Bodge_Reload = 1	end
	end
	if wep:Clip1() != 0 then
		if	curanim == "reload_start" 	then wep.Bodge_Reload = 0	end
	end
	if wep:GetNeedsCycle() then
		if	curanim == "reload_start" 	then 
			wep.Bodge_Cycle = 1
			wep.Bodge_Reload = 1
		end
	end
	-- normal state
	if (!wep:GetNeedsCycle() and curanim == "reload_start") or curanim == "fire" then
		wep.Bodge_Cycle = 0
	end
	-- use empty reload finish IF gun is EITHER uncycled OR starts at 0 but does not ends at max cap
	if (wep.Bodge_Cycle == 1 or wep.Bodge_Reload == 1) and wep:HasElement("is_pumpaction") then
		if	wep:Clip1() == wep:GetValue("ClipSize") then
			if curanim == "reload_insert" 	then return "reload_insert_emp"	end	-- transition anim to + 1 when gun at max cap
			if curanim == "reload_start" and wep:HasElement("force_pumpaction")	and !wep:HasElement("has_forend") then return "reload_start_emp2"	end	-- different anim when not pump action forend
			if curanim == "reload_start" 	then return "reload_start_emp"	end	-- clear chamber to add a + 1
		end
		if wep:Clip1() < wep:GetValue("ClipSize") + wep:GetValue("ChamberSize")  then
			if	curanim == "reload_finish"	then return "reload_finish_empty"	end
		end
	end

	-- extended anim transition for empty reload
	if	wep:Clip1() == 1 and !wep:HasElement("is_pumpaction") then -- only for semi, pump uses a different set
		if curanim == "reload_finish"		then return "reload_end_empty"	end	-- empty to end, skipping insert
		if curanim == "reload_insert" 		then return "reload_emptoloop"	end	-- empty to insert loop
	end
	
	if wep:HasElement("is_pumpaction") then -- pump does not use start empty
		if curanim == "reload_start_empty"	then return "reload_start" end	
	end
	-- special anim if uncycled when holstered
	if curanim == "holster" and wep:GetNeedsCycle() then
		wep:SetNeedsCycle(false)
		wep.Bodge_StoreCycle = 1
	end
	if curanim == "draw" and wep.Bodge_StoreCycle == 1 then 
		wep.Bodge_StoreCycle = 0
		return "draw_cycle"
	end
	
	if wep:HasElement("force_pumpaction") and !wep:HasElement("has_forend") then -- when not using a pump action forend
		if curanim == "cycle" 		then return "cycle_forced"	end	
		if curanim == "draw_cycle" 	then return "equip"	end	
	end

	end
end

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
	["fe_pump1"] = 	{ Bodygroups = { {4, 1}, },	AttPosMods = { [7] = { Pos = Vector(0, 1.35, -0.5), } }	}, 
	["fe_pump2"] = 	{ Bodygroups = { {4, 2}, },	AttPosMods = { [7] = { Pos = Vector(0, 1.3, 0.5), } }	},
	["fe_pump5"] = 	{ Bodygroups = { {4, 5}, },	AttPosMods = { [7] = { Pos = Vector(0, 1.2, -0.4), } }	},
	["fe_3"] = 	{ Bodygroups = { {4, 3}, },	AttPosMods = { [7] = { Pos = Vector(0, 0.9, 1.5), } }		},  
	["fe_4"] = 	{ Bodygroups = { {4, 4}, },},  
	["s_1"] = 	{ Bodygroups = { {3, 2}, },},   
	["s_2"] = 	{ Bodygroups = { {3, 3}, },},   
	["s_3"] = 	{ Bodygroups = { {3, 4}, },},  
	["s_4"] = 	{ Bodygroups = { {3, 5}, },},   
	["s_5"] = 	{ Bodygroups = { {3, 7}, },},   
	["m_1"] = 	{ Bodygroups = { {2, 1}, },},   
	["m_2"] = 	{ Bodygroups = { {2, 2}, },},   
	["m_3"] = 	{ Bodygroups = { {2, 3}, },},	
	["m_4"] = 	{ Bodygroups = { {2, 4}, },},   
	["b_1"] = 	{ Bodygroups = { {1, 3}, },	AttPosMods = { [3] = { Pos = Vector(0, -0.5, 28.5), } }		},
	["b_2"] = 	{ Bodygroups = { {1, 2}, },	AttPosMods = { [3] = { Pos = Vector(0, -0.5, 32.5), } }		},
	["b_3"] = 	{ Bodygroups = { {1, 1}, },	AttPosMods = { [3] = { Pos = Vector(0, -0.5, 17.5), } }		},
}


SWEP.Hook_ModifyBodygroups = function(wep, data)
	local model = data.model  
	if !wep:GetReloading() 	then model:SetBodygroup(5,1) end -- hide bullet when not reloading, i think there was a proper bonehide method but i forgor
	-- ziptied rail for foregrip
	if wep:HasElement("fg_def") then model:SetBodygroup(6,1) end
	if wep:HasElement("fg_def") and wep:HasElement("fe_pump2") then model:SetBodygroup(6,2) end
	if wep:HasElement("fg_def") and wep:HasElement("fe_pump1") then model:SetBodygroup(6,3) end
	if wep:HasElement("fg_def") and wep:HasElement("fe_pump5") then model:SetBodygroup(6,4) end
	if wep:HasElement("fg_def") and wep:HasElement("fe_3") then model:SetBodygroup(6,0) end -- has its own rail
end
 
SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultName = "None",
		InstalledElements = {"rail_def", "has_optic"},

		DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		Category = {"optic_ucalpha", "eft_optic_medium"},
		Bone = "1014_parent",
		Pos = Vector(0, -1.2, 2.8),
		Ang = Angle(90, 0, -90),
		MergeSlots = {9},
	},
	{
		PrintName = "Barrel",
		DefaultName = "Standard Barrel",

		Category = "ucalpha_1014_barrel",
		Bone = "1014_parent",
		Pos = Vector(0, -0.5, 7),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Muzzle",
		DefaultName = "None",

		DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
		ExcludeElements = {"pre_muzzed"},
		Category = {"muzzle_css"},
		Bone = "1014_parent",
		Pos = Vector(0, -0.5, 24),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Forend",
		DefaultName = "Standard Forend",

		Category = "ucalpha_1014_pump",
		Bone = "1014_parent",
		Pos = Vector(0, 0, 9.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Stock",
		DefaultName = "Extended Stock",
		InstalledElements = {"has_stock"},

		Category = {"ucalpha_1014_stock"},
		Bone = "1014_parent",
		Pos = Vector(0, 2, -3.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Tube Type",
		DefaultName = "4-Shell Tube",

		Category = {"ucalpha_1014_tube"},
		Bone = "1014_parent",
		Pos = Vector(0, 0.5, 14.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Foregrip",
		DefaultName = "None",
		InstalledElements = {"fg_def"},

		DefaultIcon = Material("arc9/def_att_icons/grip.png"),
		ExcludeElements = {"nofg"},
		Category = {"eft_foregrip_small"},
		Bone = "1014_pump",
		Pos = Vector(0, 1, -0.25),
		Ang = Angle(90, 0, -90),
		MergeSlots = {10},
	},
	{
		PrintName = "Ammo Type",
		DefaultName = "12 Gauge",

		--ExcludeElements = {""},
		Category = {"ucalpha_ammo_sg"},
		Bone = "1014_parent",
		Pos = Vector(0, 1, 3),
		Ang = Angle(90, 0, -90),
	},


	{   --9 dovetail
		PrintName = "",
		DefaultName = "",
		Hidden = true,
		InstalledElements = {"blank_toprail", "dovemount"},
		ExcludeElements = {"no_dovetail"},
		
		Category = {"bfc_optic_dove"},
		Bone = "1014_parent",
		Pos = Vector(0.8, -1.2, 2),
		Ang = Angle(90, 0, -90),
	}, 
	{   --10 ubgl
		PrintName = "",
		DefaultName = "",
		Hidden = true,
		InstalledElements = {"fg_def"},
		ExcludeElements = {"ubgl_magwell"},
		
		Category = {"ubgl_ucalpha"},
		Bone = "1014_pump",
		Pos = Vector(0, 1, -0.25),
		Ang = Angle(90, 0, -90),
	}, 
}