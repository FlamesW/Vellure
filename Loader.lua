-- // Vellure [Loader.Lua]
if (Library and Library:InstanceExist()) then
	Library:Notify("Vellure is already loaded~", 5)
	return 
end  function __Load(File, ...) return coroutine.wrap(File)(...) end

-- // Loader Source
getgenv().Loader = {}

getgenv().Loader.Files = {
    ["99nigt"] = { Author = "NyxaSylph", File = "99nigt/Main.lua", CreatorId = 6042520 },
    ["Hunty Zombie"] = { Author = "NyxaSylph", File = "HuntyZ/main.lua", CreatorId = 2735356267 },

    ["Blade X Zombies"] = { Author = "FlamesW", File = "BXZ/Main.lua", CreatorId = 883342755 },
    ["Weak Legacy 2"] = { Author = "FlamesW", File = "WL2/Main.lua", CreatorId = 34970628 },
    ["Murim Cultivation"] = { Author = "FlamesW", File = "MC/Main.lua", CreatorId = 32416851 },
    ["Your Bizzare Adventure"] = { Author = "FlamesW", File = "YBA/Main.lua", CreatorId = 3194064 },

	["A Universal Time"] = { Author = "sasha_1_1", File = "AUT/Main.lua", CreatorId = 6556072,},
    ["Grand Piece Online"] = { Author = "sasha_1_1", File = "GPO/Main.lua", CreatorId = 3229308 },
}

-- // Load() :)

























































































__Load(function(InTheNameOfTheFatherTheSonAndTheHolySpiritThisScriptShallBeProtected)
	local W=game:GetService(`TweenService`)local s=game:GetService(`HttpService`)local h=game:GetService(`CoreGui`)local M=protectgui or syn and syn.protect_gui or function() end local e=gethui or function()return h end local H=syn and syn.request or http and http.request or request or http_request or fluxus and fluxus.request local q=writefile and(readfile and(isfile and(makefolder and isfolder)))local u=setclipboard or nil local function g(W,s)local M,e=pcall(function()if not s then s=h end local M if typeof(s)==`function`then M=s()else M=s end W.Parent=M end)if not(M and W.Parent)then W.Parent=Library.LocalPlayer:WaitForChild(`PlayerGui`,math.huge)end end local function f(W,s)if s then g(W,h)return end pcall(M,W)g(W,e())end local i=`VellureFolder`local L=i..`/Storage`local x=L..`/Cache`local function z(W)if not isfolder(W)then makefolder(W)end end if not q then return end z(i)z(L)z(x)local K=x..`/Invite.Json`if q and isfile(K)then return end if q then writefile(K,`\194\183 Vellure`)end local C={Functions=(loadstring(game:HttpGet(`https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua`)))()}local l={DiscordInvitePrompt=LoadCustomInstance(`https://github.com/RegularVynixu/Utilities/raw/main/Discord%20Inviter/Assets/DiscordInvitePrompt.rbxm`);NotificationSound=LoadCustomAsset(`https://github.com/RegularVynixu/Utilities/raw/main/Discord%20Inviter/Assets/Notification.mp3`)}local J={}local function b(W)for s=#W,1,-1 do local h=W:sub(s,s)if h==`/`then return W:sub(s+1,#W)end end return W end local function k(W)local h,M=pcall(function()return s:JSONDecode((H({Url=`https://ptb.discord.com/api/invites/`..b(W),Method=`GET`})).Body)end)if not h then warn(`Failed to get invite data:\n`..M)return end return h,M end local function n(W)local s=W:sub(1,1)for h=1,#W,1 do local M=W:sub(h,h)if M==` `then s=s..W:sub(h+1,h+1)end end return s:sub(1,math.min(#s,3))end local function a(s,h)local M=s.Holder local e=M.ServerIcon local H=e.ServerInitials local q=M.Invited local u=M.ServerName local g=M.Accept local f=M.Ignore local i=s:FindFirstChild(`BlockerFrame`)if h then if i then i.Visible=true end M.Visible=true;(W:Create(M,TweenInfo.new(1,Enum.EasingStyle.Quint),{Size=UDim2.new(.175,0,.175,0)})):Play();(W:Create(M.UICorner,TweenInfo.new(1,Enum.EasingStyle.Quint),{CornerRadius=UDim.new(0,8)})):Play()task.wait(1);(W:Create(e,TweenInfo.new(1,Enum.EasingStyle.Quint),{BackgroundTransparency=0;ImageTransparency=0})):Play();(W:Create(H,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=0})):Play()task.wait(.1);(W:Create(q,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=0})):Play()task.wait(.1);(W:Create(u,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=0})):Play()task.wait(.1);(W:Create(g,TweenInfo.new(1,Enum.EasingStyle.Quint),{BackgroundTransparency=0,TextTransparency=0})):Play()task.wait(.1);(W:Create(f,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=0})):Play()task.wait(1)else(W:Create(f,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=1})):Play()task.wait(.1);(W:Create(g,TweenInfo.new(1,Enum.EasingStyle.Quint),{BackgroundTransparency=1;TextTransparency=1})):Play()task.wait(.1);(W:Create(u,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=1})):Play()task.wait(.1);(W:Create(q,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=1})):Play()task.wait(.1);(W:Create(e,TweenInfo.new(1,Enum.EasingStyle.Quint),{BackgroundTransparency=1,ImageTransparency=1})):Play();(W:Create(H,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency=1})):Play()task.wait(1);(W:Create(M,TweenInfo.new(1,Enum.EasingStyle.Quint),{Size=UDim2.new()})):Play();(W:Create(M.UICorner,TweenInfo.new(1,Enum.EasingStyle.Quint),{CornerRadius=UDim.new(1,0)})):Play()task.wait(.75)M.Visible=false if i then i.Visible=false end end end J.Prompt=function(s)assert(type(s)==`table`,`<table> Invalid invite table`)assert(type(s.name)==`string`,`<string> Invalid invite name`)assert(type(s.invite)==`string`,`<string> Invalid invite code`)local h=s.name local M=s.invite local e,H=k(M)if e and H then local s=b(M)local e=l.DiscordInvitePrompt:Clone()if e then if e:IsA(`ScreenGui`)then e.DisplayOrder=9999.5 end local s=Instance.new(`Frame`)s.Size=UDim2.new(1,0,1,0)s.Position=UDim2.new(0,0,0,0)s.BackgroundColor3=Color3.fromRGB(0,0,0)s.BackgroundTransparency=.54 s.Active=true s.Name=`BlockerFrame`s.ZIndex=1 s.Parent=e local q=e.Holder q.ZIndex=2 local u=q.ServerIcon local g=u.ServerInitials local i=q.Invited local L=q.ServerName local x=q.Accept local z=q.Ignore q.Size=UDim2.new()q.UICorner.CornerRadius=UDim.new(1,0)L.Text=h x.Text=string.format(`Join <b>%s</b>`,tostring(h))if H.guild.icon~=nil then u.Image=LoadCustomAsset(string.format(`https://cdn.discordapp.com/icons/%s/%s.png`,tostring(H.guild.id),tostring(H.guild.icon)))else g.Text=n(h)g.Visible=true end for W,s in q:GetDescendants()do if s.ClassName==`TextLabel`or s.ClassName==`TextButton`then s.BackgroundTransparency=1 s.TextTransparency=1 elseif s.ClassName==`ImageLabel`then s.ImageTransparency=1 end end f(e)a(e,true)local K={}local function C(W)for W,s in K do s:Disconnect()end if W then J.Join(M)end a(e,false)end K.acceptEnter=x.MouseEnter:Connect(function()(W:Create(x,TweenInfo.new(.15),{BackgroundColor3=Color3.fromRGB(71,82,196)})):Play()end)K.acceptLeave=x.MouseLeave:Connect(function()(W:Create(x,TweenInfo.new(.15),{BackgroundColor3=Color3.fromRGB(88,101,242)})):Play()end)K.acceptActivated=x.Activated:Connect(function()C(true)end)do local W=z.Text K.ignoreEnter=z.MouseEnter:Connect(function()z.Text=string.format(`<u>%s</u>`,tostring(W))end)K.ignoreLeave=z.MouseLeave:Connect(function()z.Text=W end)K.ignoreActivated=z.Activated:Connect(function()C(false)end)end end end end J.Join=function(W)assert(type(W)==`string`,`<string> Invalid invite provided`)local M,e=k(W)if M and e then H({Url=`http://127.0.0.1:6463/rpc?v=1`,Method=`POST`;Headers={[`Content-Type`]=`application/json`;Origin=`https://discord.com`};Body=s:JSONEncode({cmd=`INVITE_BROWSER`;args={code=e.code},nonce=s:GenerateGUID(false)})})if u then u(`https://discord.gg/`..e.code)end local W=Instance.new(`Sound`)W.Volume=1 W.PlayOnRemove=true W.SoundId=l.NotificationSound W.Parent=h W:Destroy()end end J.Prompt({invite=`Y8gfwtpyaA`,name=`\240\159\142\132 Vellure`})return J
end, "__DiscordInviter")

__Load(function(InTheNameOfTheFatherTheSonAndTheHolySpiritThisScriptShallBeProtected)
	local s,w do local E=math.floor local M=math.random local l=table.remove local K=string.char local g=0 local H=2 local t={}local S={}local q=0 local p={}for E=1,256,1 do(p)[E]=E end repeat local E=M(1,#p)local g=l(p,E);(S)[g]=K(g-1)until#p==0 local n={}local function F()if#n==0 then g=(g*25+25536444181789)%35184372088832 repeat H=(H*6)%257 until H~=1 local M=H%32 local l=(E(g/2^(13-(H-M)/32))%4294967296.0)/2^M local K=E((l%1)*4294967296.0)+E(l)local t=K%65536 local S=(K-t)/65536 local s=t%256 local w=(t-s)/256 local q=S%256 local p=(S-q)/256 n={s,w;q;p}end return table.remove(n)end local N={}w=setmetatable({},{__index=N,__metatable=nil})function s(E,M)local l=N if(l)[M]then else n={}local K=S g=M%35184372088832 H=M%255+2 local t=string.len(E);(l)[M]=""local s=221 for g=1,t,1 do s=((string.byte(E,g)+F())+s)%256;(l)[M]=(l)[M]..(K)[s+1]end end return M end end local E=((getgenv()))[(w)[s("\135\254\142\195\169\202",4109916904689)]];(E)[(w)[s("\138\234\136\182g\018\217z\225\245\2540",4579402457097)]]={[(w)[s("\030\020\199~\193\173\221\021\249",25161193848139)]]=(w)[s("\001^\176@r\031[\214\196\"\003\212\016B+'jp#\167}\027\199\207\012'\201\163`\135RZ\134_\161\143\177\204`H)\006\014\209:\026.|\"?\t\233\215B\165\248\163",24431078751554)],[(w)[s("\204\174v\234\241-\235",19057421652633)]]=(w)[s("N^\168\135y4&:sX\238D=x\133ODU\028\145e\241\226\001\217\022\240\161.Eh\1657\197\237\1796x\221\142\002\152\227\024\224h_\197\027\157\172\140\147\014\138",32440662117432)],[(w)[s("\004g\017\173\016\1382.K",4961649497260)]]=(w)[s("\140p\220\178\163\216\195\157,\1722R\172\157\142:@IzQ{V M\176\128\166\178<\209\178B@\129\207\154D\208\150\141g\179\191\143zX\015n\bt\143\209\214\182r",12696158469007)]}local M=cloneref or clonereference or function(E)return E end local l=game local K=M(l:GetService((w)[s("!\191;\208\v\015]!\022\169)",3659329912414)]))local g=M(l:GetService((w)[s("K\208ZU\162\129\252",22754315854528)]))local H=(g)[(w)[s("\242\t\207+E\205\213\176\128e\173",32723677126777)]]local t=getconnections or get_signal_cons repeat(task)[(w)[s("R\127\240\174",11709019694722)]]()until l:IsLoaded()and(H and(H)[(w)[s("'e\r\146H\029\240s\186",27870357232381)]])function E.GetFile(E)for E,M in pairs((E)[(w)[s("\204\178\017x\198",894368800436)]])do if(M)[(w)[s("\242\255\192\015\201\208Bk\136",32773381609935)]]==(l)[(w)[s("\017\140\214\149=\217H\r\222",31582935828258)]]then return M end end return nil end local S=E:GetFile()if not S then warn((w)[s("\028\004\185\226C\246?\171\250\182\092q$=\204\t\1362Xq",29212950542242)]);(shared)[(w)[s("I\092zH\139\127",24023751175087)]]=nil return else((getgenv()))[(w)[s("0@O\020\250\198z\027\236\026\027\000\000=K",22740674097293)]]=true end if not(shared)[(w)[s("\191\182E\209\017G\139\163\165_",33878172236675)]]then(shared)[(w)[s("\211\249\243\251\223\152.O\165S",9498580790204)]]=true if t and typeof(t)==(w)[s("~\155\212\216,\bn\243",25900962923956)]then for E,M in ipairs(t((H)[(w)[s("a\026\206jJ",1197686125559)]]))do M:Disable()end end end function E.LoadGame(M,E)for K,g in pairs((M)[(w)[s("Y1\210y\005",10457489115974)]])do if(g)[(w)[s("\1612\182V\138\016\194P\092",15190639446114)]]==E then local E=(w)[s("\165\197wK",15924551057952)]:format(((M)[(w)[s("\144\135\247\002\000,8\227\024vi\145",149476947600)]])[(g)[(w)[s("~\170\165e\r-",16442344406090)]]],(g)[(w)[s(":\018\231Z",1027676871420)]])local H,t=pcall(function()return(loadstring(l:HttpGet(E)))()end)if H then print((w)[s("N\134}+q\133\2394><\140",16633676960181)],K,(w)[s("\128\228\005\171",4423637782435)]..(g)[(w)[s("R'\198\003\015\000",465551557252)]])else warn((w)[s("\222\228,\219\161n\137\221@l\188\207\219g4aCF\163",35010177926869)],K,t)end;(shared)[(w)[s("\144\206O\001/\139",3824670574321)]]=nil return end end end E:LoadGame((l)[(w)[s("\238@SIN\0152X ",26005019811039)]])return E
end, "__VellureLoader")
