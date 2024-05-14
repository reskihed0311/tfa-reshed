SWEP.Base = "tfa_gun_base"
SWEP.Category = "[TFA] reshed" --The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Russia" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Description= "Sniper Rifle."
--SWEP.Author = "TFA" --Author Tooltip
--SWEP.Contact = "http://steamcommunity.com/profiles/76561198161775645" --Contact Info Tooltip
SWEP.Purpose = "" --Purpose Tooltip
SWEP.Instructions = "" --Instructions Tooltip
SWEP.Spawnable = true --Can you, as a normal user, spawn this?
SWEP.AdminSpawnable = true --Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair = true -- Draw the crosshair?
SWEP.DrawCrosshairIS = false --Draw the crosshair in ironsights?
SWEP.PrintName = "SV98" -- Weapon name (Shown on HUD)
SWEP.SubCategory                = "Sniper Rifles" -- Spawnmenu subcategory.
SWEP.Type = "Rifle"
SWEP.Slot = 2 -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos = 73 -- Position in the slot
SWEP.AutoSwitchTo = true -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom = true -- Auto switch from if you pick up a better weapon
SWEP.Weight = 30 -- This controls how "good" the weapon is for autopickup.
--[[WEAPON HANDLING]]
--
SWEP.Primary.Sound = "tfaweapons/sv98/fire_fp.wav" -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound      = "tfaweapons/sv98/fire_sup.wav" -- This is the sound of the weapon, when silenced.
SWEP.Silenced                     = true -- Silenced by default?
SWEP.Primary.PenetrationMultiplier = 1 --Change the amount of something this gun can penetrate through
SWEP.Primary.Damage = 90 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true --true will handle damagetype in base
SWEP.Primary.DamageType = nil --See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.Force = nil --Force value, leave nil to autocalc
SWEP.Primary.Knockback = nil --Autodetected if nil; this is the velocity kickback
SWEP.Primary.HullSize = 0 --Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 --The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM =30 -- This is in Rounds Per Minute / RPM
SWEP.Primary.DryFireDelay = nil --How long you have to wait after firing your last shot before a dryfire animation can play.  Leave nil for full empty attack length.  Can also use SWEP.StatusLength[ ACT_VM_BLABLA ]
SWEP.Primary.BurstDelay = nil -- Delay between bursts, leave nil to autocalculate
SWEP.FiresUnderwater = false
--Miscelaneous Sounds
SWEP.IronInSound = "TFA_INS2.IronIn" --Sound to play when ironsighting in?  nil for default
SWEP.IronOutSound = "TFA_INS2.IronOut" --Sound to play when ironsighting out?  nil for default
--Silencing
SWEP.CanBeSilenced = false --Can we silence?  Requires animations.
SWEP.Silenced = false --Silenced by default?
-- Selective Fire Stuff
SWEP.SelectiveFire = false --Allow selecting your firemode?
SWEP.DisableBurstFire = false --Only auto/single?
SWEP.OnlyBurstFire = false --No auto, only burst/single?
SWEP.DefaultFireMode = "" --Default to auto or whatev
SWEP.FireModeName = nil --Change to a text value to override it
--Ammo Related
SWEP.Primary.ClipSize = 5 -- This is the size of a clip
SWEP.Primary.DefaultClip = 120 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "ar2" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 --Ammo consumed per shot
--Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false --Disable round-in-the-chamber
--Recoil Related
SWEP.Primary.KickUp = 0.30 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.52 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.1 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.5 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
--Firing Cone Related
SWEP.Primary.Spread = .04 --This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = .001 -- Ironsight accuracy, should be the same for shotguns
--Unless you can do this manually, autodetect it.  If you decide to manually do these, uncomment this block and remove this line.
SWEP.Primary.SpreadMultiplierMax = 1.5 --How far the spread can expand when you shoot. Example val: 2.5
SWEP.Primary.SpreadIncrement = 0.3 --What percentage of the modifier is added on, per shot.  Example val: 1/3.5
SWEP.Primary.SpreadRecovery = 1.5 --How much the spread recovers, per second. Example val: 3

-- This is the improved method for doing range. It still kinda sucks you can't set full values for how it should be displayed in the graph. This leads to a decent amount of screenspace being taken up because the bullet "technically" goes 700m, even though it basically does no damage.
SWEP.Primary.FalloffMetricBased = true -- Set to true if you set up values below
SWEP.Primary.FalloffByMeter     = 0.10 -- How much damage points will bullet loose when travel
SWEP.Primary.MinRangeStartFalloff = 450 -- How long will bullet travel in Meters before starting to lose damage?
SWEP.Primary.MaxFalloff         = 39 -- Maximal amount of damage to be lost
-- 
SWEP.MaxPenetrationCounter = 4 --The maximum number of ricochets.  To prevent stack overflows.
--Misc
SWEP.IronRecoilMultiplier = 0.6 --Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.5 --Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate
--Movespeed
SWEP.MoveSpeed = 0.750 --Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = SWEP.MoveSpeed * 0.8 --Multiply the player's movespeed by this when sighting.
SWEP.ViewModel = "models/weapons/tfa_reshed_sv98.mdl" --Viewmodel path
SWEP.ViewModelFOV = 60 -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip = false -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true --Use gmod c_arms system.
SWEP.VMPos = Vector( 0, 0, 0 ) --The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector( 0, 0, 0 ) --The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = false --Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.CenteredPos = nil --The viewmodel positional offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.CenteredAng = nil --The viewmodel angular offset, used for centering.  Leave nil to autodetect using ironsights.
SWEP.Bodygroups_V = nil --{
--[0] = 1,
--[1] = 4,
--[2] = etc.
--}
--[[WORLDMODEL]]
--
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl" -- Weapon world model path
SWEP.Bodygroups_W = nil --{
--[0] = 1,
--[1] = 4,
--[2] = etc.
--}
SWEP.HoldType = "ar2" -- This is how others view you carrying the weapon. Options include:

-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive
-- You're mostly going to use ar2, smg, shotgun or pistol. rpg and crossbow make for good sniper rifles
SWEP.Offset = {
    Pos = {
        Up = -4,
        Right = 3.5,
        Forward = -8
    },
    Ang = {
        Up = -0,
        Right = -10,
        Forward = 180
    },
    Scale = 0.9
}
--Procedural world model animation, defaulted for CS:S purposes.
--Vector(4.796, 0.964, -0.82), angle = Angle(-5.844, 0, 180)
SWEP.ThirdPersonReloadDisable = false --Disable third person reload?  True disables.
--[[SCOPES]]
--
SWEP.IronSightsSensitivity = 1 --Useful for a RT scope.  Change this to 0.25 for 25% sensitivity.  This is if normal FOV compenstaion isn't your thing for whatever reason, so don't change it for normal scopes.
SWEP.BoltAction = false --Unscope/sight after you shoot?
SWEP.IronSightsReloadEnabled = true
SWEP.IronSightsReloadLock = false



SWEP.RunSightsPos = Vector( 4.65, -3.987, -0.89 )
SWEP.RunSightsAng = Vector( -27.534, 35.835, -36.301 )

SWEP.data = {}
SWEP.data.ironsights = 1 --Enable Ironsights
SWEP.Secondary.IronFOV = 80 -- How much you 'zoom' in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
SWEP.IronSightsPos = Vector( -3.241, -8.32, 1.2 )
SWEP.IronSightsAng = Vector( 0.419, 0, 0 )
SWEP.IronSightsPos_Kobra = Vector( -3.241, -8.32, 0.2 )
SWEP.IronSightsAng_Kobra = Vector( 0, 0, 0 )
SWEP.IronSightsPos_EOTech = Vector( -3.241, -8.32, 0.2 )
SWEP.IronSightsAng_EOTech = Vector( 0, 0, 0 )
SWEP.IronSightsPos_RDS = Vector( -3.241, -8.32, 0.10 )
SWEP.IronSightsAng_RDS = Vector( 0, 0, 0 )
SWEP.IronSightsPos_2XRDS = Vector( -3.241, -10.32, 0.10 )
SWEP.IronSightsAng_2XRDS = Vector( 0, -0.051, 0 )
SWEP.IronSightsPos_C79 = Vector( -3.241, -10, -0.40 )
SWEP.IronSightsAng_C79 = Vector( 0, 0, 0 )
SWEP.IronSightsPos_PO4X = Vector( -3.241, -8.32, 0.2 )
SWEP.IronSightsAng_PO4X = Vector( 0, 0, 0 )

SWEP.InspectPos = Vector( 5, -5.619, -2.787 )
SWEP.InspectAng = Vector( 22.386, 34.417, 5 )

SWEP.AllowViewAttachment = true --Allow the view to sway based on weapon attachment while reloading or drawing, IF THE CLIENT HAS IT ENABLED IN THEIR CONVARS.


SWEP.IronSightHoldTypeOverride = "" --This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" --This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.



SWEP.ProceduralHoslterEnabled = nil
SWEP.ProceduralHolsterTime = 0.3
SWEP.ProceduralHolsterPos = Vector( 3, 0, -5 )
SWEP.ProceduralHolsterAng = Vector( -40, -30, 10 )
SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.SprintBobMult = 0
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Idle_Blend = 0.25 --Start an idle this far early into the end of a transition
SWEP.Idle_Smooth = 0.05 --Start an idle this far early into the end of another animation



--[[EFFECTS]]
--
--Attachments
SWEP.MuzzleAttachment = "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment = "2" -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true --Enable muzzle flash
SWEP.MuzzleAttachmentRaw = nil --This will override whatever string you gave.  This is the raw attachment number.  This is overridden or created when a gun makes a muzzle event.
SWEP.AutoDetectMuzzleAttachment = false --For multi-barrel weapons, detect the proper attachment?
SWEP.MuzzleFlashEffect = nil --Change to a string of your muzzle flash effect.  Copy/paste one of the existing from the base.
SWEP.SmokeParticle = nil --Smoke particle (ID within the PCF), defaults to something else based on holdtype; "" to disable
SWEP.EjectionSmokeEnabled = false --Disable automatic ejection smoke
--Shell eject override
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
--Tracer Stuff
SWEP.TracerName = nil --Change to a string of your tracer name.  Can be custom. There is a nice example at https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/entities/effects/tooltracer.lua
SWEP.TracerCount = 3 --0 disables, otherwise, 1 in X chance
--Impact Effects
SWEP.ImpactEffect = nil --Impact Effect
SWEP.ImpactDecal = nil --Impact Decal
SWEP.EventTable = {
[ACT_VM_RELOAD] = {
{ ["time"] = 0.25, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/magout.wav") },
{ ["time"] = 1.99, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/magin.wav") },
},
[ACT_VM_PRIMARYATTACK] = {
{ ["time"] = 0.5, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltlatch.wav") },
{ ["time"] = 0.75, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltback.wav") },
{ ["time"] = 1.1, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltforward.wav") },
{ ["time"] = 1.42, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltdown.wav") },
},
[ACT_VM_PRIMARYATTACK_1] = {
    { ["time"] = 0.5, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltlatch.wav") },
    { ["time"] = 0.75, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltback.wav") },
    { ["time"] = 1.1, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltforward.wav") },
    { ["time"] = 1.42, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltdown.wav") },
    },
[ACT_VM_RELOAD_EMPTY] = {
    { ["time"] = 0.3, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltlatch.wav") },
    { ["time"] = 0.54, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltback.wav") },
    { ["time"] = 1.19, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/magout.wav") },
    { ["time"] = 2.20, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/magin.wav") },
    { ["time"] = 3, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltforward.wav") },
    { ["time"] = 3.29, ["type"] = "sound", ["value"] = Sound("tfaweapons/sv98/boltdown.wav") },
}
}


SWEP.VElements = {
    ["sight_kobra"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_kobra.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( 0, 0, 1 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["sight_kobra_lens"] = TFA.INS2 and TFA.INS2.GetHoloSightReticle and TFA.INS2.GetHoloSightReticle( "sight_kobra" ) or nil,
    ["sight_eotech"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_eotech.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector(0, 0, 1 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["sight_eotech_lens"] = TFA.INS2 and TFA.INS2.GetHoloSightReticle and TFA.INS2.GetHoloSightReticle( "sight_eotech" ) or nil,
    ["sight_rds"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_aimpoint.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( 0, 0, 0 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["sight_rds_lens"] = TFA.INS2 and TFA.INS2.GetHoloSightReticle and TFA.INS2.GetHoloSightReticle( "sight_rds" ) or nil,
    ["scope_2xrds"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_aimp2x.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( 0, 0, 1 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["scope_2xrds_lens"] = {
        type = "Model",
        model = "models/rtcircle.mdl",
        bone = "Lense_RT",
        rel = "scope_2xrds",
        pos = Vector( 0, 0, -0.108 ),
        angle = Angle( -90, 0, -90 ),
        size = Vector( 0.3, 0.3, 0.3 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "!tfa_rtmaterial",
        skin = 0,
        bodygroup = {},
        active = false
    },
    ["scope_c79"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_elcan.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( 0, 0, 1 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["scope_c79_lens"] = {
        type = "Model",
        model = "models/rtcircle.mdl",
        bone = "Lense_RT",
        rel = "scope_c79",
        pos = Vector( 0, -0.08, 0 ),
        angle = Angle( 0, 90, 0 ),
        size = Vector( 0.5, 0.5, 0.5 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "!tfa_rtmaterial",
        skin = 0,
        bodygroup = {},
        active = false
    },
    ["scope_po4x"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_optic_po4x24.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( -0.1, -1, -1 ),
        angle = Angle( 90, 0, -90 ),
        size = Vector( 1, 1, 1 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        active = false,
        bonemerge = false
    },
    ["scope_po4x_lens"] = {
        type = "Model",
        model = "models/rtcircle.mdl",
        bone = "Lense_RT",
        rel = "scope_po4x",
        pos = Vector( 0, 0, -1.6 ),
        angle = Angle( -90, 0, -90 ),
        size = Vector( 0.3, 0.3, 0.3 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "!tfa_rtmaterial",
        skin = 0,
        bodygroup = {},
        active = false
    },
    ["suppressor"] = {
        type = "Model",
        model = "models/weapons/tfa_ins2/upgrades/a_suppressor_ak.mdl",
        bone = "weapon",
        rel = "",
        pos = Vector( 0, 1.1, 22 ),
        angle = Angle( 90, 0, 0 ),
        size = Vector( 0.7, 0.7, 0.7 ),
        color = Color( 255, 255, 255, 255 ),
        surpresslightning = false,
        material = "",
        skin = 0,
        bodygroup = {},
        bonemerge = false,
        active = false
    },
	
}

SWEP.WElements = {}

SWEP.Attachments = {
    [1] = {
        offset = { 0, 0 },
        atts = { "ins2_br_supp" },
        order = 1
    },
    [2] = {
        offset = { 0, 0 },
        atts = { "am_match", "am_magnum" },
        order = 5
    },
    [3] = {
        offset = { 0, 0 },
        atts = { "ins2_si_kobra", "ins2_si_eotech", "ins2_si_rds", "ins2_si_2xrds", "ins2_si_c79", "ins2_si_po4x" },
        order = 2
    },
}





SWEP.MuzzleAttachmentSilenced = 2
SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 8
SWEP.RTAttachment_2XRDS = 7

SWEP.ScopeOverlayTransforms_2XRDS = { -0.001, -0.357 }

SWEP.ScopeDistanceRange_2XRDS = 9
SWEP.ScopeDistanceMin_2XRDS = 8
SWEP.RTAttachment_C79 = 7

SWEP.ScopeOverlayTransforms_C79 = { -0.001, -0.388 }

SWEP.ScopeDistanceRange_C79 = 16
SWEP.ScopeDistanceMin_C79 = 8
SWEP.RTAttachment_PO4X = 7

SWEP.ScopeOverlayTransforms_PO4X = { -0.008, -0.26 }

SWEP.ScopeDistanceRange_PO4X = 16
SWEP.ScopeDistanceMin_PO4X = 8
DEFINE_BASECLASS( SWEP.Base )