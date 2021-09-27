local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
LUI.EULA = InheritFrom( LUI.EULABase )
LUI.EULA.new = function ( f1_arg0, f1_arg1 )
	return LUI.EULABase.new( CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All ), {
		textStrings = LUI.EULABase.CreateTextStrings( "@PLATFORM_EULA_", 8 ),
		declineCallback = f1_arg1.declineCallback,
		acceptCallback = function ( f2_arg0 )
			Engine.AcceptEULA( f2_arg0 )
			if f1_arg1.callback then
				f1_arg1.callback()
			end
		end
		
	} )
end

LUI.MenuBuilder.registerPopupType( "EULA", LUI.EULA.new )
