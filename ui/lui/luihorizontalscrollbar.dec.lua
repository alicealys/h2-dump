LUI.UIHorizontalScrollbar = {}
LUI.UIHorizontalScrollbar.build = function ( f1_arg0, f1_arg1 )
	return LUI.UIHorizontalScrollbar.new( nil, f1_arg1.vlist, f1_arg1.bar_width, f1_arg1.border, f1_arg1.active_alpha, f1_arg1.inactive_alpha, f1_arg1.on_move_func, f1_arg1.bar_color, f1_arg1.bg_color, f1_arg1.bar_material_unselected, f1_arg1.bg_material_unselected, f1_arg1.bar_material_selected, f1_arg1.bg_material_selected, f1_arg1.fixedHandleSize )
end

LUI.UIHorizontalScrollbar.new = function ( f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9, f2_arg10, f2_arg11, f2_arg12, f2_arg13, f2_arg14, f2_arg15 )
	return LUI.UIScrollbarHelper.new( "LUIHorizontalScrollbar", true, {
		leftAnchor = true,
		topAnchor = true,
		rightAnchor = false,
		bottomAnchor = true,
		top = 1,
		bottom = -1
	}, f2_arg0, f2_arg1, f2_arg2, f2_arg3, f2_arg4, f2_arg5, f2_arg6, f2_arg7, f2_arg8, f2_arg9, f2_arg10, f2_arg11, f2_arg12, f2_arg13, f2_arg14, f2_arg15 )
end

LUI.UIHorizontalScrollbar.ManualUpdate = function ( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5 )
	LUI.UIScrollbarHelper.ManualUpdate( f3_arg0, f3_arg1, f3_arg2, f3_arg3, f3_arg4, f3_arg5 )
end

LUI.UIHorizontalScrollbar.RatioBasedUpdate = function ( f4_arg0, f4_arg1 )
	LUI.UIScrollbarHelper.GetRatioBasedUpdate( f4_arg0, f4_arg1 )
end

