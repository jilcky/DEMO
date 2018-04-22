


switch (async_load[?"type"]) {
    case network_type_non_blocking_connect:
       if  async_load[?"succeeded"] = true
	   {
		ConnectServer = true
		AddMassage("接入服务器成功")
	   }
	   else
	   {
		network_destroy( Client)
		AddMassage("接入服务器失败")
	   }
        break;
	case network_type_data:
		var BufferMap = ds_map_create()
		ds_map_read(BufferMap,buffer_read(async_load[?"buffer"],buffer_string))
		
		switch (BufferMap[?"指令"]) {
		    case "登陆":
		        if BufferMap[?"携带信息"] = true
				{
					loginGame = true
					AddMassage("成功")
				}
			else
				{
					AddMassage("失败")
				}
		        break;
			 case "注册":
		        if BufferMap[?"信息"] = true
				{
					//loginGame = true
					AddMassage("成功")
				}
			else
				{
					AddMassage("失败")
				}
		        break;
				case "读取":
				var ReadMap = ds_map_create()
				ds_map_read(ReadMap,BufferMap[?"携带信息"])
				
				var key = ds_map_find_first(ReadMap)
				for (var i = 0; i < ds_map_size(ReadMap); ++i) {
				   AddMassage("获取到信息"+string(key)+":"+string(ReadMap[?key]))
				   key = ds_map_find_next(ReadMap,key)
				}
				break;
				 case "保存":
		        if BufferMap[?"携带信息"] = true
				{
					//loginGame = true
					AddMassage("成功")
				}
			else
				{
					AddMassage("失败")
				}
		        break;
				 case "聊天":
		        if is_string( BufferMap[?"携带信息"])
				{
					AddMassage(BufferMap[?"账号"]+":"+BufferMap[?"携带信息"])
				}
		    default:
		        // code here
		        break;
		}
		
		break;
    default:
        // code here
        break;
}