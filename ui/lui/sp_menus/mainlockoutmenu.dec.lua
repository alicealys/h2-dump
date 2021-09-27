local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
function OnMainAttract( f1_arg0, f1_arg1 )
	
end

function FadeOutForAttract( f2_arg0, f2_arg1 )
	f2_arg0:dispatchEventToChildren( {
		name = "fadeToBlack"
	} )
	local self = LUI.UITimer.new( 750, "OnMainAttract" )
	self.id = "LockoutFadeOutTimer"
	f2_arg0:addElement( self )
	f2_arg0:registerEventHandler( "OnMainAttract", OnMainAttract )
	Engine.StopMusic( 2000 )
end

function SkipToMenu( f3_arg0 )
	local f3_local0 = Engine.GetDvarString( "ui_loadMenuName" )
	if f3_local0 == nil or f3_local0 == "" then
		return false
	end
	Engine.SetDvarString( "ui_loadMenuName", "" )
	local f3_local1 = LUI.StringSplit( f3_local0, "/" )
	local f3_local2 = f3_local1[#f3_local1]
	table.remove( f3_local1, #f3_local1 )
	if #f3_local1 == 0 then
		LUI.FlowManager.RequestAddMenu( self, f3_local2, true, f3_arg0, true )
	else
		local f3_local3 = {}
		for f3_local4 = 1, #f3_local1, 1 do
			f3_local3[f3_local4] = {
				name = f3_local1[f3_local4]
			}
		end
		LUI.FlowManager.RequestAddMenuAndSetStack( self, f3_local2, true, f3_arg0, true, nil, f3_local3 )
	end
	return true
end

function GoToMainMenu( f4_arg0 )
	Engine.SetDvarBool( "ui_skipMainLockout", false )
	if Engine.GetDvarBool( "limited_mode" ) then
		LUI.FlowManager.RequestAddMenu( self, LUI.LevelSelect.FirstCampaignMenuName, true, f4_arg0, false, {} )
	elseif CoD.IsCampaignOnly() then
		LUI.FlowManager.RequestAddMenu( self, "main_campaign", true, f4_arg0, false )
	else
		LUI.FlowManager.RequestAddMenu( self, "main_menu", true, f4_arg0, false )
	end
end

function OnStartWaitForAttract( f5_arg0 )
	if not Engine.GetDvarBool( "limited_mode" ) then
		if not f5_arg0.lockoutAttractTimer then
			f5_arg0.lockoutAttractTimer = LUI.UITimer.new( 30000, "FadeOutForAttract" )
			f5_arg0.lockoutAttractTimer.id = "LockoutAttractTimer"
			f5_arg0:addElement( f5_arg0.lockoutAttractTimer )
			f5_arg0:registerEventHandler( "FadeOutForAttract", FadeOutForAttract )
		else
			LUI.UITimer.Reset( f5_arg0.lockoutAttractTimer )
			LUI.UITimer.Enable( f5_arg0.lockoutAttractTimer )
		end
	end
end

function OnStopWaitForAttract( f6_arg0 )
	if f6_arg0.lockoutAttractTimer then
		LUI.UITimer.Disable( f6_arg0.lockoutAttractTimer )
	end
end

function CheckLanguage( f7_arg0 )
	if Engine.ShouldPromptForLanguage() then
		LUI.FlowManager.RequestAddMenu( nil, "choose_language_popup", false, f7_arg0, false, {
			callback = function ()
				LoginNextStep( f7_arg0 )
			end
		} )
	else
		LoginNextStep( f7_arg0 )
	end
end

function CheckDCache( f8_arg0 )
	if DCache.IsStartupDisabled() then
		LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f8_arg0, nil, {
			popup_title = Engine.Localize( "@MENU_NOTICE" ),
			yes_action = function ()
				DCache.ClearDCache( 1 )
				Engine.SystemRestart( Engine.Localize( "@LUA_MENU_DCACHE_RESTART" ) )
			end,
			no_action = function ()
				DCache.ClearStartupCount()
				Engine.SystemRestart( Engine.Localize( "@LUA_MENU_DCACHE_RESTART" ) )
			end,
			message_text = Engine.Localize( "@LUA_MENU_DCACHE_CLEAR_REQUEST" )
		} )
	else
		LoginNextStep( f8_arg0 )
	end
end

function CheckEULA( f9_arg0 )
	if Engine.HasAcceptedEULA( f9_arg0 ) or Engine.GetDvarBool( "limited_mode" ) then
		LoginNextStep( f9_arg0 )
	else
		LUI.FlowManager.RequestAddMenu( nil, "EULA", true, f9_arg0, false, {
			callback = function ()
				LoginNextStep( f9_arg0 )
			end
		} )
	end
end

f0_local0 = false
f0_local1 = function ( f10_arg0 )
	LUI.FlowManager.RequestAddMenu( nil, "boot_hdr", true, f10_arg0, false, {
		callback = function ()
			UPVAL0 = true
			LoginNextStep( f10_arg0 )
		end
	} )
end

function CheckHDR( f11_arg0 )
	UPVAL0 = false
	if Engine.IsProfileSignedIn( f11_arg0 ) then
		local f11_local0 = CoD.CanToggleHDRRuntime()
		if Engine.GetProfileData( "hasEverPlayed_MainMenu", f11_arg0 ) or Engine.GetDvarBool( "limited_mode" ) or not CoD.IsHDRAvailable() then
			LoginNextStep( f11_arg0 )
		elseif f11_local0 then
			LUI.FlowManager.RequestAddMenu( nil, "request_yesno_popup_generic", true, f11_arg0, nil, {
				popup_title = Engine.Localize( "@MENU_HDR" ),
				default_focus_index = 1,
				yes_action = function ()
					CoD.SetHDREnabled( Engine.GetControllerForLocalClient( 0 ), 1 )
					f0_local1( f11_arg0 )
				end,
				no_action = function ()
					CoD.SetHDREnabled( Engine.GetControllerForLocalClient( 0 ), 0 )
					LoginNextStep( f11_arg0 )
				end,
				message_text = Engine.Localize( "@MENU_HDR_BOOT_DESC" )
			} )
		else
			f0_local1( f11_arg0 )
		end
	else
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f11_arg0, false, {
			next_menu = "boot_hdr"
		} )
	end
end

function CheckBrightness( f12_arg0 )
	if Engine.IsProfileSignedIn( f12_arg0 ) then
		if Engine.GetProfileData( "hasEverPlayed_MainMenu", f12_arg0 ) or Engine.GetDvarBool( "limited_mode" ) or f0_local0 then
			LoginNextStep( f12_arg0 )
		else
			LUI.FlowManager.RequestAddMenu( nil, "boot_brightness", true, f12_arg0, false, {
				callback = function ()
					LoginNextStep( f12_arg0 )
				end
			} )
		end
	else
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f12_arg0, false, {
			next_menu = "boot_brightness"
		} )
	end
end

function CheckMargins( f13_arg0 )
	if Engine.IsConsoleGame() then
		if Engine.IsProfileSignedIn( f13_arg0 ) then
			if Engine.GetProfileData( "hasEverPlayed_MainMenu", f13_arg0 ) or Engine.GetDvarBool( "limited_mode" ) then
				LoginNextStep( f13_arg0 )
			else
				LUI.FlowManager.RequestAddMenu( nil, "boot_screen_margins", true, f13_arg0, false, {
					callback = function ()
						LoginNextStep( f13_arg0 )
					end
				} )
			end
		else
			LUI.FlowManager.RequestAddMenu( nil, "no_profile_warning_popmenu", false, f13_arg0, false, {
				next_menu = "boot_screen_margins"
			} )
		end
	else
		LoginNextStep( f13_arg0 )
	end
end

function ResolveSignIn( f14_arg0 )
	if Engine.IsProfileSignedIn( f14_arg0 ) == false then
		LUI.FlowManager.RequestAddMenu( nil, "no_profile_force_popmenu", false, f14_arg0, false, {} )
	else
		LoginNextStep( f14_arg0 )
	end
end

function CheckSignedIn( f15_arg0 )
	Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START", f15_arg0 )
	Engine.ExecNow( "resetViewport" )
	if Engine.IsPS4() and Engine.NeedToDeleteSaveData( f15_arg0 ) then
		LUI.FlowManager.RequestAddMenu( self, "error_corrupt_savedata", false, f15_arg0, true, {} )
		return 
	elseif (Engine.IsXB3() or Engine.IsPCApp()) and Engine.IsProfileSignedIn( f15_arg0 ) == false then
		Engine.ExecWithResolve( "xsignin", ResolveSignIn, f15_arg0 )
	else
		LoginNextStep( f15_arg0 )
	end
end

f0_local2 = 0
local f0_local3 = {
	[#f0_local3 + 1] = CheckLanguage,
	[#f0_local3 + 1] = CheckSignedIn,
	[#f0_local3 + 1] = CheckEULA,
	[#f0_local3 + 1] = CheckHDR,
	[#f0_local3 + 1] = CheckBrightness,
	[#f0_local3 + 1] = CheckMargins,
	[#f0_local3 + 1] = GoToMainMenu
}
function LoginNextStep( f16_arg0 )
	assert( f16_arg0 ~= nil )
	if f0_local2 < #f0_local3 then
		UPVAL0 = f0_local2 + 1
	end
	local f16_local0 = f0_local3[f0_local2]
	if f16_local0 ~= nil then
		f16_local0( f16_arg0 )
	end
end

function OnLockoutButton( f17_arg0, f17_arg1 )
	if not f17_arg0.m_inputDisabled then
		Engine.PlaySound( CoD.SFX.MenuAccept )
		if Engine.GetDvarBool( "limited_mode_2" ) then
			Engine.ExecNow( "set beautiful_corner_hdr_demo 1" )
			Engine.ExecNow( "set limited_mode 1" )
			Engine.ExecNow( "set r_hdrDisplaySupportEnabled 1" )
			Engine.ExecNow( "set beautiful_corner_hdr_demo_show_indicators 1" )
			Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START" )
			Engine.ExecNow( "resetViewport" )
			Engine.StopMenuVideo()
			Engine.StreamingInstallMap( "gulag", "devmap gulag" )
		else
			UPVAL0 = 0
			LoginNextStep( f17_arg1.controller )
		end
	end
end

function OnBackOut( f18_arg0, f18_arg1 )
	if not f18_arg0.m_inputDisabled and not Engine.IsConsoleGame() then
		LUI.FlowManager.RequestAddMenu( f18_arg0, "quit_popmenu", false, f18_arg1.controller )
	end
end

local f0_local4 = function ( f19_arg0, f19_arg1 )
	local f19_local0 = Engine.IsGamepadEnabled()
	local f19_local1 = Engine.IsPS4Controller()
	if f19_local0 ~= f19_arg0.previousIsGamepad or f19_local1 ~= f19_arg0.previousIsPS4Ctrl then
		f19_arg0.previousIsGamepad = f19_local0
		f19_arg0.previousIsPS4Ctrl = f19_local1
		local f19_local2 = f19_arg0
		local f19_local3 = f19_arg0.setText
		local f19_local4 = Engine.Localize
		local f19_local5
		if f19_local0 then
			f19_local5 = "@PLATFORM_PRESS_START_BUTTON"
			if not f19_local5 then
			
			else
				f19_local3( f19_local2, f19_local4( f19_local5 ) )
			end
		end
		f19_local5 = "@PLATFORM_PRESS_START_PC"
	end
end

function main_lockout()
	local f20_local0 = Engine.GetFirstActiveController()
	local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	Engine.SetGameMode( "none" )
	Engine.SetSplitScreen( false )
	Engine.PlayMusic( CoD.Music.MainSPMusic, 1, 660 )
	PersistentBackground.Set( PersistentBackground.Variants.Default )
	Engine.SetDvarString( "s18", "0" )
	local f20_local2 = function ()
		if Engine.GetDvarBool( "ui_skipMainLockout" ) and not SkipToMenu( f20_local0 ) then
			GoToMainMenu( f20_local0 )
		end
	end
	
	if Engine.GetDvarBool( "ui_skipMainLockout" ) then
		Engine.ExecNow( "forcenosplitscreencontrol main_lockout_START" )
		Engine.ExecNow( "resetViewport", f20_local0 )
		self:registerEventHandler( "menu_create", f20_local2 )
	else
		Engine.ExecNow( "forcesplitscreencontrol main_lockout" )
		PersistentBackground.ChangeBackground( nil, CoD.Background.SPLockout )
		local f20_local3 = CoD.CreateState( -290, -132.29, 290, 12.29, CoD.AnchorTypes.None )
		f20_local3.material = RegisterMaterial( "h1_logo_mw" )
		local self = LUI.UIImage.new( f20_local3 )
		self.id = "Logo"
		self:addElement( self )
		local f20_local5 = CoD.CreateState( 0, -40, 0, -30, CoD.AnchorTypes.BottomLeftRight )
		f20_local5.font = CoD.TextSettings.H1TitleFont.Font
		f20_local5.color = Colors.h1.light_grey
		f20_local5.alpha = 0.7
		local self = LUI.UIText.new( f20_local5 )
		self.id = "LockoutLegal"
		self:setText( Engine.Localize( "@LUA_MENU_LEGAL_COPYRIGHT_SHORT" ) )
		self:addElement( self )
		local f20_local7 = CoD.CreateState( 0, 500, 0, 515, CoD.AnchorTypes.TopLeftRight )
		f20_local7.font = CoD.TextSettings.H1TitleFont.Font
		f20_local7.horizontalAlignment = LUI.HorizontalAlignment.Center
		local self = LUI.UIText.new( f20_local7 )
		self:setTextStyle( CoD.TextStyle.ShadowedMore )
		local self = self
		local f20_local10 = self.setText
		local self = Engine.Localize
		local f20_local12
		if Engine.IsConsoleGame() or Engine.IsGamepadEnabled() then
			f20_local12 = "@PLATFORM_PRESS_START_BUTTON"
			if not f20_local12 then
			
			else
				f20_local10( self, self( f20_local12 ) )
				if Engine.IsPC() then
					self.previousIsGamepad = Engine.IsGamepadEnabled()
					self.previousIsPS4Ctrl = Engine.IsPS4Controller()
					self:registerEventHandler( "onControllerChange", f0_local4 )
				end
				self:addElement( self )
				f20_local10 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
				f20_local10.material = RegisterMaterial( "black" )
				f20_local10.alpha = 1
				self = LUI.UIImage.new( f20_local10 )
				self.id = "LockoutFade"
				self:registerAnimationState( "default", f20_local10 )
				self:registerAnimationState( "full", {
					alpha = 0
				} )
				self:registerEventHandler( "fadeToBlack", MBh.AnimateToState( "default", 750 ) )
				self:animateInSequence( {
					{
						"default",
						1000
					},
					{
						"full",
						1000
					}
				} )
				self:addElement( self )
				self = LUI.UIBindButton.new( {
					leftAnchor = true,
					rightAnchor = false,
					topAnchor = true,
					bottomAnchor = false,
					top = 0,
					bottom = 720,
					left = 0,
					right = 1280
				} )
				self.id = "LockoutBindButton"
				self:registerEventHandler( "button_start", OnLockoutButton )
				self:registerEventHandler( "button_action", OnLockoutButton )
				self:registerEventHandler( "button_secondary", OnBackOut )
				if Engine.IsPC() then
					self:setHandleMouseButton( true )
					self:registerEventHandler( "leftmousedown", OnLockoutButton )
					self:registerEventHandler( "button_shoulderl", OnLockoutButton )
					self:registerEventHandler( "button_shoulderr", OnLockoutButton )
					self:registerEventHandler( "popup_active", function ( element, event )
						element.m_inputDisabled = true
					end )
					self:registerEventHandler( "popup_inactive", function ( element, event )
						element.m_inputDisabled = false
					end )
				end
				self.handlePrimary = true
				self:addElement( self )
			end
		end
		f20_local12 = "@PLATFORM_PRESS_START_PC"
	end
	return self
end

LUI.MenuBuilder.registerType( "main_lockout", main_lockout )
LockTable( _M )
