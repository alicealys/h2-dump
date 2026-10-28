// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    level.ambient_track["dcemp_iss"] = "ambient_dcemp_iss";
    level.ambient_track["dcemp_dry"] = "ambient_dcemp_dry";
    level.ambient_track["dcemp_dry_int"] = "ambient_dcemp_dry";
    level.ambient_track["dcemp_light_rain"] = "ambient_dcemp_light_rain";
    level.ambient_track["dcemp_light_rain_int"] = "ambient_dcemp_light_rain";
    level.ambient_track["dcemp_heavy_rain"] = "ambient_dcemp_heavy_rain";
    level.ambient_track["dcemp_heavy_rain_int"] = "ambient_dcemp_heavy_rain";
    level.ambient_track["dcemp_heavy_rain_tunnel"] = "ambient_dcemp_heavy_rain";
    _id_B417::ambientdelay( "dcemp_iss", 20.0, 30.0 );
    _id_B417::ambientevent( "dcemp_iss", "null", 12.0 );
    _id_B417::ambientdelay( "dcemp_dry", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_dry", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_dry", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_dry_int", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_dry_int", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_dry_int", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_light_rain", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_light_rain", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_light_rain", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_light_rain_int", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_light_rain_int", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_light_rain_int", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_heavy_rain", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_heavy_rain_int", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain_int", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain_int", "null", 0.3 );
    _id_B417::ambientdelay( "dcemp_heavy_rain_tunnel", 2.0, 8.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain_tunnel", "elm_wind_leafy", 12.0 );
    _id_B417::ambientevent( "dcemp_heavy_rain_tunnel", "null", 0.3 );
    level waittill( "action moment" );
    _id_B417::ambienteventstart( "action ambient" );
}
