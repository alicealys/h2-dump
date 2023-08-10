// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "masada_acog";
    _id_C634::main();
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_C634::precache();
    precacheitem( "masada_acog" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
