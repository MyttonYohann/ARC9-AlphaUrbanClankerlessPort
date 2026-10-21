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
ATT.ModelBodygroups = "1458610"
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
ATT.ActivateElements = {"fe_pump1", "is_pumpaction"}

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
ATT.ActivateElements = {"fe_pump2", "is_pumpaction"}

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
ATT.ActivateElements = {"fe_pump5", "is_pumpaction"}

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

ATT.PrintName = [[6-Round Tube]]
ATT.CompactName = [[M. 6R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 6
ATT.ClipSize = 6
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

ATT.PrintName = [[7-Round Tube]]
ATT.CompactName = [[M. 7R]]
ATT.Icon = Material("myt_uc/att_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 7
ATT.ClipSize = 7
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
ATT.BashDamage = 120
ATT.BashLungeRange = 0
ATT.BashRange = 104
ATT.PreBashTime = 0.05
ATT.PostBashTime = 0.4

-- you cant fucking use bashwhilespring WITHOUT shootwhilesprint
ATT.BashWhileSprint = true
ATT.ShootWhileSprint = true
ATT.HookP_BlockFire = function(self)
	local owner = self:GetOwner() 
	local canfire = owner:KeyDown(IN_SPEED) and !owner:KeyDown(IN_USE)
	
	if owner:KeyDown(IN_FORWARD + IN_BACK + IN_MOVELEFT + IN_MOVERIGHT) then
	return canfire
	end
end
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "bash" and !wep:GetUBGL()	then	return "bash_bayo"		end
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

ATT.PrintName = [[Sawnoff RPG]]
ATT.CompactName = "RPG"
ATT.Icon = Material("entities/gekolt_dod_ubw_garand.png")
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
	},
	["reload_ubgl"] = {
		Source = "reload",
		MinProgress = 0.8,
		FireASAP = true,
		EventTable = {
			--{s =  "gekolt_dod/m1carbine_clipin1.wav" ,	t = 10 / 40},
			--{s =  "gekolt_dod/m1carbine_clipin2.wav" ,	t = 15 / 40},
			--{s =  "gekolt_dod/k98_singleshotreload.wav" ,   t = 45 / 40},
			--{s =  "gekolt_dod/m1carbine_boltforward.wav" ,	t = 72 / 40},
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
	-- separate check
		if	curanim == "enter_ubgl_glempty" 		then	return "enter_ubgl"		end
	else
		return 
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

ATT.SpreadUBGL = 0.005

ATT.ShootEntUBGL = "arc9_ucalpha_rpg"
ATT.ShootEntForceUBGL = 10000
ATT.ShootSoundUBGL = {"cturix_ar15/fire_grenade1.wav", "cturix_ar15/fire_grenade2.wav", "cturix_ar15/fire_grenade3.wav"}
ATT.DistantShootSoundUBGL = {"cturix_ar15/fire_grenade_dist.wav"}
ATT.HasSightsUBGL = true

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(0, 0, 1)
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
		if SERVER then
			local dmg = DamageInfo()
			dmg:SetDamage(math.random(30, 60))
			dmg:SetAttacker(wep:GetOwner())
			dmg:SetDamageType(DMG_BURN) 
			wep:GetOwner():TakeDamageInfo(dmg)
		end
		wep:GetOwner():ScreenFade( SCREENFADE.IN, Color( 255, 0, 0, 125), 2, 0 )
	end
end

ATT.UBGLExclusiveSightsUBGL = true

ARC9.LoadAttachment(ATT, "myt_ucalpha_ubgl_rpg")
----------------------------------------------------------------------------------