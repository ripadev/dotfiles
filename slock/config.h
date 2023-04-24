/* user and group to drop privileges to */
static const char *user  = "ripa";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#222222",     /* after initialization */
	[INPUT] =  "#1793D1",   /* during input */
	[FAILED] = "#C71920",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
