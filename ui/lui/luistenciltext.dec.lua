LUI.UIStencilText = InheritFrom( LUI.UIElement )
LUI.UIStencilText.build = function ( menu, controller )
	local self = LUI.UIStencilText.new( nil, controller )
	if controller.text then
		LUI.UIStencilText.setText( self, controller.text )
	end
	return self
end

LUI.UIStencilText.new = function ( menu, controller )
	local self = LUI.UIElement.new( menu )
	self:setClass( LUI.UIStencilText )
	self:setUseStencil( true )
	local f2_local1 = true
	local f2_local2 = 0
	if controller and controller.fakeNoWrap then
		f2_local1 = false
		f2_local2 = 1200
	end
	local f2_local3 = {
		topAnchor = true,
		bottomAnchor = true,
		leftAnchor = true,
		rightAnchor = f2_local1,
		top = 0,
		bottom = 0,
		left = 0,
		right = f2_local2
	}
	local f2_local4
	if menu then
		f2_local4 = menu.font
		if not f2_local4 then
		
		else
			f2_local3.font = f2_local4
			if menu then
				f2_local4 = menu.alignment
				if not f2_local4 then
				
				else
					f2_local3.alignment = f2_local4
					if menu then
						f2_local4 = menu.color
						if not f2_local4 then
						
						else
							f2_local3.color = f2_local4
							f2_local4 = LUI.UIText.new( f2_local3 )
							self.text = f2_local4
							self:addElement( f2_local4 )
							return self
						end
					end
					f2_local4 = nil
				end
			end
			f2_local4 = nil
		end
	end
	f2_local4 = CoD.TextSettings.BodyFont.Font
end

LUI.UIStencilText.setText = function ( f3_arg0, f3_arg1 )
	f3_arg0.text:setText( f3_arg1 )
end

LUI.UIStencilText.setTextStyle = function ( f4_arg0, f4_arg1 )
	f4_arg0.text:setTextStyle( f4_arg1 )
end

LUI.UIStencilText.id = "LUIStencilText"
LUI.MenuBuilder.registerType( "UIStencilText", LUI.UIStencilText.build )
