/// @description Insert description here
// You can write your code in this editor


switch (async_load[?"id"]) {
    case AsyncSign://注册
var u = ds_map_find_value(async_load, "username");
var p = ds_map_find_value(async_load, "password");
if u!="" or p!=""{// exit
var SeedMap = ds_map_create()
ds_map_add(SeedMap,"账号",u)
ds_map_add(SeedMap,"指令","注册")
ds_map_add(SeedMap,"携带信息",p)
NetSeedStr(ds_map_write(SeedMap),Client)
ds_map_destroy(SeedMap)
}
        break;
  case AsyncLogin://登陆
       var u = ds_map_find_value(async_load, "username");
   var p = ds_map_find_value(async_load, "password");
   if u!="" or p!="" {
  var SeedMap = ds_map_create()
ds_map_add(SeedMap,"账号",u)
ds_map_add(SeedMap,"指令","登陆")
ds_map_add(SeedMap,"携带信息",p)
NetSeedStr(ds_map_write(SeedMap),Client)
ds_map_destroy(SeedMap)
Username = u
Password = p

   }
        break;
  case AsyncSave://保存
 if ds_map_find_value(async_load, "status")
      {
var u = ds_map_find_value(async_load, "username");
var p = ds_map_find_value(async_load, "password");
if u!="" or p!="" {//exit
var SeedMap = ds_map_create()
ds_map_add(SeedMap,"账号",Username)
ds_map_add(SeedMap,"指令","保存")
var Smap = ds_map_create()
ds_map_add(Smap,u,p)

ds_map_add(SeedMap,"携带信息",ds_map_write(Smap))
NetSeedStr(ds_map_write(SeedMap),Client)
ds_map_destroy(SeedMap)
}
}
        break;
  case AsyncLoad://读取
   if ds_map_find_value(async_load, "status")
      {
      if ds_map_find_value(async_load, "result") != ""
         {
var SeedMap = ds_map_create()
ds_map_add(SeedMap,"账号",Username)
ds_map_add(SeedMap,"指令","读取")


var GetList = ds_list_create()
show_debug_message("保存neritic"+string(ds_map_find_value(async_load, "result")))
ds_list_add(GetList,ds_map_find_value(async_load, "result"))

ds_map_add(SeedMap,"携带信息",ds_list_write(GetList))
NetSeedStr(ds_map_write(SeedMap),Client)
ds_map_destroy(SeedMap)
         }
      }
   
        break;
  case AsyncSeedMassage: //聊天
         if ds_map_find_value(async_load, "status")
      {
      if ds_map_find_value(async_load, "result") != ""
         {
var SeedMap = ds_map_create()
ds_map_add(SeedMap,"账号",Username)
ds_map_add(SeedMap,"指令","聊天")

ds_map_add(SeedMap,"携带信息",ds_map_find_value(async_load, "result"))
NetSeedStr(ds_map_write(SeedMap),Client)
ds_map_destroy(SeedMap)
         }
      }
        break;
    default:
        // code here
        break;
}

ShowAsyncDialog = false
