local a=1;local b=true;local c=false;local d=[==[]==]local e=""local f=800000;local g=0;local h=true;local i=false;local j=false;local k=false;local l=true;local m=true;if game.CoreGui:FindFirstChild("NFLib")then game.CoreGui:FindFirstChild("NFLib"):Destroy()end;local n={}local o=Instance.new("ScreenGui")o.Name="NFLib"o.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;o.Parent=game.CoreGui;local p=Instance.new("ScrollingFrame")p.Name="Container"p.Parent=o;p.Active=false;p.BackgroundColor3=Color3.fromRGB(255,255,255)p.BackgroundTransparency=1.000;p.BorderSizePixel=0;p.Position=UDim2.new(0.864545425,0,0.67027743,0)p.Size=UDim2.new(0,209,0,259)p.BottomImage=""p.CanvasSize=UDim2.new(0,0,0,0)p.MidImage=""p.ScrollingEnabled=false;p.TopImage=""local q=Instance.new("UIListLayout")q.Parent=p;q.HorizontalAlignment=Enum.HorizontalAlignment.Center;q.SortOrder=Enum.SortOrder.LayoutOrder;q.VerticalAlignment=Enum.VerticalAlignment.Bottom;q.Padding=UDim.new(0,5)function tick(r,s)if r.Parent then r:FindFirstChild("Line"):TweenSize(UDim2.new(0,197,0,1),"Out","Linear",s)end;wait(s)if r.Parent then r.Parent:TweenSize(UDim2.new(0,197,0,0),"Out","Quint",1.5)wait(1)r.Parent:Destroy()end end;function n:Notification(t,u,v,w)if t==nil then t="Preview"end;if u==nil then u="This is an example of a notification using NFLib"end;if v==nil then v=5 end;if w==nil then w=Color3.fromRGB(20,169,255)end;local x=Instance.new("Frame")x.Name="WindowHolder"x.Parent=p;x.BackgroundColor3=Color3.fromRGB(33,33,33)x.BackgroundTransparency=1.000;x.ClipsDescendants=true;x.Position=UDim2.new(0.839661181,0,0.796762526,0)x.Size=UDim2.new(0,197,0,74)local y=Instance.new("Frame")y.Name="Window"y.Parent=x;y.BackgroundColor3=Color3.fromRGB(33,33,33)y.ClipsDescendants=true;y.Size=UDim2.new(0,197,0,74)local z=Instance.new("Frame")z.Name="Main"z.Parent=y;z.BackgroundColor3=Color3.fromRGB(255,255,255)z.BackgroundTransparency=1.000;z.Size=UDim2.new(0,197,0,57)local A=Instance.new("UICorner")A.CornerRadius=UDim.new(0,3)A.Parent=y;local B=Instance.new("Frame")B.Name="Line"B.Parent=y;B.BackgroundColor3=w;B.BorderSizePixel=0;B.ClipsDescendants=true;B.Position=UDim2.new(0,0,0.987179399,0)B.Size=UDim2.new(0,0,0,1)local C=Instance.new("TextLabel")C.Name="Title"C.Parent=z;C.BackgroundColor3=Color3.fromRGB(255,255,255)C.BackgroundTransparency=1.000;C.ClipsDescendants=true;C.Size=UDim2.new(0,197,0,27)C.Font=Enum.Font.GothamBold;C.Text=t;C.TextColor3=Color3.fromRGB(231,231,231)C.TextSize=14.000;local D=Instance.new("TextLabel")D.Name="Text"D.Parent=z;D.BackgroundColor3=Color3.fromRGB(255,255,255)D.BackgroundTransparency=1.000;D.ClipsDescendants=true;D.Position=UDim2.new(0,0,0,26)D.Font=Enum.Font.GothamSemibold;D.Text=u;D.TextColor3=Color3.fromRGB(231,231,231)D.TextSize=13.000;D.TextWrapped=true;D.TextYAlignment=Enum.TextYAlignment.Top;if string.len(u)<17 then D.Size=UDim2.new(0,196,0,15)else D.Size=UDim2.new(0,196,0,math.floor(string.len(u)/16*15)+0.5)end;local E=0;for F,G in pairs(z:GetChildren())do E=E+G.Size.Y.Offset end;z.Size=UDim2.new(0,197,0,E)y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+5)coroutine.wrap(tick)(y,v)local H={}function H:Button(I)local J=Instance.new("TextButton")J.Parent=y;J.BackgroundColor3=Color3.fromRGB(45,46,46)J.Size=UDim2.new(0,156,0,28)J.Font=Enum.Font.GothamSemibold;J.TextColor3=Color3.fromRGB(255,255,255)J.Text=I;J.TextSize=14.000;local K=Instance.new("UICorner")K.CornerRadius=UDim.new(0,4)K.Parent=J;if string.len(u)<17 then y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+40)J.Position=UDim2.new(0,20,0,45)else y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+20)J.Position=UDim2.new(0,20,0,y.Size.Y.Offset-((y.Size.Y.Offset-z.Size.Y.Offset)*2-3))end;x.Size=y.Size;J.MouseButton1Click:Connect(function()x:TweenSize(UDim2.new(0,197,0,0),"Out","Quint",1.5)wait(1)x:Destroy()end)end;return H end;local function L(M)n:Notification(identifyexecutor(),M,3,Color3.fromRGB(255,255,255))end;if a==1 and not writefile then L("no writefile, switching to method 3")a=3 end;if m and not writefile then L("no writefile for place save, turning off")m=false end;local N=game:GetService("HttpService")local O={}local P;local Q=game:GetService("Players").LocalPlayer;local R=false;local S={}local T={}local U={}local V={}local W=false;local X=0;local Y=""local Z=1;local _={}local a0={}local a1={}local a2=0;local a3=""local a4=Instance.new("Folder")a4.Name="_IMPORTANT_AND_EXTRA_INSTANCES_"local a5=Instance.new("Script",a4)a5.Name="LoadTerrain"local a6=Instance.new("ModuleScript",a5)a6.Name="Data"local a7={["Instance"]={["Archivable"]=true,["DataCost"]=true,["ClassName"]=true,["RobloxLocked"]=true,["Parent"]=true},["Workspace"]={["DistributedGameTime"]=true},["BasePart"]={["Position"]=true,["Rotation"]=true}}local a8={["Sound"]={["MaxDistance"]="xmlRead_MaxDistance_3"}}local a9,aa=ypcall(function()if d and d~=""then P=d else P=game:HttpGetAsync("http://anaminus.github.io/rbx/json/api/latest.json")end end)if aa then if script:FindFirstChild("API")then P=require(script.API)end end;P=N:JSONDecode(P)for ab,G in pairs(P)do if G.type=="Class"then O[G.Name]=G;O[G.Name].Properties={}elseif G.type=="Property"then local ac=false;for ad,ae in pairs(G.tags)do if ae=="deprecated"or ae=="hidden"or ae=="readonly"then ac=true end end;if a7[G.Class]and a7[G.Class][G.Name]then ac=true end;if a8[G.Class]and a8[G.Class][G.Name]then G.AltName=a8[G.Class][G.Name]end;if not ac then table.insert(O[G.Class].Properties,G)end end end;local function af(ag)if _[ag.ClassName]then return _[ag.ClassName]end;local ah={}local ai=ag.ClassName;while ai do for ab,G in pairs(O[ai].Properties)do table.insert(ah,G)end;ai=O[ai].Superclass end;table.sort(ah,function(aj,ak)return(aj.AltName or aj.Name)<(ak.AltName or ak.Name)end)_[ag.ClassName]=ah;return ah end;local function al()game:HttpPostAsync(e,table.concat(a1))a2=a2+1;L("SaveAmounts: "..tostring(a2).." Progress = "..tostring(X/Z*100).."%")end;local function am()game:HttpPostAsync(e,N:JSONEncode({Option="Submit",Name=a3}))end;local function an()game:HttpPostAsync(e,N:JSONEncode({Option="Clear"}))end;local function ao(ag)local ap=a0[ag]if ap then return tostring(ap)end;a0[ag]=X;return tostring(X)end;local function aq(ag)if ag==nil then return"null"end;local ap=a0[ag]if ap then return"RBX"..tostring(ap)end;X=X+1;a0[ag]=X;return"RBX"..tostring(X)end;local function ar(as)if#as==0 then return""end;local at=as:sub(1,1)local au=string.byte(at)if au>=32 and au<=126 then return at..ar(as:sub(2))elseif au==9 or au==10 then return at..ar(as:sub(2))else return ar(as:sub(2))end end;function CreateInstance(av,aw)local ax=Instance.new(av)for ab,G in pairs(aw)do ax[ab]=G end;return ax end;local function ay()local az=CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.10980392992496,0.16470588743687,0.22352942824364),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0.5,0),Rotation=0,Selectable=false,Size=UDim2.new(0,150,0,150),SizeConstraint=0,Visible=false,ZIndex=1,Name="Main"})local aA=CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Terrain Chunk Selection",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent=az})local aB=CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Use your mouse to click on all the terrain to save. When you are finished, press done.",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,25),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,50),SizeConstraint=0,Visible=true,ZIndex=1,Name="Desc",Parent=az})local aC=CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Chunks: 0",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,80),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Chunks",Parent=az})local aD=CreateInstance("TextButton",{Font=4,FontSize=6,Text="Done",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.17254902422428,0.22745099663734,0.28627452254295),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,1,-30),Rotation=0,Selectable=true,Size=UDim2.new(1,-10,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Done",Parent=az})return az end;local aE=ay()aE.Parent=game:GetService("CoreGui").RobloxGui;local aF={["CoreGui"]=true,["Players"]=true,["Chat"]=true,["StarterPlayerScripts"]=true,["StarterCharacterScripts"]=true,["CorePackages"]=true}local function aG(ax)return not aF[ax.ClassName]and not game:GetService("Players"):GetPlayerFromCharacter(ax)and ax~=workspace.CurrentCamera end;local aH={['"']='&quot;',['&']='&amp;',['<']='&lt;',['>']='&gt;',['\'']='&apos;'}local function aI(aJ)local aK=aJ:gsub('["&<>\']',aH)return aK end;local aL={["bool"]=function(ax,aM)Y=Y..'\n<bool name="'..aM..'">'..tostring(ax[aM])..'</bool>'end,["float"]=function(ax,aM)Y=Y..'\n<float name="'..aM..'">'..tostring(ax[aM])..'</float>'end,["int"]=function(ax,aM)Y=Y..'\n<int name="'..aM..'">'..tostring(ax[aM])..'</int>'end,["double"]=function(ax,aM)Y=Y..'\n<float name="'..aM..'">'..tostring(ax[aM])..'</float>'end,["string"]=function(ax,aM)local aN=ax[aM]aN=aI(aN)Y=Y..'\n<string name="'..aM..'">'..aN..'</string>'end,["BrickColor"]=function(ax,aM)Y=Y..'\n<int name="'..aM..'">'..tostring(ax[aM].Number)..'</int>'end,["Vector2"]=function(ax,aM)Y=Y..'\n<Vector2 name="'..aM..'">'Y=Y..'\n<X>'..ax[aM].x..'</X>'Y=Y..'\n<Y>'..ax[aM].y..'</Y>'Y=Y..'\n</Vector2>'end,["Vector3"]=function(ax,aM)Y=Y..'\n<Vector3 name="'..aM..'">'Y=Y..'\n<X>'..ax[aM].x..'</X>'Y=Y..'\n<Y>'..ax[aM].y..'</Y>'Y=Y..'\n<Z>'..ax[aM].z..'</Z>'Y=Y..'\n</Vector3>'end,["CoordinateFrame"]=function(ax,aM)local aO,aP,aQ,aR,aS,aT,aU,aV,aW,aX,aY,aZ=ax[aM]:components()Y=Y..'\n<CoordinateFrame name="'..aM..'">'Y=Y..'\n<X>'..aO..'</X>'Y=Y..'\n<Y>'..aP..'</Y>'Y=Y..'\n<Z>'..aQ..'</Z>'Y=Y..'\n<R00>'..aR..'</R00>'Y=Y..'\n<R01>'..aS..'</R01>'Y=Y..'\n<R02>'..aT..'</R02>'Y=Y..'\n<R10>'..aU..'</R10>'Y=Y..'\n<R11>'..aV..'</R11>'Y=Y..'\n<R12>'..aW..'</R12>'Y=Y..'\n<R20>'..aX..'</R20>'Y=Y..'\n<R21>'..aY..'</R21>'Y=Y..'\n<R22>'..aZ..'</R22>'Y=Y..'\n</CoordinateFrame>'end,["Content"]=function(ax,aM)local aN=tostring(ax[aM])aN=aI(aN)Y=Y..'\n<Content name="'..aM..'"><url>'..aN..'</url></Content>'end,["UDim2"]=function(ax,aM)Y=Y..'\n<UDim2 name="'..aM..'">'Y=Y..'\n<XS>'..ax[aM].X.Scale..'</XS>'Y=Y..'\n<XO>'..ax[aM].X.Offset..'</XO>'Y=Y..'\n<YS>'..ax[aM].Y.Scale..'</YS>'Y=Y..'\n<YO>'..ax[aM].Y.Offset..'</YO>'Y=Y..'\n</UDim2>'end,["Color3"]=function(ax,aM)Y=Y..'\n<Color3 name="'..aM..'">'Y=Y..'\n<R>'..ax[aM].r..'</R>'Y=Y..'\n<G>'..ax[aM].g..'</G>'Y=Y..'\n<B>'..ax[aM].b..'</B>'Y=Y..'\n</Color3>'end,["NumberRange"]=function(ax,aM)Y=Y..'\n<NumberRange name="'..aM..'">'..tostring(ax[aM].Min).." "..tostring(ax[aM].Max).." "..'</NumberRange>'end,["NumberSequence"]=function(ax,aM)Y=Y..'\n<NumberSequence name="'..aM..'">'for ab,G in pairs(ax[aM].Keypoints)do Y=Y..tostring(G.Time).." "..tostring(G.Value).." "..tostring(G.Envelope).." "end;Y=Y..'</NumberSequence>'end,["ColorSequence"]=function(ax,aM)Y=Y..'\n<ColorSequence name="'..aM..'">'for ab,G in pairs(ax[aM].Keypoints)do Y=Y..tostring(G.Time).." "..tostring(G.Value.r).." "..tostring(G.Value.g).." "..tostring(G.Value.b).." 0 "end;Y=Y..'</ColorSequence>'end,["Rect2D"]=function(ax,aM)Y=Y..'\n<Rect2D name="'..aM..'">'Y=Y..'\n<min>'Y=Y..'\n<X>'..tostring(ax[aM].Min.X)..'</X>'Y=Y..'\n<Y>'..tostring(ax[aM].Min.Y)..'</Y>'Y=Y..'\n</min>'Y=Y..'\n<max>'Y=Y..'\n<X>'..tostring(ax[aM].Max.X)..'</X>'Y=Y..'\n<Y>'..tostring(ax[aM].Max.Y)..'</Y>'Y=Y..'\n</max>'Y=Y..'\n</Rect2D>'end,["ProtectedString"]=function(ax,aM)local a_=""if ax:IsA("LocalScript")or ax:IsA("ModuleScript")then if i then a_=decompile(ax)end end;Y=Y..'\n<ProtectedString name="'..aM..'"><![CDATA['..a_..']]></ProtectedString>'end,["Object"]=function(ax,aM)Y=Y..'\n<Ref name="'..aM..'">'..aq(ax[aM])..'</Ref>'end,["PhysicalProperties"]=function(ax,aM)if ax[aM]then Y=Y..'\n<PhysicalProperties name="'..aM..'">\n<CustomPhysics>true</CustomPhysics>'Y=Y..'\n<Density>'..tostring(ax[aM].Density)..'</Density>'Y=Y..'\n<Friction>'..tostring(ax[aM].Friction)..'</Friction>'Y=Y..'\n<Elasticity>'..tostring(ax[aM].Elasticity)..'</Elasticity>'Y=Y..'\n<FrictionWeight>'..tostring(ax[aM].FrictionWeight)..'</FrictionWeight>'Y=Y..'\n<ElasticityWeight>'..tostring(ax[aM].ElasticityWeight)..'</ElasticityWeight>'Y=Y..'\n</PhysicalProperties>'else Y=Y..'\n<PhysicalProperties name="'..aM..'">\n<CustomPhysics>false</CustomPhysics>\n</PhysicalProperties>'end end}local b0={["Workspace"]=function(ax)if ax:PGSIsEnabled()then Y=Y..'\n<bool name="PGSPhysicsSolverEnabled">true</bool>'else Y=Y..'\n<bool name="PGSPhysicsSolverEnabled">false</bool>'end;if ypcall(function()local b1=ax.FallenPartsDestroyHeight end)then aL["double"](ax,"FallenPartsDestroyHeight")end end}local function b2(ax,b3)if O[ax.ClassName]and(W and aG(ax)or not W)then if a==2 and string.len(table.concat(a1))>=f then al()a1={}end;X=X+1;local aw=af(ax)Y=Y..'\n<Item class="'..ax.ClassName..'" referent="RBX'..ao(ax)..'">'Y=Y.."\n<Properties>"for F,aM in pairs(aw)do ypcall(function()local b4=aL[aM.ValueType]if b4 then if not aM.AltName then b4(ax,aM.Name)else table.insert(a1,Y)Y=""b4(ax,aM.Name)Y=string.gsub(Y,aM.Name,aM.AltName)end elseif ax[aM.Name].Value then Y=Y..'\n<token name="'..(aM.AltName or aM.Name)..'">'..ax[aM.Name].Value..'</token>'end;table.insert(a1,Y)Y=""end)end;if b0[ax.ClassName]then b0[ax.ClassName](ax)end;Y=Y.."\n</Properties>"if ax==a4 then if getnilinstances and l then local b5=Instance.new("Folder",a4)b5.Name="Nil Instances"local b6={}for ab,G in pairs(getnilinstances())do if G.Name~="_DexTrash_"and G~=a4 then table.insert(b6,G)end end;b2(b5,b6)end;if h then local b7=Instance.new("Folder",a4)b7.Name="Instances In Player"b2(b7,Q:GetChildren())local b8=Instance.new("Folder",a4)b8.Name="Instances In PlayerGui"b2(b8,Q:FindFirstChildOfClass("PlayerGui"):GetChildren())local b9=Instance.new("Folder",a4)b9.Name="Instances In Camera"b2(b9,workspace.CurrentCamera:GetChildren())local ba=Instance.new("Folder",a4)ba.Name="Instances In Chat"b2(ba,game:GetService("Chat"):GetChildren())local bb=Instance.new("Folder",a4)bb.Name="Instances In StarterPlayerScripts"b2(bb,game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterPlayerScripts"):GetChildren())local bc=Instance.new("Folder",a4)bc.Name="Instances In StarterCharacterScripts"b2(bc,game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterCharacterScripts"):GetChildren())end elseif b3 then for ab,G in pairs(b3)do b2(G)end else for ab,G in pairs(ax:GetChildren())do b2(G)end end;Y=Y.."\n</Item>"table.insert(a1,Y)Y=""end end;local function bd(as)if string.find(as,".rbxm")then return string.sub(as,1,string.find(as,".rbxm")-1)elseif string.find(as,".rbxmx")then return string.sub(as,1,string.find(as,".rbxmx")-1)else return as end end;local function be(ag)for ab,G in pairs(ag:GetChildren())do Z=Z+1;be(G)end end;local function bf(bg,bh)local bi="https://data.roblox.com/Data/Upload.ashx?assetid=0&type=Model&name="..bg.."&description=&genreTypeId=1&ispublic=False&allowComments=False"local bj=game:HttpPostAsync(bi,bh)L("Your "..bg.." Instance was saved to the id: "..bj)end;function func_SInstance(ax,bg,bk)W=false;bg=bd(bg)if a==2 then an()end;X=0;Z=1;if a==2 then be(ax)end;a0={}a1={}a3=bg;a2=0;Y=[[<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
<External>null</External>
<External>nil</External>]]if not ypcall(function()local b1=Instance.new("UnionOperation").AssetId end)then L("RUNNING WITH NO UNSCRIPTABLE PATCH")else L("RUNNING WITH UNSCRIPTABLE PATCH c:")end;b2(ax)table.insert(a1,"\n</roblox>")if a==1 then writefile(bg..".rbxmx",table.concat(a1))elseif a==2 then al()am()elseif a==3 then bf(bg,table.concat(a1))end;if a==2 then L("Saved with "..tostring(a2).." splits.")end;a1={}end;function DoSPlace(bg)W=true;X=0;a0={}a1={}Y=[[<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
<External>null</External>
<External>nil</External>]]for ab,G in pairs(game:GetChildren())do b2(G)end;b2(a4)if j then b2(a5)end;table.insert(a1,"\n</roblox>")if m then if writefile then local bl={"/","\\",":","?","\"","<",">","|"}local bm=game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;for ab,G in pairs(bl)do bm=string.gsub(bm,G,"")end;writefile(bg or tostring(game.PlaceId).." - "..bm..".rbxlx",table.concat(a1))return true end;return false else return game:HttpPostAsync("https://data.roblox.com/Data/Upload.ashx?assetid="..tostring(g).."&type=Place",table.concat(a1))end end;function func_SPlace(bg)L("SaveInstance V3 - Swift: Now saving place "..bg)local bn=os.clock()local bj=DoSPlace(bg)local bo="Courtney ;("if m then bo=bj and"The place has been saved to a file."or"Place didn't save :c no writefile or error"else bo=bj and"The place has been saved. Open it from the develop page on Roblox."or"Place didn't save :c something went wrong tell me"end;L(bo)L("Saving took "..tostring(os.clock()-bn).."s.")a1={}end;local bp=Q:GetMouse()local bq=64;local br=0;local bs={}bs[Enum.Material.Plastic]=1;bs[Enum.Material.Wood]=2;bs[Enum.Material.Slate]=3;bs[Enum.Material.Concrete]=4;bs[Enum.Material.CorrodedMetal]=5;bs[Enum.Material.DiamondPlate]=6;bs[Enum.Material.Foil]=7;bs[Enum.Material.Grass]=8;bs[Enum.Material.Ice]=9;bs[Enum.Material.Marble]=10;bs[Enum.Material.Granite]=11;bs[Enum.Material.Brick]=12;bs[Enum.Material.Pebble]=13;bs[Enum.Material.Sand]=14;bs[Enum.Material.Fabric]=15;bs[Enum.Material.SmoothPlastic]=16;bs[Enum.Material.Metal]=17;bs[Enum.Material.WoodPlanks]=18;bs[Enum.Material.Cobblestone]=19;bs[Enum.Material.Air]=20;bs[Enum.Material.Water]=21;bs[Enum.Material.Rock]=22;bs[Enum.Material.Glacier]=23;bs[Enum.Material.Snow]=24;bs[Enum.Material.Sandstone]=25;bs[Enum.Material.Mud]=26;bs[Enum.Material.Basalt]=27;bs[Enum.Material.Ground]=28;bs[Enum.Material.CrackedLava]=29;bs[Enum.Material.Neon]=30;bs[Enum.Material.Asphalt]=31;bs[Enum.Material.LeafyGrass]=32;bs[Enum.Material.Salt]=33;bs[Enum.Material.Limestone]=34;bs[Enum.Material.Pavement]=35;local function bt(bu,bv)if k then local bw=Instance.new("Part",workspace.CurrentCamera)bw.Name="TerTop"bw.Anchored=true;bw.Transparency=1;bw.CanCollide=false;bw.Size=Vector3.new(bq,bq,bq)bw.CFrame=CFrame.new(bu)local bx=Instance.new("SelectionBox",bw)bx.Adornee=bw end;T[tostring(bu)]=bv;U[tostring(bu)]=true;br=br+1;if br%10==0 then table.insert(S,game:GetService("HttpService"):JSONEncode(T))T={}end;aE.Chunks.Text="Chunks: "..tostring(br)end;local function by(bz)if U[tostring(bz)]or not R then return end;local bA=Region3.new(bz+Vector3.new(-bq/2,-bq/2,-bq/2),bz+Vector3.new(bq/2,bq/2,bq/2))bA:ExpandToGrid(4)local bB,bC=workspace.Terrain:ReadVoxels(bA,4)local bD={}local bE=bB.Size;local bF=0;for bG=1,bE.X do for bH=1,bE.Y do for bI=1,bE.Z do if bB[bG][bH][bI]==Enum.Material.Air then bF=bF+1 else table.insert(bD,{tostring(bG)..","..tostring(bH)..","..tostring(bI),bs[bB[bG][bH][bI]],bC[bG][bH][bI]})end end end end;if bF==bq^3/64 then return end;bt(bz,bD)V[bz+Vector3.new(bq,0,0)]=true;V[bz+Vector3.new(-bq,0,0)]=true;V[bz+Vector3.new(0,bq,0)]=true;V[bz+Vector3.new(0,-bq,0)]=true;V[bz+Vector3.new(0,0,bq)]=true;V[bz+Vector3.new(0,0,-bq)]=true end;local function bJ(as)local bK={}for bL in string.gmatch(as,"[^,]+")do table.insert(bK,tonumber(bL))end;local bM=Vector3.new(bK[1],bK[2],bK[3])local bN=Region3.new(bM+Vector3.new(-bq/2,-bq/2,-bq/2),bM+Vector3.new(bq/2,bq/2,bq/2))return bN end;bp.Button1Down:connect(function()if R then local bO=bp.Hit.p;local bP=math.floor(bO.X/bq)*bq;local bQ=math.floor(bO.Y/bq)*bq;local bR=math.floor(bO.Z/bq)*bq;by(Vector3.new(bP,bQ,bR))end end)aE.Done.MouseButton1Click:connect(function()if k then for ab,G in pairs(workspace.CurrentCamera:GetChildren())do if G.Name=="TerTop"then G:Destroy()end end end;R=false;aE.Visible=false;table.insert(S,game:GetService("HttpService"):JSONEncode(T))T={}U={}br=0 end)game:GetService("RunService").RenderStepped:Connect(function()if R then for ab,G in pairs(V)do by(ab)V[ab]=nil end end end)local bS=Instance.new("ScreenGui")local z=Instance.new("Frame")local C=Instance.new("TextLabel")local bT=Instance.new("TextLabel")local bU=Instance.new("TextLabel")local bV=Instance.new("TextButton")local bW=Instance.new("TextButton")local bX=Instance.new("TextLabel")bS.Name="NaeAe"bS.Parent=game.CoreGui;bS.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;z.Name="Main"z.Parent=bS;z.BackgroundColor3=Color3.fromRGB(28,42,57)z.Position=UDim2.new(0,0,0.5,0)z.Size=UDim2.new(0,150,0,150)C.Name="Title"C.Parent=z;C.BackgroundColor3=Color3.fromRGB(255,255,255)C.BackgroundTransparency=1.000;C.Size=UDim2.new(1,0,0,20)C.Font=Enum.Font.SourceSansBold;C.Text=(identifyexecutor() .. " | SaveInstance")C.TextColor3=Color3.fromRGB(255,255,255)C.TextSize=14.000;bT.Name="Desc"bT.Parent=z;bT.BackgroundColor3=Color3.fromRGB(255,255,255)bT.BackgroundTransparency=1.000;bT.Position=UDim2.new(0,0,0,25)bT.Size=UDim2.new(1,0,0,50)bT.Font=Enum.Font.SourceSans;bT.Text="[CAUTION] Save script on big games, it may take time and maybe crash!"bT.TextColor3=Color3.fromRGB(255,255,255)bT.TextSize=14.000;bT.TextWrapped=true;bU.Name="PlaceId"bU.Parent=z;bU.BackgroundColor3=Color3.fromRGB(255,255,255)bU.BackgroundTransparency=1.000;bU.Position=UDim2.new(0,0,0,65)bU.Size=UDim2.new(1,0,0,20)bU.Font=Enum.Font.SourceSansBold;bU.Text="PlaceId: "..game.PlaceId;bU.TextColor3=Color3.fromRGB(255,255,255)bU.TextSize=14.000;bU.TextWrapped=true;bV.Name="Done"bV.Parent=z;bV.BackgroundColor3=Color3.fromRGB(44,58,73)bV.Position=UDim2.new(0,5,1,-30)bV.Size=UDim2.new(1,-10,0,25)bV.Font=Enum.Font.SourceSansBold;bV.Text="Save"bV.TextColor3=Color3.fromRGB(255,255,255)bV.TextSize=18.000;bW.Name="CheckBox1"bW.Parent=z;bW.BackgroundColor3=Color3.fromRGB(178,178,178)bW.BorderColor3=Color3.fromRGB(0,0,0)bW.BorderSizePixel=0;bW.Position=UDim2.new(0,15,0,91)bW.Size=UDim2.new(0,16,0,16)bW.AutoButtonColor=false;bW.Selected=true;bW.Text=""bW.TextColor3=Color3.fromRGB(0,0,0)bX.Name="lblText"bX.Parent=bW;bX.BackgroundColor3=Color3.fromRGB(27,42,53)bX.Position=UDim2.new(0,22,0,0)bX.Size=UDim2.new(0,93,0,16)bX.Text="Decompile Script"bX.TextColor3=Color3.fromRGB(255,255,255)bX.TextXAlignment=Enum.TextXAlignment.Left;bX.TextYAlignment=Enum.TextYAlignment.Bottom;bW.MouseButton1Down:connect(function()if i==false then i=true;bW.Text="X"elseif i==true then i=false;bW.Text=""end end)local bY;bY=bV.MouseButton1Click:connect(function()bW.Visible=false;bV.Text="Saving..."bY:Disconnect()local bZ=game:GetService("MarketplaceService")local b_=""local c0,c1=pcall(bZ.GetProductInfo,bZ,game.PlaceId)if c0 then local c2,c3=c1.Name:gsub('%W','')b_=b_..c2 .."_"end;func_SPlace(b_..tostring(game.PlaceId)..".rbxl")bS:Destroy()end)
