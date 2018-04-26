
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local emergency_male = { model = "s_m_m_paramedic_01" }
local fbi_male = { model = "s_m_y_swat_01" }
local sheriff_male = { model = "s_m_y_sheriff_01"}
local hway_male = { model = "s_m_y_hwaycop_01"}
local cop_male = { model = "s_m_y_cop_01"}
local detective_male = { model = "s_m_m_CIASec_01"}
local officer_male = { model = "s_m_y_cop_01"}
local bounty_male = { model = "s_m_m_Armoured_01"}
local captain_male = { model = "ig_paper"}
local lieutenant_male = { model = "u_m_m_jewelsec_01"}
local sergeant_male = { model = "ig_prolsec_02"}
local deputy_male = { model = "mp_g_m_pros_01"}
local chief_male = {model = "s_m_m_ciasec_01"}
local santa = {model = "Santaclaus"}
local lawyer = {model = "ig_bankman"}
--s_m_m_paramedic_01
--s_f_y_scrubs_01
--mp_m_freemode_01
--mp_f_freemode_01

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["police"] = {
    _config = { permissions = {"police.cloakroom"} },
    ["Police Officer Uniform"] = cop_male
  },

   ["Lawyer"] = {
    _config = { permissions = {"lawyer.cloakroom"} },
    ["Lawyer Suit"] = lawyer
    },

  ["surgery"] = {
    _config = { not_uniform = true },
    ["Male"] = surgery_male
  },
   ["Santa"] = {
    _config = { permissions = {"santa.cloakroom"} },
    ["Santa Claus"] = santa
    },
   ["emergency"] = {
    _config = { permissions = {"emergency.cloakroom"} },
    ["Male"] = emergency_male
    },
  ["Officer"] = {
    _config = { permissions = {"Officer.cloakroom"} },
    ["Male"] = officer_male
  },
  ["Chief"] = {
    _config = { permissions = {"Chief.cloakroom"} },
    ["State Command Uniform"] = chief_male
  },
  ["Trooper"] = {
    _config = { permissions = {"Commander.cloakroom"} },
    ["State Police Uniform"] = hway_male
  },
  ["Lieutenant"] = {
    _config = { permissions = {"Lieutenant.cloakroom"} },
    ["Internal Affairs Uniform"] = lieutenant_male
  },
  ["Bounty"] = {
    _config = { permissions = {"Bounty.cloakroom"} },
    ["Bounty Hunter Uniform"] = bounty_male 
  },
  ["Captain"] = {
    _config = { permissions = {"Captain.cloakroom"} },
    ["Department Command Uniform"] = captain_male
  },
  ["Detective"] = {
    _config = { permissions = {"Detective.cloakroom"} },
    ["Criminal Investigation Department Uniform"] = detective_male
  },
  ["Deputy"] = {
    _config = { permissions = {"Deputy.cloakroom"} },
    ["U.S Marshal Uniform"] = deputy_male
  },
  ["Sergeant"] = {
    _config = { permissions = {"Sergeant.cloakroom"} },
    ["Supervisor Uniform"] = sergeant_male
  },
  ["SWAT"] = {
    _config = { permissions = {"SWAT.cloakroom"} },
    ["Special Weapons And Tactics Uniform"] = fbi_male
  },
  ["sheriff"] = {
    _config = { permissions = {"sheriff.cloakroom"} },
    ["Sheriff Office Uniform"] = sheriff_male
  }
}

cfg.cloakrooms = {
  {"police", 459.01037597656,-992.32800292969,30.689575195313},
  {"Officer", 459.01037597656,-992.32800292969,30.689575195313},
  {"Chief", 459.01037597656,-992.32800292969,30.689575195313},
  {"Bounty", 575.40698242188,-3121.94921875,18.768627166748},
  {"Commander", 459.01037597656,-992.32800292969,30.689575195313},
  {"Captain", 459.01037597656,-992.32800292969,30.689575195313},
  {"Lieutenant", 459.01037597656,-992.32800292969,30.689575195313},
  {"Detective", 459.01037597656,-992.32800292969,30.689575195313},
  {"Sergeant", 459.01037597656,-992.32800292969,30.689575195313},
  {"police", 369.9228515625,-1607.12976074219,29.291934967041},
  {"police", 1848.2177734375,3689.5593261719,34.267040252686}, -- sandy shores
  {"police", -448.53857421875,6009.2690429688,31.716375350952}, -- paleto
  {"SWAT", 459.01037597656,-992.32800292969,30.689575195313}, 
  {"sheriff", 459.01037597656,-992.32800292969,30.689575195313},
  {"Deputy", 459.01037597656,-992.32800292969,30.689575195313},
  {"sheriff", 1849.7268066406,3689.9221191406,34.267040252686}, -- sandy shores
  {"sheriff", -447.44305419922,6007.9516601563,31.716375350952}, -- paleto
  {"Trooper", 459.01037597656,-992.32800292969,30.689575195313},
  {"Lawyer",105.48087310791,-1088.82177734375,29.3024787902832},
  {"surgery",1849.7425,3686.5759,34.2670},----first spawn change skin
  {"surgery",75.3451766967773,-1392.86596679688,29.3761329650879},---skinsshops
  {"surgery",-700.089477539063,-151.570571899414,37.4151458740234},
  {"surgery",-170.416717529297,-296.563873291016,39.7332878112793},
  {"surgery",425.61181640625,-806.519897460938,29.4911422729492},
  {"surgery",-822.166687011719,-1073.58020019531,11.3281087875366},
  {"surgery",-1186.25744628906,-771.20166015625,17.3308639526367},
  {"surgery",-1450.98388671875,-238.164260864258,49.8105850219727},
  {"surgery",4.44537162780762,6512.244140625,31.8778476715088},
  {"surgery",1693.91735839844,4822.66162109375,42.0631141662598},
  {"surgery",118.071769714355,-224.893646240234,54.5578384399414},
  {"surgery",620.459167480469,2766.82641601563,42.0881042480469},
  {"surgery",1196.89221191406,2710.220703125,38.2226066589355},
  {"surgery",-3178.01000976563,1043.21044921875,20.8632164001465},
  {"surgery",-1101.15161132813,2710.8203125,19.1078643798828},
  {"emergency",244.1099395752,-1382.8720703125,39.534328460693},
  {"Santa",-1373.0778808594,-2677.6694335938,13.944942474365} -- Santa's Cloakroom
}

return cfg
