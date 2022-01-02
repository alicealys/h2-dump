// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "civilian";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( _ID42226::_ID15942( 8 ) )
    {
        case 0:
            _ID45686::main();
            break;
        case 1:
            _ID46143::main();
            break;
        case 2:
            character\character_civilian_urban_female_a_b::main();
            break;
        case 3:
            character\character_civilian_urban_female_a_g::main();
            break;
        case 4:
            character\character_civilian_urban_female_a_p::main();
            break;
        case 5:
            character\character_civilian_urban_female_a_y::main();
            break;
        case 6:
            character\character_civilian_urban_female_b_a::main();
            break;
        case 7:
            character\character_civilian_urban_female_b_b::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID45686::_ID814();
    _ID46143::_ID814();
    character\character_civilian_urban_female_a_b::_ID814();
    character\character_civilian_urban_female_a_g::_ID814();
    character\character_civilian_urban_female_a_p::_ID814();
    character\character_civilian_urban_female_a_y::_ID814();
    character\character_civilian_urban_female_b_a::_ID814();
    character\character_civilian_urban_female_b_b::_ID814();
}
