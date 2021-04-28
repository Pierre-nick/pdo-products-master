# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.7.26)
# Base de données: pdo-test
# Temps de génération: 2021-04-28 08:27:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `quantity` varchar(255) DEFAULT NULL,
  `brands` varchar(255) DEFAULT NULL,
  `countries` varchar(255) DEFAULT NULL,
  `ingredients` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `code`, `name`, `description`, `quantity`, `brands`, `countries`, `ingredients`, `created_at`, `updated_at`)
VALUES
	(1,'3222110005646','Saint Albray (34% MG) loulou','Fromage industriel de France; à pâte molle à croûte lavée; au lait pasteurisé de vache','200 g ','Saint-Albray','France','Lait pasteurisé; sel; colorants de la croûte (E160a; E160e).',NULL,NULL),
	(2,'3222110024449','Saint Albray ®','Fromage industriel de France; à pâte molle à croûte lavée; au lait pasteurisé de vache; 33% MG','200 g (6 portions de 30 g)','Saint Albray','Danemark;France','Lait pasteurisé; sel; ferments; colorants de croûte : bêta-carotène; E160e',NULL,NULL),
	(3,'3365930000108','Truite fumée au bois de hêtre (6 tranches) - 150 g','Truite fumée','150 g (6 tranches)','Landvika;Aqualande','France','Truite arc-en-ciel fumée',NULL,NULL),
	(4,'3048431001996','Abatilles - Saintes Anne','eau minerale naturelle','1.5L','abatilles','France','eau minérale naturelle',NULL,NULL),
	(5,'3222110018349','Etorki ® (33% MG) + 10% gratuit - 231 g','Fromage industriel de France; à pâte pressée non cuite; au lait pasteurisé de brebis','231 g (210 g + 10% gratuits)','Etorki','France','Fromage de brebis - 33% mat.gr  lait de brebis pasteurisé; sel; ferments; conservateurs E235; E1105 (extrait de blanc d\'oeuf)',NULL,NULL),
	(6,'3222110000825','Etorki ® (33% MG) - 210 g','Fromage industriel de France; à pâte pressée non cuite; au lait pasteurisé de brebis','210 g','Etorki','France','lait de brebis pasteurisé; sel; ferments; conservateurs E235; E1105 (extrait de blanc d\'oeuf)',NULL,NULL),
	(7,'3222471081686','Jus Ananas à base de concentré 1 litre','Jus d\'ananas à base de concentré','1 litre','Casino','France','Jus d\'ananas à base de concentré.',NULL,NULL),
	(8,'3560070861071','Poulet basquaise et son riz basmati (Les Brasseries)','Haut de cuisse de poulet cuisiné à la sauce basquaise et son riz basmati assaisonné','300 g (1 personne)','Carrefour;CMI (Carrefour Marchandises Internationales);Groupe Carrefour','France','Haut de cuisse de poulet 40;2 %; eau; riz basmati 10;7 %; poivrons tricolores 7;4 %; oignons 7;5 %; tomates 3;5 %; tomates concassées (tomates; jus de tomate); poivrons rouges 2;8 %; concentré de tomate; huile de colza; sel; fond de volaille (dextrose; sel; matières grasses animales; arôme naturel; viande de poulet); sucre; ail; amidon modifié de maïs; piment d\'Espelette; thym 0;04 %; paprika; piment fort; poivre.',NULL,NULL),
	(9,'3222110021554','Saint Albray ® (33% MG) Format Familial',' Fromage industriel de France; à pâte molle à croûte lavée; au lait pasteurisé de vache','300 g (environ 10 portions de 30 g)','Saint Albray','France','_Lait_ pasteurisé; sel; ferments; colorants de croûte : bêta-carotène; E160e.',NULL,NULL),
	(10,'3263859230913','Taboulé au basilic ','Salade de semoule de blé dur; légumes et basilic assaisonnée','500 g (3/4 personnes)','Leader Price;DLP (Distribution Leader Price);Groupe Casino','France','Semoule de _blé_ dur réhydratée 62 %; légumes 25 % (concombres; poivrons jaunes; tomates; oignons déshydratés); huile de colza; huile d\'olive vierge extra 2 %; vinaigre d\'alcool; basilic 0;9 %; sel; persil; sucre; arômes; piment d\'Espelette; sorbate de potassium.',NULL,NULL),
	(11,'3256220358460','Tomme Noire des Pyrénées IGP (27 % MG)','Fromage de France IGP; de montagne; à pâte pressée non cuite; au lait pasteurisé de vache','200 g','U;Système U','France','Lait de vache pasteurisé; sel; présure animale; chlorure de calcium; ferments lactiques; colorants de croûte : E153; E160b; conservateurs de croûte : E202; E235.',NULL,NULL),
	(12,'3392780007001','Truite Fumée Pyrénées (4 tranches) - 120 g','Truite Fumée au bois de hêtre; élevée en France','120 g (4 tranches)','Ovive','France','Truite Arc-En-Ciel (Oncorhynchus mykiss) 97 %; sel 3 %.',NULL,NULL),
	(13,'3256224612919','Truite fumée au bois de hêtre - 200 g','Truite fumée','200 g','U','France','Truite arc en ciel(Oncorhynchus mykiss) 97%; sel 3%',NULL,NULL),
	(14,'3564709053141','Truite fumée au bois de hêtre label Rouge (4 tranches) 120 g','Truite fumée','120 g (4 tranches)','Nos Régions ont du Talent','France','Truite arc en ciel(Oncorhynchus mykiss) 97 %; sel 3 %',NULL,NULL),
	(15,'3564709040875','Truite fumée d\'Aquitaine','Truite fumée','120 g','Nos régions ont du talent;Leclerc','France','truite arc-en-ciel 97 %; sel 3 %.',NULL,NULL),
	(16,'3350030215958','2 pavés de Truite Bio - 240 g','Pavés de truite issue de l\'agriculture biologique','240 g (2 pavés de 120 g)','Monoprix bio !;Monoprix','France','Truite arc-en-ciel élevée en France (Oncorhynchus mykiss) issue de l\'agriculture biologique',NULL,NULL),
	(17,'3455180049788','Bergerac','Vin rouge','75 cl','Bergerac les petites caves;Bergerac','France','',NULL,NULL),
	(18,'3259011030552','Biosoy - Boisson au soja calcium Bio','Boisson au soja issue de l\'agriculture biologique','1 litre','Ensemble pour plus de sens;Biocoop','France','Tonyu* 97 % (eau; soja* dépelliculé 7.9 %); sucre de canne* non raffiné; algue calcaire Lithothamnium calcareum 0.4 %; sel de mer; stabilisants : carraghénanes (extrait d\'algues marines). *Ingrédients issus de l\'Agriculture Biologique.',NULL,NULL),
	(19,'3259011005925','Boisson au soja nature Bio','Boisson au soja issue de l\'agriculture biologique','1 litre','Ensemble;Biocoop','France','Eau; soja* dépelliculé 8;2 %.  *Ingrédient issu de l\'Agriculture Biologique',NULL,NULL),
	(20,'3335090005800','Cabri au piment (23% MG) 200 g','Fromage au lait pasteurisé de chèvre; au piment d\'Espelette','200 g','Sans marque;Valcrest','France','Lait de chèvre pasteurisé; sel; stabilisant : méthylcellulose; présure animale; ferments lactiques; conservateur : sorbate de potassium. Epices : paprika; assaisonnement basque (sel; piment; poivron; tomate; oicnon; extrait de levure; ail; laurier; poivre; thym; persil; extrait de paprika) et piment d\'Espelette (&lt;1%}.',NULL,NULL),
	(21,'3276554571540','Carottes (Catégorie 1; Calibre 20/35 mm)','Carottes (Catégorie 1; Calibre 20/35 mm) ','1 kg','Filière Qualité Carrefour;CSF (Carrefour Supermarchés France);Groupe Carrefour','France','Carottes.',NULL,NULL),
	(22,'3270190010074','Carottes Bio (Catégorie 2 Calibre 20-50) - 1 kg','Carottes issues de l\'agriculture biologique (Catégorie 2 Calibre 20-50)','1 kg','Carrefour Bio;Carrefour','France','Carottes issues de l\'agriculture biologique.',NULL,NULL),
	(23,'3263851920218','Confiture extra de fraise du Périgord','','315 g','leader price','France','Fraises du Périgord; sucre; jus concentré de citron; pectine de fruit (E440).',NULL,NULL),
	(24,'3250391699964','Crica Abricot','Spécialité céréalière fourrée à l\'abricot','350 g','Chabrior','France','Coque 80% : Céréales 73% (Semoule de riz; semoule de blé complet 28%; son de blé; flocons d\'avoine); sucre; sel; arôme naturel; émulsifiant (mono et diglycérides d\'acides gras))  Fourrage 20% : Sirop de glucose; glycérol; purée d\'abricot concentrée 12%; correcteurs d’acidité : acide citrique (E330) — citrate de sodium (E331); gélifiant (pectines de fruit (E440)); arôme naturel; colorant (bêta-carotène (E160a(i))). ',NULL,NULL),
	(25,'3288131510842','Douceur de pomme d\'aquitaine biscuitée','','2 * 130 g (260 g)','Babybio','France','Pommes d\'Aquitaine 84%; biscuits 8% (farine de _blé_; sucre de canne; _beurre_; farine de riz; _lait_ écrémé en poudre; farine d\'_épeautre_; poudres à lever : carbonates de sodium et carbonates d\'ammonium; arôme naturel de vanille Bourbon); _crème_ fraîche entière 8%.',NULL,NULL),
	(26,'3222110024937','Etorki ® (33% MG)','Fromage industriel de France; à pâte pressée non cuite; au lait pasteurisé de brebis','250 g','Etorki','France','_Lait_ de brebis pasteurisé; sel; ferments; conservateurs E235-E11105 (extrait de blanc d’_œuf_)',NULL,NULL),
	(27,'3023290798263','Far aux Pruneaux d\'Agen (4 Pots) ','Dessert à base de lait; d\'œufs et de pruneaux d\'Agen','340 g (4 x 85 g)','La Laitière; Nestlé','France','_Lait_ écrémé (35;1 %); sucre; _œufs_ (14;6 %); eau; pruneaux d\'Agen (7;7 %); crème (_lait_); farine de blé (_gluten_) (3;1 %); blanc d’_œuf_ (2;6 %); amidon modifié de maïs; jus de citron concentré; stabilisant (gomme guar); arôme.  ',NULL,NULL),
	(28,'3276559171264','Fraises Mara des Bois','','250 g','Carrefour','France','Fraises (variété Mara des Bois)',NULL,NULL),
	(29,'3280249506045','Fromage Blanc Le P\'tit Brebis (3;1% MG) - (4 pots) 240 g','Fromage blanc au lait pasteurisé de brebis; sucré; à la fraise; enrichi en vitamine D','240 g (4 x 60 g)','Le Petit Basque','France','Fromage blanc au lait pasteurisé de brebis à 3;5% de matière grasse 75% (contient plus de 82% d\'humidité); sucre 12%; fraise 6%; eau; amidon de maïs; arôme naturel; jus concentré de carotte pourpre; jus concentré de citron; vitamine D.',NULL,NULL),
	(30,'26064963','Fromage Pur Brebis (33 % MG)  ','Fromage de France au lait pasteurisé de brebis','220 g ','Pur Brebis','France','Lait pasteurisé de brebis; sel; présure animale; ferments lactiques.',NULL,NULL),
	(31,'3270190118862','Huile de tournesol - 1 litre','Huile de tournesol','1 litre','Carrefour','France','Huile de tournesol.',NULL,NULL),
	(32,'3245390043542','Huile vierge de noisette d\'Aquitaine','','250 ml','Reflets de France','France','',NULL,NULL),
	(33,'3597240004211','Lait UHT Demi-Écrémé','Lait demi-écrémé stérilisé UHT','1 L','Le Petit Vendéen;Terra Lacta','France','Lait stérilisé UHT demi-écrémé.',NULL,NULL),
	(34,'3760148290981','Langoustines au foie gras et piment d\'Espelette 80 g','Rillettes de crustacés','80 g','La Perle des Dieux','France','Crème; langoustines 28%; aiglefin; foie gras de canard 5%; huile d\'olive; sel de Millac; algues (agar agar; wakamé); eau de vie de cidre; piment d\'Espelette 0.3%',NULL,NULL),
	(35,'3660806013337','Le xocolati de foie gras de canard au grué de cacao et éclats de noisettes mi-cuit','Produit gastronomique (Préparation à base de foie gras de canard)','200 g (4 - 6 Parts)','Comtesse du Barry','France','Foie gras de canard issu de canards fermiers du Sud-Ouest 92 %; grué de cacao 3 %; noisettes 3 %; sel; poivre blanc; piment d\'Espelette AOC.  ',NULL,NULL),
	(36,'3252970006767','Les Crozets; Tomate / Piment d\'Espelette','Spécialité céréalière','375 g','Alpina','France','Semoule de blé dur* de qualité supérieure; farine de blé tendre; œufs frais; tomate 5 %; arômes; piment d’Espelette 0;7 %; sel.  *issu de la Filière Alpina.    Contient du _gluten_ et des _œufs_.     ',NULL,NULL),
	(37,'3288131510514','Légumes veau fermier d\'aquitaine','','200 g','Babybio','France','',NULL,NULL),
	(38,'3356490001032','Mara des Bois du Lot et Garonne','','250 g','Douceur de Garonne','France','Fraises (variété Mara des Bois) (catégorie 1).',NULL,NULL),
	(39,'3155250355084','Noix de Dordogne','Fromage aux Noix de Dordogne et arôme naturel de noix','125 g','Rondelé;Président','France','Fromage au _lait_ pasteurisé (81 %); protéines de _lait_; morceaux de Noix de Dordogne (3 %); sel; arôme naturel de noix.      ',NULL,NULL),
	(40,'3381571001663','Ossau-iratY AOP - 180 g ','Fromage de France AOP; à pâte pressée non cuite; au lait pasteurisé de brebis; en tranches','180 g','iSTARA','France','Lait de brebis pasteurisé; sel; présure; chlorure de calcium; ferments lactiques',NULL,NULL),
	(41,'3023260022459','P\'tit Basque (34% MG) - 220 g','Fromage industriel de France; à pâte pressée non cuite; au lait pasteurisé de brebis','220 g','iSTARA','France','Lait de brebis; sel; présure; chlorure de calcium; ferments lactiques; colorants de la croûte : caramel naturel; rocou; conservateur E 235.',NULL,NULL),
	(42,'200144089675','P\'tit Basque (34% MG) - 642 g ','Fromage industriel de France; à pâte pressée non cuite; au lait pasteurisé de brebis','642 g','iSTARA','France','lait de brebis pasteurisé; sel; présure; chlorure de calcium; ferments lactiques; colorants de la croûte : caramel naturel; rocou; conservateur : E235',NULL,NULL),
	(43,'3596710316557','Piperade (4 portions)','Préparation cuisinée à base de tomates; de poivrons; d\'oignons et de piments d\'Espelette','650 g; 720 ml','Auchan;Mmm !;L\'oiseau;Auchan Production;Groupe Auchan','France','Pulpe et purée de tomate (52 %); poivrons (verts; jaunes et rouges) 24 %; oignons (15 %); graisse de canard; sucre; sel; épices et plantes aromatiques (dont piment d\'Espelette 0;1 %).',NULL,NULL),
	(44,'3142953729014','Piperade au Piment d\'Espelette','Préparation culinaire à base de tomates; de poivrons et de piments d\'Espelette','520 g; 580 ml','Louis Martin','France','Pulpe et purée de tomate 52 %; poivrons 24 % ( verts; jaunes; rouges); oignons 15 %; graisse de  canard; sucre; sel; épices et plantes aromatiques (dont piment d\'Espelette 0.15 %).',NULL,NULL),
	(45,'3560070434169','Piperade basquaise Au piment d\'Espelette','Préparation culinaire à base de tomates; de poivrons; d\'oignons et de piment','520 g; 580 ml','Carrefour','France','Pulpe et purée de tomates 51 %; poivrons 24 % (poivrons verts; jaunes et rouges); oignons 15 %; graisse de canard; sucre; sel; piment d’Espelette 0;15 %; ail; épices et plantes aromatiques 0;1 %.',NULL,NULL),
	(46,'3328400821023','Pruneaux d\'Agen','Pruneaux d\'Agen','500 g','PrunO Sport','France','Pruneaux d\'Agen',NULL,NULL),
	(47,'3257980532718','Pruneaux d\'Agen géants','Pruneaux d\'Agen géants pasteurisés','500 g','Patrimoine Gourmand','France','Pruneaux d\'Agen géants',NULL,NULL),
	(48,'3560070595587','Pâte à fondant au chocolat - 500 g - No Gluten Carrefour','Pâte à fondant au chocolat No Gluten','500 g','Carrefour;No gluten','France','Oeuf entier concentré sucré (oeuf entier concentré; sucre); huile de colza; chocolat en poudre à 42% de cacao (15%); eau; farine de riz; chocolat en poudre 7;8% (sucre; cacao); sucre; fécule de pomme de terre; stabilisants : glycérol et gomme xanthane; poudre à lever : (diphosphate disodique; carbonate de sodium); conservateur : sorbate de potassium; sel.',NULL,NULL),
	(49,'3280950000146','Pâté de Foie de Porc au Piment d\'Espelette','Pâté de foie de porc','130 g','Lou Gascoun','France','Foie (49 %); lard; Piment d\'Espelette (0;8 %); sel; poivre.',NULL,NULL),
	(50,'3162900070365','Rillettes de Canard','','180 g','Albert Ménès','France','viande et gras de canard fermier des Landes; jus de cuisson; sel de Guérande; ail; poivre; échalote.',NULL,NULL),
	(51,'285514020601','Saint Albray® (26 % MG)','Fromage industriel de France; à pâte molle à croûte lavée; au lait pasteurisé de vache','166 g','Saint Albray;Fromapac;Bongrain','France','Lait pasteurisé - sel - colorants de croûte : E160a; E160e.',NULL,NULL),
	(52,'3596710246199','Sucre vanillé A l\'extrait naturel de vanille - Auchan','Sucre vanillé ','7;5 g','Pouce;Auchan','France','Sucre; extrait naturel de vanille 4%; anti-agglomérant : amidon de maïs.',NULL,NULL),
	(53,'8480017315908','Tomme Noire des Pyrénées IGP (27 % MG) ','Fromage de France IGP; de montagne; à pâte pressée non cuite; au lait pasteurisé de vache','200 g','Dia','France','Lait pasteurisé de vache; sel; présure animale; ferments lactiques; colorants de croute : E160b et E153; conservateurs de croute : E202 et E235.',NULL,NULL),
	(54,'3222474721930','Tomme des Pyrénées IGP (28 % MG)','Fromage de France IGP; de montagne; à pâte pressée non cuite; au lait pasteurisé de vache','200 g','Casino;Groupe Casino','France','_Lait_ pasteurisé de vache - sel - présure animale - ferments lactiques — colorants (croûte) : charbon végétal; rocou - conservateurs (croûte) : sorbate de potassium; natamycine. Croûte non consommable.',NULL,NULL),
	(55,'3564709053189','Tranches pour toasts Truite fumée d\'Aquitaine - 80 g','Truite Fumée d\'Aquitaine','80 g','Nos Régions ont du Talent','France','Truite Arc en ciel (oncorhynchus mykiss) 97%; sel 3%',NULL,NULL),
	(56,'3560070366996','Truite fumée Au bois de hêtre Bio (4 tranches minimum) décongelée - 120 g','Truite arc-en-ciel salée au sel sec; fumée au bois de hêtre; décongelée; issue de l\'agriculture biologique','120 g (4 tranches minimum)','Carrefour Bio;Carrefour','France','Truite arc-en-ciel biologique(Oncorhynchus mykiss) 97%; sel 3%.  ',NULL,NULL),
	(57,'3245390099761','Truite fumée d\'Aquitaine élevée en eau douce (4 tranches) - 120 g','Truite fumée','120 g','Reflets de France','France','Truite arc-en-ciel(Oncorhynchus mykiss); sel.    ',NULL,NULL),
	(58,'3560070813704','Truite fumée façon Carpaccio à l\'huile d\'olive et au poivre de Sichuan (5 tranches) - 100 g','Truite fumée marinée au poivre de Sichuan avec une dosette à l\'huile d\'olive vierge extra citronnée','100 g (2/3 personnes) + 25 g dosette d\'huile','Carrefour','France','Fines lamelles de truite fumée marinée au poivre de Sichuan avec une dosettc à l’huile d\'olive vierge extra (60%) citronnée. Truite élevée en eau douce en France. Ingrédients : Carpaccio 100 g : Truite arc-en-ciel (Oncorhynchus mykiss) 92%*; marinade 5%* [dextrose; épices et aromates (oignon; ail; poivre de Sichuan 0;1%*; persil; poivre; curcuma); sel; sucre; arômes naturels; poivron; huile de colza; sel 3%*. (*% exprimés sur le carpaccio).  Dosette à l\'huile d\'olive citronnée 25 g : Huile d’olive 60%*; huile de colza; eau;concentré de citron 4%*(concentré de jus de citron; pulpe de citron; essence naturelle de citron; acidifiant : acide citrique).(*% exprimés sur la dosette).',NULL,NULL),
	(59,'3350030158255','Truite fumée élevée en eau douce en France (4 tranches) - 120 g','Truite fumée élevée en eau douce en France; salée au sel sec et fumée au bois de hêtre','120 g (4 tranches)','Monoprix','France','Truite Arc-en-ciel (Oncorhynchus mykiss élevée en eau douce) 97% - sel 3%',NULL,NULL),
	(60,'3222475309830','Yaourt de brebis à la grecque Bio (2 pots) 300 g','Yaourt de brebis à la grecque issu de l\'agriculture biologique','300 g (2 x 150 g)','Casino BIO;Casino','France','Lait** de brebis pasteurisé à 10% de matière grasse - ferments lactiques. - **Ingrédient issu de l\'agriculture biologique.',NULL,NULL),
	(61,'3280249109000','Yaourt à la Grecque Bio','Yaourt à la grecque issu de l\'agriculture biologique','300 g (2 x 150 g)','Le Petit Basque','France','Lait* à 9;2% de matières grasses (lait*; crème* de brebis); poudre de lait écrémé*; ferments lactiques.  * Ingrédients issus de l\'agriculture biologique.',NULL,NULL),
	(63,'0123456789','produit de test 2','lorem ipsum','220 G','Toto','France','Beurre et boeuf',NULL,NULL),
	(64,'0976436890','Camembert','lorem ipsum','2','breton','France','Lait cru',NULL,NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`)
VALUES
	(1,'toto','0b9c2625dc21ef05f6ad4ddf47c5f203837aa32c');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
