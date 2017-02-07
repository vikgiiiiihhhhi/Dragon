local function pre_process(msg) 
 local aldon = msg['id'] 
    local user = msg.from.id 
    local hash = 'mate:'..msg.from.id 
    if msg.text == 'دراغون' then 
      if redis:get(hash) then 
        send_large_msg(get_receiver(msg)) 
local jalal = "😻🙊❤️عيونة وقلبه وروحه 🔥الدراغون🔥 محح من لفض اسمي❤️🙈😻"
reply_msg(aldon,jalal,ok_cb,true) 

        redis:del(hash) 
      else 
        redis:set(hash, true) 
        send_large_msg(get_receiver(msg)) 
local don = "😭 ها شبيكم كل شويه😢 صاحين صخومي دراغون😭"
reply_msg(aldon,don,ok_cb,true) 
      end 
    end 
    return msg 
end 
return { 
    patterns = {}, 

    pre_process = pre_process 
}