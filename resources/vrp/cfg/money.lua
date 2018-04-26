
local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 0
cfg.open_bank = 25000

cfg.display_css = [[
.div_money{
  padding-top: 5px;
  position: absolute;
  top: 35px;
  right: 10px;
  font-size: 30px;
  font-family: Pricedown;
  color: #FFFFFF;
  text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
}
.div_bmoney{
  padding-top: 5px;
  position: absolute;
  top: 63px;
  right: 10px;
  font-size: 30px;
  font-family: Pricedown;
  color: #FFFFFF;
  text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
}
  .div_money .symbol{
  padding-top: 5px;
  content: url('https://i.imgur.com/JUz1njC.png'); 
 
}

.div_bmoney .symbol{
  padding-top: 5px;
  content: url('https://i.imgur.com/ZP4cv71.png');
  
}
]]

return cfg
