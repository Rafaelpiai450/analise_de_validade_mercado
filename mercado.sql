BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "produtos" (
	"id"	INTEGER,
	"nome"	TEXT,
	"quantidade"	INTEGER,
	"validade"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "produtos" VALUES (0,'água oxigenada vol 30 beira alta 90 ml ',8,'10/02/2027');
INSERT INTO "produtos" VALUES (1,'cr monange hidratação intensa  200 ml',20,'31/02/2028');
INSERT INTO "produtos" VALUES (2,'base facial efeito matte  jasmyne',2,'01/03/2026');
INSERT INTO "produtos" VALUES (3,'creme facial nivea',5,'01/06/2026');
INSERT INTO "produtos" VALUES (4,'kit shampoo e condionador salom line s.o.s bomba crecimento ',3,'01/08/2028');
INSERT INTO "produtos" VALUES (5,'creme para pentear salon line ultra definição para cachos',8,'01/12/2026');
INSERT INTO "produtos" VALUES (6,'shapoo óleo estraordinário 200 ml',4,'01/05/2026');
INSERT INTO "produtos" VALUES (8,'paleta de iluminador ruby rose',1,'31/05/2026');
INSERT INTO "produtos" VALUES (9,'goss oil restaurador para labios',2,'07/05/2026');
INSERT INTO "produtos" VALUES (10,'condicionador elseve  reparador cabelos danificados ',3,'10/02/2027');
INSERT INTO "produtos" VALUES (11,'máscara de tratamento wella professional  200g',5,'20/08/2027');
INSERT INTO "produtos" VALUES (12,'esmalte impala neném perolado 7,5 ml',2,'30/04/2026');
INSERT INTO "produtos" VALUES (13,'esmalte impala polar perolado 7,5 ml',6,'30/10/2028');
INSERT INTO "produtos" VALUES (14,'pó descolorante yama ametista  8 tons 300g',14,'10/02/2028');
INSERT INTO "produtos" VALUES (15,'bory splash intense love phytoderm 200ml',5,'01/04/2028');
INSERT INTO "produtos" VALUES (16,'óleo corporal paixão framboesa negra 100ml',4,'01/09/2028');
INSERT INTO "produtos" VALUES (18,'vitamina tratamento capilar skafe  caachos perfeitos  10ml',10,'01/06/2026');
INSERT INTO "produtos" VALUES (19,'sabonete facial mousse beautyloo tutti - frutti 150 ml',10,'01/12/2027');
INSERT INTO "produtos" VALUES (20,'oleo  capilar ambra  passion rose 30 ml ',3,'01/02/2026');
INSERT INTO "produtos" VALUES (21,'perfume capilar ambra  60 ml ',2,'01/02/2026');
INSERT INTO "produtos" VALUES (22,'adstrigente antioxidade aloe vera face beautiful 500 ml',2,'20/07/2026');
INSERT INTO "produtos" VALUES (23,'loção renovadora desodorante  400 ml oBoticário ',17,'01/02/2027');
INSERT INTO "produtos" VALUES (24,'água oxigenada vol 10 beira alta  90 ml',3,'31/04/2028');
INSERT INTO "produtos" VALUES (25,'água oxigenada vol 20 beira alta 90 ml ',6,'20/06/2027');
INSERT INTO "produtos" VALUES (26,'base facial playboy ',2,'01/08/2028');
INSERT INTO "produtos" VALUES (27,'batom 24horas ',20,'01/12/2028');
INSERT INTO "produtos" VALUES (28,'manteiga cacau bastão',6,'01/08/2028');
INSERT INTO "produtos" VALUES (29,'gloss  cacau  ziinziin 5 ml',5,'01/03/2028');
INSERT INTO "produtos" VALUES (30,'rimel super volume efeito boneca belle angel ',3,'01/06/2027');
INSERT INTO "produtos" VALUES (31,'cola de cilios macrilan ',15,'01/02/2028');
INSERT INTO "produtos" VALUES (32,'cola de cilios eye ',3,'01/01/2026');
INSERT INTO "produtos" VALUES (33,'brilho labial moranguinho ',17,'30/04/2028');
INSERT INTO "produtos" VALUES (34,'lápis para sombrancelha melu 2 em 1 ',11,'08/03/2028');
INSERT INTO "produtos" VALUES (35,'paleta sombra para sombrancelha com primer ruby rose  ',6,'04/08/2027');
INSERT INTO "produtos" VALUES (36,'lápis de olho preto vivai',12,'08/04/2027');
INSERT INTO "produtos" VALUES (37,'lápis de olho 2 em 1 preto e marrom playboy',6,'30/09/2027');
INSERT INTO "produtos" VALUES (38,'paleta 3 em 1 contorno, blush e iluminador vivai',3,'01/05/2027');
INSERT INTO "produtos" VALUES (39,'bruma fixadora 120 ml perfect glow ruby rose ',4,'04/08/2027');
INSERT INTO "produtos" VALUES (40,'primer facial soft skin ruby rose ',14,'05/08/2026');
INSERT INTO "produtos" VALUES (41,'blindagem fix gotas vizzela 30 ml',1,'01/06/2026');
INSERT INTO "produtos" VALUES (42,'blidagem poderosa dapop 20 ml',6,'05/07/2026');
INSERT INTO "produtos" VALUES (43,'sabonete facial mousse lovely vaitamina face beautiful',16,'07/05/2028');
INSERT INTO "produtos" VALUES (44,'esfoliante  rosto e corpo laborat morango  50g',2,'09/12/2028');
INSERT INTO "produtos" VALUES (45,'esfoliante rosto e corpo maracuja laborat 50g',4,'07/05/2028');
INSERT INTO "produtos" VALUES (46,'gelatina salon line  super definição  72h de cachos  550g ',12,'01/06/2028');
INSERT INTO "produtos" VALUES (47,'máscara matizadora salon line vermelha 300g',4,'01/12/2027');
INSERT INTO "produtos" VALUES (48,'máscara matizadora salon line loiro 300g',6,'01/04/2028');
INSERT INTO "produtos" VALUES (49,'máscara matizadora salon line efeito prata meu liso  300g',11,'01/06/2026');
INSERT INTO "produtos" VALUES (50,'gelatina capilar kanechom maracuja melão',1,'01/09/2027');
INSERT INTO "produtos" VALUES (51,'corretivo  líquido flawless ruby rose ',3,'01/06/2026');
INSERT INTO "produtos" VALUES (52,'corretivo líquido  melu ',2,'01/04/2028');
COMMIT;