local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( "Registering " .. _NAME )
LUI.InfoBox = InheritFrom( LUI.UIElement )
f0_local0 = 510
f0_local1 = 120
f0_local2 = -18
local f0_local3 = 495
local f0_local4 = 18
local f0_local5 = 12
local f0_local6 = 900 * CoD.FullHDToHD
local f0_local7 = f0_local1
local f0_local8 = -9
local f0_local9 = -2
local f0_local10 = f0_local1 - 10
local f0_local11 = 30
local f0_local12 = 3
local f0_local13 = {
	leftAnchor = true,
	topAnchor = true,
	top = -5,
	height = 60,
	material = RegisterMaterial( "h1_popup_info_title_bg_mission_select" )
}
local f0_local14 = Engine.GetCurrentLanguage()
if f0_local14 == CoD.Language.Russian or f0_local14 == CoD.Language.Arabic or f0_local14 == CoD.Language.Korean or f0_local14 == CoD.Language.Japanese_full or f0_local14 == CoD.Language.Japanese_partial or f0_local14 == CoD.Language.Traditional_chinese or f0_local14 == CoD.Language.Simplified_chinese then
	f0_local5 = 14
end
LUI.InfoBox.setTitle = function ( f1_arg0, f1_arg1 )
	f1_arg0.title:setText( f1_arg1 )
end

LUI.InfoBox.setDescription = function ( f2_arg0, f2_arg1 )
	f2_arg0.description:setText( f2_arg1 )
end

LUI.InfoBox.setBottomLeftText = function ( f3_arg0, f3_arg1 )
	f3_arg0.bottomLeftText:setText( f3_arg1 )
end

LUI.InfoBox.setBottomRightText = function ( f4_arg0, f4_arg1 )
	f4_arg0.bottomRightText:setText( f4_arg1 )
end

LUI.InfoBox.drawCornerLines = function ( f5_arg0 )
	local f5_local0 = 7
	local f5_local1 = 13
	if f5_arg0.rightPanel == nil then
		f5_local0 = -140
		f5_local1 = -134
	end
	local f5_local2 = CoD.CreateState( -7, 1.5, -1, 1.5, CoD.AnchorTypes.TopLeft )
	f5_local2.color = Colors.h1.light_grey
	f5_arg0:addElement( LUI.UILine.new( f5_local2 ) )
	local f5_local3 = CoD.CreateState( -7, -26, -1, -26, CoD.AnchorTypes.BottomLeft )
	f5_local3.color = Colors.h1.light_grey
	f5_arg0:addElement( LUI.UILine.new( f5_local3 ) )
	local f5_local4 = CoD.CreateState( f5_local0, 1.5, f5_local1, 1.5, CoD.AnchorTypes.TopRight )
	f5_local4.color = Colors.h1.light_grey
	
	local topRightBar = LUI.UILine.new( f5_local4 )
	f5_arg0:addElement( topRightBar )
	f5_arg0.topRightBar = topRightBar
	
	local f5_local6 = CoD.CreateState( f5_local0, -26, f5_local1, -26, CoD.AnchorTypes.BottomRight )
	f5_local6.color = Colors.h1.light_grey
	
	local bottomRightBar = LUI.UILine.new( f5_local6 )
	f5_arg0:addElement( bottomRightBar )
	f5_arg0.bottomRightBar = bottomRightBar
	
end

LUI.InfoBox.enableRightPanel = function ( f6_arg0 )
	f0_local13.width = f0_local3 - f0_local10
	f0_local13.left = -10
	f6_arg0.titleBackground:registerAnimationState( "default", f0_local13 )
	f6_arg0.titleBackground:animateToState( "default" )
	local self = LUI.UIElement.new( CoD.CreateState( -f0_local10 + f0_local11 - 60, f0_local12 - 2, f0_local11 - 18, f0_local10 + f0_local12 + 1, CoD.AnchorTypes.TopRight ) )
	self.id = "window_right_panel_id"
	self:registerAnimationState( "show", {
		alpha = 1
	} )
	f6_arg0.rightPanel = self
	f6_arg0:addElement( self )
	local f6_local1 = CoD.CreateState( -f0_local10 + f0_local11 - 60, f0_local12 - 2, f0_local11 - 16, f0_local10 + f0_local12 + 39.5, CoD.AnchorTypes.TopRight )
	f6_local1.material = RegisterMaterial( "h2_popup_info_box_mission_select" )
	local f6_local2 = LUI.UIImage.new( f6_local1 )
	f6_local2.id = "window_right_panel_overlay_id"
	f6_local2:registerAnimationState( "show", {
		alpha = 1
	} )
	f6_arg0:addElement( f6_local2 )
end

LUI.InfoBox.new = function ( f7_arg0, f7_arg1 )
	local f7_local0 = Engine.GetCurrentLanguage()
	if not f7_arg1 then
		f7_arg1 = {}
	end
	local f7_local1 = f0_local2 + 5
	if f7_arg1.noRightPane then
		f7_local1 = f0_local11 + f0_local10 - 6
	end
	local f7_local2 = CoD.CreateState( f7_local1 - f0_local3 - 80, f0_local0 - 20, f7_local1, f0_local0 + f0_local1, CoD.AnchorTypes.TopRight )
	f7_local2.alpha = 1
	local self = LUI.UIElement.new( f7_local2 )
	self.id = "infobox_window_id"
	self:setClass( LUI.InfoBox )
	self:registerAnimationState( "hide", {
		alpha = 0
	} )
	if not f7_arg1.skipAnim then
		self:registerAnimationState( "dimmed", {
			alpha = 0.5
		} )
		self:animateToState( "hide" )
		self:registerEventHandler( "menu_create", function ( element, event )
			self:animateInSequence( {
				{
					"default",
					66
				},
				{
					"dimmed",
					66
				},
				{
					"default",
					66
				},
				{
					"dimmed",
					66
				},
				{
					"default",
					66
				}
			} )
		end )
	end
	local f7_local4 = CoD.CreateState( f0_local8, f0_local9, f0_local6, f0_local7 + f0_local9, CoD.AnchorTypes.TopLeft )
	f7_local4.material = RegisterMaterial( "h2_popup_info_mission_select" )
	local f7_local5 = LUI.UIImage.new( f7_local4 )
	f7_local5.id = "infobox_background_id"
	self:addElement( f7_local5 )
	f0_local13.width = f0_local3
	f0_local13.left = -15
	local f7_local6 = LUI.UIImage.new( f0_local13 )
	f7_local6.id = "infobox_title_background_id"
	self.titleBackground = f7_local6
	self:addElement( f7_local6 )
	local f7_local7 = 5
	local f7_local8 = -5
	if f7_arg1.noRightPane then
		f7_local7 = 10
		f7_local8 = 5
	end
	local f7_local9 = LUI.UIElement.new( CoD.CreateState( f7_local7, 8, f0_local6 - f0_local10 - f0_local11 + f0_local8 + f7_local8, 34, CoD.AnchorTypes.TopLeft ) )
	f7_local6:addElement( f7_local9 )
	local f7_local10 = -6
	if f7_local0 == CoD.Language.Arabic or f7_local0 == CoD.Language.Korean or f7_local0 == CoD.Language.Japanese_full or f7_local0 == CoD.Language.Japanese_partial or f7_local0 == CoD.Language.Traditional_chinese or f7_local0 == CoD.Language.Simplified_chinese then
		f7_local10 = nil
	end
	local f7_local11 = CoD.CreateState( 8, f7_local10, nil, nil, CoD.AnchorTypes.Left )
	if f7_local0 == CoD.Language.Arabic then
		f7_local11.left = -24
	end
	f7_local11.height = CoD.TextSettings.H1TitleFont27.Height
	f7_local11.font = CoD.TextSettings.H1TitleFont27.Font
	f7_local11.horizontalAlignment = LUI.HorizontalAlignment.Left
	f7_local11.verticalAlignment = LUI.VerticalAlignment.Middle
	f7_local11.width = f0_local6 - f0_local10 - f0_local11 + f0_local8
	local f7_local12 = LUI.UIText.new( f7_local11 )
	f7_local12.id = "infobox_title_text"
	f7_local12:registerAnimationState( "show", {
		alpha = 1
	} )
	f7_local12:registerAnimationState( "hide", {
		alpha = 0
	} )
	f7_local12:setTextStyle( CoD.TextStyle.ForceUpperCase )
	self.title = f7_local12
	f7_local9:addElement( f7_local12 )
	local f7_local13 = CoD.CreateState( 3, 40, nil, nil, CoD.AnchorTypes.TopLeft )
	if f7_local0 == CoD.Language.Arabic then
		f7_local13.left = -7
	end
	f7_local13.width = f0_local6 - f0_local10 - f0_local11 + f0_local8 - 20
	f7_local13.font = CoD.TextSettings.Font18.Font
	f7_local13.height = f0_local5
	f7_local13.alignment = LUI.Alignment.Left
	f7_local13.color = Colors.white
	f7_local13.lineSpacingRatio = 0.2
	local f7_local14 = LUI.UIText.new( f7_local13 )
	f7_local14.id = "infobox_description_text"
	f7_local14:registerAnimationState( "show", {
		alpha = 1
	} )
	f7_local14:registerAnimationState( "hide", {
		alpha = 0
	} )
	self.description = f7_local14
	self:addElement( f7_local14 )
	f7_local14.setDescription = function ( f9_arg0, f9_arg1 )
		local f9_local0, f9_local1, f9_local2 = GetTextDimensions( f9_arg1, CoD.TextSettings.BodyFont18.Font, f0_local5 )
		local f9_local3 = f7_local13.width * 3
		local f9_local4 = 1
		local f9_local5 = 0.2
		if f9_local3 < f9_local2 then
			f9_local4 = f9_local3 / f9_local2
			f9_local5 = 0.1
		end
		f9_arg0:setText( f9_arg1 )
		f9_arg0:registerAnimationState( "show", {
			alpha = 1,
			height = f0_local5 * f9_local4,
			top = 40,
			topAnchor = true,
			lineSpacingRatio = f9_local5
		} )
		f9_arg0:animateToState( "show" )
	end
	
	local f7_local15 = CoD.CreateState( 3, nil, -f0_local3 / 2, -30, CoD.AnchorTypes.BottomLeftRight )
	f7_local15.height = f0_local5
	local f7_local16 = LUI.UIElement.new( f7_local15 )
	f7_local16.id = "bottom_left_elements"
	f7_local16:registerAnimationState( "show", {
		alpha = 0.5
	} )
	f7_local16:registerAnimationState( "hide", {
		alpha = 0
	} )
	self.bottomLeftElements = f7_local16
	self:addElement( f7_local16 )
	local f7_local17 = CoD.CreateState( (f0_local3 - f0_local10) / 2, nil, -f0_local10 - 38, -30, CoD.AnchorTypes.BottomLeftRight )
	f7_local17.height = f0_local5
	local f7_local18 = LUI.UIElement.new( f7_local17 )
	f7_local18.id = "bottom_right_elements"
	f7_local18:registerAnimationState( "show", {
		alpha = 0.5
	} )
	f7_local18:registerAnimationState( "hide", {
		alpha = 0
	} )
	self.bottomRightElements = f7_local18
	self:addElement( f7_local18 )
	return self
end

LUI.InfoBox.build = function ( f10_arg0, f10_arg1, f10_arg2 )
	return LUI.InfoBox.new( f10_arg0, f10_arg1 )
end

LUI.MenuBuilder.registerType( "InfoBox", LUI.InfoBox.build )
LockTable( _M )
