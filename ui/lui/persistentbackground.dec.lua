PersistentBackground = {
	BlackFadeSequenceEventName = "persistent_background_black_fade_sequence",
	ChangeEventName = "persistent_background_change"
}
local f0_local0 = function ( f1_arg0 )
	local f1_local0 = Engine.GetLuiRoot()
	if f1_local0.persistentBackground then
		f1_arg0.dispatchChildren = true
		f1_local0.persistentBackground:processEvent( f1_arg0 )
	end
end

local f0_local1 = function ( f2_arg0 )
	if f2_arg0 ~= PersistentBackground.currentVideo or not Engine.IsVideoPlaying( f2_arg0 ) then
		Engine.PlayMenuVideo( f2_arg0, 1 )
		PersistentBackground.currentVideo = f2_arg0
	end
end

PersistentBackground.Set = function ( f3_arg0 )
	if f3_arg0 == PersistentBackground.current then
		return 
	end
	local f3_local0 = Engine.GetLuiRoot()
	if not f3_local0.persistentBackground then
		local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
		self.id = "persistent_bg_container"
		self:animateToState( "default" )
		self:setPriority( -1000 )
		f3_local0.persistentBackground = self
		f3_local0:addElement( self )
		local f3_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f3_local2.material = RegisterMaterial( "black" )
		f3_local2.alpha = 1
		local f3_local3 = LUI.UIImage.new( f3_local2 )
		f3_local3:registerAnimationState( "fade", {
			alpha = 0
		} )
		f3_local3.id = "blackFadeIn"
		f3_local3:animateToState( "fade" )
		f3_local3:setPriority( 1000 )
		f3_local3:registerEventHandler( PersistentBackground.BlackFadeSequenceEventName, function ( element, event )
			element:animateInSequence( {
				{
					"default",
					0
				},
				{
					"default",
					event.duration1 or 500
				},
				{
					"fade",
					event.duration2 or 1000
				}
			} )
		end )
		self:addElement( f3_local3 )
	end
	if f3_arg0 then
		if f3_local0.persistentBackground.variant then
			f3_local0.persistentBackground.variant:close()
		end
		f3_local0.persistentBackground.variant = f3_arg0()
		f3_local0.persistentBackground:addElement( f3_local0.persistentBackground.variant )
		f3_local0.persistentBackground.variant:processEvent( {
			name = "menu_create",
			dispatchChildren = true
		} )
	end
	PersistentBackground.current = f3_arg0
end

PersistentBackground.Close = function ()
	if not PersistentBackground then
		return 
	else
		local f5_local0 = Engine.GetLuiRoot()
		if not f5_local0.persistentBackground then
			return 
		else
			f5_local0.persistentBackground:close()
			f5_local0.persistentBackground = nil
		end
	end
end

PersistentBackground.BlackFadeSequence = function ( f6_arg0, f6_arg1 )
	f0_local0( {
		name = PersistentBackground.BlackFadeSequenceEventName,
		duration1 = f6_arg0,
		duration2 = f6_arg1
	} )
end

PersistentBackground.FadeFromBlackSlow = function ()
	PersistentBackground.BlackFadeSequence( 500, 1000 )
end

PersistentBackground.FadeFromBlackFast = function ()
	PersistentBackground.BlackFadeSequence( 200, 500 )
end

PersistentBackground.ChangeBackground = function ( f9_arg0, f9_arg1, f9_arg2 )
	if not PersistentBackground then
		return 
	elseif f9_arg0 ~= PersistentBackground.currentImage or f9_arg1 ~= PersistentBackground.currentVideo then
		PersistentBackground.currentImage = f9_arg0
		PersistentBackground.currentVideo = f9_arg1
		local f9_local0 = nil
		if f9_arg0 ~= nil then
			f9_local0 = RegisterMaterial( f9_arg0 )
		end
		f0_local0( {
			name = PersistentBackground.ChangeEventName,
			newImage = f9_local0,
			newVideo = f9_arg1,
			isLooped = f9_arg2
		} )
		PersistentBackground.BlackFadeSequence( 1, 250 )
	end
end

local f0_local2 = function ( f10_arg0, f10_arg1 )
	PersistentBackground.FadeFromBlackSlow()
	f10_arg0:animateToState( "hidden" )
end

local f0_local3 = function ()
	local self = nil
	if Engine.GetDvarBool( "vlDepotLoaded" ) then
		self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
	else
		f0_local1( CoD.Background.Default )
		local f11_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f11_local1.color = Colors.h1.black
		f11_local1.alpha = 1
		self = LUI.UIImage.new( f11_local1 )
		self:setupFullWindowElement()
		self:registerAnimationState( "hidden", {
			alpha = 0
		} )
		self:registerDvarHandler( "vlDepotLoaded", f0_local2 )
		local f11_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f11_local2.material = RegisterMaterial( "cinematic" )
		f11_local2.alpha = 1
		local f11_local3 = LUI.UIImage.new( f11_local2 )
		f11_local3:setupLetterboxElement()
		self:addElement( f11_local3 )
	end
	return self
end

local f0_local4 = function ( f12_arg0, f12_arg1 )
	if Engine.GetDvarBool( "virtualLobbyPresentable" ) and f12_arg0.PBTimer then
		PersistentBackground.FadeFromBlackSlow()
		f12_arg0:animateToState( "hidden" )
		LUI.UITimer.Stop( f12_arg0.PBTimer )
		f12_arg0:removeElement( f12_arg0.PBTimer )
		f12_arg0.PBTimer = nil
	end
end

PersistentBackground.Variants = {
	Default = function ()
		f0_local1( CoD.Background.Default )
		local f15_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f15_local0.material = RegisterMaterial( "cinematic" )
		local self = LUI.UIImage.new( f15_local0 )
		self:setupLetterboxElement()
		self:registerEventHandler( PersistentBackground.ChangeEventName, function ( element, event )
			if event.newVideo then
				element:setImage( f15_local0.material )
				if event.isLooped == nil then
					Engine.PlayMenuVideo( event.newVideo, 0, false, false, false )
				else
					Engine.PlayMenuVideo( event.newVideo, 0, not event.isLooped, false, false )
				end
			else
				element:setImage( event.newImage )
			end
		end )
		local f15_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f15_local2.color = Colors.h1.black
		f15_local2.alpha = 1
		local f15_local3 = LUI.UIImage.new( f15_local2 )
		f15_local3:setupFullWindowElement()
		f15_local3:addElement( self )
		return f15_local3
	end,
	VirtualLobby = function ()
		local self = nil
		if Engine.GetDvarBool( "virtualLobbyPresentable" ) then
			self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ) )
		else
			f0_local1( CoD.Background.Default )
			local f13_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
			f13_local1.color = Colors.h1.black
			f13_local1.alpha = 1
			self = LUI.UIImage.new( f13_local1 )
			self:setupFullWindowElement()
			self:registerAnimationState( "hidden", {
				alpha = 0
			} )
			self:registerEventHandler( "checkLobbyPresentable", f0_local4 )
			local f13_local2 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
			f13_local2.material = RegisterMaterial( "cinematic" )
			f13_local2.alpha = 1
			local f13_local3 = LUI.UIImage.new( f13_local2 )
			f13_local3:setupLetterboxElement()
			self:addElement( f13_local3 )
			local f13_local4 = LUI.UITimer.new( 1, "checkLobbyPresentable" )
			self:addElement( f13_local4 )
			self.PBTimer = f13_local4
		end
		return self
	end,
	AAR = function ()
		PersistentBackground.currentVideo = nil
		local f14_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
		f14_local0.material = RegisterMaterial( "background_mp" )
		local self = LUI.UIImage.new( f14_local0 )
		self:setupLetterboxElement()
		return self
	end,
	Depot = f0_local3
}
