--/////////////////////////////////////--
-- Advanced Weapon Framework - RED9 Stats

-- Authors: SilverEzredes, alphaZomega
-- Updated: 04/17/2023
-- Version: v2.0.3
-- Special Thanks to: praydog

--/////////////////////////////////////--


local RED9 = {
        --//////Attaché Case Size Guide//////--
    -- 1x1 = 0	-- 2x1 = 6	-- 3x1 = 14	-- 4x1 = 17
    -- 1x2 = 1	-- 2x2 = 7				-- 4x2 = 18		-- 6x2 = 19
    -- 1x3 = 2	-- 2x3 = 8	
    -- 1x4 = 3	-- 2x4 = 9
    -- 1x5 = 4	-- 2x5 = 10 -- 3x5 = 15
    -- 1x9 = 5	-- 2x6 = 11
	            -- 2x7 = 12 -- 3x7 = 16
	            -- 2x8 = 13	

    ItemSize = 8,					    --(8) The amount of space taken up by the item in the Attaché Case.

    	--//////Ammo Type Guide//////--
    -- Handgun Ammo = 			112800000
    -- Magnum Ammo =			112801600
    -- Shotgun Ammo = 			112803200
    -- Rifle Ammo =				112804800
    -- Submachine Gun Ammo =	112806400	

    AmmoType = 112800000,				--(112800000)
         --//////Reticle Type Guide//////--
    -- Default =                100000
    -- Handgun Types =          0/1/2/3/4/5/6
    -- Shotgun Types =          100/101/102/103/104/105/106
    -- SMG Types =              200/201/202/203
    -- Rifle Types =            400/401
    -- Magnum Types =           500/501/502
    -- Bow Types =              600/601/602
    -- RPG Types =              900/901/902
    -- Unknown =                700/701/800/801/802/803/804/1000/1001/9000
    
    ReticleType = 6,                    --(6) --Experimental
                                
        --//////RED9 Base Stats//////--

    HG_Time = 5.0,                      --(5.0)
    HG_Distance = 100.0,                --(100.0) This is probably effective range, not "ThinkRange (Range in previous versions)".
    HG_BulletSpeed = 300,				--(300) Speed of the bullet
    HG_BulletGravity = 0,				--(0) ???
    HG_BulletGravityIgnore = 20,		--(20) Range that ignores bullet drop?
    HG_BulletCol = 0.005,				--(0.005) Maybe the bullet's hitzone size?
    SMG_Random = 0.02,                  --(0.02) Spread. 
    SMG_RandomFit = 0.005,              --(0.005) Spread fully focused.

    HG_CritRate = 5.0,				    --(5.0) Default Critical Rate of the weapon.
    HG_CritRateEX = 7.0,			    --(7.0) Critical Rate when the weapon reticle is fully focused.
    HG_BaseDMG = 1.0,				    --(1.0) Base Damage Rate
    HG_BaseWINC = 1.0,				    --(1.0) Base Wince Rate
    HG_BaseBRK = 1.0,				    --(1.0) Base Break Rate
    HG_BaseSTOP = 1.0,				    --(1.0) Base Stopping Power Rate

    ReloadType = 0,					    --(0) 0 = At once // 1 = Every Single
    ShootType = 0,					    --(0) 0 = Semi Auto // 1 = Full Auto
    ReloadNum = -1,					    --(-1) The number of shells loaded in at once for shotguns.
    ReloadSpeedRate = 0.85, 			--(0.85) Base Reload Speed
    FireRate = 2.6,					    --(2.6) Base Rate of Fire
    FireRateFrame = -1.0,			    --(-1.0) Not sure, something with the frames between shots.
    PumpActionFireRate = 1.0, 		    --(1.0) Pump speed for shotguns.

    ThinkRange = 10.0,					--(10.0) Probably not the effective range. 
    
    Focus_HoldAdd = 100.0,			    --(100.0)
    Focus_MoveSub = 200.0,			    --(200.0)
    Focus_CamSub = 125.0,			    --(125.0)
    Focus_Limit = 90.0,				    --(90.0)
    Focus_ShootSub = 50.0,			    --(50.0)

    Recoil_YawMin = 0.0,                --(0.0) Left/Right
    Recoil_YawMax = 1.0,                --(1.0) Left/Right
    Recoil_PitchMin = 3.8,              --(3.8) Up/Down
    Recoil_PitchMax = 0.8,              --(0.8) Up/Down

    HandShake_Time = 9.0,               --Experimental
    HandShake_Offset = 0.5,             --Experimental

    BaseAmmoNum = 8,				    --(8) Base Ammo count
    BaseAmmoCost = 1,				    --(1) Amount of ammo used per shot
    DurDEF_Max = 1000,				    --(1000) Max Item durability
    DurSLD_Max = 2000,				    --(2000) Not really sure something slider max durability?
    ItemStack = 1, 					    --(1) Item stack limit

        --//////RED9 Upgrade Stats//////--
            
    --///DAMAGE///--
    DMG_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseDMG above instead.
    DMG_LVL_01_INFO = "1.50",			--("1.50")
    DMG_LVL_01_COST = -1,				--(-1)
            
    DMG_LVL_02 = 1.20,					--(1.20)
    DMG_LVL_02_INFO = "1.80",			--("1.80")
    DMG_LVL_02_COST = 15000,			--(15000)
            
    DMG_LVL_03 = 1.40,					--(1.40)
    DMG_LVL_03_INFO = "2.10",			--("2.10")
    DMG_LVL_03_COST = 30000,			--(30000)
            
    DMG_LVL_04 = 1.60,					--(1.60)
    DMG_LVL_04_INFO = "2.40",			--("2.40")
    DMG_LVL_04_COST = 45000,			--(45000)
            
    DMG_LVL_05 = 1.80,					--(1.80)
    DMG_LVL_05_INFO = "2.70",			--("2.70")
    DMG_LVL_05_COST = 65000,			--(65000)
    --///WINCE///--
    WINC_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseWINCE above instead.
    WINC_LVL_02 = 1.15,					--(1.15)
    WINC_LVL_03 = 1.30,					--(1.30)
    WINC_LVL_04 = 1.45,					--(1.45)
    WINC_LVL_05 = 1.70,					--(1.70)
    --///BREAK///--
    BRK_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseBRK above instead.
    BRK_LVL_02 = 1.25,					--(1.25)
    BRK_LVL_03 = 1.50,					--(1.50)
    BRK_LVL_04 = 1.75,					--(1.75)
    BRK_LVL_05 = 2.00,					--(2.00)
    --///STOPPING POWER///--
    STOP_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseSTOP above instead.
    STOP_LVL_02 = 1.25,					--(1.25)
    STOP_LVL_03 = 1.50,					--(1.50)
    STOP_LVL_04 = 1.75,					--(1.75)
    STOP_LVL_05 = 2.00,					--(2.00)
            
    --///AMMO CAPACITY///--
    AMMO_LVL_01 = -1,					--(-1.0) Invalid don't change it. Change WPtype_BaseAmmoNum above instead.
    AMMO_LVL_01_INFO = "8",			    --("8")
    AMMO_LVL_01_COST = -1,				--(-1)
            
    AMMO_LVL_02 = 10,					--(10)
    AMMO_LVL_02_INFO = "10",			--("10")
    AMMO_LVL_02_COST = 6000,			--(6000)
            
    AMMO_LVL_03 = 12,					--(12)
    AMMO_LVL_03_INFO = "12",			--("12")
    AMMO_LVL_03_COST = 8000,			--(8000)
            
    AMMO_LVL_04 = 14,					--(14)
    AMMO_LVL_04_INFO = "14",			--("14")
    AMMO_LVL_04_COST = 10000,			--(10000)
            
    AMMO_LVL_05 = 16,					--(16)
    AMMO_LVL_05_INFO = "16",			--("16")
    AMMO_LVL_05_COST = 12000,			--(12000)
            
    --///RELOAD SPEED///--
    RELOAD_LVL_01 = 0.85,				--(0.85)
    RELOAD_LVL_01_INFO = "0.85",		--("0.85")
    RELOAD_LVL_01_COST = 0,				--(0)
            
    RELOAD_LVL_02 = 0.95,				--(0.95)
    RELOAD_LVL_02_INFO = "0.95",		--("0.95")
    RELOAD_LVL_02_COST = 8000,			--(8000)
            
    RELOAD_LVL_03 = 1.05,				--(1.05)
    RELOAD_LVL_03_INFO = "1.05",		--("1.05")
    RELOAD_LVL_03_COST = 10000,			--(10000)
            
    RELOAD_LVL_04 = 1.15,				--(1.15)
    RELOAD_LVL_04_INFO = "1.15",		--("1.15")
    RELOAD_LVL_04_COST = 11000,			--(11000)
            
    RELOAD_LVL_05 = 1.25,				--(1.25)
    RELOAD_LVL_05_INFO = "1.25",		--("1.25")
    RELOAD_LVL_05_COST = 14000,			--(14000)
            
    --///RATE OF FIRE///--
    ROF_LVL_01 = 2.6,					--(2.6)
    ROF_LVL_01_INFO = "0.90",			--("0.90")
    ROF_LVL_01_COST = 0,				--(0)
            
    ROF_LVL_02 = 2.4,					--(2.4)
    ROF_LVL_02_INFO = "0.96",			--("0.96")
    ROF_LVL_02_COST = 7000,				--(7000)
            
    ROF_LVL_03 = 2.2,					--(2.2)
    ROF_LVL_03_INFO = "1.05",			--("1.05")
    ROF_LVL_03_COST = 10000,			--(10000)
            
    ROF_LVL_04 = 2.0,					--(2.0)
    ROF_LVL_04_INFO = "1.16",			--("1.16")
    ROF_LVL_04_COST = 14000	,			--(14000)
            
    ROF_LVL_05 = 1.8,					--(1.8)
    ROF_LVL_05_INFO = "1.26",			--("1.26")
    ROF_LVL_05_COST = 19000	,			--(19000)
            
        --//////RED9 Limit Break Stats//////--
            
    EX_DMG = 1.5,                       --(1.5) Damage Rate multiplier.
    EX_WINCE = 1.5,                      --(1.5) Wince Rate multiplier.
    EX_BRK = 1.5,                       --(1.5) Break Rate multiplier.
    EX_STOP = 1.5,                      --(1.5) Stopping Power Rate multiplier.
    EX_COST = 100000,				    --(100000)

}
return RED9