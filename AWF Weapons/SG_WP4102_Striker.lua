--/////////////////////////////////////--
-- Advanced Weapon Framework - STKR Stats

-- Author: SilverEzredes
-- Updated: 04/28/2023
-- Version: v2.0.4
-- Special Thanks to: praydog, alphaZomega, MrBoobieBuyer

--/////////////////////////////////////--


local STKR = {
        --//////Attaché Case Size Guide//////--
    -- 1x1 = 0	-- 2x1 = 6	-- 3x1 = 14	-- 4x1 = 17
    -- 1x2 = 1	-- 2x2 = 7				-- 4x2 = 18		-- 6x2 = 19
    -- 1x3 = 2	-- 2x3 = 8	
    -- 1x4 = 3	-- 2x4 = 9
    -- 1x5 = 4	-- 2x5 = 10 -- 3x5 = 15
    -- 1x9 = 5	-- 2x6 = 11
	            -- 2x7 = 12 -- 3x7 = 16
	            -- 2x8 = 13	

    ItemSize = 10,					    --(10) The amount of space taken up by the item in the Attaché Case.

    	--//////Ammo Type Guide//////--
    -- Handgun Ammo = 			112800000
    -- Magnum Ammo =			112801600
    -- Shotgun Ammo = 			112803200
    -- Rifle Ammo =				112804800
    -- Submachine Gun Ammo =	112806400	

    AmmoType = 112803200,				--(112803200)
                                
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
    
    ReticleType = 106,                    --(106)
                                
        --//////STKR Base Stats//////--

    SG_CenterLife_Time = 5.0,           --(5.0)
    SG_CenterLife_Distance = 30.0,      --(30.0) This is probably effective range, not "ThinkRange (Range in previous versions)".
    SG_CenterMove_Speed = 300.0,		--(300) Speed of the bullet
    SG_CenterMove_Gravity = 0.0,		--(0) ???
    SG_CenterMove_IGD = 7.0,    		--(7.0) Range that ignores bullet drop?
    SG_Center_BulletCol = 0.005,		--(0.005) Maybe the bullet's hitzone size?
    SG_Center_Random = 0.0,             --(0.0) Spread.
    SG_Center_RandomFit = 0.0,          --(0.0) Spread fully focused.

    SG_Center_CritRate = 2.0,		    --(2.0) Default Critical Rate of the weapon.
    SG_Center_CritRate_EX = 2.0,		--(2.0) Critical Rate when the weapon reticle is fully focused.
    SG_Center_BaseDMG = 1.0,			--(1.0) Base Damage Rate
    SG_Center_BaseWINC = 1.0,			--(1.0) Base Wince Rate
    SG_Center_BaseBRK = 1.0,			--(1.0) Base Break Rate
    SG_Center_BaseSTOP = 1.0,			--(1.0) Base Stopping Power Rate

    SG_AroundLife_Time = 5.0,           --(5.0)
    SG_AroundLife_Distance = 30.0,      --(30.0) This is probably effective range, not "ThinkRange (Range in previous versions)".
    SG_AroundMove_Speed = 300.0,		--(300) Speed of the bullet
    SG_AroundMove_Gravity = 0.0,		--(0) ???
    SG_AroundMove_IGD = 7.0,    		--(7.0) Range that ignores bullet drop?
    SG_Around_BulletCol = 0.005,		--(0.005) Maybe the bullet's hitzone size?
    SG_Around_Random = 0.001,           --(0.001) Spread.
    SG_Around_RandomFit = 0.05,         --(0.05) Spread fully focused.

    SG_Around_CritRate = 0.0,		    --(0.0) Default Critical Rate of the weapon.
    SG_Around_CritRate_EX = 0.0,		--(0.0) Critical Rate when the weapon reticle is fully focused.
    SG_Around_BaseDMG = 1.0,			--(1.0) Base Damage Rate
    SG_Around_BaseWINC = 1.0,			--(1.0) Base Wince Rate
    SG_Around_BaseBRK = 1.0,			--(1.0) Base Break Rate
    SG_Around_BaseSTOP = 1.0,			--(1.0) Base Stopping Power Rate

    SG_AroundBulletCount = 16,          --(16)
    SG_CenterBulletCount = 1,           --(1)
    SG_InnerRadius = 0.001,             --(0.001)
    SG_OuterRadius = 0.05,              --(0.05)

	SG_AroundVertMin = 1,				--(1)
	SG_AroundVertMax = 5,				--(5)
	SG_AroundHorMin = 3,				--(3)
	SG_AroundHorMax = 11,				--(11)

    ReloadType = 1,					    --(1) 0 = At once // 1 = Every Single
    ShootType = 0,					    --(0) 0 = Semi Auto // 1 = Full Auto
    ReloadNum = 2,					    --(2) The number of shells loaded in at once for shotguns.
    ReloadSpeedRate = 1.0, 			    --(1.0) Base Reload Speed
    FireRate = 2.8,					    --(2.8) Base Rate of Fire
    FireRateFrame = 20.0,			    --(20.0) Not sure, something with the frames between shots.
    PumpActionFireRate = 1.0, 		    --(1.0) Pump speed for shotguns.

    ThinkRange = 10.0,					--(10.0) Probably not the effective range. 
    
    Focus_HoldAdd = 0.0,			    --(0.0)
    Focus_MoveSub = 0.0,			    --(0.0)
    Focus_CamSub = 0.0,			        --(0.0)
    Focus_Limit = 100.0,				--(100.0)
    Focus_ShootSub = 0.0,			    --(0.0)

    Recoil_YawMin = 0.5,                --(0.5) Left/Right
    Recoil_YawMax = 1.0,                --(1.0) Left/Right
    Recoil_PitchMin = 6.0,              --(6.0) Up/Down
    Recoil_PitchMax = 2.0,              --(2.0) Up/Down

    HandShake_Time = 5.0,               --(5.0)
    HandShake_Offset = 0.5,             --(0.5)

    BaseAmmoNum = 12,				    --(12) Base Ammo count
    BaseAmmoCost = 1,				    --(1) Amount of ammo used per shot
    DurDEF_Max = 1000,				    --(1000) Max Item durability
    DurSLD_Max = 2000,				    --(2000) Not really sure something slider max durability?
    ItemStack = 1, 					    --(1) Item stack limit

        --//////STKR Upgrade Stats//////--
            
    --///DAMAGE///--
    DMG_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseDMG above instead.
    DMG_LVL_01_INFO = "9.00",			--("9.00")
    DMG_LVL_01_COST = -1,				--(-1)
            
    DMG_LVL_02 = 1.20,					--(1.20)
    DMG_LVL_02_INFO = "10.8",			--("10.8")
    DMG_LVL_02_COST = 25000,			--(25000)
            
    DMG_LVL_03 = 1.4,					--(1.4)
    DMG_LVL_03_INFO = "12.6",			--("12.6")
    DMG_LVL_03_COST = 35000,			--(35000)
            
    DMG_LVL_04 = 1.6,					--(1.6)
    DMG_LVL_04_INFO = "14.4",			--("14.4")
    DMG_LVL_04_COST = 55000,			--(50000)
            
    DMG_LVL_05 = 1.8,					--(1.8)
    DMG_LVL_05_INFO = "16.2",			--("16.2")
    DMG_LVL_05_COST = 65000,			--(65000)
    --///WINCE///--
    WINC_LVL_01 = 1.0,					--(1.0) Invalid don't change it. Change WPtype_BaseWINCE above instead.
    WINC_LVL_02 = 1.16,				    --(1.16)
    WINC_LVL_03 = 1.33,					--(1.33)
    WINC_LVL_04 = 1.5,				    --(1.5)
    WINC_LVL_05 = 1.66,					--(1.66)
    --///BREAK///--
    BRK_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseBRK above instead.
    BRK_LVL_02 = 1.3,					--(1.3)
    BRK_LVL_03 = 1.6,					--(1.6)
    BRK_LVL_04 = 1.9,					--(1.9)
    BRK_LVL_05 = 2.2,					--(2.2)
    --///STOPPING POWER///--
    STOP_LVL_01 = -1.0,					--(-1.0) Invalid don't change it. Change WPtype_BaseSTOP above instead.
    STOP_LVL_02 = 1.16,				    --(1.16)
    STOP_LVL_03 = 1.33,					--(1.33)
    STOP_LVL_04 = 1.5,				    --(1.5)
    STOP_LVL_05 = 1.66,					--(1.66)
            
    --///AMMO CAPACITY///--
    AMMO_LVL_01 = -1,					--(-1.0) Invalid don't change it. Change WPtype_BaseAmmoNum above instead.
    AMMO_LVL_01_INFO = "12",		    --("12")
    AMMO_LVL_01_COST = -1,				--(-1)
            
    AMMO_LVL_02 = 15,					--(15)
    AMMO_LVL_02_INFO = "15",			--("15")
    AMMO_LVL_02_COST = 10000,			--(10000)
            
    AMMO_LVL_03 = 18,					--(18)
    AMMO_LVL_03_INFO = "18",			--("18")
    AMMO_LVL_03_COST = 14000,			--(14000)
            
    AMMO_LVL_04 = 21,					--(21)
    AMMO_LVL_04_INFO = "21",			--("21")
    AMMO_LVL_04_COST = 18000,			--(18000)
            
    AMMO_LVL_05 = 24,					--(24)
    AMMO_LVL_05_INFO = "24",			--("24")
    AMMO_LVL_05_COST = 22000,			--(22000)
            
    --///RELOAD SPEED///--
    RELOAD_LVL_01 = 1,				    --(1)
    RELOAD_LVL_01_INFO = "1",		    --("1")
    RELOAD_LVL_01_COST = 0,				--(0)
            
    RELOAD_LVL_02 = 2,				    --(2)
    RELOAD_LVL_02_INFO = "2",		    --("2")
    RELOAD_LVL_02_COST = 12000,			--(12000)
            
    RELOAD_LVL_03 = 3,				    --(3)
    RELOAD_LVL_03_INFO = "3",		    --("3")
    RELOAD_LVL_03_COST = 14000,			--(14000)
            
    RELOAD_LVL_04 = 4,				    --(4)
    RELOAD_LVL_04_INFO = "4",		    --("4")
    RELOAD_LVL_04_COST = 16000,			--(16000)
            
    RELOAD_LVL_05 = 6,				    --(6)
    RELOAD_LVL_05_INFO = "6",		    --("6")
    RELOAD_LVL_05_COST = 18000,			--(18000)
            
    --///RATE OF FIRE///--
    ROF_LVL_01 = 2.8,					--(2.8)
    ROF_LVL_01_INFO = "1.13",			--("1.13")
    ROF_LVL_01_COST = 0,				--(0)
            
    ROF_LVL_02 = 2.6,					--(2.6)
    ROF_LVL_02_INFO = "1.19",			--("1.19")
    ROF_LVL_02_COST = 13000,			--(13000)
            
    ROF_LVL_03 = 2.4,					--(2.4)
    ROF_LVL_03_INFO = "1.29",			--("1.29")
    ROF_LVL_03_COST = 16000,			--(16000)
            
    ROF_LVL_04 = 2.2,					--(2.2)
    ROF_LVL_04_INFO = "1.42",			--("1.42")
    ROF_LVL_04_COST = 19000,			--(19000)
            
    ROF_LVL_05 = 2.0,					--(2.0)
    ROF_LVL_05_INFO = "1.57",			--("1.57")
    ROF_LVL_05_COST = 22000,			--(22000)
             
        --//////STKR Limit Break Stats//////--
            
    EX_AMMO = 2.0,                    --(2.0) Ammo Rate multiplier.
    EX_SG_RELOAD = 2.0,               --(2.0) 
    EX_COST = 60000,    			  --(60000)

}
return STKR