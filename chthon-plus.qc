/*
==============================================================================
Chthon+

monster_chthon

This is a killable and gib-able version of Chthon.
This version defaults to 1000 Health on Easy and 3000 in other skills.


==============================================================================
*/
$cd id1/models/boss1
$origin 0 0 -15
$base base
$skin skin
$scale 5

$frame rise1 rise2 rise3 rise4 rise5 rise6 rise7 rise8 rise9 rise10
$frame rise11 rise12 rise13 rise14 rise15 rise16 rise17

$frame walk1 walk2 walk3 walk4 walk5 walk6 walk7 walk8
$frame walk9 walk10 walk11 walk12 walk13 walk14 walk15
$frame walk16 walk17 walk18 walk19 walk20 walk21 walk22
$frame walk23 walk24 walk25 walk26 walk27 walk28 walk29 walk30 walk31

$frame death1 death2 death3 death4 death5 death6 death7 death8 death9

$frame attack1 attack2 attack3 attack4 attack5 attack6 attack7 attack8
$frame attack9 attack10 attack11 attack12 attack13 attack14 attack15
$frame attack16 attack17 attack18 attack19 attack20 attack21 attack22
$frame attack23

$frame shocka1 shocka2 shocka3 shocka4 shocka5 shocka6 shocka7 shocka8
$frame shocka9 shocka10

$frame shockb1 shockb2 shockb3 shockb4 shockb5 shockb6

$frame shockc1 shockc2 shockc3 shockc4 shockc5 shockc6 shockc7 shockc8
$frame shockc9 shockc10


void(vector p) chth_missile;

void() chth_face =
{

// go for another player if multi player
	if (self.enemy.health <= 0 || random() < 0.02)
	{
		self.enemy = find(self.enemy, classname, "player");
		if (!self.enemy)
			self.enemy = find(self.enemy, classname, "player");
	}
	ai_face();
};

void() chth_rise1	=[	$rise1, chth_rise2 ] {
sound (self, CHAN_WEAPON, "boss1/out1.wav", 1, ATTN_NORM);
};
void() chth_rise2	=[	$rise2, chth_rise3 ] {
sound (self, CHAN_VOICE, "boss1/sight1.wav", 1, ATTN_NORM);
};
void() chth_rise3	=[	$rise3, chth_rise4 ] {};
void() chth_rise4	=[	$rise4, chth_rise5 ] {};
void() chth_rise5	=[	$rise5, chth_rise6 ] {};
void() chth_rise6	=[	$rise6, chth_rise7 ] {};
void() chth_rise7	=[	$rise7, chth_rise8 ] {};
void() chth_rise8	=[	$rise8, chth_rise9 ] {};
void() chth_rise9	=[	$rise9, chth_rise10 ] {};
void() chth_rise10	=[	$rise10, chth_rise11 ] {};
void() chth_rise11	=[	$rise11, chth_rise12 ] {};
void() chth_rise12	=[	$rise12, chth_rise13 ] {};
void() chth_rise13	=[	$rise13, chth_rise14 ] {};
void() chth_rise14	=[	$rise14, chth_rise15 ] {};
void() chth_rise15	=[	$rise15, chth_rise16 ] {};
void() chth_rise16	=[	$rise16, chth_rise17 ] {};
void() chth_rise17	=[	$rise17, chth_missile1 ] {};

void() chth_hide1	=[	$rise17, chth_hide2 ] {};
void() chth_hide2	=[	$rise16, chth_hide3 ] {
// sound (self, CHAN_VOICE, "boss1/sight1.wav", 1, ATTN_NORM);
};
void() chth_hide3	=[	$rise15, chth_hide4 ] {};
void() chth_hide4	=[	$rise14, chth_hide5 ] {};
void() chth_hide5	=[	$rise13, chth_hide6 ] {};
void() chth_hide6	=[	$rise12, chth_hide7 ] {};
void() chth_hide7	=[	$rise11, chth_hide8 ] {};
void() chth_hide8	=[	$rise10, chth_hide9 ] {};
void() chth_hide9	=[	$rise9, chth_hide10 ] {};
void() chth_hide10	=[	$rise8, chth_hide11 ] {};
void() chth_hide11	=[	$rise7, chth_hide12 ] {};
void() chth_hide12	=[	$rise6, chth_hide13 ] {};
void() chth_hide13	=[	$rise5, chth_hide14 ] {};
void() chth_hide14	=[	$rise4, chth_hide15 ] {};
void() chth_hide15	=[	$rise3, chth_hide16 ] {};
void() chth_hide16	=[	$rise2, chth_hide17 ]
{
sound (self, CHAN_WEAPON, "boss1/out1.wav", 1, ATTN_NORM);
WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
WriteByte (MSG_BROADCAST, TE_LAVASPLASH);
WriteCoord (MSG_BROADCAST, self.origin_x);
WriteCoord (MSG_BROADCAST, self.origin_y);
WriteCoord (MSG_BROADCAST, self.origin_z);
};
void() chth_hide17	=[	$rise1, chth_hide18 ] {};
void() chth_hide18	=[	$rise1, chth_hide19 ] {};
void() chth_hide19	=[	$rise1, chth_hide20 ] {};
void() chth_hide20	=[	$rise1, chth_hide21 ] {};
void() chth_hide21	=[	$rise1, chth_hide22 ] {};
void() chth_hide22	=[	$rise1, chth_hide23 ] {};
void() chth_hide23	=[	$rise1, chth_hide24 ] {};
void() chth_hide24	=[	$rise1, chth_hide25 ] {};
void() chth_hide25	=[	$rise1, chth_hide26 ] {};
void() chth_hide26	=[	$rise1, chth_hide27 ] {};
void() chth_hide27	=[	$rise1, chth_hide28 ] {};
void() chth_hide28	=[	$rise1, chth_hide29 ] {};
void() chth_hide29	=[	$rise1, chth_hide30 ] {};
void() chth_hide30	=[	$rise1, chth_hide31 ] {};
void() chth_hide31	=[	$rise1, chth_hide32 ] {};
void() chth_hide32	=[	$rise1, chth_hide33 ] {};
void() chth_hide33	=[	$rise1, chth_hide34 ] {};
void() chth_hide34	=[	$rise1, chth_hide35 ] {};
void() chth_hide35	=[	$rise1, chth_hide36 ] {};
void() chth_hide36	=[	$rise1, chth_hide37 ] {};
void() chth_hide37	=[	$rise1, chth_hide38 ] {};
void() chth_hide38	=[	$rise1, chth_hide39 ] {};
void() chth_hide39	=[	$rise1, chth_hide40 ] {};
void() chth_hide40	=[	$rise1, chth_hide41 ] {};
void() chth_hide41	=[	$rise1, chth_hide42 ] {};
void() chth_hide42	=[	$rise1, chth_hide43 ] {};
void() chth_hide43	=[	$rise1, chth_hide44 ] {};
void() chth_hide44	=[	$rise1, chth_hide45 ] {};
void() chth_hide45	=[	$rise1, chth_hide46 ] {};
void() chth_hide46	=[	$rise1, chth_hide47 ] {};
void() chth_hide47	=[	$rise1, chth_rise1 ] {};
// void() chth_hide17	=[	$rise1, chth_missile1 ] {};

void() chth_idle1	=[	$walk1, chth_idle2 ]
{
// look for other players
};
void() chth_idle2	=[	$walk2, chth_idle3 ] {chth_face();};
void() chth_idle3	=[	$walk3, chth_idle4 ] {chth_face();};
void() chth_idle4	=[	$walk4, chth_idle5 ] {chth_face();};
void() chth_idle5	=[	$walk5, chth_idle6 ] {chth_face();};
void() chth_idle6	=[	$walk6, chth_idle7 ] {chth_face();};
void() chth_idle7	=[	$walk7, chth_idle8 ] {chth_face();};
void() chth_idle8	=[	$walk8, chth_idle9 ] {chth_face();};
void() chth_idle9	=[	$walk9, chth_idle10 ] {chth_face();};
void() chth_idle10	=[	$walk10, chth_idle11 ] {chth_face();};
void() chth_idle11	=[	$walk11, chth_idle12 ] {chth_face();};
void() chth_idle12	=[	$walk12, chth_idle13 ] {chth_face();};
void() chth_idle13	=[	$walk13, chth_idle14 ] {chth_face();};
void() chth_idle14	=[	$walk14, chth_idle15 ] {chth_face();};
void() chth_idle15	=[	$walk15, chth_idle16 ] {chth_face();};
void() chth_idle16	=[	$walk16, chth_idle17 ] {chth_face();};
void() chth_idle17	=[	$walk17, chth_idle18 ] {chth_face();};
void() chth_idle18	=[	$walk18, chth_idle19 ] {chth_face();};
void() chth_idle19	=[	$walk19, chth_idle20 ] {chth_face();};
void() chth_idle20	=[	$walk20, chth_idle21 ] {chth_face();};
void() chth_idle21	=[	$walk21, chth_idle22 ] {chth_face();};
void() chth_idle22	=[	$walk22, chth_idle23 ] {chth_face();};
void() chth_idle23	=[	$walk23, chth_idle24 ] {chth_face();};
void() chth_idle24	=[	$walk24, chth_idle25 ] {chth_face();};
void() chth_idle25	=[	$walk25, chth_idle26 ] {chth_face();};
void() chth_idle26	=[	$walk26, chth_idle27 ] {chth_face();};
void() chth_idle27	=[	$walk27, chth_idle28 ] {chth_face();};
void() chth_idle28	=[	$walk28, chth_idle29 ] {chth_face();};
void() chth_idle29	=[	$walk29, chth_idle30 ] {chth_face();};
void() chth_idle30	=[	$walk30, chth_idle31 ] {chth_face();};
void() chth_idle31	=[	$walk31, chth_idle1 ] {chth_face();};

void() chth_missile1	=[	$attack1, chth_missile2 ] {chth_face();};
void() chth_missile2	=[	$attack2, chth_missile3 ] {chth_face();};
void() chth_missile3	=[	$attack3, chth_missile4 ] {chth_face();};
void() chth_missile4	=[	$attack4, chth_missile5 ] {chth_face();};
void() chth_missile5	=[	$attack5, chth_missile6 ] {chth_face();};
void() chth_missile6	=[	$attack6, chth_missile7 ] {chth_face();};
void() chth_missile7	=[	$attack7, chth_missile8 ] {chth_face();};
void() chth_missile8	=[	$attack8, chth_missile9 ] {chth_face();};
void() chth_missile9	=[	$attack9, chth_missile10 ] {chth_missile('100 100 200');};
void() chth_missile10	=[	$attack10, chth_missile11 ] {chth_face();};
void() chth_missile11	=[	$attack11, chth_missile12 ] {chth_face();};
void() chth_missile12	=[	$attack12, chth_missile13 ] {chth_face();};
void() chth_missile13	=[	$attack13, chth_missile14 ] {chth_face();};
void() chth_missile14	=[	$attack14, chth_missile15 ] {chth_face();};
void() chth_missile15	=[	$attack15, chth_missile16 ] {chth_face();};
void() chth_missile16	=[	$attack16, chth_missile17 ] {chth_face();};
void() chth_missile17	=[	$attack17, chth_missile18 ] {chth_face();};
void() chth_missile18	=[	$attack18, chth_missile19 ] {chth_face();};
void() chth_missile19	=[	$attack19, chth_missile20 ] {chth_face();};
void() chth_missile20	=[	$attack20, chth_missile21 ] {chth_missile('100 -100 200');};
void() chth_missile21	=[	$attack21, chth_missile22 ] {chth_face();};
void() chth_missile22	=[	$attack22, chth_missile23 ] {chth_face();};
void() chth_missile23	=[	$attack23, chth_missile1 ] {chth_face();};

void() chth_shocka1 =[	$shocka1, chth_shocka2 ] {};
void() chth_shocka2 =[	$shocka2, chth_shocka3 ] {};
void() chth_shocka3 =[	$shocka3, chth_shocka4 ] {};
void() chth_shocka4 =[	$shocka4, chth_shocka5 ] {};
void() chth_shocka5 =[	$shocka5, chth_shocka6 ] {};
void() chth_shocka6 =[	$shocka6, chth_shocka7 ] {};
void() chth_shocka7 =[	$shocka7, chth_shocka8 ] {};
void() chth_shocka8 =[	$shocka8, chth_shocka9 ] {};
void() chth_shocka9 =[	$shocka9, chth_shocka10 ] {};
void() chth_shocka10 =[	$shocka10, chth_missile1 ] {};

void() chth_shockb1 =[	$shockb1, chth_shockb2 ] {};
void() chth_shockb2 =[	$shockb2, chth_shockb3 ] {};
void() chth_shockb3 =[	$shockb3, chth_shockb4 ] {};
void() chth_shockb4 =[	$shockb4, chth_shockb5 ] {};
void() chth_shockb5 =[	$shockb5, chth_shockb6 ] {};
void() chth_shockb6 =[	$shockb6, chth_shockb7 ] {};
void() chth_shockb7 =[	$shockb1, chth_shockb8 ] {};
void() chth_shockb8 =[	$shockb2, chth_shockb9 ] {};
void() chth_shockb9 =[	$shockb3, chth_shockb10 ] {};
void() chth_shockb10 =[	$shockb4, chth_missile1 ] {};

void() chth_shockc1 =[	$shockc1, chth_shockc2 ] {};
void() chth_shockc2 =[	$shockc2, chth_shockc3 ] {};
void() chth_shockc3 =[	$shockc3, chth_shockc4 ] {};
void() chth_shockc4 =[	$shockc4, chth_shockc5 ] {};
void() chth_shockc5 =[	$shockc5, chth_shockc6 ] {};
void() chth_shockc6 =[	$shockc6, chth_shockc7 ] {};
void() chth_shockc7 =[	$shockc7, chth_shockc8 ] {};
void() chth_shockc8 =[	$shockc8, chth_shockc9 ] {};
void() chth_shockc9 =[	$shockc9, chth_shockc10 ] {};
void() chth_shockc10 =[	$shockc10, chth_death1 ] {};

void() chth_pain1 =[ $shocka1, chth_pain2 ] {};
void() chth_pain2 =[ $shocka2, chth_pain3 ] {};
void() chth_pain3 =[ $shocka3, chth_pain4 ] {};
void() chth_pain4 =[ $shocka4, chth_pain5 ] {
sound (self, CHAN_VOICE, "boss1/pain.wav", 1, ATTN_NORM); // pain noise
};
void() chth_pain5 =[ $shocka5, chth_pain6 ] {};
void() chth_pain6 =[ $shocka6, chth_pain7 ] {};
void() chth_pain7 =[ $shocka7, chth_pain8 ] {};
void() chth_pain8 =[ $shocka8, chth_pain9 ] {};
void() chth_pain9 =[ $shocka9, chth_missile1 ] {}; // auto shoot a lavaball

void() GibChth =
{
	sound (self, CHAN_VOICE, "player/udeath.wav", 1, ATTN_NORM);
	// throw tons of meat chunks

	local vector boss;
	local float x, y, z;
	local float r;
	// local entity n;

	boss = self.origin;
	z = 16;
	while (z <= 144)
	{
		x = -64;
		while (x <= 64)
		{
			y = -64;
			while (y <= 64)
			{
				self.origin_x = boss_x + x;
				self.origin_y = boss_y + y;
				self.origin_z = boss_z + z;

				r = random();
				if (r < 0.3)
						ThrowGib ("progs/gib1.mdl", -120);
				else if (r < 0.5)
						ThrowGib ("progs/gib2.mdl", -120);
				else if (r < 0.7)
						ThrowGib ("progs/lavaball.mdl", -120);
				else
					// ThrowGib ("progs/gib3.mdl", -120);
						ThrowGib ("progs/gib3.mdl", -120);
				y = y + 32;
			}
			x = x + 32;
		}
		z = z + 96;
	}

	local entity head;

	head = spawn();
	head.origin = self.origin + '0 0 128';
	head.velocity_z = 600; + (random() * 200);
	head.velocity_x = -300 + (random() * 600);
	head.velocity_y = -200 + (random() * 600);
	head.avelocity_x = random()*120;
	head.avelocity_y = random()*120;
	head.avelocity_z = random()*120;
	head.flags = self.flags - (self.flags & FL_ONGROUND);
	head.solid = SOLID_NOT;
	head.movetype = MOVETYPE_BOUNCE;
	head.takedamage = DAMAGE_NO;
	setmodel (head, "progs/h_boss.mdl");
	setsize (head, '-67 -60 -6', '62 52 88');
	head.touch = SUB_Null;
	head.think = SUB_Remove;
	head.nextthink = time + 120;

	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_LAVASPLASH);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);
	remove (self);
};

void() chth_die =
{
	if (self.health < -50) // if health under -15
	{
		GibChth ();
		return;
	}
	else // otherwise
	{
		chth_death1 (); // normal death
		return;
	}
};

void() chth_death1 = [$death1, chth_death2] {
sound (self, CHAN_VOICE, "boss1/death.wav", 1, ATTN_NORM);
};
void() chth_death2 = [$death2, chth_death3] {};
void() chth_death3 = [$death3, chth_death4] {};
void() chth_death4 = [$death4, chth_death5] {};
void() chth_death5 = [$death5, chth_death6] {};
void() chth_death6 = [$death6, chth_death7] {};
void() chth_death7 = [$death7, chth_death8] {};
void() chth_death8 = [$death8, chth_death9] {};
void() chth_death9 = [$death9, chth_death10]
{
	sound (self, CHAN_BODY, "boss1/out1.wav", 1, ATTN_NORM);
	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_LAVASPLASH);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);
};

void(entity attacker, float damage) chth_pain_go =
{
	local string  s, m;
	s = ftos(self.health);
	m = ftos(self.max_health);
	dprint ("\bCURRENT HEALTH ");
	dprint (s);
	dprint ("\n");
	dprint ("MAX HEALTH ");
	dprint (m);
	dprint ("\n");

	if (self.pain_finished > time)
		return;

	if (self.health <= self.max_health * 0.75)
		{
			chth_hide1();
			dprint ("hiding!");
			return;
		}

	// chth_hide1();
	chth_pain1();
	self.pain_finished = time + 4;
};

void() chth_death10 = [$death9, chth_death10]
{
	// this is now all handled by FL_MONSTER
	// killed_monsters = killed_monsters + 1;
	// WriteByte (MSG_ALL, SVC_KILLEDMONSTER);	// FIXME: reliable broadcast
	// SUB_UseTargets ();
	remove (self);
};

void(vector p) chth_missile =
{
	local	vector	offang;
	local	vector	org, vec, d;
	local	float	t;

	offang = vectoangles (self.enemy.origin - self.origin);
	makevectors (offang);

	org = self.origin + p_x*v_forward + p_y*v_right + p_z*'0 0 1';

// lead the player on hard mode
	if (skill > 1)
	{
		t = vlen(self.enemy.origin - org) / 300;
		vec = self.enemy.velocity;
		vec_z = 0;
		d = self.enemy.origin + t * vec;
	}
	else
	{
		d = self.enemy.origin;
	}

	vec = normalize (d - org);

	launch_spike (org, vec);
	setmodel (newmis, "progs/lavaball.mdl");
	newmis.avelocity = '200 100 300';
	setsize (newmis, VEC_ORIGIN, VEC_ORIGIN);
	newmis.velocity = vec*300;
	newmis.touch = T_MissileTouch; // rocket explosion
	sound (self, CHAN_WEAPON, "boss1/throw.wav", 1, ATTN_NORM);

// check for dead enemy
	if (self.enemy.health <= 0)
		chth_idle1 ();
};

void() chth_awake =
{
	self.solid = SOLID_SLIDEBOX;
	self.movetype = MOVETYPE_STEP;
	self.takedamage = DAMAGE_AIM;

	setmodel (self, "progs/boss.mdl");
	setsize (self, '-128 -128 -24', '128 128 256');

	if (!self.health)
	{
		if (skill == 0)
			self.health = 1000;
		else
			self.health = 3000;
	}

	self.max_health = self.health; // thanks 4LT -- dumptruck_ds

// note that self.th_run has to be set in order to avoid a "NULL
// function" Host_Error in the case where T_Damage() calls
// FoundTarget(), which calls HuntTarget(), which uses self.th_run as
// the next self.think -- iw
	self.th_run = chth_missile1;
	self.th_pain = chth_pain_go;
	self.th_die = chth_die;

// give the boss a couple of seconds to finish rising before allowing it
// to go into its pain animation -- iw
	self.pain_finished = time + 2;

	self.enemy = activator;

	WriteByte (MSG_BROADCAST, SVC_TEMPENTITY);
	WriteByte (MSG_BROADCAST, TE_LAVASPLASH);
	WriteCoord (MSG_BROADCAST, self.origin_x);
	WriteCoord (MSG_BROADCAST, self.origin_y);
	WriteCoord (MSG_BROADCAST, self.origin_z);

	self.yaw_speed = 20;
	chth_rise1 ();
};


/*QUAKED monster_chthon (1 0 0) (-128 -128 -24) (128 128 256)
*/
void() monster_chthon =
{
	if (deathmatch)
	{
		remove(self);
		return;
	}
	precache_model ("progs/boss.mdl");
	precache_model ("progs/h_boss.mdl");
	precache_model ("progs/lavaball.mdl");

	precache_sound ("weapons/rocket1i.wav");
	precache_sound ("boss1/out1.wav");
	precache_sound ("boss1/sight1.wav");
	precache_sound ("boss1/throw.wav");
	precache_sound ("boss1/pain.wav");
	precache_sound ("boss1/death.wav");

	total_monsters = total_monsters + 1;

	self.flags = FL_MONSTER;
	self.use = chth_awake;
};

//===========================================================================
