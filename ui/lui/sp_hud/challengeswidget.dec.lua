local f0_local0 = module
local f0_local1, f0_local2 = ...
f0_local0( f0_local1, package.seeall )
CoD.PrintModuleLoad( _NAME )
ChallengesCSV = {
	File = "sp/upgrade_challenges.csv",
	Cols = {
		Index = 0,
		Ref = 1,
		Name = 2,
		Desc = 3,
		OnCompleteMsg = 4,
		NeededMsg = 5,
		TrackerVar = 6,
		ValueVar = 7,
		GoalVar = 8,
		LevelEarnedVar = 9,
		GoalsStart = 10
	}
}
LUI.ChallengesWidget = InheritFrom( LUI.UIElement )
LUI.ChallengesWidget.build = function ( f1_arg0, f1_arg1 )
	return LUI.ChallengesWidget.new( nil, f1_arg1 )
end

LUI.ChallengesWidget.new = function ( f2_arg0, f2_arg1 )
	if not f2_arg0 then
		f2_arg0 = CoD.CreateState( 282, 380, 880, 560, CoD.AnchorTypes.TopLeft )
	end
	if not f2_arg1 then
		f2_arg1 = {}
	end
	local self = LUI.UIElement.new( f2_arg0 )
	self:setClass( LUI.ChallengesWidget )
	self.id = "challenge_widget_container"
	local f2_local1 = CoD.TextSettings.TitleFontMediumLargeBold
	local f2_local2 = CoD.CreateState( 15, 0, 0, f2_local1.Height, CoD.AnchorTypes.TopLeftRight )
	f2_local2.font = f2_local1.Font
	f2_local2.alignment = LUI.Alignment.Left
	f2_local2.color = Colors.white
	local f2_local3 = LUI.UIText.new( f2_local2 )
	f2_local3.id = "challenges_title_text"
	f2_local3:setText( Engine.Localize( "UPGRADE_EXO_CHALLENGES" ) )
	self:addElement( f2_local3 )
	f2_local2 = CoD.CreateState( 0, f2_local1.Height + 16, 0, 0, CoD.AnchorTypes.All )
	f2_local2.spacing = 8
	local f2_local4 = LUI.UIVerticalList.new( f2_local2 )
	self:addElement( f2_local4 )
	local f2_local5 = 0
	while Engine.TableLookupByRow( ChallengesCSV.File, f2_local5, ChallengesCSV.Cols.Index ) ~= "" do
		f2_local4:addElement( CreateChallengeRow( f2_local5, f2_arg0.right - f2_arg0.left, f2_arg1.missionComplete ) )
		f2_local5 = f2_local5 + 1
	end
	return self
end

LUI.ChallengesWidget.startBarFillAnim = function ( f3_arg0, f3_arg1 )
	f3_arg0:processEvent( {
		name = "start_bar_fill_anims",
		anim_length = f3_arg1
	} )
end

function GetMaxStage( f4_arg0 )
	local f4_local0 = 0
	while Engine.TableLookupByRow( ChallengesCSV.File, f4_arg0, ChallengesCSV.Cols.GoalsStart + f4_local0 ) ~= "" do
		f4_local0 = f4_local0 + 1
	end
	return f4_local0 - 1
end

function GetGoalValues( f5_arg0, f5_arg1 )
	local f5_local0 = GetMaxStage( f5_arg0 )
	if f5_local0 < 0 then
		return 0
	end
	local f5_local1 = f5_arg1 + tonumber( Engine.GetProfileData( "sp_upgradeChallengeStage_" .. f5_arg0 ) )
	local f5_local2 = 0
	local f5_local3 = 0
	local f5_local4 = 0
	for f5_local5 = ChallengesCSV.Cols.GoalsStart, ChallengesCSV.Cols.GoalsStart + f5_local0, 1 do
		local f5_local8 = tonumber( Engine.TableLookupByRow( ChallengesCSV.File, f5_arg0, f5_local5 ) )
		f5_local2 = f5_local3
		f5_local3 = f5_local3 + f5_local8
		if f5_local4 == f5_local1 then
			break
		end
		f5_local4 = f5_local4 + 1
	end
	return f5_local2, f5_local3
end

function GetFullEarnedValue( f6_arg0, f6_arg1, f6_arg2, f6_arg3, f6_arg4, f6_arg5 )
	local f6_local0 = 0
	local f6_local1 = f6_arg4
	local f6_local2 = GetMaxStage( f6_arg0 )
	if f6_local2 < 0 then
		return 0
	else
		local f6_local3
		if f6_arg1 ~= 1 or f6_local2 > f6_local1 then
			f6_local3 = false
		else
			f6_local3 = true
		end
	end
	if 0 < f6_arg1 and not f6_local3 then
	
	else
		f6_local0 = -f6_arg3
	end
	while f6_local1 < f6_arg4 + f6_arg1 and f6_local1 <= f6_local2 do
		local f6_local4 = Engine.TableLookupByRow( ChallengesCSV.File, f6_arg0, ChallengesCSV.Cols.GoalsStart + f6_local1 )
		if f6_local1 == f6_arg4 then
			f6_local0 = f6_local4 - f6_arg3
		else
			f6_local0 = f6_local0 + f6_local4
		end
		f6_local1 = f6_local1 + 1
	end
	return f6_arg2 + f6_local0
end

function ProcessIntelChallengeProgression( f7_arg0, f7_arg1 )
	local f7_local0 = Engine.GetProfileData( "sp_upgradeChallengeProgress_" .. f7_arg1 )
	local f7_local1 = Game.GetOmnvar( "ui_pm_p_start_intel" )
	local f7_local2 = tonumber( Engine.GetProfileData( "sp_upgradeChallengeStage_" .. f7_arg1 ) )
	local f7_local3 = tonumber( Engine.TableLookupByRow( ChallengesCSV.File, f7_arg0, ChallengesCSV.Cols.GoalsStart + f7_local2 ) )
	local f7_local4 = Game.GetOmnvar( "ui_pm_g_start_intel" )
	local f7_local5 = f7_local2 - f7_local4
	return f7_local5, f7_local0, f7_local1, GetFullEarnedValue( f7_arg0, f7_local5, f7_local0, f7_local1, f7_local4, f7_arg1 ), f7_local3
end

function CreateChallengeRow( f8_arg0, f8_arg1, f8_arg2 )
	local f8_local0 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.Index )
	local f8_local1 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.Name )
	local f8_local2 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.ValueVar )
	local f8_local3 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.GoalVar )
	local f8_local4 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.TrackerVar )
	local f8_local5 = Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.LevelEarnedVar )
	local f8_local6 = Game.GetOmnvar( f8_local4 )
	local f8_local7 = Game.GetOmnvar( f8_local2 )
	local f8_local8 = Game.GetOmnvar( f8_local5 )
	local f8_local9 = Game.GetOmnvar( f8_local3 )
	if f8_local7 - f8_local8 < 0 then
		local f8_local10 = 0
	end
	local f8_local11 = 0
	local f8_local12 = 0
	if f8_arg0 == 3 then
		local f8_local6, f8_local7, f8_local10, f8_local8, f8_local9 = ProcessIntelChallengeProgression( f8_arg0, f8_local0 )
		f8_local11, f8_local12 = GetGoalValues( f8_arg0, 0 )
	else
		local f8_local13 = f8_local6
		if f8_arg2 then
			f8_local13 = 0
		end
		f8_local11, f8_local12 = GetGoalValues( f8_arg0, f8_local13 )
	end
	if f8_local6 > 0 then
		local f8_local10 = 0
	end
	local f8_local13
	if f8_local10 > 0 then
		f8_local13 = f8_local10 / f8_local9
		if not f8_local13 then
		
		else
			local f8_local14 = math.max( 0, f8_local7 / f8_local9 - f8_local13 )
			local f8_local15 = tonumber( Engine.TableLookupByRow( ChallengesCSV.File, f8_arg0, ChallengesCSV.Cols.GoalsStart + GetMaxStage( f8_arg0 ) ) )
			local f8_local16
			if f8_local15 > f8_local9 or f8_local15 > f8_local7 then
				f8_local16 = false
			else
				f8_local16 = true
			end
			local f8_local17 = 575
			local f8_local18 = f8_local17
			local f8_local19 = f8_local13 * f8_local18
			local f8_local20 = f8_local14 * f8_local18
			local self = LUI.UIElement.new( CoD.CreateState( 0, 0, 0, 30, CoD.AnchorTypes.TopLeftRight ) )
			self.id = "challenge_" .. f8_arg0
			local f8_local22 = LUI.UIElement.new( CoD.CreateState( 0, 0, f8_local17, 0, CoD.AnchorTypes.TopBottomLeft ) )
			f8_local22.id = "challenge_row_left_pane"
			self:addElement( f8_local22 )
			local f8_local23 = CoD.CreateState( -200, 20, -74, 20 + CoD.TextSettings.TitleFontSmall.Height, CoD.AnchorTypes.TopLeft )
			f8_local23.font = CoD.TextSettings.TitleFontSmall.Font
			f8_local23.alignment = LUI.Alignment.Right
			local f8_local24 = LUI.UIText.new( f8_local23 )
			f8_local24.id = "challenge_name_text"
			f8_local24:setText( Engine.Localize( f8_local1 ) )
			f8_local22:addElement( f8_local24 )
			if f8_local16 == true then
				local f8_local25, f8_local26, f8_local27, f8_local28 = GetTextDimensions( Engine.Localize( "LUA_MENU_COMPLETED_CAPS" ), CoD.TextSettings.TitleFontSmall.Font, CoD.TextSettings.TitleFontSmall.Height )
				local f8_local29 = f8_local27 - f8_local25
				local f8_local30 = LUI.UIBorder.new( CoD.CreateState( 0, 28, 0, 35, CoD.AnchorTypes.TopLeftRight ) )
				f8_local30.id = "challenge_progress_container"
				f8_local22:addElement( f8_local30 )
				local f8_local31 = f8_local17 / 2 - f8_local29 / 2 - 27
				f8_local23 = CoD.CreateState( 0, 0, f8_local31, 0, CoD.AnchorTypes.TopBottomLeft )
				f8_local23.material = RegisterMaterial( "white" )
				f8_local23.color = Colors.grey_5
				f8_local23.alpha = 0.5
				local f8_local32 = LUI.UIImage.new( f8_local23 )
				f8_local32.id = "bar_left_bg"
				f8_local30:addElement( f8_local32 )
				f8_local23 = CoD.CreateState( -f8_local31, 0, 0, 0, CoD.AnchorTypes.TopBottomRight )
				f8_local23.material = RegisterMaterial( "white" )
				f8_local23.color = Colors.grey_5
				f8_local23.alpha = 0.5
				local f8_local33 = LUI.UIImage.new( f8_local23 )
				f8_local33.id = "bar_right_bg"
				f8_local30:addElement( f8_local33 )
				f8_local23 = CoD.CreateState( -f8_local29 / 2, 21, f8_local29 / 2, 21 + CoD.TextSettings.TitleFontSmall.Height, CoD.AnchorTypes.Top )
				f8_local23.font = CoD.TextSettings.TitleFontSmall.Font
				f8_local23.alignment = LUI.Alignment.Left
				local f8_local34 = LUI.UIText.new( f8_local23 )
				f8_local34.id = "challenge_Ccomplete_text_id"
				f8_local34:setText( Engine.Localize( "LUA_MENU_COMPLETED_CAPS" ) )
				f8_local22:addElement( f8_local34 )
			else
				local f8_local25 = {
					color = Colors.white,
					alpha = 0.85
				}
				local f8_local26 = {
					alpha = 0
				}
				local f8_local27 = {
					alpha = 1
				}
				f8_local23 = CoD.CreateState( -200, 20, -35, 20 + CoD.TextSettings.TitleFontSmall.Height, CoD.AnchorTypes.TopLeft )
				f8_local23.font = CoD.TextSettings.TitleFontSmall.Font
				f8_local23.alignment = LUI.Alignment.Right
				local f8_local28 = LUI.UIText.new( f8_local23 )
				f8_local28.id = "challenge_previous_goal_text"
				f8_local28:setText( f8_local11 )
				f8_local22:addElement( f8_local28 )
				local f8_local29 = LUI.UIBorder.new( CoD.CreateState( 0, 28, 0, 35, CoD.AnchorTypes.TopLeftRight ) )
				f8_local29.id = "challenge_progress_container"
				f8_local22:addElement( f8_local29 )
				f8_local23 = CoD.CreateState( 0, 0, 0, 0, CoD.AnchorTypes.All )
				f8_local23.material = RegisterMaterial( "white" )
				f8_local23.color = Colors.grey_5
				f8_local23.alpha = 0.1
				local f8_local30 = LUI.UIImage.new( f8_local23 )
				f8_local30.id = "challenge_progress_bg"
				f8_local29:addElement( f8_local30 )
				f8_local23 = CoD.CreateState( 1, 0, f8_local19, 0, CoD.AnchorTypes.TopBottomLeft )
				f8_local23.material = RegisterMaterial( "white" )
				f8_local23.color = Colors.white
				f8_local23.alpha = 0.85
				local f8_local35 = LUI.UIImage.new( f8_local23 )
				f8_local30.id = "challenge_progress_initial"
				f8_local29:addElement( f8_local35 )
				local f8_local31 = LUI.UIImage.new( CoD.CreateState( f8_local19, 0, f8_local19, 0, CoD.AnchorTypes.TopBottomLeft ) )
				f8_local31.id = "challenge_progress_earned"
				local f8_local32 = CoD.CreateState( f8_local19, 0, f8_local19 + f8_local20, 0, CoD.AnchorTypes.TopBottomLeft )
				f8_local32.color = {
					r = 0.87,
					g = 0.77,
					b = 0.4,
					a = 0.85
				}
				f8_local32.material = RegisterMaterial( "white" )
				f8_local31:registerAnimationState( "filled", f8_local32 )
				f8_local31:registerAnimationState( "white", f8_local25 )
				f8_local31:registerEventHandler( "start_bar_fill_anims", function ( element, event )
					local f9_local0 = {
						{
							"filled",
							event.anim_length or 0
						}
					}
					if f8_arg2 == true then
						f9_local0[#f9_local0 + 1] = {
							"white",
							event.anim_length or 0
						}
					end
					element:animateInSequence( f9_local0 )
				end )
				f8_local29:addElement( f8_local31 )
				f8_local23 = CoD.CreateState( -38, -12.5, 12, 12.5, CoD.AnchorTypes.Right )
				f8_local23.material = RegisterMaterial( "sp_pause_loading_bar_flare" )
				f8_local31:addElement( LUI.UIImage.new( f8_local23 ) )
				local f8_local34 = CoD.TextSettings.TitleFontSmallBold.Height / 2
				local f8_local36
				if f8_arg2 then
					f8_local36 = Engine.Localize( "@MENU_PLUS", f8_local7 - f8_local10 )
					if not f8_local36 then
					
					else
						local f8_local37 = 5
						f8_local23 = CoD.CreateState( f8_local19 + f8_local37, -f8_local34 - 1, f8_local19, f8_local34, CoD.AnchorTypes.Left )
						f8_local23.font = CoD.TextSettings.TitleFontSmallBold.Font
						f8_local23.color = {
							r = 1,
							g = 0.92,
							b = 0.44,
							a = 1
						}
						f8_local23.alignment = LUI.Alignment.Left
						local f8_local38 = LUI.UIText.new( f8_local23 )
						f8_local38.id = "value_text"
						f8_local38:setText( f8_local36 )
						f8_local38:registerAnimationState( "filled", CoD.CreateState( f8_local19 + f8_local20 + f8_local37, -f8_local34 - 1, f8_local19 + 200, f8_local34, CoD.AnchorTypes.Left ) )
						f8_local38:registerAnimationState( "hide", f8_local26 )
						f8_local38:registerEventHandler( "start_bar_fill_anims", function ( element, event )
							local f10_local0 = {
								{
									"filled",
									event.anim_length or 0
								}
							}
							if f8_arg2 == true then
								f10_local0[#f10_local0 + 1] = {
									"hide",
									event.anim_length or 0
								}
							end
							element:animateInSequence( f10_local0 )
						end )
						f8_local29:addElement( f8_local38 )
						if f8_arg2 == true then
							local f8_local39, f8_local40, f8_local41, f8_local42 = GetTextDimensions( Engine.Localize( "@MENU_PLUS", "" ), CoD.TextSettings.TitleFontSmallBold.Font, CoD.TextSettings.TitleFontSmallBold.Height )
							local f8_local43 = f8_local41 - f8_local39
							f8_local34 = CoD.TextSettings.TitleFontSmallBold.Height / 2
							f8_local36 = Engine.Localize( f8_local7 )
							f8_local23 = CoD.CreateState( f8_local19 + f8_local20 + f8_local37 + f8_local43, -f8_local34 - 1, f8_local19 + 200, f8_local34, CoD.AnchorTypes.Left )
							f8_local23.font = CoD.TextSettings.TitleFontSmallBold.Font
							f8_local23.color = {
								r = 1,
								g = 1,
								b = 1,
								a = 1
							}
							f8_local23.alpha = 0
							f8_local23.alignment = LUI.Alignment.Left
							f8_local38 = LUI.UIText.new( f8_local23 )
							f8_local38.id = "value_text_total"
							f8_local38:setText( f8_local36 )
							f8_local38:registerAnimationState( "show", f8_local27 )
							f8_local38:registerAnimationState( "hideState", f8_local26 )
							f8_local38:registerEventHandler( "start_bar_fill_anims", function ( element, event )
								element:animateInSequence( {
									{
										"hideState",
										event.anim_length or 0
									},
									{
										"show",
										event.anim_length
									}
								} )
							end )
							f8_local29:addElement( f8_local38 )
						end
						f8_local23 = CoD.CreateState( 35, 20, 200, 20 + CoD.TextSettings.TitleFontSmall.Height, CoD.AnchorTypes.TopRight )
						f8_local23.font = CoD.TextSettings.TitleFontSmall.Font
						f8_local23.alignment = LUI.Alignment.Left
						local f8_local39 = LUI.UIText.new( f8_local23 )
						f8_local39.id = "challenge_next_value_text"
						f8_local39:setText( f8_local12 )
						f8_local22:addElement( f8_local39 )
					end
				end
				f8_local36 = f8_local7
			end
			return self
		end
	end
	f8_local13 = 0
end

LUI.MenuBuilder.registerType( "ChallengesWidget", LUI.ChallengesWidget.build )
LockTable( _M )
