LuaQ            TNIL    	   TBOOLEAN       TLIGHTUSERDATA       TNUMBER       TSTRING       TTABLE    
   TFUNCTION    
   TUSERDATA       TTHREAD 	      TIFUNCTION 
      TCFUNCTION       TUI64       TSTRUCT         "   t       _   Ά   Ά          Ά 
 2 Ά x   4 2 2 2 2 2	 2
 2 2 2 2 2 Ά        Ά         2 2  2! 2                          	  
       	   
                 	   
  " Ά# %>      &>       ' 2! <( Ά)  + Ά,   .          module          package          seeall        DebugPrint          Registering         _NAME    C  :B  πB  ΐ@  ΘA  pΑ  ΘΑ  B  ͺB  C  HB       Colors          s1Hud_contractedYellow        s1Hud_bright_red   ϊC  ΘC           tag_ui_ammo        LUI          MenuBuilder        registerDef        AR_GenericMeterHudDef 
       LockTable          _M                            ___   Ά            Ά           9  Ά           L             Game          GetViewmodelEntNum        PlayerCanAttachToViewmodel        EntityHasTag                	          _  Ά         2 2 2  L   2 2 2           9	
 2 2              Game          GetViewmodelEntNum        setupEntityContainer     #       setEntityContainerTransferRotation        isAttachedToViewModel         animateToState        default        isDetachedFromViewModel                           ___             9 2  	            isAttachedToViewModel        setupEntityContainer   Ώ        isDetachedFromViewModel                             2 2            animateToState        two_d                         `       ___   Ά          2  S 9   Ά          t K 9   Ά             D 9   Ά  	           < 9 
 Ά             4 9   Ά             , 9   Ά          4     " 9   Ά              9   Ά            9   Ά          2   	 9   Ά          2     9                  Game   
       GetOmnvar        ui_meterhud_toggle         GetPlayerHealth            DeadQuoteVisible        PlayerOnLadder        Engine          InLoadingScreen        PlayerOnTurret        IsHudEnabled        PlayerDrivingVehicle 
       PlayerADS   ?       IsWeaponReloading        IsWeaponSwitching                            _   Ά            9   Ά          2   	 9   Ά          2     9                  Game   
       PlayerADS   ?       IsWeaponReloading            IsWeaponSwitching                                 L   L   	  
          isAttachedToViewModel         isDetachedFromViewModel        animationTime            state                stayHidden        initalized                	          __           9  L   L           r  9         LT          t  9            9 	  9           9 	   9   L    9          9 L 
L     9 L	 2  	   9   9          9
           9 L Ά        r   9 L	 2  	    Ά        2 L   
 9            9  L     9   9 L      9 L   9           9 L   L       9	 2 2 	            initalized        animationTime            state        hiding        hidden        showing        visible        animateToState        stayHidden        Game   
       PlayerADS ΝΜL>
       GetOmnvar        ui_meterhud_ar_and_2d        isAttachedToViewModel         isDetachedFromViewModel                            TX P                         !       ___ h  L                     L                  L                             r        g        b                            __   2         A        	          Q       __  Ά        2
V 2  Ά        2  L L L  2 	  9 L	 2	 2
  
	 2
 h



! L
" 
L
$ L LXP
& L
( Ά  2
*
4
6	 2
 2	 2         	 9

 2 h46
 2 2             Game   
       GetOmnvar        ui_meterhud_level   ?       getChildById        AR_GenericMeterHud_Meter        ui_meterhud_text    ?       registerAnimationState        default        leftAnchor        rightAnchor        bottomAnchor 
       topAnchor        left        right        top        bottom 	       material        RegisterMaterial          white        color        alpha        animateToState   HC       AR_GenericMeterHud_Text        colorSameAsMeter                   X       ___  Ά        2 2 2 2	 2  L 
  9 L 2
 2
 2	
 2
 2
 2
 2   9   9 2
 2
 2	
 2
 2
 2
 2  9   9 2
 2
 2	
 2
 2
 2
 2
 Ά 
       
  
 2 h8
 2 2            Game   
       GetOmnvar        ui_meterhud_text        getChildById        AR_GenericMeterHud_Text        AR_GenericMeterHud_InnerBox        AR_GenericMeterHud_OuterBox        METER            WEAPON_UNCLOAKED        animateToState        default        colorSameAsMeter    ?       WEAPON_CLOAKED        cloaked    @       WEAPON_FUEL        setText        Engine   	       Localize        registerAnimationState        color   HC                   5      ___  h   h h

  L j LT LV L j LP LR 
 h

 L L j 
LT 
L j   L LP" h'$ h'(  h L. h L20 , h h h
 h Ά ! 2: LD#'%I%M%O
 h)I)M)O#'P h* h
 h Ά + 2: LD%'%I%M%O
 h)I)M)O)'P h,- h h
. L^1 Ά2 4      5      6      ` LD8 Ά9 ;      <      n%'
 h)'P h?}z h@ h h Ά 	A 2: LDB'
 hC h h	 L		 L	 	 L
 L	
P		 L		 Ά 
D 2		:	 L	D%'
 h)'P hE hGz h	I ΆJ 	L      
 2  h		, hE	 h	M	z	 h
I ΆJ 
L       2  h
	
	,	 h	E
 h
N	
z
 hI ΆJ L       2  h
	
,
 h
E hO
z hI ΆJ L       2  h
, hE hPz hI ΆJ L       2  h, hQR h h©¦ Lͺz 4    V          type 
       UIElement        id        AR_GenericMeterHud_Root        states        default 
       topAnchor        leftAnchor        bottomAnchor         rightAnchor        top        bottom            left        right        two_d        hidden        alpha        visible 333?	       handlers        generic_hud_refresh        omnvar_update        ui_meterhud_text 	       children        UIImage        AR_GenericMeterHud_OuterBox 	       material        RegisterMaterial   "       mtl_ui_land_assist_fuel_box_outer        color   >       red   ?       green        blue        cloaked    ?       AR_GenericMeterHud_InnerBox "       mtl_ui_land_assist_fuel_box_inner        UIText        AR_GenericMeterHud_Text    ΐ       height        font        CoD          TextSettings        BodyFontBold18        Font        glow        LUI   
       GlowState        ElementColor        properties        text 
       UNCLOAKED        AR_GenericMeterHud_Blur        black   @?       AR_GenericMeterHud_Meter        white        UIIntWatch        dataSource 
       PlayerADS        int_watch_alert        MBh          EmitEventToParent        PlayerReloading        PlayerSwitchingWeapon        PlayerDrivingVehicle        PlayerOnTurret        UITimer        AR_GenericMeterHud_Timer        event        name 	       interval                    