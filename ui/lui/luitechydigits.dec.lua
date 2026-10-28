LUI.UITechyDigits = InheritFrom( LUI.UIText )
LUI.UITechyDigits.build = function ( f1_arg0, f1_arg1 )
	return LUI.UITechyDigits.new()
end

LUI.UITechyDigits.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5 )
	local self = LUI.UIText.new()
	if LUI.UIElement.setupTechyDigits then
		self:setupTechyDigits()
	end
	self.digits = f2_arg0 or 10
	self.longWait = f2_arg1 or 340
	self.shortWaitMin = f2_arg2 or 20
	self.shortWaitMax = f2_arg3 or 60
	self.pulsesMin = f2_arg4 or 3
	self.pulsesMax = f2_arg5 or 7
	self:setClass( LUI.UITechyDigits )
	return self
end

LUI.UITechyDigits.id = "LUITechyDigits"
