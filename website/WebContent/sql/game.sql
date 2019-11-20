CREATE TABLE IF NOT EXISTS game(
	g_num int NOT NULL auto_increment,
	g_name VARCHAR(20) NOT NULL,
	g_link TEXT NOT NULL,
	g_description TEXT NOT NULL,
	g_fileName VARCHAR(20) NOT NULL,
	PRIMARY KEY (g_num)
)default CHARSET=utf8;