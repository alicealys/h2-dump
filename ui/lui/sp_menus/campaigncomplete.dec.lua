local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
function CampaignCompleteMenu( f1_arg0, f1_arg1 )
	Engine.ExecNow( "profile_menuDvarsSetup" )
	Engine.SetDvarBool( "profileMenuOption_resumeIsGameCompleted", true )
	Engine.ExecNow( "profile_menuDvarsFinish" )
	Engine.Exec( "updategamerprofile" )
	local self = LUI.UIImage.new( {
		material = RegisterMaterial( "victory" ),
		top = -300,
		width = 1126,
		height = 563,
		alpha = 0
	} )
	self:registerAnimationState( "show", {
		alpha = 1
	} )
	self:animateInSequence( {
		{
			"default",
			0
		},
		{
			"show",
			1000
		}
	} )
	local f1_local1 = 590
	local text = LUI.UIText.new( {
		leftAnchor = true,
		rightAnchor = true,
		topAnchor = true,
		bottomAnchor = false,
		top = f1_local1,
		bottom = f1_local1 + CoD.TextSettings.BodyFont18.Height,
		font = CoD.TextSettings.BodyFont18.Font,
		alignment = LUI.Alignment.Center,
		alpha = 0
	} )
	text:registerAnimationState( "show", {
		alpha = 1
	} )
	if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
		text:setText( Engine.Localize( "@MENU_QUIT_TO_MAIN_MENU" ) )
	else
		text:setText( Engine.Localize( "@MENU_QUIT_TO_MAIN_MENU_PC" ) )
	end
	self:addElement( text )
	self.text = text
	
	self.skipLocked = true
	self:addElement( LUI.UITimer.new( 3000, "enable_quit", nil, true ) )
	self:registerEventHandler( "enable_quit", function ( element, event )
		element.text:animateToState( "show", 300 )
		element.skipLocked = false
	end )
	local f1_local3 = function ( f3_arg0, f3_arg1 )
		if f3_arg0.skipLocked then
			return 
		else
			Engine.PlaySound( CoD.SFX.MenuAccept )
			Engine.PopupClosed( f3_arg1.controller, "accept_normal" )
			LUI.FlowManager.RequestCloseAllMenus( f3_arg0 )
		end
	end
	
	local f1_local4 = LUI.UIBindButton.new()
	f1_local4:registerEventHandler( "button_start", f1_local3 )
	f1_local4:registerEventHandler( "button_action", f1_local3 )
	f1_local4:registerEventHandler( "button_secondary", f1_local3 )
	f1_local4.handlePrimary = true
	self:addElement( f1_local4 )
	return self
end

LUI.MenuBuilder.registerType( "MENU_CAMPAIGN_COMPLETED", CampaignCompleteMenu )
LockTable( _M )
