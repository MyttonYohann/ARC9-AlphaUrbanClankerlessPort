AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Redevelopment"
--SWEP.SubCategory = "1DickGay"

SWEP.PrintName = "Spiel"
SWEP.TrueName = "Glock 17"

SWEP.Class = "Pistol"
SWEP.Trivia = {
	["Country of Origin"] = [[Who the fuck read these]],
	["Calibre"] = "9x19mm Parabellum",
}

SWEP.Credits = {
}

SWEP.Description = [[Handgun originally designed by a curtain rod manufacturer to replace the Austrian military's aging arsenal of WW2 handguns. Its design has since become synonymous with the idea of handguns, as its reliable and cost-effective design combined with a switchless trigger safety mechanism gave it a reputation as a weapon of choice for cops and robbers alike around the world."]]
SWEP.ViewModel = "models/weapons/arc9/myt_uc/c_glock.mdl"
SWEP.WorldModel = "models/weapons/arc9/myt_uc/c_glock.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/arc9/myt_uc/c_glock.mdl"
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

SWEP.DamageMax = 30 -- 3 shot close range kill
SWEP.DamageMin = 17 -- 5 shot long range kill

SWEP.RangeMin = 10
SWEP.RangeMax = 30

SWEP.Penetration = 2 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1240 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15


-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 17 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES
SWEP.Num = 1
SWEP.RPM = 400

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
SWEP.Recoil = 1.5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.5 -- Multiplier for vertical recoil

SWEP.RecoilPerShot = 0.24

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
SWEP.BashRange = 50
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.55
SWEP.BashWhileSprint = true
SWEP.ShootWhileSprint = true
-- you cant fucking use bashwhilespring WITHOUT shootwhilesprint
SWEP.ShootWhileSprintHook = function(self)
	if !self:GetOwner():KeyDown(IN_USE) then
		return false
	end
end
SWEP.BashDamageHook = function(wep, dmg)
	if wep:GetOwner():IsSprinting() then
		return dmg * 2
	end
end

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos = Vector(-2.1, -4, 2.55),
	Ang = Angle(0,0.4,2),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos = Vector(0, 15, -4),
		Ang = Angle(0, 0, -45),
	},
	Magnification = 1.05,
	CrosshairInSights = false
}

SWEP.Crosshair = true
SWEP.PeekPos = Vector(1.5, -1, -1.5)
SWEP.PeekAng = Angle(0, 0, -10)

SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintPos = Vector(2, -2, 1)
SWEP.SprintAng = Angle(20, -15, -15)

SWEP.NearWallPos = Vector(3, -4, -12)
SWEP.NearWallAng = Angle(-4, 35, -10)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19.5, 38, 6)
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
SWEP.CamOffsetAng = Angle(0, 90, 90)

-------------------------- SOUNDS

local path = "arc9_ucalpha/glock/"
local common = "arc9_ucalpha/common/"
SWEP.ShootSound = path .. "fire.ogg"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = path .. "fire_dist.ogg"
SWEP.DryFireSound =  path .. "mech_last.ogg"

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
	["bash"] = {
		Source = {"melee", "melee2"},
		FireASAP = true,
		MinProgress = 0.7,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },
		},
	},
	["bash_empty"] = {
		Source = {"melee_empty", "melee2_empty"},
		FireASAP = true,
		MinProgress = 0.7,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.7, lhik = 0, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },
		},
	},
	["ready"] = {
		Source = "equip",
		EventTable = {
			{s = path .. "slide_pull.ogg", t = 9/30},
			{s = path .. "sliderel.ogg", t = 16/30},
			{s = common .. "shoulder.ogg",  t = 20/30},
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, }, { t = 0.6, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 1, },
		},
		FireASAP = true,
		MinProgress = 0.6,
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
			{s =  path .. "magrelease.ogg",   t = 14 / 30},  
			{s =  path .. "magout.ogg",   t = 18 / 30},  
			{s =  path .. "magin.ogg",   t = 17 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty"] = {
		Source = "reload_empty",
		FireASAP = true,
		MinProgress = 0.95,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 7 / 30},  
			{s =  path .. "magout.ogg",   t = 9 / 30},  
			{s =  path .. "magin.ogg",   t = 18 / 30},  
			{s =  path .. "sliderel.ogg",   t = 46 / 30},  
		},
	}, 
	["reload_10"] = {
		Source = "reload_10",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 14 / 30},  
			{s =  path .. "magout.ogg",   t = 17 / 30},  
			{s =  path .. "magin.ogg",   t = 16 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty_10"] = {
		Source = "reload_empty_10",
		FireASAP = true,
		MinProgress = 0.95,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 7 / 30},  
			{s =  path .. "magout.ogg",   t = 9 / 30},  
			{s =  path .. "magin.ogg",   t = 13 / 30},  
			{s =  path .. "sliderel.ogg",   t = 41 / 30},  
		},
	},  
	["reload_33"] = {
		Source = "reload_33",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 14 / 30},  
			{s =  path .. "magout.ogg",   t = 18 / 30},  
			{s =  path .. "magin.ogg",   t = 17 / 30},   
			{s =  path .. "magtap.ogg",   t = 42 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty_33"] = {
		Source = "reload_empty_33",
		FireASAP = true,
		MinProgress = 0.95,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 7 / 30},  
			{s =  path .. "magout.ogg",   t = 9 / 30},  
			{s =  path .. "magin.ogg",   t = 18 / 30},  
			{s = path .. "slide_pull.ogg", t = 46/30},
			{s =  path .. "sliderel.ogg",   t = 55/30},  
		},
	},  
	["reload_100"] = {
		Source = "reload_100",
		FireASAP = true,
		MinProgress = 0.93,
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 14 / 30},  
			{s =  path .. "magout.ogg",   t = 18 / 30},  
			{s =  path .. "magin.ogg",   t = 31 / 30},   
			{s =  path .. "magtap.ogg",   t = 44 / 30},   
		},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.2, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
	},  
	["reload_empty_100"] = {
		Source = "reload_empty_100",
		FireASAP = true,
		MinProgress = 0.95,
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, },
		{ t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
		},
		EventTable = {
			{s =  path .. "magrelease.ogg",   t = 7 / 30},  
			{s =  path .. "magout.ogg",   t = 9 / 30},  
			{s =  path .. "magin.ogg",   t = 28 / 30},  
			{s = path .. "slide_pull.ogg", t = 64/30},
			{s =  path .. "sliderel.ogg",   t = 73/30},  
		},
	},  
}
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [0] = "",
    [1] = "glock_bullet1"
}
SWEP.HideBones = {"glock_magb"} 
-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
	["fe_pump1"] = 	{ Bodygroups = { {4, 1}, },	AttPosMods = { [7] = { Pos = Vector(0, 1.35, -0.5), } }	}, 

	["s_auto"] = 	{ Bodygroups = { {3, 2}, },},
	["s_vent"] = 	{ Bodygroups = { {3, 1}, },},
	["s_26"] = 		{ Bodygroups = { {3, 3}, },},
	
	["m_10"] = 		{ Bodygroups = { {0, 1},{1, 1}, },},
	["m_33"] = 		{ Bodygroups = { {1, 2}, },},
	["m_21"] = 		{ Bodygroups = { {1, 4}, },},
	["m_100"] = 	{ Bodygroups = { {1, 3}, },},
	
	["i_tac"] = 	{ Bodygroups = { {5, 2}, },},
}


SWEP.Hook_ModifyBodygroups = function(wep, data)
	local model = data.model  
	if wep:HasElement("rail_def") then model:SetBodygroup(2,1) end	
	if wep:HasElement("s_26") then model:SetBodygroup(5,1) end	
	if wep:HasElement("s_26") and wep:HasElement("i_tac") then model:SetBodygroup(5,3) end	

	if wep:HasElement("rail_def") and wep:HasElement("i_tac") then model:SetBodygroup(2,0) end	
end

SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultName = "None",
		InstalledElements = {"rail_def", "has_optic"},

		DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		Category = {"optic_ucalpha", "eft_optic_medium", "ucalpha_glock_irons"},
		Bone = "glock_parent",
		Pos = Vector(0, -3.5, 1.9),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Barrel",
		DefaultName = "Standard Barrel",

		Category = "ucalpha_glock_barrel",
		Bone = "glock_parent",
		Pos = Vector(0, -0.5, 7),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Muzzle",
		DefaultName = "None",

		DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
		ExcludeElements = {"pre_muzzed"},
		Category = {"muzzle_css"},
		Bone = "glock_flash",
		Pos = Vector(0, 0, 0),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Slide",
		DefaultName = "Standard Forend",

		Category = "ucalpha_glock_slide",
		Bone = "glock_parent",
		Pos = Vector(0, -2.5, -1),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Stock",
		DefaultName = "Extended Stock",
		InstalledElements = {"has_stock"},

		Category = {"ucalpha_pistol_stock"},
		Bone = "glock_parent",
		Pos = Vector(0, 2, -3.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Magazine Type",
		DefaultName = "17-Round Mag",

		Category = {"ucalpha_glock_mag"},
		Bone = "glock_parent",
		Pos = Vector(0, 0.5, -0.25),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Foregrip",
		DefaultName = "None",
		InstalledElements = {"fg_def"}, 

		DefaultIcon = Material("arc9/def_att_icons/grip.png"),
		ExcludeElements = {"nofg"},
		Category = {"eft_foregrip_small"},
		Bone = "glock_parent",
		Pos = Vector(0, -1, 5),
		Ang = Angle(90, 0, -90),
	},
}