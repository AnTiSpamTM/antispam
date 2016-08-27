local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['antifosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['antifosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
        send_large_msg(chat, ('🚨کاربر گرامی فحاشی درگروه ممنوع است🚨')
        chat_del_user(chat, user, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کص(.*)",
    "خفه(.*)",
    "کون(.*)",
    "کير(.*)",
    "ممه(.*)",
    "سکس(.*)",
    "سيکتير(.*)",
    "قهبه(.*)",
    "بسيک(.*)",
    "بيناموس(.*)",
    "اوبي(.*)",
    "کوني(.*)",
    "بيشرف(.*)",
    "کس ننه(.*)",
    "ساک(.*)",
    "کيري(.*)",
    "خار کوسه(.*)",
    "ننه(.*)",
    "خواهرتو(.*)",
    "سکسي(.*)",
    "کسکش(.*)",
    "سيک تير(.*)",
    "گاييدم(.*)",
    "ميگام(.*)",
    "ميگامت(.*)",
    "بسيک(.*)",
    "خواهرت(.*)",
    "خارتو(.*)",
    "کونت(.*)",
    "کوست(.*)",
    "شورت(.*)",
    "سگ(.*)",
    "کيري(.*)",
    "دزد(.*)",
    "ننت(.*)",
    "ابمو(.*)",
    "جق(.*)"
  },
  run = run
}
