local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
f0_local0 = 1500
f0_local1 = 5000
if Engine.IsDevelopmentBuild() then
	f0_local0 = 0
	f0_local1 = 5000
end
function BriefingMenu( f1_arg0, f1_arg1 )
	local f1_local0
	if Engine.GetDvarInt( "ui_currentLevelIndex" ) >= Engine.GetProfileData( "highestCinematic" ) then
		f1_local0 = Engine.GetDvarBool( "ui_allowSkip" )
	else
		f1_local0 = true
	end
	local self = LUI.UIElement.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = true,
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
		alpha = 1
	} )
	self.id = "briefingMenuId"
	local f1_local2 = 250
	local f1_local3 = LUI.UIText.new( {
		leftAnchor = false,
		rightAnchor = true,
		topAnchor = false,
		bottomAnchor = true,
		top = -80,
		bottom = -80 + CoD.TextSettings.BodyFont18.Height,
		left = -60 - f1_local2,
		right = -60,
		font = CoD.TextSettings.BodyFont18.Font,
		horizontalAlignment = LUI.HorizontalAlignment.Right,
		verticalAlignment = LUI.VerticalAlignment.Bottom,
		alpha = 0
	} )
	if f1_local0 then
		self.skipStartTime = 0
		self:registerEventHandler( "updateProgress", function ( element, event )
			if self.currentType == 2 then
				return 
			end
			local f2_local0 = 0
			if self.skipStartTime ~= 0 then
				f2_local0 = (Engine.GetTimeMsecs() - self.skipStartTime) / f0_local0
			end
			Engine.SetDvarFloat( "r_progressIconRatio", f2_local0 )
		end )
		self.timer = LUI.UITimer.new( 50, "updateProgress", nil, false, false, false, false, true )
		self.timer.id = "barTimer"
		self:addElement( self.timer )
		f1_local3:setupProgressIcon()
		f1_local3:registerAnimationState( "show", {
			alpha = 1
		} )
		f1_local3:registerAnimationState( "hide", {
			alpha = 0
		} )
		if CoD.UsingController() then
			f1_local3:setText( Engine.Localize( "@PLATFORM_HOLD_TO_SKIP" ) )
		else
			local f1_local4 = Engine.Localize( "@PLATFORM_HOLD_TO_SKIP_KEYBOARD" )
			f1_local3:setText( f1_local4 )
			local f1_local5, f1_local6, f1_local7, f1_local8 = GetTextDimensions2( f1_local4, CoD.TextSettings.BodyFont18.Font, CoD.TextSettings.BodyFont18.Height )
			local f1_local9 = f1_local7 - f1_local5
			local f1_local10 = 0
			if f1_local2 < f1_local9 then
				f1_local10 = math.floor( f1_local9 / f1_local2 ) * CoD.TextSettings.BodyFont18.Height
				f1_local9 = f1_local2
			end
			f1_local3:addElement( LUI.UIImage.new( {
				leftAnchor = false,
				rightAnchor = true,
				topAnchor = false,
				bottomAnchor = true,
				top = 5 + f1_local10,
				bottom = 8 + f1_local10,
				left = -f1_local9,
				right = 0,
				alpha = 1,
				material = RegisterMaterial( "h2_skip_progress_bar" )
			} ) )
		end
		local f1_local4 = function ( f3_arg0 )
			if f3_arg0.activeCount <= 0 and f3_arg0.showCount <= 0 then
				if f3_arg0.disableTimer == nil then
					f3_arg0.disableTimer = LUI.UITimer.new( f0_local1, "disable_skip", nil, false )
					f3_arg0.disableTimer.id = "disableTimer"
					f3_arg0:addElement( f3_arg0.disableTimer )
				end
				LUI.UITimer.Reset( f3_arg0.disableTimer )
				self.skipStartTime = 0
			end
		end
		
		local f1_local5 = function ( f4_arg0, f4_arg1 )
			if f4_arg0.activeCount <= 0 then
				if f4_arg0.showCount <= 0 then
					local f4_local0 = f4_arg0:getParent()
					f4_local0:animateToState( "show", 300 )
				end
				f4_arg0.activeCount = f4_arg0.activeCount + 1
				if f4_arg0.disableTimer ~= nil then
					LUI.UITimer.Stop( f4_arg0.disableTimer )
				end
				if f4_arg0.skipTimer == nil then
					f4_arg0.skipTimer = LUI.UITimer.new( f0_local0, "do_skip", nil, false )
					f4_arg0:addElement( f4_arg0.skipTimer )
				end
				LUI.UITimer.Reset( f4_arg0.skipTimer )
			end
			self.skipStartTime = Engine.GetTimeMsecs()
		end
		
		local f1_local6 = function ( f5_arg0, f5_arg1 )
			if f5_arg0.activeCount <= 0 then
				return 
			end
			f5_arg0.activeCount = f5_arg0.activeCount - 1
			f1_local4( f5_arg0 )
			if f5_arg0.skipTimer ~= nil then
				LUI.UITimer.Stop( f5_arg0.skipTimer )
			end
			self.skipStartTime = 0
		end
		
		local f1_local7 = function ( f6_arg0, f6_arg1 )
			if f6_arg0.showCount <= 0 then
				local f6_local0 = f6_arg0:getParent()
				f6_local0:animateToState( "show", 300 )
			elseif f6_arg0.disableTimer ~= nil then
				LUI.UITimer.Reset( f6_arg0.disableTimer )
			end
			f6_arg0.showCount = f6_arg0.showCount + 1
		end
		
		local f1_local8 = function ( f7_arg0, f7_arg1 )
			if f7_arg0.showCount <= 0 then
				return 
			else
				f7_arg0.showCount = f7_arg0.showCount - 1
				f1_local4( f7_arg0 )
			end
		end
		
		local f1_local9 = function ( f8_arg0, f8_arg1 )
			if self.currentType == 1 then
				Engine.SetDvarBool( "ui_stop_airport_movie", true )
			else
				Engine.PlayerStart( f8_arg1.controller )
			end
			if f8_arg0.disableTimer ~= nil then
				LUI.UITimer.Stop( f8_arg0.disableTimer )
			end
			if f8_arg0.skipTimer ~= nil then
				LUI.UITimer.Stop( f8_arg0.skipTimer )
			end
		end
		
		local f1_local10 = function ( f9_arg0, f9_arg1 )
			local f9_local0 = f9_arg0:getParent()
			f9_local0:animateToState( "hide", 300 )
			self.skipStartTime = 0
			if f9_arg0.disableTimer ~= nil then
				LUI.UITimer.Stop( f9_arg0.disableTimer )
			end
		end
		
		local f1_local11 = function ( f10_arg0, f10_arg1 )
			f1_local5( f10_arg0.text.bindButton, f10_arg1 )
		end
		
		local f1_local12 = function ( f11_arg0, f11_arg1 )
			f1_local6( f11_arg0.text.bindButton, f11_arg1 )
		end
		
		local f1_local13 = function ( f12_arg0, f12_arg1 )
			f1_local7( f12_arg0.text.bindButton, f12_arg1 )
		end
		
		local f1_local14 = function ( f13_arg0, f13_arg1 )
			f1_local8( f13_arg0.text.bindButton, f13_arg1 )
		end
		
		local f1_local15 = LUI.UIBindButton.new()
		f1_local15:registerEventHandler( "do_skip", f1_local9 )
		f1_local15:registerEventHandler( "button_action", f1_local5 )
		f1_local15:registerEventHandler( "button_action_released", f1_local6 )
		f1_local15:registerEventHandler( "button_secondary", f1_local7 )
		f1_local15:registerEventHandler( "button_secondary_released", f1_local8 )
		if CoD.UsingController() then
			f1_local15:registerEventHandler( "button_alt1", f1_local7 )
			f1_local15:registerEventHandler( "button_alt1_released", f1_local8 )
			f1_local15:registerEventHandler( "button_alt2", f1_local7 )
			f1_local15:registerEventHandler( "button_alt2_released", f1_local8 )
			if Engine.IsDevelopmentBuild() then
				self:setHandleMouseButton( true )
				self:registerEventHandler( "leftmousedown", f1_local11 )
				self:registerEventHandler( "leftmouseup", f1_local12 )
			end
		else
			f1_local15:registerEventHandler( "button_start", f1_local7 )
			f1_local15:registerEventHandler( "button_start_released", f1_local8 )
			if Engine.IsDevelopmentBuild() then
				self:setHandleMouseButton( true )
				self:registerEventHandler( "leftmousedown", f1_local11 )
				self:registerEventHandler( "leftmouseup", f1_local12 )
			else
				self:setHandleMouseButton( true )
				self:registerEventHandler( "leftmousedown", f1_local13 )
				self:registerEventHandler( "leftmouseup", f1_local14 )
			end
		end
		f1_local15:registerEventHandler( "disable_skip", f1_local10 )
		f1_local15.handlePrimary = true
		f1_local15.handleRelease = true
		f1_local15.activeCount = 0
		f1_local15.showCount = 0
		f1_local3.bindButton = f1_local15
		f1_local3:addElement( f1_local15 )
		self.setType = function ( f14_arg0, f14_arg1 )
			if self.currentType == f14_arg1 then
				return 
			end
			self.currentType = f14_arg1
			if f14_arg1 == 2 then
				f1_local15:registerEventHandler( "button_action", nil )
				f1_local15:registerEventHandler( "button_action_released", nil )
				f1_local15:registerEventHandler( "button_secondary", nil )
				f1_local15:registerEventHandler( "button_secondary_released", nil )
				f1_local15:registerEventHandler( "button_alt1", nil )
				f1_local15:registerEventHandler( "button_alt1_released", nil )
				f1_local15:registerEventHandler( "button_alt2", nil )
				f1_local15:registerEventHandler( "button_alt2_released", nil )
				f1_local15:registerEventHandler( "button_start", nil )
				f1_local15:registerEventHandler( "button_start_released", nil )
				self:registerEventHandler( "leftmousedown", nil )
				self:registerEventHandler( "leftmouseup", nil )
				f1_local7( f1_local15 )
			elseif f14_arg1 == 1 then
				Engine.SetLuiInUse( true )
				Engine.SetDvarBool( "ui_stop_airport_movie", false )
			elseif f14_arg1 == 0 then
				if f1_local15.showCount > 0 then
					f1_local15.showCount = f1_local15.showCount - 1
				end
				if f1_local15.showCount == 0 then
					f1_local10( f1_local15 )
				end
			end
		end
		
	end
	self.text = f1_local3
	self:addElement( f1_local3 )
	return self
end

LUI.MenuBuilder.registerType( "LuiBriefingMenu", BriefingMenu )
LockTable( _M )
