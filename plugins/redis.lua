--[[ 
     _        BY:@Aaa1R                     
  __| |_ __ __ _  __ _  ___  _ __  
 / _` | '__/ _` |/ _` |/ _ \| '_ \ 
| (_| | | | (_| | (_| | (_) | | | |
 \__,_|_|  \__,_|\__, |\___/|_| |_|
                 |___/             
--]]
do 
function run(msg, matches) 
  if matches[1] == "رست" and is_sudo(msg) then 
    return os.execute("./launch.sh"):read('*all') 
  elseif matches[1] == "حدث" and is_sudo(msg) then 
     return io.popen("git pull"):read('*all') 
  elseif  matches[1] == "ريديس" and is_sudo(msg) then 
    return io.popen("redis-server"):read('*all') 
  end 
end 
return { 
  patterns = { 
    "^(رست)", 
    "^(حدث)", 
    "^(ريديس)" 
  }, 
  run = run 
} 
end 
-- by dev :ali dragon
