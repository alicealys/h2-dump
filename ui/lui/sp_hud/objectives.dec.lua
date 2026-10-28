local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
LUI.Objectives = InheritFrom( LUI.UIElement )
f0_local0 = nil
f0_local1 = "disabled"
function OnKeyChange( f1_arg0, f1_arg1 )
	if not f1_arg1.keyUp then
		if not f1_arg0.isVisible and Engine.GetDvarBool( "hud_drawHud" ) then
			OnOpenObjectives( f1_arg0 )
		end
	else
		OnCloseObjectives( f1_arg0 )
	end
end

function OnOpenObjectives( f2_arg0, f2_arg1 )
	if not f2_arg0.isVisible then
		f2_arg0.isVisible = true
		LUI.sp_hud.ObjectivesFrame.Show( f0_local0.container, true, true, true )
		f0_local1 = "enabled"
		f2_arg0:animateToState( f0_local1 )
	end
end

function OnCloseObjectives( f3_arg0, f3_arg1 )
	if f3_arg0.isVisible then
		f3_arg0.isVisible = false
		f0_local1 = "disabled"
		f3_arg0:animateToState( f0_local1 )
		f0_local0.container:closeChildren()
	end
end

function Update( f4_arg0 )
	if not Engine.GetDvarBool( "hud_drawHud" ) then
		OnCloseObjectives( f0_local0 )
		return 
	elseif f0_local0.container then
		f0_local0.container:processEvent( {
			name = "update_minimap"
		} )
	end
end

LUI.Objectives.new = function ( f5_arg0 )
	local f5_local0 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f5_local0.alpha = 0
	f0_local0 = LUI.UIElement.new( f5_local0 )
	f0_local0.id = "sp_objectivesId"
	f0_local0:setClass( LUI.Objectives )
	f0_local0.isVisible = false
	f0_local0:setupLetterboxElement()
	f0_local0:registerAnimationState( "default", {
		alpha = 0
	} )
	f0_local0:registerAnimationState( "enabled", {
		alpha = 1
	} )
	f0_local0:registerEventHandler( "toggle_objective", OnKeyChange )
	f0_local0:animateToState( "default", 0 )
	local f5_local1 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
	f5_local1.alpha = 1
	f0_local0.container = LUI.UIElement.new( f5_local1 )
	f0_local0.container.id = "sp_objectivesId_sub"
	f0_local0:addElement( f0_local0.container )
	f0_local0:registerEventHandler( "update_minimap", Update )
	return f0_local0
end

LockTable( _M )
