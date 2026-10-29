local ATT = {}


----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--- 1014 ---

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------
-- Forend --
----------------
ATT = {}

ATT.PrintName = [[Nightprowler]]
ATT.CompactName = [[F. PumpP]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[actual super 90
Pump Action
]]

ATT.ManualAction = true

ATT.Model = "models/weapons/arc9/myt_uc/c_m1014.mdl" -- i just need a qca point but im not making a whole new model
ATT.ModelBodygroups = "1458610000"
ATT.ModelOffset = Vector(-2, 0, 7)
ATT.ModelAngleOffset = Angle(-90, 90, 90)
ATT.Scale = 1
ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
	{
		Flashlight = true,
		FlashlightColor = Color(255, 255, 255),
		FlashlightMaterial = "effects/flashlight001",
		FlashlightDistance = 1024,
		FlashlightFOV =  60,
		FlashlightAttachment = 3,
		FlashlightBrightness = 5,
	},
	{
	}
}


ATT.SortOrder = 10
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_pump1", "is_pumpaction", "has_forend"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_poly")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Woodsman]]
ATT.CompactName = [[F. PumpW]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[woo
Pump Action
]]

ATT.ManualAction = true

ATT.SortOrder = 11
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_pump2", "is_pumpaction", "has_forend"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_wood")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Spasm]]
ATT.CompactName = [[F. SPAS]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[how
Pump Action
]]

ATT.ManualAction = true

ATT.SortOrder = 11
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_pump5", "is_pumpaction", "has_forend"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_spas")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Railed]]
ATT.CompactName = [[F. Railed]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[get railed stupid
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_3"} 

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_rail")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Wood]]
ATT.CompactName = [[F. Wood]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_4"} 

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_fe_wood")

----------------------------------------------------------------------------------
----------------
-- Stock --
----------------
ATT = {}

ATT.PrintName = [[Polymer]]
ATT.CompactName = [[S. Polymer]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[Polyamourous
]]

ATT.SortOrder = 10
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_1"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-7.3, -2.4, 4.6)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/arc9/myt_uc/c_m1014_ik_grip.mdl"

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_poly")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Woodsman]]
ATT.CompactName = [[S. Wood]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[tree
]]

ATT.SortOrder = 11
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_2"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(-7.3, -2.4, 4.6)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/arc9/myt_uc/c_m1014_ik_grip.mdl"

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_wood")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Stock Exchange]]
ATT.CompactName = [[S. Folded]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[hes so cool
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_3"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_spas")
----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Heavy Stock]]
ATT.CompactName = [[S. Heavy]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 0
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_4"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_heavy")
----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Heavy Wood Stock]]
ATT.CompactName = [[S. HeavyW]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 0
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_5"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_heavywood")
----------------------------------------------------------------------------------
----------------
-- Ammo --
----------------
ATT = {}

ATT.PrintName = [[5-Round Tube]]
ATT.CompactName = [[M. 5R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 5
ATT.ClipSize = 5
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_1"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_5")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[7-Round Tube]]
ATT.CompactName = [[M. 7R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 7
ATT.ClipSize = 7
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_2"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_6")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[8-Round Tube]]
ATT.CompactName = [[M. 8R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 8
ATT.ClipSize = 8
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_3"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_8")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[6-Round Tube]]
ATT.CompactName = [[M. 6R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 6
ATT.ClipSize = 6
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_4"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_7")

----------------------------------------------------------------------------------
----------------
-- Barrel --
----------------
ATT = {}

ATT.PrintName = [[21" Entrenched Barrel]]
ATT.CompactName = [[B. Heat]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[bayonaise yo
]]

ATT.SortOrder = 2
ATT.Category = "ucalpha_1014_barrel"
ATT.ActivateElements = {"b_1", "has_bayonet"}

ATT.Bash = true
ATT.BashDamageType = DMG_SLASH
ATT.BashDamage = 30
ATT.BashLungeRange = 0
ATT.BashRange = 104
ATT.PreBashTime = 0.05
ATT.PostBashTime = 0.4

-- you cant fucking use bashwhilespring WITHOUT shootwhilesprint
ATT.BashWhileSprint = true
ATT.ShootWhileSprint = true

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "bash" and !wep:GetUBGL()	then	return "bash_bayo"		end
end

ATT.BashDamageHook = function(wep, dmg)
	--if wep:GetOwner():KeyDown(IN_SPEED) and wep:GetOwner():KeyDown(IN_FORWARD + IN_BACK + IN_MOVELEFT + IN_MOVERIGHT) and !wep:GetUBGL() then
	if wep:GetIsSprinting() and !wep:GetUBGL() then -- this does the same thing
		return dmg * 4
	end
end

ATT.SprintPos = Vector(1, -3, 0.5)
ATT.SprintAng = Angle(3, -2, -35)
ATT.NearWallPos = Vector(0, -5, -4)
ATT.NearWallAng = Angle(0, 2, -15)
ATT.BobSprintMult = 0.5

ATT.BarrelLengthAdd = 12

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_bayo")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[26" Competition Barrel]]
ATT.CompactName = [[B. Comp]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[longest john
]]

ATT.SortOrder = 3
ATT.Category = "ucalpha_1014_barrel"
ATT.ActivateElements = {"b_2"}

ATT.BarrelLengthAdd = 4

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_comp")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[14" Entry Barrel]]
ATT.CompactName = [[B. Skeleton]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[Short barrel intended for breaching and close quarters use. Drastically increases pellet spread, but is much easier to manoeuvre.
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_1014_barrel"
ATT.ActivateElements = {"b_3"}
ATT.ExcludeElements = {"m_2", "m_3"}

ATT.SpreadMult = 1.5
ATT.RecoilMult = 1.25
ATT.RangeMinMult = 0.8
ATT.RangeMaxMult = 0.8

ATT.SwayMult = 0.75
ATT.AimDownSightsTimeMult = 0.75
ATT.SpeedMult = 1.025
ATT.SpeedMultShooting = 1.15

ATT.BarrelLengthAdd = -4

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_short")

----------------------------------------------------------------------------------


-----------
-- Optic --
-----------


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "Eotech3"
ATT.CompactName = "EO3"
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[hwaet]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/myt_uc/atts/optic_eotech.mdl"

ATT.Category = {"optic_ucalpha"}

-- Allows a custom sight position to be defined
ATT.Sights = {
	{
		Pos = Vector(0, 9, -1.5),
		Ang = Angle(0, 0, 0),
		Magnification = 1.1,
		ViewModelFOV = 60
	}
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("myt_uc/ud_holo.png", "mips smooth")
ATT.HoloSightSize = 500
ATT.HoloSightColorable = true

ATT.SwayAdd = 0.02
ATT.FreeAimRadiusMultSights = 0.25
ATT.SprintToFireTimeAdd = 0.035

ARC9.LoadAttachment(ATT, "myt_ucalpha_optic_eo")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = "ACOG"
ATT.CompactName = "cock"
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[hwaet]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/myt_uc/atts/scope_acog.mdl"

ATT.Category = {"optic_ucalpha"}

-- Allows a custom sight position to be defined
ATT.Sights = {
	{
		Pos = Vector(0, 7.5, -1.65),
		Ang = Angle(0, 0, 0),
		Magnification = 1.5,
		ViewModelFOV = 40
	},
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 0
ATT.RTScopeMagnification = 2.5
ATT.ScopeScreenRatio = 400/1080
ATT.RTScopeReticle = Material("myt_uc/uc_acog_reticle.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.Scale = 1

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_ucalpha_optic_acog")






----------------------------------------------------------------------------------
-- UBW RPG --
----------------------------------------------------------------------------------
ATT = {}

local rpg_path = "arc9_ucalpha/rocket/"
local snd_common = "arc9_ucalpha/common/"

local rpg_tail = rpg_path .. "fire-dist-01.ogg", rpg_path .. "fire-dist-02.ogg", rpg_path .. "fire-dist-03.ogg", rpg_path .. "fire-dist-04.ogg", rpg_path .. "fire-dist-05.ogg", rpg_path .. "fire-dist-06.ogg"
local rpg_mech = rpg_path .. "mech-01.ogg", rpg_path .. "mech-02.ogg", rpg_path .. "mech-03.ogg", rpg_path .. "mech-04.ogg", rpg_path .. "mech-05.ogg", rpg_path .. "mech-06.ogg"


ATT.PrintName = [[Sawnoff RPG]]
ATT.CompactName = "RPG"
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[Real
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/arc9/myt_uc/atts/ubgl_rpg.mdl"
ATT.LHIK_Priority = 10
ATT.LHIK = true
ATT.ActivateElements = {"is_ubgl"}

ATT.IKAnimationProxy = {
	["fire_ubgl"] = {
		Source = "fire",
		EventTable = {
			{s = rpg_blast, t = 0},
			{s = rpg_mech, t = 0},
		},
	},
	["reload_ubgl"] = {
		Source = "reload",
		MinProgress = 0.9,
		FireASAP = true,
		EventTable = {
			{s =  snd_common .. "magpouch.ogg" ,	t = 10 / 30},
			{s =  rpg_path .. "tap.ogg" ,			t = 63 / 30},
			{s =  rpg_path .. "slide1.ogg" ,		t = 83 / 30},
			{s =  rpg_path .. "slide2.ogg" ,		t = 100 / 30},
			{s =  rpg_path .. "insert.ogg" ,		t = 103 / 30},
		},
	},
	["enter_ubgl"] = {
		Source = "to_armed"
	},
	["enter_ubgl_glempty"] = {
		Source = "to_armed_empty"
	},
	["exit_ubgl"] = {
		Source = "to_idle"
	},
	["exit_ubgl_glempty"] = {
		Source = "to_idle_empty"
	},
	["idle_ubgl"] = {
		Source = "idle_armed"
	},
	["idle_glempty"] = {
		Source = "idle_armed_empty"
	},
	["idle_ubgl_glempty"] = {
		Source = "idle_armed_empty"
	},
}

 -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2
ATT.Hook_TranslateAnimation = function(wep, curanim)	
	if wep:Clip2() == 0 then
		if	curanim == "enter_sights_ubgl" 		then	return "enter_ubgl_glempty"		end	
		if	curanim == "exit_ubgl" 		then	return "exit_ubgl_glempty"		end
		-- separete check 'cos the new ugbl ik update broke something
		if	curanim == "reload_ubgl" 			then	return "reload_ubgl_empty"			end	
		if	curanim == "idle_ubgl" 				then	return "idle_ubgl_glempty"			end
		if	curanim == "fire_ubgl" 				then	return "fire_ubgl_empty"			end	
		if	curanim == "holster_ubgl"			then	return "holster_ubgl_empty"			end
		if	curanim == "enter_ubgl" 			then	return "enter_ubgl_glempty"			end
	end
	-- new ubgl update bodge
	if wep:Clip1() == 0 and wep:Clip2() != 0	then	-- well realistically need only check for if clip2 not empty
		if	curanim == "idle_ubgl_glempty" 		then	return "idle_ubgl"		end
		if	curanim == "fire_ubgl_empty" 		then	return "fire_ubgl"		end	
		if	curanim == "fire_ubgl_iron_empty" 	then	return "fire_ubgl_iron"	end	
		if	curanim == "reload_ubgl_empty" 		then	return "reload_ubgl"	end	
		if	curanim == "holster_ubgl_empty"		then	return "holster_ubgl"	end
		if	curanim == "enter_ubgl_glempty" 	then	return "enter_ubgl"		end
	end
end
ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, -90, -90)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"ubgl_ucalpha"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.SprintToFireTimeAdd = 0.05
ATT.AimDownSightsTimeAdd = 0.02
ATT.SwayMult = 1.1

ATT.FreeAimRadiusUBGL = 3

ATT.UBGL = true
ATT.UBGLAmmo = "RPG_Round"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "RPG"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.01

ATT.ShootEntUBGL = "arc9_ucalpha_rpg"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = {
    rpg_path .. "fire-01.ogg",
    rpg_path .. "fire-02.ogg",
    rpg_path .. "fire-03.ogg",
    rpg_path .. "fire-04.ogg",
    rpg_path .. "fire-05.ogg",
    rpg_path .. "fire-06.ogg",
}
ATT.HasSightsUBGL = true

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(-2.5, 0, 1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
	{
		Pos = Vector(1.3, 12, -3),
		Ang = Angle(0, -3, 0),
		Magnification = 1.05,
		ViewModelFOV = 60,
		--CrosshairInSights = true,
		UBGLOnly = true,
	},
}

ATT.Hook_PrimaryAttack = function(wep)   
	if wep:GetUBGL() then
		local dmg = DamageInfo()
		dmg:SetDamage(math.Rand(20, 50))
		dmg:SetAttacker(wep:GetOwner())
		dmg:SetDamageType(DMG_BURN) 
		wep:GetOwner():TakeDamageInfo(dmg)
		wep:GetOwner():Ignite(math.Rand(1, 3))
		wep:GetOwner():ScreenFade( SCREENFADE.IN, Color( 255, 0, 0, 125), 2, 0 )
	end
end
ATT.ShootWhileSprintUBGL = false -- im not even sure if these are needed
ATT.BashWhileSprintUBGL = false -- better safe than sorry
ATT.ShootWhileSprintHook = function(self)
	if self:GetUBGL() then
		return false
	end
end
ATT.BashWhileSprintHook = function(self)
	if self:GetUBGL() then -- only sprint bash with bayonet
		return false
	end
end

ATT.UBGLExclusiveSightsUBGL = true

ATT.BashDamageUBGL = 20
ATT.BashLungeRangeUBGL = 64
ATT.BashRangeUBGL = 64
ATT.PreBashTimeUBGL = 0.2
ATT.PostBashTimeUBGL = 0.4

ARC9.LoadAttachment(ATT, "myt_ucalpha_ubgl_rpg")










----------------------------------------------------------------------------------

-----------
-- Ammo --
-----------

ATT = {}

ATT.PrintName = [["DRGN" Dragon's Breath]]
ATT.CompactName = [[A. DRGN]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[Novelty magnesium-based round that projects a spectacular jet of sparks and fire. Burning at over 3,000 °F, the blast isn't immediately lethal, but can easily set objects and people ablaze.

Only compatible with manual action or forced manual cycle converted shotguns due to a weak pressure curve.]]

ATT.ManualAction = true

ATT.SortOrder = 1
ATT.Category = "ucalpha_ammo_sg"
ATT.ActivateElements = {"is_pumpaction", "force_pumpaction"}

ATT.DamageType = DMG_BURN + DMG_BUCKSHOT
ATT.RecoilMult = 0.75
ATT.NumOverride = 22
ATT.HullSizeOverride = 5
ATT.PhysBulletGravityMult = 0.6

ATT.SpreadMult = 1.25
ATT.DamageMaxMult = 0.5
ATT.DamageMinMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 0.2
ATT.AlwaysPhysBulletOverride = true
ATT.RicochetChanceOverride = 0
ATT.PenetrationOverride = 0


ATT.ImpactDecal = "FadingScorch"

ATT.Hook_PrimaryAttack = function(wep, data)
    --wep:EmitSound("UPLP_DB_ADD")
    if SERVER and wep:GetHeatAmount() >= wep:GetProcessedValue("HeatCapacity", true) then
        local dmg = DamageInfo()
        dmg:SetAttacker(wep:GetOwner())
        dmg:SetInflictor(wep)
        dmg:SetDamage(10)
        dmg:SetDamageType(DMG_BURN)
        dmg:SetDamagePosition(wep:GetOwner():GetPos())
        wep:GetOwner():TakeDamageInfo(dmg)
        wep:GetOwner():Ignite(math.Rand(2, 3))
    end
end

local direct_burn = {
    npc_zombie = true,
    npc_zombie_torso = true,
    npc_zombine = true,
    npc_fastzombie = true,
    npc_fastzombie_torso = true,
    npc_headcrab = true,
    npc_headcrab_fast = true,
    npc_headcrab_black = true,
    npc_headcrab_poison = true,
    npc_poisonzombie = true,
    npc_antlionguard = true,
    npc_antlionguardian = true,
    npc_barnacle = true,
}

local ignite_threshold = {
    -- instantly killed by fire
    npc_combine_s = 0.6,
    npc_metropolice = 0.6,

    -- loses a lot of hp on ignite
    npc_poisonzombie = 0.5,
}

ATT.Hook_BulletImpact = function(wep, data)
    local ent = data.tr.Entity
    if !IsValid(ent) then return end

    -- volume check threshold is about as big as models/props_junk/trashdumpster02.mdl (the big blue dumpster)
    local dur = 0
    local max_dur = 30
    if ent:IsPlayer() then
        dur = 4 / 30
        max_dur = 5
    elseif ent:IsNPC() or ent:IsNextBot() then
        -- burning will cause CC or even instant kill some NPCs so only burn if they're weak (or zombies)
        if ent:IsNextBot() or ent:Health() / ent:GetMaxHealth() <= (ignite_threshold[data.tr.Entity:GetClass()] or 1) then
            dur = 8 / 30
        end
    elseif ent:GetPhysicsObject():IsValid() then
        dur = Lerp(1 - ((ent:GetPhysicsObject():GetVolume() or 0) / 750000), 2, 10) / 30
    end
    if dur <= 0 then

        return
    end
    dur = Lerp(wep:GetDamageDeltaAtRange(data.range), dur, dur / 2)

    if IsValid(ent) then
        if vFireInstalled then
            CreateVFire(ent, data.tr.HitPos, data.tr.HitNormal, dur / 5)
        else
            ent.UPLP_BurnTag = wep:GetOwner()
            if (ent.UPLP_BurnTime or 0) < CurTime() then
                ent.UPLP_BurnTime = CurTime()
            end
            ent.UPLP_BurnTime = math.min(CurTime() + max_dur, ent.UPLP_BurnTime + dur)
            ent:Extinguish()
            ent:Ignite(ent.UPLP_BurnTime - CurTime())
            -- HL2 zombies ignore DMG_BURN damage, making pellets do no damage
            data.dmg:SetDamageType(direct_burn[data.tr.Entity:GetClass()] and DMG_BUCKSHOT or (DMG_BURN + DMG_BUCKSHOT))
        end
    end
end

ATT.Hook_PhysBulletImpact = function(wep, data)
    local emitter = ParticleEmitter(data.tr.HitPos)
    if !IsValid(emitter) then return end

    local a = wep:GetDamageDeltaAtRange(data.bullet.Travelled)

    local dir = data.bullet.Vel:GetNormalized()
    local reflect = dir:Dot(data.tr.HitNormal) * 2 * data.tr.HitNormal - dir
    local vec = (reflect + VectorRand() * 0.1):GetNormalized()

    for i = 1, math.ceil(math.Rand(16, 32) * Lerp(a, 1, 0.25) ) do
        local ember = emitter:Add("effects/spark", data.tr.HitPos + VectorRand() * 4)
        ember:SetVelocity(VectorRand() * 300 - vec * math.Rand(100, 300) + Vector(0, 0, math.Rand(75, 150)))
        ember:SetGravity(Vector(0, 0, -600))
        ember:SetDieTime(math.Rand(0.6, 1.2))
        ember:SetStartAlpha(255)
        ember:SetEndAlpha(0)
        ember:SetStartSize(math.Rand(3, 6))
        ember:SetEndSize(0)
        ember:SetRoll(math.Rand(-180, 180))
        ember:SetRollDelta(math.Rand(-0.2, 0.2))
        ember:SetColor(255, Lerp(a, 220, 100), Lerp(a, 175, 0))
        ember:SetAirResistance(80)
        ember:SetLighting(false)
        ember:SetCollide(true)
        ember:SetBounce(0.5)
    end

    emitter:Finish()
end

ATT.HookC_DrawBullet = function(wep, bullet)
    if bullet.Travelled <= 72 then return false end
    local a = wep:GetDamageDeltaAtRange(bullet.Travelled)
    if a == 0 then return false end

    -- Do not try to keep emitting while time is frozen (singleplayer pause)
    if (bullet.LastTick or 0) == CurTime() then return false end
    bullet.LastTick = CurTime()

    local emitter = ParticleEmitter(bullet.Pos)
    if !IsValid(emitter) then return end

    local vec = bullet.Vel * engine.TickInterval()
    local count = math.ceil(vec:Length() / 12)

    local count2 = math.ceil(math.sqrt(count) / 3 * a)
    for j = 1, count2 do
        local p = bullet.Pos - vec * (j / count2) + VectorRand() * math.Clamp((CurTime() - bullet.StartTime) / 0.5, 0, 8)

        local spark = emitter:Add("effects/spark", p)
        spark:SetVelocity(VectorRand() * 100 + vec * 0.75)
        spark:SetGravity(Vector(math.Rand(-10, 10), math.Rand(-10, 10), -75))
        spark:SetDieTime(math.Rand(0.15, 0.2))
        spark:SetStartAlpha(255)
        spark:SetEndAlpha(0)
        spark:SetStartSize(math.Rand(3, 6))
        spark:SetEndSize(0)
        spark:SetRoll(math.Rand(-180, 180))
        spark:SetRollDelta(math.Rand(-0.2, 0.2))
        spark:SetColor(255, Lerp(a, 220, 100), Lerp(a, 175, 0))
        spark:SetAirResistance(50)
        spark:SetLighting(false)
        spark:SetCollide(true)
        spark:SetBounce(0.8)
    end

    emitter:Finish()
    bullet.RenderTick = (bullet.RenderTick or 0) + 1

    return false
end

ATT.MuzzleParticle = "muzzleflash_dragonbreath"
ARC9.LoadAttachment(ATT, "myt_ucalpha_ammo_sg_dragonbreath")












----------------------------------------------------------------------------------


----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--- Glock ---

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------
-- Slide --
----------------
ATT = {}

ATT.PrintName = [[Cyclone]]
ATT.CompactName = [[S. Auto]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[w speed
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_glock_slide"
ATT.ActivateElements = {"s_auto"}
ATT.RPMMult = 1250/400

ATT.RPMHook = function(wep, stat)
	local heat = wep:GetHeatAmount() / wep:GetProcessedValue("HeatCapacity", true)
	return Lerp(heat, stat, stat * 0.7)
end

ATT.Firemodes = {
    {
        Mode = -1,
    },
}


ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_slide_auto")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Vented]]
ATT.CompactName = [[S. Vented]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 2
ATT.Category = "ucalpha_glock_slide"
ATT.ActivateElements = {"s_vent"}
ATT.RPMMult = 600/400
ATT.HeatPerShotMult = 0.8

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_slide_vent")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Compact]]
ATT.CompactName = [[S. G26]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 3
ATT.Category = "ucalpha_glock_slide"
ATT.ActivateElements = {"s_26"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_slide_compact")

----------------------------------------------------------------------------------

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[10-Round Mag]]
ATT.CompactName = [[M. 10]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 10
ATT.Category = "ucalpha_glock_mag"
ATT.ActivateElements = {"m_10"}
ATT.ClipSize = 10
ATT.ReloadTimeMult = 0.9
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload" 		then	return "reload_10"	end
	if	curanim == "reload_empty"	then	return "reload_empty_10"	end	
end

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_mag_10")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[33-Round Mag]]
ATT.CompactName = [[M. 33]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 33
ATT.Category = "ucalpha_glock_mag"
ATT.ActivateElements = {"m_33"}
ATT.ClipSize = 33

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload" 		then	return "reload_33"	end
	if	curanim == "reload_empty"	then	return "reload_empty_33"	end	
end

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_mag_33")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[21-Round Mag]]
ATT.CompactName = [[M. 21]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 21
ATT.Category = "ucalpha_glock_mag"
ATT.ActivateElements = {"m_21"}
ATT.ClipSize = 21
ATT.ReloadTimeMult = 1.1

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_mag_21")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[100-Round Mag]]
ATT.CompactName = [[M. 100]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[ballsack shredder
]]

ATT.SortOrder = 100
ATT.Category = "ucalpha_glock_mag"
ATT.ActivateElements = {"m_100"}
ATT.ClipSize = 100

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload" 		then	return "reload_100"	end
	if	curanim == "reload_empty"	then	return "reload_empty_100"	end	
end

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_mag_100")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Tactical Sight]]
ATT.CompactName = [[I. Tac]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[wickerman
]]

ATT.SortOrder = 0.1
ATT.Category = "ucalpha_glock_irons"
ATT.ActivateElements = {"i_tac"}


ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_irons_tac")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Vented Barrel]]
ATT.CompactName = [[B. Vented]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[auter

vented barrel can't be audiably suppressed
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_glock_barrel"
ATT.ActivateElements = {"b_vent"}

ATT.ShootSoundSilenced = "arc9_ucalpha/glock/fire.ogg"
ATT.Silencer = false

ATT.HeatDelayTimeMult = 0.75
ATT.HeatDissipationMult = 2
ATT.HeatPerShotMult = 33/48
ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_barrel_vent")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Long Barrel]]
ATT.CompactName = [[B. Long]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[shlongson
]]

ATT.SortOrder = 2
ATT.Category = "ucalpha_glock_barrel"
ATT.ActivateElements = {"b_long"}

ATT.HeatDelayTimeMult = 1.15
ATT.HeatDissipationMult = 0.75
ATT.HeatPerShotMult = 33/25

ARC9.LoadAttachment(ATT, "myt_ucalpha_glock_barrel_long")

----------------------------------------------------------------------------------	