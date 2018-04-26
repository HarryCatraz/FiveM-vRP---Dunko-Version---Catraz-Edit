
local cfg = {}

-- mysql credentials
cfg.db = {
  host = "127.0.0.1", -- database ip (default is local)
  database = "vrpfx",   -- name of database
  user = "root",    --  database username
  password = ""   -- password of your database
}

cfg.save_interval = 120 -- seconds
cfg.whitelist = false -- enable/disable whitelist
cfg.ignore_ip_identifier = true -- This will allow multiple same IP connections (for families etc)

-- delay the tunnel at loading (for weak connections)
cfg.load_duration = 5 -- seconds, player duration in loading mode at the first spawn
cfg.load_delay = 1 -- milliseconds, delay the tunnel communication when in loading mode
cfg.global_delay = 1 -- milliseconds, delay the tunnel communication when not in loading mode

cfg.ping_timeout = 2 -- number of minutes after a client should be kicked if not sending pings

cfg.lang = "en" -- en / fr / it / ger / pt / ru / lith / dan / ar / pl / es / swe / fin (English/Français/Italiano/Deutsche/Português/Pусский/Lietuvių/Dansk/العربية/Polskie/Español/Svenska/Suomalainen)
cfg.debug = true


return cfg
