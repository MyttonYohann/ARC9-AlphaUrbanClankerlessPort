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
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[actual super 90
Pump Action
]]

ATT.ManualAction = true

ATT.SortOrder = 10
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_pump1", "is_pumpaction"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_poly")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Woodsman]]
ATT.CompactName = [[F. PumpW]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[woo
Pump Action
]]

ATT.ManualAction = true

ATT.SortOrder = 100
ATT.Category = "ucalpha_1014_pump"
ATT.ActivateElements = {"fe_pump2", "is_pumpaction"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_pump_wood")

----------------------------------------------------------------------------------
----------------
-- Stock --
----------------
ATT = {}

ATT.PrintName = [[Polymer]]
ATT.CompactName = [[S. Polymer]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
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
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[tree
]]

ATT.SortOrder = 100
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
ATT.CompactName = [[S. Spas]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[hes so cool
]]

ATT.SortOrder = 100
ATT.Category = "ucalpha_1014_stock"
ATT.ActivateElements = {"s_3"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_stock_spas")
----------------------------------------------------------------------------------
----------------
-- Ammo --
----------------
ATT = {}

ATT.PrintName = [[5-Round Tube]]
ATT.CompactName = [[M. 5]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 5
ATT.ClipSize = 5
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_1"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_1")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[6-Round Tube]]
ATT.CompactName = [[M. 6]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 6
ATT.ClipSize = 6
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_2"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_2")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[8-Round Tube]]
ATT.CompactName = [[M. 8]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 8
ATT.ClipSize = 8
ATT.Category = "ucalpha_1014_tube"
ATT.ActivateElements = {"m_3"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_mag_3")

----------------------------------------------------------------------------------
----------------
-- Barrel --
----------------
ATT = {}

ATT.PrintName = [[Heatguard]]
ATT.CompactName = [[B. Heat]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 1
ATT.Category = "ucalpha_1014_barrel"
ATT.ActivateElements = {"b_1"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_1")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[Competitor]]
ATT.CompactName = [[B. Comp]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 2
ATT.Category = "ucalpha_1014_barrel"
ATT.ActivateElements = {"b_2"}

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_2")

----------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = [[14\" M4 Super 90 Entry Barrel]]
ATT.CompactName = [[B. Skeleton]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Short barrel intended for breaching and close quarters use. Drastically increases pellet spread, but is much easier to manuver.
]]

ATT.SortOrder = 3
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

ARC9.LoadAttachment(ATT, "myt_ucalpha_1014_barrel_3")

----------------------------------------------------------------------------------