
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 1 -- sell for 75% of the original price

cfg.garage_types = {


  ["Fisher's Boat"] = {
    _config = {vtype="boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },
  
  ["High End"]  = {  -- 150k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["F620"] = {"Mercades GTS",100000, ""},
    ["elegy"] = {"Classic Nissan Skyline GTR",100000, ""},
    ["banshee"] = {"Ferrari F430",130000, ""},
    ["comet2"] = {"Porsche GT4",140000, ""},
    ["cheetah"] = {"Lexus LFA",145000, ""},
    ["bullet"] = {"Ford GT",150000, ""},
    ["carbonizzare "] = {"Lamborghini Huracan",175000, ""},
  	["adder"] = {"Bugatti Chiron",200000, ""}
  },

  ["Mid Range"] = { -- 75k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["Baller"] = {"Range Rover Sport",35000, ""},
    ["Bison"] = {"Ford F150",42000, ""},
    ["Baller2"] = {"Range Rover Vogue",50000, ""},
    ["Dukes"] = {"Dodge Charger R/T",50000, ""},
    ["Buffalo"] = {"Ford Mustang GT",55000, ""},
    ["Dubsta"] = {"Mercades G65",55000, ""},
    ["Cavalade"] = {"Cadillac Escalade",60000, ""}
  },

  ["Exotic Cars"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
    ["F620"] = {"Mercades GTS",100000, ""},
    ["elegy"] = {"Classic Nissan Skyline GTR",100000, ""},
    ["banshee"] = {"Ferrari F430",130000, ""},
    ["comet2"] = {"Porsche GT4",140000, ""},
    ["cheetah"] = {"Lexus LFA",145000, ""},
    ["bullet"] = {"Ford GT",150000, ""},
    ["carbonizzare "] = {"Lamborghini Huracan",175000, ""},
	["adder"] = {"Bugatti Chiron",200000, ""}
  },

  ["sportsclassics"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
  	["Blista2"] = {"Honda Civic Type R",15000,""},
  	["Feltzer"] = {"Toyota Supra",20000,""},
  	["Coquette3 "] = {"Classic Porsche",45000, ""}
  },

  ["Starter Vehicles"] = {  -- 15k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["Caddy"] = {"Tuk Tuk",3500, ""},
    ["Dune2"] = {"3 Wheeler",4000, ""},
    ["Blista"] = {"Daewoo Matiz",10000, ""},
    ["asea2"] = {"SEAT Leon",13000, ""},
    ["Emperor2"] = {"Oldsmobile",15000, ""}
  },

  ["Off Road"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["Bobcatxl"] = {"Chevrolet K1500",8000, ""},
    ["Bison3"] = {"Toyota Hilux",10000, ""}
  },

  ["Low End"]  = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["Caddy"] = {"Tuk Tuk",3500, ""},
    ["Dune2"] = {"3 Wheeler",4000, ""},
    ["Blista"] = {"Daewoo Matiz",10000, ""},
    ["asea2"] = {"SEAT Leon",13000, ""},
    ["Emperor2"] = {"Oldsmobile",15000, ""}
  },

  ["vans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["Caddy"] = {"Tuk Tuk",3500, ""}
  },

  ["sedans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
  },

  ["Motorcycles"] = {
    _config = {vtype="bike",blipid=226,blipcolor=4},
	["f4rr"] = {"Agusta F4 RR",35000, ""},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",7000, ""},
    ["bati"] = {"Bati 801",10000, ""},
    ["bati2"] = {"Bati 801RR",10000, ""},
    ["bf400"] = {"BF400",6000, ""},
    ["carbonrs"] = {"Carbon RS",11000, ""},
    ["cliffhanger"] = {"Cliffhanger",13000, ""},
	["f131"] = {"Confederate F131 Hellcat",45000, ""},
    ["double"] = {"Double T",9000, ""},
    ["enduro"] = {"Enduro",6000, ""},
    ["faggio2"] = {"Faggio",1000, ""},
    ["gargoyle"] = {"Gargoyle",10000, ""},
    ["hakuchou"] = {"Hakuchou",20000, ""},
	["daemon"] = {"Daemon Classic",20000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",20000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",7000, ""},
    ["ruffian"] = {"Ruffian",7000, ""},
    ["sanchez"] = {"Sanchez",3000, ""},
    ["sovereign"] = {"Sovereign",1000, ""},
    ["thrust"] = {"Thrust",12000, ""},
    ["vader"] = {"Vader",7000, ""}
  }, 

  ["House Garage"] = {
    _config = {vtype="car",blipid=357,blipcolor=69},
	["f4rr"] = {"Agusta F4 RR",35000, ""},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",7000, ""},
    ["bati"] = {"Bati 801",10000, ""},
    ["bati2"] = {"Bati 801RR",10000, ""},
    ["bf400"] = {"BF400",6000, ""},
    ["carbonrs"] = {"Carbon RS",11000, ""},
    ["cliffhanger"] = {"Cliffhanger",13000, ""},
	["f131"] = {"Confederate F131 Hellcat",45000, ""},
    ["double"] = {"Double T",9000, ""},
    ["enduro"] = {"Enduro",6000, ""},
    ["faggio2"] = {"Faggio",1000, ""},
    ["gargoyle"] = {"Gargoyle",10000, ""},
    ["hakuchou"] = {"Hakuchou",20000, ""},
	["daemon"] = {"Daemon Classic",20000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",20000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",7000, ""},
    ["ruffian"] = {"Ruffian",7000, ""},
    ["sanchez"] = {"Sanchez",3000, ""},
    ["sovereign"] = {"Sovereign",1000, ""},
    ["thrust"] = {"Thrust",12000, ""},
    ["vader"] = {"Vader",7000, ""},
    ["Caddy"] = {"Tuk Tuk",3500, ""},
    ["Dune2"] = {"3 Wheeler",4000, ""},
    ["Blista"] = {"Daewoo Matiz",10000, ""},
    ["asea2"] = {"SEAT Leon",13000, ""},
    ["Emperor2"] = {"Oldsmobile",15000, ""},
    ["Caddy"] = {"Tuk Tuk",3500, ""},
    ["Dune2"] = {"3 Wheeler",4000, ""},
    ["Blista"] = {"Daewoo Matiz",10000, ""},
    ["asea2"] = {"SEAT Leon",13000, ""},
    ["Emperor2"] = {"Oldsmobile",15000, ""},
  	["Blista2"] = {"Honda Civic Type R",15000,""},
  	["Feltzer"] = {"Toyota Supra",20000,""},
  	["Coquette3 "] = {"Classic Porsche",45000, ""},
    ["F620"] = {"Mercades GTS",100000, ""},
    ["elegy"] = {"Classic Nissan Skyline GTR",100000, ""},
    ["banshee"] = {"Ferrari F430",130000, ""},
    ["comet2"] = {"Porsche GT4",140000, ""},
    ["cheetah"] = {"Lexus LFA",145000, ""},
    ["bullet"] = {"Ford GT",150000, ""},
    ["carbonizzare "] = {"Lamborghini Huracan",175000, ""},
	["adder"] = {"Bugatti Chiron",200000, ""},
    ["Baller"] = {"Range Rover Sport",35000, ""},
    ["Bison"] = {"Ford F150",42000, ""},
    ["Baller2"] = {"Range Rover Vogue",50000, ""},
    ["Dukes"] = {"Dodge Charger R/T",50000, ""},
    ["Buffalo"] = {"Ford Mustang GT",55000, ""},
    ["Dubsta"] = {"Mercades G65",55000, ""},
    ["Cavalade"] = {"Cadillac Escalade",60000, ""}
  },
  
  ["police"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"police.vehicle"}},
    ["police"] = {"Ford Explorer (Lightbar)",0, "police"},
    ["police2"] = {"Dodge Charger (Lightbar)",0, "police"},
    ["police3"] = {"Ford Taurus (Light bar)",0, "police"},
    ["police4"] = {"Tahoe (Light Bar)",0, "police"},
    ["police5"] = {"Ford Explorer (White) (Lightbar)",0, "police"},
    ["police6"] = {"Dodge Charger (White) (Lightbar)",0, "police"},
    ["police7"] = {"Chevrolet Tahoe (White) (Lightbar)",0, "police"},  
    ["police8"] = {"Ford CVPI (White) (Lightbar)",0, "police"},   

    ["policet"] = {"Police Transport Van",0, "police"},    
    ["policeb"] = {"State Police BMW 1200RT",0, "police"},
     
    ["sheriff2"] = {"Sheriff Dodge Charger",0, "police"},
    ["sheriff"] = {"Sheriff Ford Expedition",0, "police"},
  
    ["fbi"] = {"Dodge Challenger Hellcat (Undercover)",0, "police"},
    ["fbi2"] = {"FPIU (Undercover)",0, "police"},   
    ["fbi3"] = {"Ford CVPI (Undercover)",0, "police"},
    ["fbi4"] = {"Chevrolet Tahoe (Undercover)",0, "police"},  

    ["riot"] = {"Lenco Bearcat",0, "police"}
  },
  ["Cadet"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"police.vehicle"}},
    ["police"] = {"Ford Explorer (Lightbar)",0, "police"},
    ["police2"] = {"Dodge Charger (Lightbar)",0, "police"},
    ["police3"] = {"Ford Taurus (Light bar)",0, "police"},
    ["police4"] = {"Tahoe (Light Bar)",0, "police"},
    ["police5"] = {"Ford Explorer (White) (Lightbar)",0, "police"},
    ["police6"] = {"Dodge Charger (White) (Lightbar)",0, "police"},
    ["police7"] = {"Chevrolet Tahoe (White) (Lightbar)",0, "police"},  
    ["police8"] = {"Ford CVPI (White) (Lightbar)",0, "police"},   

    ["policet"] = {"Police Transport Van",0, "police"},    
    ["policeb"] = {"State Police BMW 1200RT",0, "police"},
     
    ["sheriff2"] = {"Sheriff Dodge Charger",0, "police"},
    ["sheriff"] = {"Sheriff Ford Expedition",0, "police"},
  
    ["fbi"] = {"Dodge Challenger Hellcat (Undercover)",0, "police"},
    ["fbi2"] = {"FPIU (Undercover)",0, "police"},   
    ["fbi3"] = {"Ford CVPI (Undercover)",0, "police"},
    ["fbi4"] = {"Chevrolet Tahoe (Undercover)",0, "police"},  

    ["riot"] = {"Lenco Bearcat",0, "police"}
  },
  ["Bounty"] = {
    _config = {vtype="car",blipid=56,blipcolor=38},
    ["fbi"] = {"Dodge Challenger Hellcat (Undercover)",0, "police"},
    ["fbi2"] = {"FPIU (Undercover)",0, "police"},   
    ["fbi3"] = {"Ford CVPI (Undercover)",0, "police"},
    ["fbi4"] = {"Chevrolet Tahoe (Undercover)",0, "police"}
  },
  ["emergency"] = {
    _config = {vtype="car",blipid=50,blipcolor=3},
    ["Ambulance"] = {"Ambulance",0, "emergency"},
  	["firetruk"] = {"Fire Engine",0, "emergency"}
  },
  ["Police Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=38,radius=5.1,permissions={"police.vehicle"}},
    ["polmav"] = {"Police Maverick",0, "emergency"}
  },
   ["EMS Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=1,radius=5.1,permissions={"emergency.vehicle"}},
    ["supervolito2"] = {"EMS Maverick",0, "emergency"}
  },
  ["Pilotla"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
    ["jet"] = {"Boeing 747",0, "jet"}
  },
  ["Pilotsa"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
    ["mammatus"] = {"Small Cargo",0, "mammatus"}
  },
  ["airP"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"air.vehicle"}},
    ["vestra"] = {"Plane",0, "vestra"}
  },
  ["airH"] = {
    _config = {vtype="plane",blipid=43,blipcolor=30,permissions={"air.vehicle"}},
    ["volatus"] = {"Helicopter",0, "volatus"}
  }, 
  ["uber"] = {
    _config = {vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
    ["surge"] = {"Surge",0, "surge"}
  },
  ["Lawyer"] = {
    _config = {vtype="car",blipid=50,blipcolor=7,permissions={"Lawyer.vehicle"}},
    ["panto"] = {"Panto", 0, "panto"}
  },
  ["delivery"] = {
    _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"delivery.vehicle"}},
    ["faggio3"] = {"faggio3",0, "faggio3"}
  },
  ["santa"] = {
    _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"santa.vehicle"}},
    ["hydra"] = {"Santa's Sleigh",0, "hydra"}
  },  
  ["repair"] = {
    _config = {vtype="car",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",0, "towtruck2"},
	["utillitruck3"] = {"Utility Truck",0, "utillitruck3"}
  },
  ["bankdriver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"stockade",0, "stockade"}
  },
  ["Medical Driver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
    ["pony2"] = {"Medical Weed Van",0, "pony2"}
  }
  
  
}

-- {garage_type,x,y,z}
cfg.garages = {
  {"Starter Vehicles",141.66270446777,-1081.8083496094,29.192489624023},
  {"new additions",853.93768310547,-2093.705078125,30.243104934692},
  {"Low End",1208.6527099609,-1262.5780029297,35.226768493652},
  {"Off Road",1777.6678466797,3335.7856445313,41.171855926514},
  {"High End",-361.62393188477,-132.71321105957,38.680068969727},
  {"Mid Range",717.70239257813,-1088.8958740234,22.360628128052},
  {"Exotic Cars",-42.400775909424,-1098.3619384766,26.422369003296},
  {"Mid Range",1181.6231689453,2650.830078125,37.821151733398},
  {"sportsclassics",112.275, 6619.83, 31.8154},
  {"Motorcycles",-205.789, -1308.02, 31.2916},
  {"police",451.2121887207,-1018.2822875977,28.495378494263},	-- jobs garage
  {"Cadet",451.2121887207,-1018.2822875977,28.495378494263}, --- cadet garage
  {"police",477.99038696289,-1020.9154663086,28.011201858521},
  {"Bounty",512.07818603516,-3052.1579589844,6.0687308311462},  
  {"police",1868.5435791016,3696.0295410156,33.5693359375},  -- sandy shores
  {"police",-476.92425537109,6026.9951171875,31.340547561646},  -- paleto
  {"emergency",358.91650390625, -607.78515625, 28.6820983886719}, -- main
  {"emergency",1833.3223876953,3661.3088378906,33.875843048096}, -- sandy shores
  {"emergency",-255.98040771484,6346.1127929688,32.426189422607}, -- paleto
  {"uber",907.38049316406,-175.86546325684,74.130157470703}, -- jobs garage
  {"Lawyer",-1900.7344970703,-560.89245605469,11.802397727966},-- jobs garage
  {"delivery",964.514770507813,-1020.13879394531,40.8475074768066},   -- jobs garage
  {"repair",401.42602539063,-1631.7053222656,29.291942596436},   -- jobs garage
  {"bankdriver",222.68756103516,222.95631408691,105.41331481934},   -- jobs garage
  {"House Garage",-638.08142089844,56.500617980957,43.794803619385},  -- house garage
  {"House Garage",-1457.4909667969,-500.61614990234,32.202766418457},
  {"House Garage",-25.273494720459,-1434.4365234375,30.653142929077},
  {"House Garage",-1155.2669677734,-1520.244140625,4.3475861549377},
  {"House Garage",-819.40551757813,183.72904968262,72.136161804199},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"House Garage",1977.1169433594,3827.2368164063,32.373237609863},
  {"House Garage",2480.5893554688,4953.958984375,45.026481628418},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"House Garage",-1415.1351318359,-956.41815185547,7.2369647026062},
  {"House Garage",497.44073486328,-1702.4410400391,29.400140762329},
  {"House Garage",684.44097900391,-719.58734130859,25.884830474854},
  {"House Garage",1230.9146728516,-2678.0639648438,2.7148849964142},
  {"House Garage",-796.00256347656,304.55578613281,85.700416564941},
  {"House Garage",-259.08013916016,-680.39465332031,32.830478668213},
  {"House Garage",-72.769035339355,495.79925537109,144.10296630859},
  {"House Garage",-121.71002960205,509.85540771484,142.5652923584},
  {"House Garage",-188.32077026367,502.87573242188,134.23774719238},
  {"House Garage",1366.5837402344,1147.4722900391,113.41327667236},
  {"Police Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"Police Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Police Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay
  {"EMS Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"EMS Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"EMS Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay  
  {"Fisher's Boat",1508.8854980469,3908.5732421875,30.031631469727},
  {"Medical Driver",-319.82263183594,-942.8408203125,31.080617904663},
  {"Pilotsa",-901.70129394531,-3293.984375,13.944430351257},
  {"Pilotsa",2128.9069824219,4806.134765625,41.168750762939},
  {"Pilotsa",1734.9053955078,3297.9689941406,41.223503112793},
  {"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airH",-745.14343261719,-1468.5361328125,5.0005240440369},
  {"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airP",1734.9053955078,3297.9689941406,41.223503112793},
  {"Santa",-1345.333984375,-2692.7885742188,13.944937705994},  
  {"planes",1640, 3236, 40.4},
  {"planes",2123, 4805, 41.19},
  {"planes",-1348, -2230, 13.9},
  {"helicopters",-1233, -2269, 13.9},
  {"helicopters",-745, -1468, 5},
  {"boats",-849.5, -1368.64, 1.6},
  {"boats",1538, 3902, 30.35}
}

return cfg
