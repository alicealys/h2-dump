local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360,
		alpha = 0
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		alpha = 0
	} )
	self.id = "predatorDroneRootId"
	self.isInit = false
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "fadein", {
		alpha = 1
	} )
	local f1_local1 = function ( f3_arg0 )
		local f3_local0 = Game.GetTime() - f3_arg0.startTime
		local f3_local1 = 0
		local f3_local2 = true
		for f3_local7, f3_local8 in ipairs( f3_arg0.textInfos ) do
			local f3_local9 = math.floor( math.sin( math.pi * 2 * (f3_local8.turnOffsetInMs + f3_local0) % f3_local8.turnTimeInMs / f3_local8.turnTimeInMs ) * f3_local8.valueRange + 0.5 )
			if f3_local8.secsAsText then
				local f3_local6 = tostring( LUI.clamp( math.floor( tonumber( f3_local8.secsAsText ) * 10 ) + f3_local9, 0, 599 ) )
				f3_local8.hudElem:setText( string.gsub( f3_local8.text, f3_local8.secsAsText, string.sub( f3_local6, 1, 2 ) .. "." .. string.sub( f3_local6, 3 ) ) )
			else
				f3_local8.hudElem:setText( f3_local8.baseNumber + f3_local9 .. f3_local8.baseSuffix )
			end
			if f3_local0 < f3_local8.turnOffsetInMs + f3_local8.turnTimeInMs then
				f3_local2 = false
			end
			if f3_local1 < f3_local8.turnTimeInMs then
				f3_local1 = f3_local8.turnTimeInMs
			end
		end
		if f3_local2 then
			f3_arg0.startTime = f3_arg0.startTime + f3_local1
		end
	end
	
	local f1_local2 = function ( f4_arg0 )
		LUI.UIVerticalScrollbar.RatioBasedUpdate( self.assetsRoot.pitchScrollBar, Game.PlayerViewPitchRatioInClampRange() )
		LUI.UIHorizontalScrollbar.RatioBasedUpdate( self.assetsRoot.yawScrollBar, 1 - Game.PlayerViewYawRatioInClampRange() )
		f1_local1( f4_arg0 )
	end
	
	local f1_local3 = function ( f5_arg0, f5_arg1 )
		local f5_local0 = "@HELLFIRE_DRONE_LATITUDE"
		local f5_local1 = "@HELLFIRE_DRONE_LONGITUDE"
		local f5_local2 = "@HELLFIRE_DRONE_LATITUDE_"
		local f5_local3 = "@HELLFIRE_DRONE_LONGITUDE_"
		local f5_local4 = "@HELLFIRE_DRONE_BASE_ELEVATION_"
		local f5_local5 = Engine.Localize( f5_local2 .. f5_arg1 )
		local f5_local6 = Engine.Localize( f5_local3 .. f5_arg1 )
		local f5_local7 = Engine.Localize( f5_local4 .. f5_arg1 )
		if not f5_arg0.startTime then
			f5_arg0.startTime = Game.GetTime()
		end
		local f5_local8 = string.find( f5_local5, "'" )
		f5_arg0.textInfos = {
			{
				text = f5_local5,
				secsAsText = string.sub( f5_local5, f5_local8 + 1, f5_local8 + 4 ),
				hudElem = self.assetsRoot.latitude,
				turnTimeInMs = 100000,
				turnOffsetInMs = 0,
				valueRange = 3
			}
		}
		f5_local8 = string.find( f5_local6, "'" )
		f5_arg0.textInfos[#f5_arg0.textInfos + 1] = {
			text = f5_local6,
			secsAsText = string.sub( f5_local6, f5_local8 + 1, f5_local8 + 4 ),
			hudElem = self.assetsRoot.longitude,
			turnTimeInMs = 100000,
			turnOffsetInMs = 40000,
			valueRange = 4
		}
		local f5_local9, f5_local10, f5_local11, f5_local12 = string.match( f5_local7, "(%d+)(%s*)(%a*)(%s*)" )
		if Engine.GetCurrentLanguage() ~= CoD.Language.Russian then
			f5_arg0.textInfos[#f5_arg0.textInfos + 1] = {
				text = f5_local7,
				baseNumber = f5_local9,
				baseSuffix = f5_local10 .. f5_local11 .. f5_local12,
				hudElem = self.assetsRoot.elevation,
				turnTimeInMs = 1000000,
				turnOffsetInMs = 0,
				valueRange = 89
			}
		end
		self.assetsRoot.latitude:setText( f5_local5 )
		self.assetsRoot.longitude:setText( f5_local6 )
		self.assetsRoot.elevation:setText( f5_local7 )
	end
	
	local f1_local4 = function ()
		if self.refreshTimer then
			self.refreshTimer:close()
			self.refreshTimer = nil
		end
		self.refreshTimer = LUI.UITimer.new( 1, "refresh_values" )
		self.refreshTimer.id = "refreshTimer"
		self:registerEventHandler( "refresh_values", f1_local2 )
		self:addElement( self.refreshTimer )
	end
	
	local f1_local5 = function ()
		if self.refreshTimer then
			self.refreshTimer:close()
			self.refreshTimer = nil
		end
	end
	
	self.show = function ( f8_arg0, f8_arg1 )
		self:animateToState( "fadein", 0 )
		f1_local3( f8_arg0, f8_arg1 )
		f1_local4()
	end
	
	self.hide = function ()
		self:animateToState( "default", 0 )
		f1_local5()
	end
	
	self.tryInit = function ()
		if not self.isInit then
			self.isInit = true
			
			local assetsRoot = LUI.UIElement.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
				alpha = 1
			} )
			self:addElement( assetsRoot )
			self.assetsRoot = assetsRoot
			
			self.refreshTimer = nil
			local f10_local1 = 100
			local f10_local2 = 15
			local f10_local3 = CoD.CreateState( 112, f10_local1, 300, nil, CoD.AnchorTypes.TopLeft )
			f10_local3.font = SP_PredatorDroneFont.Font
			f10_local3.height = SP_PredatorDroneFont.Height
			f10_local3.horizontalAlignment = LUI.HorizontalAlignment.RTL_ForcedLeft
			f10_local3.color = Colors.white
			local self = LUI.UIText.new( f10_local3 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_MTS" ) )
			assetsRoot:addElement( self )
			f10_local3.top = f10_local3.top + f10_local2
			local self = LUI.UIText.new( f10_local3 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_WHOT" ) )
			assetsRoot:addElement( self )
			f10_local3.top = f10_local3.top + f10_local2
			local self = LUI.UIText.new( f10_local3 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_SPD" ) )
			assetsRoot:addElement( self )
			f10_local3.top = f10_local3.top + f10_local2
			local f10_local7 = CoD.CreateState( -300, f10_local1, -112, nil, CoD.AnchorTypes.TopRight )
			f10_local7.font = SP_PredatorDroneFont.Font
			f10_local7.height = SP_PredatorDroneFont.Height
			f10_local7.color = Colors.white
			f10_local7.horizontalAlignment = LUI.HorizontalAlignment.Right
			local self = LUI.UIText.new( f10_local7 )
			assetsRoot.latitude = self
			assetsRoot:addElement( self )
			f10_local7.top = f10_local7.top + f10_local2
			local self = LUI.UIText.new( f10_local7 )
			assetsRoot.longitude = self
			assetsRoot:addElement( self )
			f10_local7.top = f10_local7.top + f10_local2
			local self = LUI.UIText.new( f10_local7 )
			assetsRoot.elevation = self
			assetsRoot:addElement( self )
			f10_local7.topAnchor = false
			f10_local7.bottomAnchor = true
			f10_local7.top = -f10_local1
			local self = LUI.UIText.new( f10_local7 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_PPP" ) )
			assetsRoot:addElement( self )
			f10_local7.top = f10_local7.top - f10_local2
			local self = LUI.UIText.new( f10_local7 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_PPSL" ) )
			assetsRoot:addElement( self )
			f10_local7.top = f10_local7.top - f10_local2
			local self = LUI.UIText.new( f10_local7 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_ASM" ) )
			assetsRoot:addElement( self )
			f10_local7.top = f10_local7.top - f10_local2
			local self = LUI.UIText.new( f10_local7 )
			self:setText( Engine.Localize( "@HELLFIRE_FLAVOR_TEXT_UAV" ) )
			assetsRoot:addElement( self )
			local f10_local15 = {
				topAnchor = true,
				bottomAnchor = false,
				leftAnchor = true,
				rightAnchor = true,
				left = 454,
				right = -454,
				top = 120,
				height = 40.5,
				material = RegisterMaterial( "h2_overlays_predator_graded_bar_top" )
			}
			
			local yawScrollBarBacker = LUI.UIImage.new( f10_local15 )
			assetsRoot:addElement( yawScrollBarBacker )
			assetsRoot.yawScrollBarBacker = yawScrollBarBacker
			
			f10_local15.left = 450
			f10_local15.right = -450
			f10_local15.top = 160
			f10_local15.height = 20
			
			local yawScrollBar = LUI.UIHorizontalScrollbar.new( f10_local15, nil, nil, nil, nil, nil, scrollBarMoveFunc, Colors.white, {
				r = 0,
				g = 0,
				b = 0,
				alpha = 0
			}, "h1_deco_option_scrollbar_arrows", "white", "h1_deco_option_scrollbar_arrows", "white", 20, nil, 90 )
			assetsRoot:addElement( yawScrollBar )
			assetsRoot.yawScrollBar = yawScrollBar
			
			LUI.UIHorizontalScrollbar.RatioBasedUpdate( assetsRoot.yawScrollBar, 0 )
			local f10_local18 = {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = false,
				left = 100,
				width = 40.5,
				top = 202,
				bottom = -202,
				material = RegisterMaterial( "h2_overlays_predator_graded_bar_side" )
			}
			
			local pitchScrollBarBacker = LUI.UIImage.new( f10_local18 )
			assetsRoot:addElement( pitchScrollBarBacker )
			assetsRoot.pitchScrollBarBacker = pitchScrollBarBacker
			
			f10_local18.top = 192
			f10_local18.bottom = -192
			f10_local18.width = 20
			f10_local18.left = 140
			
			local pitchScrollBar = LUI.UIVerticalScrollbar.new( f10_local18, nil, nil, nil, nil, nil, scrollBarMoveFunc, Colors.white, {
				r = 0,
				g = 0,
				b = 0,
				alpha = 0
			}, "h1_deco_option_scrollbar_arrows", "white", "h1_deco_option_scrollbar_arrows", "white", 20, nil, 180 )
			assetsRoot:addElement( pitchScrollBar )
			assetsRoot.pitchScrollBar = pitchScrollBar
			
			LUI.UIVerticalScrollbar.RatioBasedUpdate( assetsRoot.pitchScrollBar, 0 )
			assetsRoot:addElement( LUI.UIImage.new( {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
				material = RegisterMaterial( "h1_ac130_screen_overlay" )
			} ) )
		end
	end
	
	return self
end

f0_local1 = function ()
	local self = LUI.UIElement.new( Engine.IsConsoleGame() and {
		leftAnchor = false,
		rightAnchor = false,
		topAnchor = false,
		bottomAnchor = false,
		left = -360 * Engine.GetAspectRatio(),
		right = 360 * Engine.GetAspectRatio(),
		top = -360,
		bottom = 360,
		alpha = 0
	} or {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
		alpha = 0
	} )
	self.id = "predatorMissileRootId"
	self.isInit = false
	self:registerAnimationState( "default", {
		alpha = 0
	} )
	self:registerAnimationState( "fadein", {
		alpha = 1
	} )
	self.show = function ( f10_arg0, f10_arg1 )
		self:animateToState( "fadein", 0 )
	end
	
	self.hide = function ()
		self:animateToState( "default", 0 )
	end
	
	self.tryInit = function ()
		if not self.isInit then
			self.isInit = true
			
			local assetsRoot = LUI.UIElement.new( {
				leftAnchor = true,
				rightAnchor = true,
				topAnchor = true,
				bottomAnchor = true,
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
				alpha = 1
			} )
			self:addElement( assetsRoot )
			self.assetsRoot = assetsRoot
			
			local self = LUI.UIElement.new()
			self.id = "missilePositionId"
			self:setupOwnerdraw( CoD.Ownerdraw.UIMissilePosition, 0.6, CoD.TextStyle.ShadowedMore )
			self:registerAnimationState( "default", {
				topAnchor = true,
				leftAnchor = true,
				bottomAnchor = false,
				rightAnchor = false,
				top = 50,
				left = 40,
				bottom = 0,
				right = 0,
				alignment = LUI.Alignment.Center,
				font = CoD.TextSettings.SP_HudCarbon27.Font,
				alpha = 1,
				color = Colors.white
			} )
			self:animateToState( "default", 0 )
			assetsRoot:addElement( self )
			local self = LUI.UIElement.new()
			self.id = "missileInfoId"
			self:setupOwnerdraw( CoD.Ownerdraw.UIMissileInfo, 0.6, CoD.TextStyle.ShadowedMore )
			self:registerAnimationState( "default", {
				topAnchor = true,
				leftAnchor = true,
				bottomAnchor = true,
				rightAnchor = true,
				top = -30,
				left = 19,
				alignment = LUI.Alignment.Left,
				font = CoD.TextSettings.SP_HudCarbon27.Font,
				alpha = 1,
				color = Colors.white
			} )
			self:animateToState( "default", 0 )
			assetsRoot:addElement( self )
			assetsRoot:addElement( LUI.UIImage.new( {
				topAnchor = true,
				bottomAnchor = true,
				leftAnchor = true,
				rightAnchor = true,
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
				material = RegisterMaterial( "h1_ac130_screen_overlay" )
			} ) )
		end
	end
	
	return self
end

LUI.MenuBuilder.registerType( "predatorDroneHudDef", f0_local0 )
LUI.MenuBuilder.registerType( "predatorMissileHudDef", f0_local1 )
LockTable( _M )
