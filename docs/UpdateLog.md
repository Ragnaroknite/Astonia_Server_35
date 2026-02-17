# Astonia Server V3.5 To-Do List
* Add /killbless & /killpotion commands as part of the default server commands.
# RagnarokNite's To-Do List
* Create a Speed Changing System Based off the Athlete and Maybe Lowlife
* Currently I have Put a Change in do_attack();
/*
if(ch[cn].prof[P_ATHLETE] > 0){
        ch[cn].duration = speed(ch[cn].value[0][V_SPEED], ch[cn].speed_mode, DUR_COMBAT_ACTION - ch[cn].prof[P_ATHLETE] * 10 / 20);
        if (ch[cn].speed_mode == SM_FAST) ch[cn].endurance -= end_cost(cn) * 1.5;
    }     
    else{
        ch[cn].duration = speed(ch[cn].value[0][V_SPEED], ch[cn].speed_mode, DUR_COMBAT_ACTION);
        if (ch[cn].speed_mode == SM_FAST) ch[cn].endurance -= end_cost(cn) * 2;
    }
*/
* Want To Find Out how to create buffs or effects that can be applied @login @levelup @lowlife @maxlife
* I currently changed the Speed formula (First thing I did as I am new to messing with this source)
// translate character speed into ticks
int speed(int speedy, int mode, int ticks) {
    double f;

	if (speedy > 0) speedy *= 1;
    else speedy = speedy * 0.75;

    if (mode == SM_FAST) speedy *= 2;
    if (mode == SM_STEALTH) speedy /= 2;

    f = 0.75 + speedy / 100.0; // Don't know how i wanna mess with this or the other lines

    if (f < 0.2) f = 0.2;
    if (f > 2.0) f = 2.0;

    ticks /= f;

    if (ticks < 2) return 2;
    if (ticks > 999) return 999;


    return ticks;
}
* Also Changed the Dur_

#define DUR_COMBAT_ACTION 8 // ex 8 changed from 12 to 9
#define DUR_MISC_ACTION 8 // ex 8
#define DUR_USE_ACTION 8 // ex 8
#define DUR_MAGIC_ACTION 8 // ex 8

* Instead I'll Probably change those both back to Defaults
