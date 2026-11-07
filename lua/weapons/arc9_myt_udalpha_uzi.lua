AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Redevelopment"
--SWEP.SubCategory = "1DickGay"

SWEP.PrintName = "Tel Aviv"
SWEP.TrueName = "Uzi"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
	["Country of Origin"] = [[Israel]],
	["Manufacturer"] = [[Zion Arms]], -- its on the texture lmao
	["Calibre"] = "9x19mm Parabellum",
}

SWEP.Credits = {
}

SWEP.Description = [[The Goyim]]
SWEP.ViewModel = "models/weapons/arc9/myt_uc/c_uzi.mdl"
SWEP.WorldModel = "models/weapons/arc9/myt_uc/c_uzi.mdl"

SWEP.Slot = 2
 
SWEP.MirrorVMWM = true
--SWEP.WorldModelMirror = "models/weapons/arc9/myt_uc/c_uzi.mdl"
SWEP.WorldModelOffset = {
	Pos = Vector(0, 0, 0),
	Ang = Angle(0, 0, 0),
	TPIKPos = Vector(-13, 4, -5),
	TPIKAng = Angle(-6, 0, 180),
	TPIKPosSightOffset = Vector(3, -0.5, -0.5),
	TPIKPosReloadOffset = Vector(0, 0, 0),
	TPIKAngReloadOffset = Angle(0, 0, 0),

	Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- 3 shot close range kill
SWEP.DamageMin = 17 -- 5 shot long range kill

SWEP.RangeMin = 18 / ARC9.HUToM
SWEP.RangeMax = 120 / ARC9.HUToM

SWEP.Penetration = 3 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 400 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15


-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 32 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES
SWEP.Num = 1
SWEP.RPM = 600

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
	{ Mode = -1, },
	{ Mode = 1, },
}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 5

-- General recoil multiplier
SWEP.Recoil = 1.5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.4 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.4 -- Multiplier for vertical recoil

SWEP.RecoilPerShot = 0.2

-------------------------- SPREAD

SWEP.Spread = 1/50

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 10

SWEP.SpreadAddMove = 1/70
SWEP.SpreadAddMidAir = 1/970
SWEP.SpreadMultHipFire = 100/30
SWEP.SpreadMultCrouch = 0.5

SWEP.SpreadMultSights = 0.3
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
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 20
SWEP.BashLungeRange = 0
SWEP.BashRange = 60
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.4
SWEP.BashWhileSprint = true
SWEP.ShootWhileSprint = false
-- you cant fucking use bashwhilespring WITHOUT shootwhilesprint
SWEP.ShootWhileSprintHook = function(self)
	-- sprint bash, only for pistol length
	if !self:GetOwner():KeyDown(IN_USE) and self:HasElement("pistol_length") then
		return true
	end
end
SWEP.BashDamageHook = function(wep, dmg)
	--if wep:GetOwner():KeyDown(IN_SPEED) and wep:GetOwner():KeyDown(IN_FORWARD + IN_BACK + IN_MOVELEFT + IN_MOVERIGHT) then
	if wep:GetIsSprinting() and !wep:GetUBGL() then -- this does the same thing
		return dmg * 2
	end 
end

SWEP.Overheat = true
SWEP.HeatPerShot = 1/38
SWEP.HeatDelayTime = 0.2
SWEP.HeatDissipation = 0.4
SWEP.HeatFix = false
SWEP.HeatLockout = false
SWEP.Hook_BashHit = function(self, data)
	local heat = self:GetHeatAmount() / self:GetProcessedValue("HeatCapacity", true)
	local ownerpos = self:EyePos()
	local owner = self:GetOwner()
	local entitypos = data.tr.Entity:GetPos()
	
	if IsValid(data.tr.Entity) and (data.tr.Entity:IsNPC() or data.tr.Entity:IsPlayer() or data.tr.Entity:IsNextBot()) and !self:GetUBGL() then
		-- burn damage when overheat
		if heat >= 0.5 then
			data.tr.Entity:Ignite(math.Rand(2, 4))
		end
		-- rifle length specific code
		if !self:HasElement("pistol_length") then
			-- bash push back
			data.tr.Entity:SetVelocity( ((entitypos - ownerpos):GetNormalized() * 1000) + self:GetUp()*(40) )
			if data.tr.Entity:IsNPC() then
				data.tr.Entity:SetSchedule(SCHED_FLINCH_PHYSICS)
			end
			-- knock back surrounding npcs, 100 degree angle from the hit position
			for _,v in ipairs(ents.FindInCone(data.tr.HitPos, owner:EyeAngles():Forward(), self.BashRange * 0.75, math.cos( math.rad( 100 ) ) )) do
				v:SetVelocity( ((entitypos - ownerpos):GetNormalized() * 800) + self:GetUp()*(30) )
				if data.tr.Entity:IsNPC() then
					data.tr.Entity:SetSchedule(SCHED_FLINCH_PHYSICS)
				end
			end			
		end	
	end
end

SWEP.HeatDissipationHook = function(wep) -- temporarily 'freezes' the heat gauge
	local heat = wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity", true)
	if heat == 1 and wep:Clip1() != 0 then -- empty doesn't have a fix anim
		return 0
	end
	--GetShootPos() is slightly more accurate, it checks when the view is in water, not just the character model but gameplay reason
	-- extremely fast heat dissipation when in water
	if bit.band(util.PointContents(wep:GetPos()), CONTENTS_WATER) == CONTENTS_WATER then
		return 4
	end
end

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos = Vector(-2.851, -7, 1.9),
	Ang = Angle(0,0,0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos = Vector(0, 15, -4),
		Ang = Angle(0, 0, -45),
	},
	Magnification = 1.05,
	CrosshairInSights = false
}

SWEP.Crosshair = true
SWEP.PeekPos = Vector(1.5, -1, -2)
SWEP.PeekAng = Angle(0, 0, -10)

SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(2, -2, 1)
SWEP.SprintAng = Angle(20, -15, -15)

SWEP.NearWallPos = Vector(3, -4, -12)
SWEP.NearWallAng = Angle(-4, 35, -10)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, -1, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 38, 6)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(18, -2.55, -2.23)

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
SWEP.BarrelLength = 24
-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = false
SWEP.NoShellEjectManualAction = true

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)

-------------------------- SOUNDS

local path = "arc9_ucalpha/uzi/"
local path_glock = "arc9_ucalpha/glock/"
local common = "arc9_ucalpha/common/"
SWEP.FirstShootSound = path .. "fire.ogg"
SWEP.ShootSound = path .. "fire_auto.ogg" -- it sounds like shit tbh
SWEP.ShootSoundSilenced = path_glock .. "fire_supp.ogg" -- for now, old uzi dont even have a suppressed sound
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.DryFireSound =  path_glock .. "mech_last.ogg"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["idle_empty"] = {
		Source = "idle_empty",
	},
	["fix_empty"] = {
		Source = "idle_empty",
	},
	["draw"] = {
		Source = "draw",
		FireASAP = true,
		MinProgress = 0.5,
	},
	["fix"] = {
		Source = "fix",
		FireASAP = true,
		EventTable = {
			{s = path .. "chback.ogg",   t = 8 / 30},  
			{s = path .. "chforward.ogg",   t = 16 / 30},  
			{s = common .. "shoulder.ogg",  t = 20/30},
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 1, },
		{ t = 0.2, lhik = 0, rhik = 1, }, { t = 0.6, lhik = 0, rhik = 1, },{ t = 0.8, lhik = 1, rhik = 1, },
		},
		FireASAP = true, -- pretty sure this doenst work
		MinProgress = 0.7,
	},
	["bash"] = {
		Source = {"melee"},
		FireASAP = true,
		MinProgress = 0.7,
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, },{ t = 0.2, lhik = 1, rhik = 0, }, { t = 0.7, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },},
	},
	["bash_pistol"] = {
		Source = {"melee2"},
		FireASAP = true,
		MinProgress = 0.7,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.6, lhik = 0, rhik = 0, },{ t = 0.8, lhik = 1, rhik = 0, },
		},
	},

	["ready"] = {
		Source = "equip",
		EventTable = {
			{s = path .. "chback.ogg",   t = 16 / 30},  
			{s = path .. "chforward.ogg",   t = 24 / 30},  
			{s = common .. "shoulder.ogg",  t = 30/30},
		},
		IKTimeLine = {
		{ t = 0, lhik = 0, rhik = 0, }, { t = 0.5, lhik = 0, rhik = 0, },{ t = 0.8, lhik = 1, rhik = 1, },
		},
		FireASAP = true,
		MinProgress = 0.7,
	},
	["draw_empty"] = {
		Source = "draw_empty",
		FireASAP = true,
		MinProgress = 0.5,
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
			{s = path .. "mech.ogg", t = 0},
		},
	},
	["fire_empty"] = {
		Source = "fire_empty",
		Time = 23 / 30,
		EventTable = {
			{s = path .. "mech_last.ogg", t = 0}, 
		},
	},
	
	["reload"] = {
		Source = "reload",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 21 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty"] = {
		Source = "reload_empty",
		FireASAP = true,
		MinProgress = 0.95,
		MagSwapTime = 30/30,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 1, }, { t = 0.775, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
		},
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 28 / 30},   
			{s =  path .. "chback.ogg",   t = 59 / 30},  
			{s =  path .. "chforward.ogg",   t = 64 / 30},  
		},
	}, 
	["reload_16"] = {
		Source = "reload_16",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 21 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty_16"] = {
		Source = "reload_empty_16",
		FireASAP = true,
		MinProgress = 0.95,
		MagSwapTime = 30/30,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 1, }, { t = 0.775, lhik = 0, rhik = 1, },{ t = 0.95, lhik = 1, rhik = 1, },
		},
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 28 / 30},   
			{s =  path .. "chback.ogg",   t = 59 / 30},  
			{s =  path .. "chforward.ogg",   t = 64 / 30},  
		},
	},  
	["reload_41"] = {
		Source = "reload_41",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 21 / 30},   
			{s =  path_glock .. "magtap.ogg",   t = 42 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 1, },
		{ t = 0.2, lhik = 0, rhik = 1, }, { t = 0.7, lhik = 0, rhik = 1, },{ t = 0.9, lhik = 1, rhik = 1, },
		},
	},  
	["reload_empty_41"] = {
		Source = "reload_empty_41",
		FireASAP = true,
		MinProgress = 0.95,
		MagSwapTime = 30/30,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 1, },
		{ t = 0.2, lhik = 0, rhik = 1, }, { t = 0.78, lhik = 0, rhik = 1, },{ t = 0.86, lhik = 1, rhik = 1, },
		},
		EventTable = {
			{s =  path .. "magout.ogg",   t = 10 / 30},  
			{s =  path .. "magin.ogg",   t = 28 / 30},   
			{s =  path .. "chback.ogg",   t = 59 / 30},  
			{s =  path .. "chforward.ogg",   t = 64 / 30},  
		},
	},  
	["reload_100"] = {
		Source = "reload_100",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magout.ogg",   t = 13 / 30},  
			{s =  path .. "magin.ogg",   t = 50 / 30},     
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.85, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty_100"] = {
		Source = "reload_empty_100",
		FireASAP = true,
		MinProgress = 0.95,
		MagSwapTime = 30/30,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },
		},
		EventTable = {
			{s =  path .. "magout.ogg",   t = 13 / 30},  
			{s =  path .. "magin.ogg",   t = 40 / 30},   
			{s =  path .. "chback.ogg",   t = 70 / 30},  
			{s =  path .. "chforward.ogg",   t = 77 / 30},  
		},
	},  
}
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [0] = "",
    [1] = {"uzi_b1", "uzi_bb"},
    [2] = "uzi_b2",
}
SWEP.HideBones = {"uzi_magb"} 

SWEP.Hook_TranslateAnimation = function(wep, curanim)
	local heat = wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity", true)

	if curanim == "fix" then	-- remove a certain percentage of heat when playing overheat anim
		timer.Simple(28/30, function() -- manual delay cos i cant think of any other way
				wep:SetHeatAmount(heat - 0.6)
		end)
	end
end
-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {	
	["m_21"] = 		{ Bodygroups = { {2, 1}, },},
	["m_42"] = 		{ Bodygroups = { {2, 2}, },},
	["m_100"] = 	{ Bodygroups = { {2, 3}, },},

	["s_wood"] = 	{ Bodygroups = { {3, 2}, },},
	["s_poly"] = 	{ Bodygroups = { {3, 3}, },},
	["s_folded"] = 	{ Bodygroups = { {3, 1}, },},

	["f_patrol"] = 	{ Bodygroups = { {1, 1}, },	AttPosMods = { [3] = { Pos = Vector(-0.17, 0.35, 21.7), } }	},
	["f_mini"] = 	{ Bodygroups = { {1, 2}, },	AttPosMods = { [3] = { Pos = Vector(-0.17, 0.35, 11.2), } }	},
	["f_micro"] = 	{ Bodygroups = { {1, 3}, {4, 1}, {3, 4}, },	AttPosMods = { [3] = { Pos = Vector(-0.17, 0.35, 8.2), },[6] = { Pos = Vector(-0.17, 1.5, 8.8), } }	},
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local model = data.model  
	if wep:HasElement("rail_def") then model:SetBodygroup(4,2) end	
	if wep:HasElement("fg_def") then model:SetBodygroup(5,1) end	

	if wep:HasElement("rail_def") and wep:HasElement("f_micro") then model:SetBodygroup(4,3) end
	if wep:HasElement("fg_def") and wep:HasElement("f_micro") then model:SetBodygroup(5,2) end
	if wep:HasElement("fg_def") and wep:HasElement("f_mini") then model:SetBodygroup(5,3) end

	if wep:HasElement("s_wood") and wep:HasElement("f_micro") then model:SetBodygroup(3,6) end
	if wep:HasElement("s_poly") and wep:HasElement("f_micro") then model:SetBodygroup(3,7) end
	if wep:HasElement("s_folded") and wep:HasElement("f_micro") then model:SetBodygroup(3,5) end
end

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultName = "None",
		InstalledElements = {"rail_def", "has_optic"},

		DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		Category = {"optic_ucalpha", "eft_optic_medium", "csgo_optic"},
		Bone = "uzi_parent",
		Pos = Vector(-0.17, -1.3, -2.8),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Frame",
		DefaultName = "Standard Frame",

		Category = "ucalpha_uzi_frame",
		Bone = "uzi_parent",
		Pos = Vector(0, 0.5, 6),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Muzzle",
		DefaultName = "None",

		DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
		ExcludeElements = {"pre_muzzed"},
		Category = {"muzzle_css"},
		Bone = "uzi_parent",
		Pos = Vector(-0.17, 0.35, 13.5),
		Ang = Angle(90, 0, -90),
	},

	{
		PrintName = "Stock",
		DefaultName = "Extended Stock",
		InstalledElements = {"has_stock"},

		Category = {"ucalpha_uzi_stock"},
		Bone = "uzi_parent",
		Pos = Vector(0, 0, -3.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Magazine Type",
		DefaultName = "30-Round Mag",

		Category = {"ucalpha_uzi_mag"},
		Bone = "uzi_parent",
		Pos = Vector(0, 6.5, 1.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Foregrip",
		DefaultName = "None",
		InstalledElements = {"fg_def"}, 

		DefaultIcon = Material("arc9/def_att_icons/grip.png"),
		ExcludeElements = {"nofg"},
		Category = {"eft_foregrip_small"},
		Bone = "uzi_parent",
		Pos = Vector(-0.17, 2.1, 8),
		Ang = Angle(90, 0, -90),
	},
}