local a=1;local b=true;local c=false;local d=[==[]==]local e=""local f=800000;local g=0;local h=true;local i=false;local j=false;local k=false;local l=true;local m=true;if game.CoreGui:FindFirstChild("NFLib")then game.CoreGui:FindFirstChild("NFLib"):Destroy()end;local n={}local o=Instance.new("ScreenGui")o.Name="NFLib"o.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;o.Parent=game.CoreGui;local p=Instance.new("ScrollingFrame")p.Name="Container"p.Parent=o;p.Active=false;p.BackgroundColor3=Color3.fromRGB(255,255,255)p.BackgroundTransparency=1.000;p.BorderSizePixel=0;p.Position=UDim2.new(0.864545425,0,0.67027743,0)p.Size=UDim2.new(0,209,0,259)p.BottomImage=""p.CanvasSize=UDim2.new(0,0,0,0)p.MidImage=""p.ScrollingEnabled=false;p.TopImage=""local q=Instance.new("UIListLayout")q.Parent=p;q.HorizontalAlignment=Enum.HorizontalAlignment.Center;q.SortOrder=Enum.SortOrder.LayoutOrder;q.VerticalAlignment=Enum.VerticalAlignment.Bottom;q.Padding=UDim.new(0,5)function tick(r,s)if r.Parent then r:FindFirstChild("Line"):TweenSize(UDim2.new(0,197,0,1),"Out","Linear",s)end;wait(s)if r.Parent then r.Parent:TweenSize(UDim2.new(0,197,0,0),"Out","Quint",1.5)wait(1)r.Parent:Destroy()end end;function n:Notification(t,u,v,w)if t==nil then t="Preview"end;if u==nil then u="This is an example of a notification using NFLib"end;if v==nil then v=5 end;if w==nil then w=Color3.fromRGB(20,169,255)end;local x=Instance.new("Frame")x.Name="WindowHolder"x.Parent=p;x.BackgroundColor3=Color3.fromRGB(33,33,33)x.BackgroundTransparency=1.000;x.ClipsDescendants=true;x.Position=UDim2.new(0.839661181,0,0.796762526,0)x.Size=UDim2.new(0,197,0,74)local y=Instance.new("Frame")y.Name="Window"y.Parent=x;y.BackgroundColor3=Color3.fromRGB(33,33,33)y.ClipsDescendants=true;y.Size=UDim2.new(0,197,0,74)local z=Instance.new("Frame")z.Name="Main"z.Parent=y;z.BackgroundColor3=Color3.fromRGB(255,255,255)z.BackgroundTransparency=1.000;z.Size=UDim2.new(0,197,0,57)local A=Instance.new("UICorner")A.CornerRadius=UDim.new(0,3)A.Parent=y;local B=Instance.new("Frame")B.Name="Line"B.Parent=y;B.BackgroundColor3=w;B.BorderSizePixel=0;B.ClipsDescendants=true;B.Position=UDim2.new(0,0,0.987179399,0)B.Size=UDim2.new(0,0,0,1)local C=Instance.new("TextLabel")C.Name="Title"C.Parent=z;C.BackgroundColor3=Color3.fromRGB(255,255,255)C.BackgroundTransparency=1.000;C.ClipsDescendants=true;C.Size=UDim2.new(0,197,0,27)C.Font=Enum.Font.GothamBold;C.Text=t;C.TextColor3=Color3.fromRGB(231,231,231)C.TextSize=14.000;local D=Instance.new("TextLabel")D.Name="Text"D.Parent=z;D.BackgroundColor3=Color3.fromRGB(255,255,255)D.BackgroundTransparency=1.000;D.ClipsDescendants=true;D.Position=UDim2.new(0,0,0,26)D.Font=Enum.Font.GothamSemibold;D.Text=u;D.TextColor3=Color3.fromRGB(231,231,231)D.TextSize=13.000;D.TextWrapped=true;D.TextYAlignment=Enum.TextYAlignment.Top;if string.len(u)<17 then D.Size=UDim2.new(0,196,0,15)else D.Size=UDim2.new(0,196,0,math.floor(string.len(u)/16*15)+0.5)end;local E=0;for F,G in pairs(z:GetChildren())do E=E+G.Size.Y.Offset end;z.Size=UDim2.new(0,197,0,E)y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+5)coroutine.wrap(tick)(y,v)local H={}function H:Button(I)local J=Instance.new("TextButton")J.Parent=y;J.BackgroundColor3=Color3.fromRGB(45,46,46)J.Size=UDim2.new(0,156,0,28)J.Font=Enum.Font.GothamSemibold;J.TextColor3=Color3.fromRGB(255,255,255)J.Text=I;J.TextSize=14.000;local K=Instance.new("UICorner")K.CornerRadius=UDim.new(0,4)K.Parent=J;if string.len(u)<17 then y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+40)J.Position=UDim2.new(0,20,0,45)else y.Size=UDim2.new(0,197,0,z.Size.Y.Offset+20)J.Position=UDim2.new(0,20,0,y.Size.Y.Offset-((y.Size.Y.Offset-z.Size.Y.Offset)*2-3))end;x.Size=y.Size;J.MouseButton1Click:Connect(function()x:TweenSize(UDim2.new(0,197,0,0),"Out","Quint",1.5)wait(1)x:Destroy()end)end;return H end;local function L(M)n:Notification("Electron",M,3,Color3.fromRGB(255,255,255))end;if a==1 and not writefile then L("no writefile, switching to method 3")a=3 end;if m and not writefile then L("no writefile for place save, turning off")m=false end;local N=game:GetService("HttpService")local O={}local P;local Q=game:GetService("Players").LocalPlayer;local R=false;local S={}local T={}local U={}local V={}local W=false;local X=0;local Y=""local Z=1;local _={}local a0={}local a1={}local a2=0;local a3=""local a4=Instance.new("Folder")a4.Name="_SAVED_BY_CO_IMPORTANT_AND_EXTRA_INSTANCES_"local a5=Instance.new("Script",a4)a5.Name="LoadTerrain"local a6=Instance.new("ModuleScript",a5)a6.Name="Data"local a7={["Instance"]={["Archivable"]=true,["DataCost"]=true,["ClassName"]=true,["RobloxLocked"]=true,["Parent"]=true},["Workspace"]={["DistributedGameTime"]=true},["BasePart"]={["Position"]=true,["Rotation"]=true}}local a8={["Sound"]={["MaxDistance"]="xmlRead_MaxDistance_3"}}local a9,aa=ypcall(function()if d and d~=""then P=d else P=game:HttpGetAsync("http://anaminus.github.io/rbx/json/api/latest.json")end end)if aa then if script:FindFirstChild("API")then P=require(script.API)end end;P=N:JSONDecode(P)for ab,G in pairs(P)do if G.type=="Class"then O[G.Name]=G;O[G.Name].Properties={}elseif G.type=="Property"then local ac=false;for ad,ae in pairs(G.tags)do if ae=="deprecated"or ae=="hidden"or ae=="readonly"then ac=true end end;if a7[G.Class]and a7[G.Class][G.Name]then ac=true end;if a8[G.Class]and a8[G.Class][G.Name]then G.AltName=a8[G.Class][G.Name]end;if not ac then table.insert(O[G.Class].Properties,G)end end end;local function af(ag)if _[ag.ClassName]then return _[ag.ClassName]end;local ah={}local ai=ag.ClassName;while ai do for ab,G in pairs(O[ai].Properties)do table.insert(ah,G)end;ai=O[ai].Superclass end;table.sort(ah,function(aj,ak)return(aj.AltName or aj.Name)<(ak.AltName or ak.Name)end)_[ag.ClassName]=ah;return ah end;local function al()game:HttpPostAsync(e,table.concat(a1))a2=a2+1;L("SaveAmounts: "..tostring(a2).." Progress = "..tostring(X/Z*100).."%")end;local function am()game:HttpPostAsync(e,N:JSONEncode({Option="Submit",Name=a3}))end;local function an()game:HttpPostAsync(e,N:JSONEncode({Option="Clear"}))end;local function ao(ag)local ap=a0[ag]if ap then return tostring(ap)end;a0[ag]=X;return tostring(X)end;local function aq(ag)if ag==nil then return"null"end;local ap=a0[ag]if ap then return"RBX"..tostring(ap)end;X=X+1;a0[ag]=X;return"RBX"..tostring(X)end;local function ar(as)if#as==0 then return""end;local at=as:sub(1,1)local au=string.byte(at)if au>=32 and au<=126 then return at..ar(as:sub(2))elseif au==9 or au==10 then return at..ar(as:sub(2))else return ar(as:sub(2))end end;function CreateInstance(av,aw)local ax=Instance.new(av)for ab,G in pairs(aw)do ax[ab]=G end;return ax end;local function ay()local az=CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.10980392992496,0.16470588743687,0.22352942824364),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0.5,0),Rotation=0,Selectable=false,Size=UDim2.new(0,150,0,150),SizeConstraint=0,Visible=false,ZIndex=1,Name="Main"})local aA=CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Terrain Chunk Selection",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Title",Parent=az})local aB=CreateInstance("TextLabel",{Font=3,FontSize=5,Text="Use your mouse to click on all the terrain to save. When you are finished, press done.",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,25),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,50),SizeConstraint=0,Visible=true,ZIndex=1,Name="Desc",Parent=az})local aC=CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Chunks: 0",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,80),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Chunks",Parent=az})local aD=CreateInstance("TextButton",{Font=4,FontSize=6,Text="Done",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.17254902422428,0.22745099663734,0.28627452254295),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,1,-30),Rotation=0,Selectable=true,Size=UDim2.new(1,-10,0,25),SizeConstraint=0,Visible=true,ZIndex=1,Name="Done",Parent=az})return az end;local aE=ay()aE.Parent=game:GetService("CoreGui").RobloxGui;local aF={["CoreGui"]=true,["Players"]=true,["Chat"]=true,["StarterPlayerScripts"]=true,["StarterCharacterScripts"]=true,["CorePackages"]=true}local function aG(ax)return not aF[ax.ClassName]and not game:GetService("Players"):GetPlayerFromCharacter(ax)and ax~=workspace.CurrentCamera end;local aH='["&<>\']'local aI={['"']='&quot;',['&']='&amp;',['<']='&lt;',['>']='&gt;',['\'']='&apos;'}local aJ={["bool"]=function(ax,aK)Y=Y..'\n<bool name="'..aK..'">'..tostring(ax[aK])..'</bool>'end,["float"]=function(ax,aK)Y=Y..'\n<float name="'..aK..'">'..tostring(ax[aK])..'</float>'end,["int"]=function(ax,aK)Y=Y..'\n<int name="'..aK..'">'..tostring(ax[aK])..'</int>'end,["double"]=function(ax,aK)Y=Y..'\n<float name="'..aK..'">'..tostring(ax[aK])..'</float>'end,["string"]=function(ax,aK)local aL=ax[aK]Y=Y..'\n<string name="'..aK..'">'..aL:gsub(aH,aI)..'</string>'end,["BrickColor"]=function(ax,aK)Y=Y..'\n<int name="'..aK..'">'..tostring(ax[aK].Number)..'</int>'end,["Vector2"]=function(ax,aK)Y=Y..'\n<Vector2 name="'..aK..'">'Y=Y..'\n<X>'..ax[aK].x..'</X>'Y=Y..'\n<Y>'..ax[aK].y..'</Y>'Y=Y..'\n</Vector2>'end,["Vector3"]=function(ax,aK)Y=Y..'\n<Vector3 name="'..aK..'">'Y=Y..'\n<X>'..ax[aK].x..'</X>'Y=Y..'\n<Y>'..ax[aK].y..'</Y>'Y=Y..'\n<Z>'..ax[aK].z..'</Z>'Y=Y..'\n</Vector3>'end,["CoordinateFrame"]=function(ax,aK)local aM,aN,aO,aP,aQ,aR,aS,aT,aU,aV,aW,aX=ax[aK]:components()Y=Y..'\n<CoordinateFrame name="'..aK..'">'Y=Y..'\n<X>'..aM..'</X>'Y=Y..'\n<Y>'..aN..'</Y>'Y=Y..'\n<Z>'..aO..'</Z>'Y=Y..'\n<R00>'..aP..'</R00>'Y=Y..'\n<R01>'..aQ..'</R01>'Y=Y..'\n<R02>'..aR..'</R02>'Y=Y..'\n<R10>'..aS..'</R10>'Y=Y..'\n<R11>'..aT..'</R11>'Y=Y..'\n<R12>'..aU..'</R12>'Y=Y..'\n<R20>'..aV..'</R20>'Y=Y..'\n<R21>'..aW..'</R21>'Y=Y..'\n<R22>'..aX..'</R22>'Y=Y..'\n</CoordinateFrame>'end,["Content"]=function(ax,aK)local aL=tostring(ax[aK])Y=Y..'\n<Content name="'..aK..'"><url>'..aL:gsub(aH,aI)..'</url></Content>'end,["UDim2"]=function(ax,aK)Y=Y..'\n<UDim2 name="'..aK..'">'Y=Y..'\n<XS>'..ax[aK].X.Scale..'</XS>'Y=Y..'\n<XO>'..ax[aK].X.Offset..'</XO>'Y=Y..'\n<YS>'..ax[aK].Y.Scale..'</YS>'Y=Y..'\n<YO>'..ax[aK].Y.Offset..'</YO>'Y=Y..'\n</UDim2>'end,["Color3"]=function(ax,aK)Y=Y..'\n<Color3 name="'..aK..'">'Y=Y..'\n<R>'..ax[aK].r..'</R>'Y=Y..'\n<G>'..ax[aK].g..'</G>'Y=Y..'\n<B>'..ax[aK].b..'</B>'Y=Y..'\n</Color3>'end,["NumberRange"]=function(ax,aK)Y=Y..'\n<NumberRange name="'..aK..'">'..tostring(ax[aK].Min).." "..tostring(ax[aK].Max).." "..'</NumberRange>'end,["NumberSequence"]=function(ax,aK)Y=Y..'\n<NumberSequence name="'..aK..'">'for ab,G in pairs(ax[aK].Keypoints)do Y=Y..tostring(G.Time).." "..tostring(G.Value).." "..tostring(G.Envelope).." "end;Y=Y..'</NumberSequence>'end,["ColorSequence"]=function(ax,aK)Y=Y..'\n<ColorSequence name="'..aK..'">'for ab,G in pairs(ax[aK].Keypoints)do Y=Y..tostring(G.Time).." "..tostring(G.Value.r).." "..tostring(G.Value.g).." "..tostring(G.Value.b).." 0 "end;Y=Y..'</ColorSequence>'end,["Rect2D"]=function(ax,aK)Y=Y..'\n<Rect2D name="'..aK..'">'Y=Y..'\n<min>'Y=Y..'\n<X>'..tostring(ax[aK].Min.X)..'</X>'Y=Y..'\n<Y>'..tostring(ax[aK].Min.Y)..'</Y>'Y=Y..'\n</min>'Y=Y..'\n<max>'Y=Y..'\n<X>'..tostring(ax[aK].Max.X)..'</X>'Y=Y..'\n<Y>'..tostring(ax[aK].Max.Y)..'</Y>'Y=Y..'\n</max>'Y=Y..'\n</Rect2D>'end,["ProtectedString"]=function(ax,aK)local aY=""if ax:IsA("LocalScript")or ax:IsA("ModuleScript")then if i then aY=decompile(ax)end end;Y=Y..'\n<ProtectedString name="'..aK..'"><![CDATA['..aY..']]></ProtectedString>'end,["Object"]=function(ax,aK)Y=Y..'\n<Ref name="'..aK..'">'..aq(ax[aK])..'</Ref>'end,["PhysicalProperties"]=function(ax,aK)if ax[aK]then Y=Y..'\n<PhysicalProperties name="'..aK..'">\n<CustomPhysics>true</CustomPhysics>'Y=Y..'\n<Density>'..tostring(ax[aK].Density)..'</Density>'Y=Y..'\n<Friction>'..tostring(ax[aK].Friction)..'</Friction>'Y=Y..'\n<Elasticity>'..tostring(ax[aK].Elasticity)..'</Elasticity>'Y=Y..'\n<FrictionWeight>'..tostring(ax[aK].FrictionWeight)..'</FrictionWeight>'Y=Y..'\n<ElasticityWeight>'..tostring(ax[aK].ElasticityWeight)..'</ElasticityWeight>'Y=Y..'\n</PhysicalProperties>'else Y=Y..'\n<PhysicalProperties name="'..aK..'">\n<CustomPhysics>false</CustomPhysics>\n</PhysicalProperties>'end end}local function aZ(aK,a_)local b0=""if aK=="SmoothGrid"or aK=="MaterialColors"then b0="<![CDATA["..a_.."]]>"else b0=a_ end;Y=Y..'\n<BinaryString name="'..aK..'">'..b0 ..'</BinaryString>'end;local b1={UnionOperation={AssetId='Content',ChildData='BinaryString',FormFactor='Token',InitialSize='Vector3',MeshData='BinaryString',PhysicsData='BinaryString'},MeshPart={InitialSize='Vector3',PhysicsData='BinaryString'},Terrain={SmoothGrid='BinaryString',MaterialColors='BinaryString'}}local b2={["UnionOperation"]=function(ax)for ab,G in next,b1["UnionOperation"]do if G=='BinaryString'then local b3=gethiddenproperty(ax,ab)aZ(ab,b3)elseif G=='Token'then setscriptable(ax,ab,true)Y=Y..'\n<token name="'..ab..'">'..ax[ab].Value..'</token>'setscriptable(ax,ab,false)else setscriptable(ax,ab,true)aJ[G](ax,ab)setscriptable(ax,ab,false)end end end,["MeshPart"]=function(ax)for ab,G in next,b1["MeshPart"]do if G=='BinaryString'then local b3=gethiddenproperty(ax,ab)aZ(ab,b3)else setscriptable(ax,ab,true)aJ[G](ax,ab)setscriptable(ax,ab,false)end end end,["Terrain"]=function(ax)for ab,G in next,b1["Terrain"]do if G=='BinaryString'then local b3=gethiddenproperty(ax,ab)aZ(ab,b3)end end end}local function b4(ax,b5)if O[ax.ClassName]and(W and aG(ax)or not W)then if a==2 and string.len(table.concat(a1))>=f then al()a1={}end;X=X+1;local aw=af(ax)Y=Y..'\n<Item class="'..ax.ClassName..'" referent="RBX'..ao(ax)..'">'Y=Y.."\n<Properties>"for F,aK in pairs(aw)do ypcall(function()local b6=aJ[aK.ValueType]if b6 then if not aK.AltName then b6(ax,aK.Name)else table.insert(a1,Y)Y=""b6(ax,aK.Name)Y=string.gsub(Y,aK.Name,aK.AltName)end elseif ax[aK.Name].Value then Y=Y..'\n<token name="'..(aK.AltName or aK.Name)..'">'..ax[aK.Name].Value..'</token>'end;table.insert(a1,Y)Y=""end)end;if b2[ax.ClassName]then b2[ax.ClassName](ax)end;Y=Y.."\n</Properties>"if ax==a4 then if getnilinstances and l then local b7=Instance.new("Folder",a4)b7.Name="Nil Instances"local b8={}for ab,G in pairs(getnilinstances())do if G.Name~="_DexTrash_"and G~=a4 then table.insert(b8,G)end end;b4(b7,b8)end;if h then local b9=Instance.new("Folder",a4)b9.Name="Instances In Player"b4(b9,Q:GetChildren())local ba=Instance.new("Folder",a4)ba.Name="Instances In PlayerGui"b4(ba,Q:FindFirstChildOfClass("PlayerGui"):GetChildren())local bb=Instance.new("Folder",a4)bb.Name="Instances In Camera"b4(bb,workspace.CurrentCamera:GetChildren())local bc=Instance.new("Folder",a4)bc.Name="Instances In Chat"b4(bc,game:GetService("Chat"):GetChildren())local bd=Instance.new("Folder",a4)bd.Name="Instances In StarterPlayerScripts"b4(bd,game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterPlayerScripts"):GetChildren())local be=Instance.new("Folder",a4)be.Name="Instances In StarterCharacterScripts"b4(be,game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterCharacterScripts"):GetChildren())end elseif b5 then for ab,G in pairs(b5)do b4(G)end else for ab,G in pairs(ax:GetChildren())do b4(G)end end;Y=Y.."\n</Item>"table.insert(a1,Y)Y=""end end;local function bf(as)if string.find(as,".rbxm")then return string.sub(as,1,string.find(as,".rbxm")-1)elseif string.find(as,".rbxmx")then return string.sub(as,1,string.find(as,".rbxmx")-1)else return as end end;local function bg(ag)for ab,G in pairs(ag:GetChildren())do Z=Z+1;bg(G)end end;local function bh(bi,bj)local bk="https://data.roblox.com/Data/Upload.ashx?assetid=0&type=Model&name="..bi.."&description=&genreTypeId=1&ispublic=False&allowComments=False"local bl=game:HttpPostAsync(bk,bj)L("Your "..bi.." Instance was saved to the id: "..bl)end;function func_SInstance(ax,bi,bm)W=false;bi=bf(bi)if a==2 then an()end;X=0;Z=1;if a==2 then bg(ax)end;a0={}a1={}a3=bi;a2=0;Y=[[<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
<External>null</External>
<External>nil</External>]]b4(ax)table.insert(a1,"\n</roblox>")if a==1 then writefile(bi..".rbxlx",table.concat(a1))elseif a==2 then al()am()elseif a==3 then bh(bi,table.concat(a1))end;if a==2 then L("Saved with "..tostring(a2).." splits.")end;a1={}end;function DoSPlace(bi)W=true;X=0;a0={}a1={}Y=[[<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
<External>null</External>
<External>nil</External>]]for ab,G in pairs(game:GetChildren())do b4(G)end;b4(a4)if j then b4(a5)end;table.insert(a1,"\n</roblox>")if m then if writefile then local bn={"/","\\",":","?","\"","<",">","|"}local bo=game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;for ab,G in pairs(bn)do bo=string.gsub(bo,G,"")end;writefile(bi or tostring(game.PlaceId).." - "..bo..".rbxl",table.concat(a1))return true end;return false end end;function func_SPlace(bi)L("SaveInstance V3 - Swift: Now saving place "..bi)local bp=os.clock()local bl=DoSPlace(bi)local bq="Courtney ;("if m then bq=bl and"The place has been saved to a file."or"Place didn't save :c no writefile or error"else bq=bl and"The place has been saved. Open it from the develop page on Roblox."or"Place didn't save :c something went wrong tell me"end;L(bq)L("Saving took "..tostring(os.clock()-bp).."s.")a1={}end;local br=Q:GetMouse()local bs=64;local bt=0;local bu={}bu[Enum.Material.Plastic]=1;bu[Enum.Material.Wood]=2;bu[Enum.Material.Slate]=3;bu[Enum.Material.Concrete]=4;bu[Enum.Material.CorrodedMetal]=5;bu[Enum.Material.DiamondPlate]=6;bu[Enum.Material.Foil]=7;bu[Enum.Material.Grass]=8;bu[Enum.Material.Ice]=9;bu[Enum.Material.Marble]=10;bu[Enum.Material.Granite]=11;bu[Enum.Material.Brick]=12;bu[Enum.Material.Pebble]=13;bu[Enum.Material.Sand]=14;bu[Enum.Material.Fabric]=15;bu[Enum.Material.SmoothPlastic]=16;bu[Enum.Material.Metal]=17;bu[Enum.Material.WoodPlanks]=18;bu[Enum.Material.Cobblestone]=19;bu[Enum.Material.Air]=20;bu[Enum.Material.Water]=21;bu[Enum.Material.Rock]=22;bu[Enum.Material.Glacier]=23;bu[Enum.Material.Snow]=24;bu[Enum.Material.Sandstone]=25;bu[Enum.Material.Mud]=26;bu[Enum.Material.Basalt]=27;bu[Enum.Material.Ground]=28;bu[Enum.Material.CrackedLava]=29;bu[Enum.Material.Neon]=30;bu[Enum.Material.Asphalt]=31;bu[Enum.Material.LeafyGrass]=32;bu[Enum.Material.Salt]=33;bu[Enum.Material.Limestone]=34;bu[Enum.Material.Pavement]=35;local function bv(bw,bx)if k then local by=Instance.new("Part",workspace.CurrentCamera)by.Name="TerTop"by.Anchored=true;by.Transparency=1;by.CanCollide=false;by.Size=Vector3.new(bs,bs,bs)by.CFrame=CFrame.new(bw)local bz=Instance.new("SelectionBox",by)bz.Adornee=by end;T[tostring(bw)]=bx;U[tostring(bw)]=true;bt=bt+1;if bt%10==0 then table.insert(S,game:GetService("HttpService"):JSONEncode(T))T={}end;aE.Chunks.Text="Chunks: "..tostring(bt)end;local function bA(bB)if U[tostring(bB)]or not R then return end;local bC=Region3.new(bB+Vector3.new(-bs/2,-bs/2,-bs/2),bB+Vector3.new(bs/2,bs/2,bs/2))bC:ExpandToGrid(4)local bD,bE=workspace.Terrain:ReadVoxels(bC,4)local bF={}local bG=bD.Size;local bH=0;for bI=1,bG.X do for bJ=1,bG.Y do for bK=1,bG.Z do if bD[bI][bJ][bK]==Enum.Material.Air then bH=bH+1 else table.insert(bF,{tostring(bI)..","..tostring(bJ)..","..tostring(bK),bu[bD[bI][bJ][bK]],bE[bI][bJ][bK]})end end end end;if bH==bs^3/64 then return end;bv(bB,bF)V[bB+Vector3.new(bs,0,0)]=true;V[bB+Vector3.new(-bs,0,0)]=true;V[bB+Vector3.new(0,bs,0)]=true;V[bB+Vector3.new(0,-bs,0)]=true;V[bB+Vector3.new(0,0,bs)]=true;V[bB+Vector3.new(0,0,-bs)]=true end;local function bL(as)local bM={}for bN in string.gmatch(as,"[^,]+")do table.insert(bM,tonumber(bN))end;local bO=Vector3.new(bM[1],bM[2],bM[3])local bP=Region3.new(bO+Vector3.new(-bs/2,-bs/2,-bs/2),bO+Vector3.new(bs/2,bs/2,bs/2))return bP end;br.Button1Down:connect(function()if R then local bQ=br.Hit.p;local bR=math.floor(bQ.X/bs)*bs;local bS=math.floor(bQ.Y/bs)*bs;local bT=math.floor(bQ.Z/bs)*bs;bA(Vector3.new(bR,bS,bT))end end)aE.Done.MouseButton1Click:connect(function()if k then for ab,G in pairs(workspace.CurrentCamera:GetChildren())do if G.Name=="TerTop"then G:Destroy()end end end;R=false;aE.Visible=false;table.insert(S,game:GetService("HttpService"):JSONEncode(T))T={}U={}bt=0 end)game:GetService("RunService").RenderStepped:Connect(function()if R then for ab,G in pairs(V)do bA(ab)V[ab]=nil end end end)local bU=Instance.new("ScreenGui")local z=Instance.new("Frame")local C=Instance.new("TextLabel")local bV=Instance.new("TextLabel")local bW=Instance.new("TextLabel")local bX=Instance.new("TextButton")local bY=Instance.new("TextButton")local bZ=Instance.new("TextLabel")bU.Name="NaeAe"bU.Parent=game.CoreGui;bU.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;z.Name="Main"z.Parent=bU;z.BackgroundColor3=Color3.fromRGB(28,42,57)z.Position=UDim2.new(0,0,0.5,0)z.Size=UDim2.new(0,150,0,150)C.Name="Title"C.Parent=z;C.BackgroundColor3=Color3.fromRGB(255,255,255)C.BackgroundTransparency=1.000;C.Size=UDim2.new(1,0,0,20)C.Font=Enum.Font.SourceSansBold;C.Text="Electron | SaveInstance"C.TextColor3=Color3.fromRGB(255,255,255)C.TextSize=14.000;bV.Name="Desc"bV.Parent=z;bV.BackgroundColor3=Color3.fromRGB(255,255,255)bV.BackgroundTransparency=1.000;bV.Position=UDim2.new(0,0,0,25)bV.Size=UDim2.new(1,0,0,50)bV.Font=Enum.Font.SourceSans;bV.Text="[CAUTION] Save script on big games, it may take time and maybe crash!"bV.TextColor3=Color3.fromRGB(255,255,255)bV.TextSize=14.000;bV.TextWrapped=true;bW.Name="PlaceId"bW.Parent=z;bW.BackgroundColor3=Color3.fromRGB(255,255,255)bW.BackgroundTransparency=1.000;bW.Position=UDim2.new(0,0,0,65)bW.Size=UDim2.new(1,0,0,20)bW.Font=Enum.Font.SourceSansBold;bW.Text="PlaceId:"bW.TextColor3=Color3.fromRGB(255,255,255)bW.TextSize=14.000;bW.TextWrapped=true;bX.Name="Done"bX.Parent=z;bX.BackgroundColor3=Color3.fromRGB(44,58,73)bX.Position=UDim2.new(0,5,1,-30)bX.Size=UDim2.new(1,-10,0,25)bX.Font=Enum.Font.SourceSansBold;bX.Text="Save"bX.TextColor3=Color3.fromRGB(255,255,255)bX.TextSize=18.000;bY.Name="CheckBox1"bY.Parent=z;bY.BackgroundColor3=Color3.fromRGB(178,178,178)bY.BorderColor3=Color3.fromRGB(0,0,0)bY.BorderSizePixel=0;bY.Position=UDim2.new(0,15,0,91)bY.Size=UDim2.new(0,16,0,16)bY.AutoButtonColor=false;bY.Selected=true;bY.Text=""bY.TextColor3=Color3.fromRGB(0,0,0)bZ.Name="lblText"bZ.Parent=bY;bZ.BackgroundColor3=Color3.fromRGB(27,42,53)bZ.Position=UDim2.new(0,22,0,0)bZ.Size=UDim2.new(0,93,0,16)bZ.Text="Decompile Script"bZ.TextColor3=Color3.fromRGB(255,255,255)bZ.TextXAlignment=Enum.TextXAlignment.Left;bZ.TextYAlignment=Enum.TextYAlignment.Bottom;bY.MouseButton1Down:connect(function()if i==false then i=true;bY.Text="X"elseif i==true then i=false;bY.Text=""end end)local b_;b_=bX.MouseButton1Click:connect(function()bY.Visible=false;bX.Text="Saving..."b_:Disconnect()local c0=game:GetService("MarketplaceService")local c1=""local c2,c3=pcall(c0.GetProductInfo,c0,game.PlaceId)if c2 then local c4,c5=c3.Name:gsub('%W','')c1=c1 ..c4 .."_"end;func_SPlace(c1 ..tostring(game.PlaceId)..".rbxlx")bU:Destroy()end)
