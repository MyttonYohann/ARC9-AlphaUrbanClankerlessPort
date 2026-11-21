AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Urban Redevelopment"
--SWEP.SubCategory = "1DickGay"

SWEP.PrintName = "The Extincted Moa of New Zealand"
SWEP.TrueName = "M79"

SWEP.Class = "Grenade Launcher"
SWEP.Trivia = {
	["Country of Origin"] = [[USA]],
	["Manufacturer"] = [[i dont bloody know]],
	["Calibre"] = "40mm",
}

SWEP.Credits = {
}

SWEP.Description = [[Single-shot 40mm grenade launcher intended to provide infantry with portable long-range explosive firepower. Accurate, flexible and reliable.]]

SWEP.ViewModel = "models/weapons/arc9/myt_uc/c_m79.mdl"
SWEP.WorldModel = "models/weapons/arc9/myt_uc/c_m79.mdl"

SWEP.Slot = 4

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/arc9/myt_uc/c_m79.mdl"
SWEP.WorldModelOffset = {
	Pos = Vector(0, 0, 0),
	Ang = Angle(0, 0, 0),
	TPIKPos = Vector(-8, 5, -2),
	TPIKAng = Angle(-6, 0, 180),
	TPIKPosSightOffset = Vector(4, -0.5, -3),
	TPIKPosReloadOffset = Vector(0, 0, 0),
	TPIKAngReloadOffset = Angle(0, 0, 0),

	Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 20 -- 5 pellets to kill
SWEP.DamageMin = 10 -- land 10 pellets to kill

SWEP.RangeMin = 20 / ARC9.HUToM
SWEP.RangeMax = 100 / ARC9.HUToM

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.

-------------------------- ENTITY LAUNCHING

SWEP.ShootEnt = "arc9_ucalpha_40mm_he"

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 350 / ARC9.HUToM
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15


-------------------------- MAGAZINE

SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 8 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.ShotgunReload = false
SWEP.ManualAction = true
SWEP.ManualActionNoLastCycle = true
SWEP.CanReloadWhileUnCycled = true

-------------------------- FIREMODES
SWEP.Num = 1
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

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 30
SWEP.BashLungeRange = 0
SWEP.BashRange = 80
SWEP.PreBashTime = 0.18
SWEP.PostBashTime = 0.5

SWEP.Hook_BashHit = function(self, data)
	local ent = data.tr.Entity
	local entitypos = ent:GetPos()
	local ownerpos = self:EyePos()
	local owner = self:GetOwner()
	if IsValid(ent) and (ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) and !self:GetUBGL() then
		-- knock back
		ent:SetVelocity( ((entitypos - ownerpos):GetNormalized() * 1000) + self:GetUp()*(40) )
		-- flinch, mostly for zombies
		if ent:IsNPC() then
			ent:SetSchedule(SCHED_FLINCH_PHYSICS)
		end
		-- knock back surrounding npcs, 80 degree angle from the hit position
		for _,v in ipairs(ents.FindInCone(data.tr.HitPos, owner:EyeAngles():Forward(), self.BashRange * 0.75, math.cos( math.rad( 80 ) ) )) do
			v:SetVelocity( ((entitypos - ownerpos):GetNormalized() * 500) + self:GetUp()*(30) )
			if ent:IsNPC() then
				ent:SetSchedule(SCHED_FLINCH_PHYSICS)
			end
		end
	end			
end

-- override main code, for some reason sprint lock determines if you can shoot on nearwall. This lets you melee but not shoot when nearwall
SWEP.SprintLock = function(self)
	if self:GetSprintAmount() > 0 then return true end
	if self:GetIsNearWall() and !self:GetOwner():KeyDown(IN_USE) then return true end

	return false
end

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos = Vector(-2.72, -4, 1.23),
	Ang = Angle(0,0,0),
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
SWEP.CustomizePos = Vector(16, 40, 5)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(12, -2.55, -2.23)

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

SWEP.MuzzleParticle = "muzzleflash_m79"
SWEP.MuzzleEffectQCA = 1

SWEP.CaseEffectQCA = 1
SWEP.ShellModel = "models/weapons/shotgun_shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = false
SWEP.NoShellEjectManualAction = true

SWEP.CamQCA = 2
SWEP.CamOffsetAng = Angle(0, 90, 90)

-------------------------- SOUNDS

local path1 = "arc9_ucalpha/870/"
local path = "arc9_ucalpha/m79/"
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
	["holster"] = {
		Source = "holster",
	},
	["fire"] = {
		Source = "fire",
		EventTable = {
			{s = path .. "mech.ogg", t = 0}, -- Not temporary
			{s = path1 .. "eject.ogg", t = 0}, -- Not temporary
		},
	},
	["cycle"] = {
		Source = {"pump"},
		EventTable = {
			{s = common .. "cloth_2.ogg",  t = 0},
			{s = path .. "open.ogg",  t = 10/30},
			{s = path .. "remove.ogg",  t = 12/30},
		},
		EjectAt = 8 / 40,
		FireASAP = true,
		MinProgress = 24/40,
	},  
	["reload_empty"] = {
		Source = "reload",
		IKTimeLine = {  { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 1, },},
		EventTable = {
			{s = common .. "shoulder.ogg",  t = 0.4},
		},
		FireASAP = true,
		RefillProgress = 20/30,
		MinProgress = 27/30,
		MagSwapTime = 20/30,
	},  
	["bash"] = {
		Source = {"melee"},
		IKTimeLine = {{ t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 1, rhik = 0, }, { t = 0.4, lhik = 1, rhik = 0, },{ t = 0.7, lhik = 1, rhik = 1, },},
	},	
}
SWEP.Hook_BlockHasAnimation = function (wep, anim) -- use normal bash fuction if in UBGL
	if anim == "bash" and wep:GetUBGL() then return false end
end
SWEP.BulletBones = {
    [0] = "m79_grenade",
}
-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
	["s_1"] = 	{ Bodygroups = { {2, 1}, },},   
	["s_2"] = 	{ Bodygroups = { {2, 2}, },},   
	
	["b_alofs"] = 	{ Bodygroups = { {6, 1}, },},   
	["b_short"] = 	{ Bodygroups = { {3, 1}, },	AttPosMods = { [1] = { Pos = Vector(0, -3.55, 0), } }	},

	["fg_def"] = 	{ Bodygroups = { {5, 1}, },}, 
	["rail_def"] = 	{ Bodygroups = { {4, 1}, },},   

}

SWEP.Hook_ModifyBodygroups = function(wep, data)
	local model = data.model  

	if wep:HasElement("b_short") then model:SetBodygroup(3,1) end
	if wep:HasElement("s_1") and !wep:HasElement("b_short") then model:SetBodygroup(3,2) end

	-- ziptied
	if wep:HasElement("rail_def") then model:SetBodygroup(7,1) end
	if wep:HasElement("fg_def") then model:SetBodygroup(7,2) end
	if wep:HasElement("fg_def") and wep:HasElement("rail_def") then model:SetBodygroup(7,3) end

	if wep:HasElement("rail_def") and  wep:HasElement("b_short") then model:SetBodygroup(4,2) end
	if wep:HasElement("rail_def") and  wep:HasElement("b_short") then model:SetBodygroup(7,8) end

	if wep:HasElement("b_alofs") then model:SetBodygroup(7,4) end
	if wep:HasElement("b_alofs") and wep:HasElement("rail_def") then model:SetBodygroup(7,5) end
	if wep:HasElement("b_alofs") and wep:HasElement("fg_def") then model:SetBodygroup(7,6) end
	if wep:HasElement("b_alofs") and wep:HasElement("fg_def") and wep:HasElement("rail_def") then model:SetBodygroup(7,7) end
end
 
SWEP.Attachments = {
	{
		PrintName = "Optic",
		DefaultName = "None",
		InstalledElements = {"rail_def", "has_optic"},

		DefaultIcon = Material("arc9/def_att_icons/optic.png"),
		Category = {"optic_ucalpha", "eft_optic_medium", "csgo_optic"},
		Bone = "m79_front",
		Pos = Vector(0, -3.55, 2.8),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Barrel",
		DefaultName = "Standard Barrel",

		Category = "ucalpha_m79_barrel",
		Bone = "m79_front",
		Pos = Vector(0, -2, 5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Stock",
		DefaultName = "Extended Stock",
		InstalledElements = {"has_stock"},

		Category = {"ucalpha_m79_stock"},
		Bone = "m79_body",
		Pos = Vector(0, 2, -3.5),
		Ang = Angle(90, 0, -90),
	},
	{
		PrintName = "Foregrip",
		DefaultName = "None",
		InstalledElements = {"fg_def"},

		DefaultIcon = Material("arc9/def_att_icons/grip.png"),
		ExcludeElements = {"nofg"},
		Category = {"eft_foregrip_small"},
		Bone = "m79_front",
		Pos = Vector(0, 1.05, 3),
		Ang = Angle(90, 0, -90),
		MergeSlots = {10},
	},
	{
		PrintName = "Ammo Type",
		DefaultName = "12 Gauge",

		--ExcludeElements = {""},
		Category = {"ucalpha_ammo_gl"},
		Bone = "m79_front",
		Pos = Vector(0, -2, -4),
		Ang = Angle(90, 0, -90),
	},
}