CREATE SCHEMA progettobd;

CREATE DOMAIN progettobd.genere AS character(1) NOT NULL
	CONSTRAINT genere_check CHECK ((VALUE = ANY (ARRAY['M'::bpchar, 'F'::bpchar])));

CREATE DOMAIN progettobd.string AS character varying(100) NOT NULL;

CREATE DOMAIN progettobd.tipoannofondazione AS integer NOT NULL
	CONSTRAINT tipoannofondazione_check CHECK ((VALUE >= 1857));

CREATE DOMAIN progettobd.tipocontinente AS character varying(11) NOT NULL
	CONSTRAINT tipocontinente_check CHECK (((VALUE)::text = ANY ((ARRAY['NordAmerica'::character varying, 'SudAmerica'::character varying, 'Africa'::character varying, 'Oceania'::character varying, 'Europa'::character varying, 'Asia'::character varying])::text[])));

CREATE DOMAIN progettobd.tiponazione AS progettobd.string NOT NULL
	CONSTRAINT tiponazione_check CHECK (((VALUE)::text = ANY ((ARRAY['Afghanistan'::character varying, 'Albania'::character varying, 'Algeria'::character varying, 'Andorra'::character varying, 'Angola'::character varying, 'Anguilla'::character varying, 'Antartide'::character varying, 'Antigua e Barbuda'::character varying, 'Arabia Saudita'::character varying, 'Argentina'::character varying, 'Armenia'::character varying, 'Aruba'::character varying, 'Australia'::character varying, 'Austria'::character varying, 'Azerbaigian'::character varying, 'Bahamas'::character varying, 'Bahrein'::character varying, 'Bangladesh'::character varying, 'Barbados'::character varying, 'Belgio'::character varying, 'Belize'::character varying, 'Benin'::character varying, 'Bermuda'::character varying, 'Bhutan'::character varying, 'Bielorussia'::character varying, 'Birmania'::character varying, 'Bolivia'::character varying, 'Bosnia ed Erzegovina'::character varying, 'Botswana'::character varying, 'Brasile'::character varying, 'Brunei'::character varying, 'Bulgaria'::character varying, 'Burkina Faso'::character varying, 'Burundi'::character varying, 'Cambogia'::character varying, 'Camerun'::character varying, 'Canada'::character varying, 'Capo Verde'::character varying, 'Ciad'::character varying, 'Cile'::character varying, 'Cina'::character varying, 'Cipro'::character varying, 'Città del Vaticano'::character varying, 'Colombia'::character varying, 'Comore'::character varying, 'Corea del Nord'::character varying, 'Corea del Sud'::character varying, 'Costa d"Avorio'::character varying, 'Costa Rica'::character varying, 'Croazia'::character varying, 'Cuba'::character varying, 'Curaçao'::character varying, 'Danimarca'::character varying, 'Dominica'::character varying, 'Ecuador'::character varying, 'Egitto'::character varying, 'El Salvador'::character varying, 'Emirati Arabi Uniti'::character varying, 'Eritrea'::character varying, 'Estonia'::character varying, 'Etiopia'::character varying, 'Figi'::character varying, 'Filippine'::character varying, 'Finlandia'::character varying, 'Francia'::character varying, 'Gabon'::character varying, 'Gambia'::character varying, 'Georgia'::character varying, 'Georgia del Sud e isole Sandwich meridionali'::character varying, 'Germania'::character varying, 'Ghana'::character varying, 'Giamaica'::character varying, 'Giappone'::character varying, 'Gibilterra'::character varying, 'Gibuti'::character varying, 'Giordania'::character varying, 'Grecia'::character varying, 'Grenada'::character varying, 'Groenlandia'::character varying, 'Guadalupa'::character varying, 'Guam'::character varying, 'Guatemala'::character varying, 'Guernsey'::character varying, 'Guinea'::character varying, 'Guinea-Bissau'::character varying, 'Guinea Equatoriale'::character varying, 'Guyana'::character varying, 'Guyana francese'::character varying, 'Haiti'::character varying, 'Honduras'::character varying, 'Hong Kong'::character varying, 'India'::character varying, 'Indonesia'::character varying, 'Inghilterra'::character varying, 'Iran'::character varying, 'Iraq'::character varying, 'Irlanda'::character varying, 'Islanda'::character varying, 'Isola Bouvet'::character varying, 'Isola di Man'::character varying, 'Isola di Natale'::character varying, 'Isola Norfolk'::character varying, 'Isole Åland'::character varying, 'Isole BES'::character varying, 'Isole Cayman'::character varying, 'Isole Cocos (Keeling)'::character varying, 'Isole Cook'::character varying, 'Isole Faroe'::character varying, 'Isole Falkland'::character varying, 'Isole Heard e McDonald'::character varying, 'Isole Marianne Settentrionali'::character varying, 'Isole Marshall'::character varying, 'Isole minori esterne degli Stati Uniti'::character varying, 'Isole Pitcairn'::character varying, 'Isole Salomone'::character varying, 'Isole Vergini britanniche'::character varying, 'Isole Vergini americane'::character varying, 'Israele'::character varying, 'Italia'::character varying, 'Jersey'::character varying, 'Kazakistan'::character varying, 'Kenya'::character varying, 'Kirghizistan'::character varying, 'Kiribati'::character varying, 'Kuwait'::character varying, 'Laos'::character varying, 'Lesotho'::character varying, 'Lettonia'::character varying, 'Libano'::character varying, 'Liberia'::character varying, 'Libia'::character varying, 'Liechtenstein'::character varying, 'Lituania'::character varying, 'Lussemburgo'::character varying, 'Macao'::character varying, 'Macedonia'::character varying, 'Madagascar'::character varying, 'Malawi'::character varying, 'Malesia'::character varying, 'Maldive'::character varying, 'Mali'::character varying, 'Malta'::character varying, 'Marocco'::character varying, 'Martinica'::character varying, 'Mauritania'::character varying, 'Mauritius'::character varying, 'Mayotte'::character varying, 'Messico'::character varying, 'Micronesia'::character varying, 'Moldavia'::character varying, 'Mongolia'::character varying, 'Montenegro'::character varying, 'Montserrat'::character varying, 'Mozambico'::character varying, 'Namibia'::character varying, 'Nauru'::character varying, 'Nepal'::character varying, 'Nicaragua'::character varying, 'Niger'::character varying, 'Nigeria'::character varying, 'Niue'::character varying, 'Norvegia'::character varying, 'Nuova Caledonia'::character varying, 'Nuova Zelanda'::character varying, 'Oman'::character varying, 'Paesi Bassi'::character varying, 'Pakistan'::character varying, 'Palau'::character varying, 'Palestina'::character varying, 'Panama'::character varying, 'Papua Nuova Guinea'::character varying, 'Paraguay'::character varying, 'Perù'::character varying, 'Polinesia Francese'::character varying, 'Polonia'::character varying, 'Porto Rico'::character varying, 'Portogallo'::character varying, 'Monaco'::character varying, 'Qatar'::character varying, 'Regno Unito'::character varying, 'Repubblica Democratica del Congo'::character varying, 'Repubblica Ceca'::character varying, 'Repubblica Centrafricana'::character varying, 'Repubblica del Congo'::character varying, 'Repubblica Dominicana'::character varying, 'Riunione'::character varying, 'Romania'::character varying, 'Ruanda'::character varying, 'Russia'::character varying, 'Sahara Occidentale'::character varying, 'Saint Kitts e Nevis'::character varying, 'Santa Lucia'::character varying, 'Saint Vincent e Grenadine'::character varying, 'Saint-Barthélemy'::character varying, 'Saint-Martin'::character varying, 'Saint-Pierre e Miquelon'::character varying, 'Samoa'::character varying, 'Samoa Americane'::character varying, 'San Marino'::character varying, 'São Tomé e Príncipe'::character varying, 'Senegal'::character varying, 'Serbia'::character varying, 'Seychelles'::character varying, 'Sierra Leone'::character varying, 'Singapore'::character varying, 'Sint Maarten'::character varying, 'Siria'::character varying, 'Slovacchia'::character varying, 'Slovenia'::character varying, 'Somalia'::character varying, 'Spagna'::character varying, 'Sri Lanka'::character varying, 'Stati Uniti'::character varying, 'Sudafrica'::character varying, 'Sudan'::character varying, 'Sudan del Sud'::character varying, 'Suriname'::character varying, 'Svalbard e Jan Mayen'::character varying, 'Svezia'::character varying, 'Svizzera'::character varying, 'Swaziland'::character varying, 'Taiwan'::character varying, 'Tagikistan'::character varying, 'Tanzania'::character varying, 'Terre australi e antartiche francesi'::character varying, 'Territorio britannico dell"oceano Indiano'::character varying, 'Thailandia'::character varying, 'Timor Est'::character varying, 'Togo'::character varying, 'Tokelau'::character varying, 'Tonga'::character varying, 'Trinidad e Tobago'::character varying, 'Tunisia'::character varying, 'Turchia'::character varying, 'Turkmenistan'::character varying, 'Turks e Caicos'::character varying, 'Tuvalu'::character varying, 'Ucraina'::character varying, 'Uganda'::character varying, 'Ungheria'::character varying, 'Uruguay'::character varying, 'Uzbekistan'::character varying, 'Vanuatu'::character varying, 'Venezuela'::character varying, 'Vietnam'::character varying, 'Wallis e Futuna'::character varying, 'Yemen'::character varying, 'Zambia'::character varying, 'Zimbabwe'::character varying, 'Europa'::character varying, 'Asia'::character varying, 'Oceania'::character varying, 'Africa'::character varying, 'NordAmerica'::character varying, 'SudAmerica'::character varying])::text[])));

CREATE DOMAIN progettobd.tipopiede AS character varying(10) NOT NULL
	CONSTRAINT tipopiede_check CHECK (((VALUE)::text = ANY ((ARRAY['Destro'::character varying, 'Sinistro'::character varying, 'Ambidestro'::character varying])::text[])));

CREATE DOMAIN progettobd.tiporuolo AS character varying(27) NOT NULL
	CONSTRAINT tiporuolo_check CHECK (((VALUE)::text = ANY ((ARRAY['Ala destra'::character varying, 'Attaccante centrale'::character varying, 'Ala sinistra'::character varying, 'Seconda Punta'::character varying, 'Trequartista'::character varying, 'Esterno sinistro'::character varying, 'Esterno destro'::character varying, 'Centrocampista centrale'::character varying, 'Mezzala sinistra'::character varying, 'Mezzala destra'::character varying, 'Centrocampista difensivo'::character varying, 'Mediano'::character varying, 'Terzino sinistro'::character varying, 'Terzino destro'::character varying, 'Difensore centrale sinistro'::character varying, 'Difensore centrale destro'::character varying, 'Portiere'::character varying, 'Libero'::character varying, 'Esterno basso destro'::character varying, 'Esterno basso sinistro'::character varying])::text[])));

CREATE DOMAIN progettobd.tipostagione AS character(9) NOT NULL
	CONSTRAINT tipostagione_check CHECK ((VALUE ~~ '____/____'::text));
-----------------------------------------------------------------------------------------------------------------------------------

CREATE FUNCTION progettobd.agg_data_ritiro() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

DECLARE
date_contratto CURSOR FOR
SELECT dataInizio, dataFine
FROM Militanza
WHERE Calciatore = NEW.idCalciatore;
data_inizio Militanza.dataInizio%TYPE;
data_fine Militanza.dataFine%TYPE;
BEGIN
	OPEN date_contratto;
	LOOP
		FETCH date_contratto INTO data_inizio, data_fine;
		IF (NEW.DataRitiro < data_inizio OR data_fine IS NOT NULL AND NEW.dataRitiro < data_fine)
	THEN
			RAISE NOTICE 'Data in conflitto con le date del contratto';
			RETURN NULL;
		ELSE
			RETURN NEW;
		END IF;
		EXIT WHEN NOT FOUND;
	END LOOP;
	CLOSE date_contratto;
END;

$$;

CREATE FUNCTION progettobd.agg_ruolop() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE

BEGIN
	UPDATE Militanza
	SET GolSubiti = '0'
	WHERE NEW.Calciatore = Calciatore;
	RETURN NEW;
END;
$$;

CREATE FUNCTION progettobd.calciatore_id() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    max_id INTEGER;
BEGIN
    SELECT MAX(idCalciatore) INTO max_id FROM Calciatore;
    
    IF max_id IS NULL THEN
        NEW.idCalciatore := 1;
    ELSIF NEW.idCalciatore IS NULL OR NEW.idCalciatore != max_id + 1 THEN
        NEW.idCalciatore := max_id + 1;
    END IF;
    
    RETURN NEW;
END;
$$;

CREATE FUNCTION progettobd.squadra_id() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    max_id INTEGER;
BEGIN
    SELECT MAX(idSquadra) INTO max_id FROM Squadra;
    
    IF max_id IS NULL THEN
        NEW.idSquadra := 1;
    ELSIF NEW.idSquadra IS NULL OR NEW.idSquadra != max_id + 1 THEN
        NEW.idSquadra := max_id + 1;
    END IF;
    
    RETURN NEW;
END;
$$;

CREATE FUNCTION progettobd.competizione_generemf() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
genereS char(1);
genereC char(1);
BEGIN
	SELECT categoria
	INTO genereS
	FROM Squadra
	WHERE idSquadra = NEW.Squadra;
	
	SELECT categoria
	INTO genereC
	FROM Competizione
	WHERE Nome = NEW.Competizione;
	
	IF genereS = genereC THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'La squadra non può giocare in una competizione di genere differente
					  dal suo';
		RETURN NULL;
		
	END IF;
END;
$$;

CREATE FUNCTION progettobd.controllo_datanm() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
data_nascita calciatore.dataNascita%TYPE;
BEGIN
	SELECT dataNascita
	INTO data_nascita
	FROM Calciatore
	WHERE idCalciatore = NEW.Calciatore;
	
	IF (NEW.dataInizio < data_nascita OR NEW.dataFine < data_nascita) THEN
		RAISE NOTICE 'Il calciatore non era ancora nato, controlla le date del contratto';
		RETURN NULL;
	ELSE
		RETURN NEW;
	END IF;
	
END;
$$;

CREATE FUNCTION progettobd.controllo_datarm() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
data_ritiro calciatore.dataRitiro%TYPE;
BEGIN
	SELECT dataRitiro
	INTO data_ritiro
	FROM Calciatore
	WHERE idCalciatore = NEW.Calciatore;
	
	IF data_ritiro IS NULL THEN
		RETURN NEW;
	ELSE IF (NEW.dataInizio > data_ritiro OR NEW.dataFine > data_ritiro) THEN
		RAISE NOTICE 'Il calciatore è ritirato, controlla le date del contratto';
		RETURN NULL;
		ELSE
			RETURN NEW;
		END IF;
	END IF;
	
END;
$$;

CREATE FUNCTION progettobd.controllo_nazg() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
NomeSquadra varchar(100);
BEGIN

	IF NEW.Competizione IN('Mondiale','Europeo','Coppa D"Africa','Coppa D"Asia','Coppa America',
						   'Coppa D"Oceania') THEN
		SELECT nome
		INTO NomeSquadra
		FROM Squadra
		WHERE idSquadra = NEW.Squadra;
		IF NomeSquadra IN (SELECT Nome FROM Nazionalità) THEN
			RETURN NEW;
		ELSE
			RAISE NOTICE 'Stai inserendo una squadra di club in una competizione per nazioni';
			RETURN NULL;
		END IF;
	ELSE IF NomeSquadra IN (SELECT Nome FROM Nazionalità) THEN
		RAISE NOTICE 'Stai inserendo una nazione in una competizione per club';
		RETURN NULL;
	ELSE
		RETURN NEW;
		END IF;
	END IF;
END;
$$;

CREATE FUNCTION progettobd.naz_calciatoren() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE

BEGIN
	IF NEW.Nazionalità NOT IN ('Europa', 'Africa', 'Asia', 'Oceania', 'NordAmerica', 'SudAmerica')
	THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'Il calciatore non può avere questa nazionalità';
		RETURN NULL;
	END IF;
END;
$$;

CREATE FUNCTION progettobd.naz_part_squadramf() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
nazSquadra varchar(100);
nazComp varchar(100);
BEGIN
	SELECT Nazionalità
	INTO nazComp
	FROM Competizione
	WHERE Nome = NEW.Competizione;
	
	IF nazComp NOT IN ('Europa','Asia','NordAmerica','SudAmerica','Oceania', 'Africa') THEN

		SELECT Nazionalità
		INTO nazSquadra
		FROM Squadra
		WHERE idSquadra = NEW.Squadra;
		IF nazComp = nazSquadra THEN
			RETURN NEW;
		ELSE
			RAISE NOTICE 'La squadra non fa parte della nazione della competizione';
			RETURN NULL;
		END IF;
	ELSE 
		SELECT Continente
		INTO nazSquadra
		FROM Squadra INNER JOIN Nazionalità ON Squadra.Nazionalità = Nazionalità.Nome
		WHERE idSquadra = NEW.Squadra;
		IF nazComp = nazSquadra THEN
			RETURN NEW;
		ELSE
			RAISE NOTICE 'La squadra non fa parte della nazione della competizione';
			RETURN NULL;
		END IF;
	END IF;	
END
$$;

CREATE FUNCTION progettobd.naz_squadran() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE

BEGIN
	IF NEW.Nazionalità NOT IN ('Europa', 'Africa', 'Asia', 'Oceania', 'NordAmerica', 'SudAmerica')
	THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'La squadra non può avere questa nazionalità';
		RETURN NULL;
	END IF;
END;
$$;

CREATE FUNCTION progettobd.portiere_golsubiti() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
count_righe INTEGER;
BEGIN
	SELECT Count(*)
	INTO count_righe
	FROM Ha
	WHERE Ha.Calciatore = NEW.Calciatore AND Ruolo = 'Portiere';
	
	IF (count_righe = 0 AND NEW.golSubiti IS NULL) THEN
		RETURN NEW;
	ELSE IF (count_righe = 0 AND NEW.golSubiti IS NOT NULL) THEN
			NEW.golSubiti := NULL;
			RETURN NEW;
		END IF;
	END IF;
		
	IF NEW.golSubiti IS NULL THEN
		NEW.golSubiti := 0;
	END IF;
	RETURN NEW;
END;
$$;

CREATE FUNCTION progettobd.squadra_generemf() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
genereS CHAR(1);
genereC CHAR(1);
BEGIN
	SELECT categoria
	INTO genereS
	FROM Squadra
	WHERE idSquadra = NEW.Squadra;
	
	SELECT sesso
	INTO genereC
	FROM Calciatore
	WHERE idCalciatore = NEW.Calciatore;
	
	IF genereS = genereC THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'Il calciatore non può giocare in una squadra di genere differente
					  dal suo sesso';
		RETURN NULL;
		
	END IF;
END;
$$;

CREATE FUNCTION progettobd.trofeoc_generemf() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
genereT CHAR(1);
genereC CHAR(1);
BEGIN
	SELECT categoria
	INTO genereT
	FROM trofeoCalciatore
	WHERE Nome = NEW.trofeoCalciatore;
	
	SELECT sesso
	INTO genereC
	FROM Calciatore
	WHERE idCalciatore = NEW.Calciatore;
	
	IF genereT = genereC THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'Il calciatore non può vincere un trofeo che appartiene ad una categoria
					  differente dal suo sesso';
		RETURN NULL;
		
	END IF;
END;
$$;

CREATE FUNCTION progettobd.trofeos_generemf() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
genereT CHAR(1);
genereS CHAR(1);
BEGIN
	SELECT categoria
	INTO genereT
	FROM trofeoCompetizione
	WHERE Nome = NEW.trofeoCompetizione;
	
	SELECT categoria
	INTO genereS
	FROM Squadra
	WHERE idSquadra = NEW.Squadra;
	
	IF genereT = genereS THEN
		RETURN NEW;
	ELSE
		RAISE NOTICE 'La squadra non può vincere un trofeo che appartiene ad una categoria
					  differente dalla sua';
		RETURN NULL;
		
	END IF;
END;
$$;

CREATE FUNCTION progettobd.vinc_trofeo_compets() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
stagioneV varchar(10);
BEGIN
	SELECT stagione
	INTO stagioneV
	FROM Partecipa INNER JOIN Competizione ON Partecipa.competizione = Competizione.nome 
	WHERE NEW.Stagione = stagione AND NEW.Squadra = squadra AND 
		  NEW.TrofeoCompetizione = trofeoCompetizione;
	
	IF stagioneV is NULL THEN
		RAISE NOTICE 'La squadra in quella stagione non ha partecipato alla competizione';
		RETURN NULL;
	ELSE
		RETURN NEW;
	END IF;
END;
$$;

-----------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE progettobd.amministratore (
    username progettobd.string NOT NULL,
    "Password" progettobd.string
);

CREATE TABLE progettobd.appartiene (
    "nazionalità" progettobd.string NOT NULL,
    calciatore integer NOT NULL
);

CREATE TABLE progettobd.calciatore (
    idcalciatore integer NOT NULL,
    nome progettobd.string,
    cognome progettobd.string,
    piede progettobd.tipopiede,
    sesso progettobd.genere,
    datanascita date NOT NULL,
    dataritiro date,
    CONSTRAINT controllo_datac CHECK ((datanascita < dataritiro))
);

CREATE SEQUENCE progettobd.calciatore_idcalciatore_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE progettobd.competizione (
    nome progettobd.string NOT NULL,
    descrizione progettobd.string,
    categoria progettobd.genere,
    "nazionalità" progettobd.tiponazione,
    trofeocompetizione progettobd.string
);


CREATE TABLE progettobd.feature (
    tipofeature progettobd.string NOT NULL,
    descrizione progettobd.string
);

CREATE TABLE progettobd.ha (
    ruolo progettobd.string NOT NULL,
    calciatore integer NOT NULL
);

CREATE TABLE progettobd.militanza (
    datainizio date NOT NULL,
    datafine date,
    partitegiocate integer DEFAULT 0 NOT NULL,
    golsegnati integer DEFAULT 0 NOT NULL,
    golsubiti integer,
    calciatore integer NOT NULL,
    squadra integer NOT NULL,
    CONSTRAINT controllo_data CHECK ((datainizio < datafine))
);

CREATE TABLE progettobd."nazionalità" (
    nome progettobd.tiponazione NOT NULL,
    continente progettobd.tipocontinente
);

CREATE TABLE progettobd.partecipa (
    stagione progettobd.tipostagione NOT NULL,
    squadra integer NOT NULL,
    competizione progettobd.string NOT NULL
);

CREATE TABLE progettobd.possiede (
    feature progettobd.string NOT NULL,
    calciatore integer NOT NULL
);

CREATE TABLE progettobd.ruolo (
    posizione progettobd.string NOT NULL,
    descrizione progettobd.string
);

CREATE TABLE progettobd.squadra (
    idsquadra integer NOT NULL,
    nome progettobd.string,
    categoria progettobd.genere,
    annofondazione progettobd.tipoannofondazione,
    "nazionalità" progettobd.tiponazione
);

CREATE SEQUENCE progettobd.squadra_idsquadra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE progettobd.trofeocalciatore (
    nome progettobd.string NOT NULL,
    descrizione progettobd.string,
    categoria progettobd.genere
);

CREATE TABLE progettobd.trofeocompetizione (
    nome progettobd.string NOT NULL,
    descrizione progettobd.string,
    categoria progettobd.genere
);

CREATE TABLE progettobd.vincecalciatore (
    stagione progettobd.tipostagione NOT NULL,
    calciatore integer NOT NULL,
    trofeocalciatore progettobd.string NOT NULL
);

CREATE TABLE progettobd.vincesquadra (
    stagione progettobd.tipostagione NOT NULL,
    squadra integer NOT NULL,
    trofeocompetizione progettobd.string NOT NULL
);

ALTER TABLE ONLY progettobd.amministratore
    ADD CONSTRAINT amministratore_pkey PRIMARY KEY (username);

ALTER TABLE ONLY progettobd.appartiene
    ADD CONSTRAINT appartiene_pkey PRIMARY KEY ("nazionalità", calciatore);

ALTER TABLE ONLY progettobd.calciatore
    ADD CONSTRAINT calciatore_pkey PRIMARY KEY (idcalciatore);

ALTER TABLE ONLY progettobd.competizione
    ADD CONSTRAINT competizione_pkey PRIMARY KEY (nome);

ALTER TABLE ONLY progettobd.feature
    ADD CONSTRAINT feature_pkey PRIMARY KEY (tipofeature);

ALTER TABLE ONLY progettobd.ha
    ADD CONSTRAINT ha_pkey PRIMARY KEY (ruolo, calciatore);

ALTER TABLE ONLY progettobd.militanza
    ADD CONSTRAINT militanza_pkey PRIMARY KEY (datainizio, calciatore, squadra);

ALTER TABLE ONLY progettobd."nazionalità"
    ADD CONSTRAINT "nazionalità_pkey" PRIMARY KEY (nome);

ALTER TABLE ONLY progettobd.partecipa
    ADD CONSTRAINT partecipa_pkey PRIMARY KEY (stagione, squadra, competizione);

ALTER TABLE ONLY progettobd.possiede
    ADD CONSTRAINT possiede_pkey PRIMARY KEY (feature, calciatore);

ALTER TABLE ONLY progettobd.ruolo
    ADD CONSTRAINT ruolo_pkey PRIMARY KEY (posizione);

ALTER TABLE ONLY progettobd.squadra
    ADD CONSTRAINT squadra_pkey PRIMARY KEY (idsquadra);

ALTER TABLE ONLY progettobd.trofeocalciatore
    ADD CONSTRAINT trofeocalciatore_pkey PRIMARY KEY (nome);

ALTER TABLE ONLY progettobd.trofeocompetizione
    ADD CONSTRAINT trofeocompetizione_pkey PRIMARY KEY (nome);

ALTER TABLE ONLY progettobd.vincecalciatore
    ADD CONSTRAINT vincecalciatore_pkey PRIMARY KEY (stagione, calciatore, trofeocalciatore);

ALTER TABLE ONLY progettobd.vincesquadra
    ADD CONSTRAINT vincesquadra_pkey PRIMARY KEY (stagione, squadra, trofeocompetizione);

CREATE TRIGGER agg_ruolo AFTER INSERT ON progettobd.ha FOR EACH ROW WHEN (((new.ruolo)::text = 'Portiere'::text)) EXECUTE FUNCTION progettobd.agg_ruolop();

CREATE TRIGGER aggiunta_data_ritiro BEFORE UPDATE ON progettobd.calciatore FOR EACH ROW WHEN ((new.dataritiro IS NOT NULL)) EXECUTE FUNCTION progettobd.agg_data_ritiro();

CREATE TRIGGER competizione_genere BEFORE INSERT ON progettobd.partecipa FOR EACH ROW EXECUTE FUNCTION progettobd.competizione_generemf();

CREATE TRIGGER controllo_datan BEFORE INSERT OR UPDATE ON progettobd.militanza FOR EACH ROW EXECUTE FUNCTION progettobd.controllo_datanm();

CREATE TRIGGER controllo_datar BEFORE INSERT OR UPDATE ON progettobd.militanza FOR EACH ROW EXECUTE FUNCTION progettobd.controllo_datarm();

CREATE TRIGGER controllo_naz BEFORE INSERT ON progettobd.partecipa FOR EACH ROW EXECUTE FUNCTION progettobd.controllo_nazg();

CREATE TRIGGER controllo_idcalciatore BEFORE INSERT ON progettobd.calciatore FOR EACH ROW EXECUTE FUNCTION progettobd.calciatore_id();

CREATE TRIGGER controllo_idsquadra BEFORE INSERT ON progettobd.squadra FOR EACH ROW EXECUTE FUNCTION progettobd.squadra_id();

CREATE TRIGGER naz_calciatore BEFORE INSERT ON progettobd.appartiene FOR EACH ROW EXECUTE FUNCTION progettobd.naz_calciatoren();

CREATE TRIGGER naz_part_squadra BEFORE INSERT ON progettobd.partecipa FOR EACH ROW EXECUTE FUNCTION progettobd.naz_part_squadramf();

CREATE TRIGGER naz_squadra BEFORE INSERT ON progettobd.squadra FOR EACH ROW EXECUTE FUNCTION progettobd.naz_squadran();

CREATE TRIGGER portiere BEFORE INSERT ON progettobd.militanza FOR EACH ROW EXECUTE FUNCTION progettobd.portiere_golsubiti();

CREATE TRIGGER squadra_genere BEFORE INSERT ON progettobd.militanza FOR EACH ROW EXECUTE FUNCTION progettobd.squadra_generemf();

CREATE TRIGGER trofeoc_genere BEFORE INSERT ON progettobd.vincecalciatore FOR EACH ROW EXECUTE FUNCTION progettobd.trofeoc_generemf();

CREATE TRIGGER trofeos_genere BEFORE INSERT ON progettobd.vincesquadra FOR EACH ROW EXECUTE FUNCTION progettobd.trofeos_generemf();

CREATE TRIGGER vinc_trofeo_compet BEFORE INSERT ON progettobd.vincesquadra FOR EACH ROW EXECUTE FUNCTION progettobd.vinc_trofeo_compets();

ALTER TABLE ONLY progettobd.appartiene
    ADD CONSTRAINT appartiene_calciatore_fkey FOREIGN KEY (calciatore) REFERENCES progettobd.calciatore(idcalciatore);

ALTER TABLE ONLY progettobd.appartiene
    ADD CONSTRAINT "appartiene_nazionalità_fkey" FOREIGN KEY ("nazionalità") REFERENCES progettobd."nazionalità"(nome);

ALTER TABLE ONLY progettobd.competizione
    ADD CONSTRAINT "competizione_nazionalità_fkey" FOREIGN KEY ("nazionalità") REFERENCES progettobd."nazionalità"(nome);


ALTER TABLE ONLY progettobd.competizione
    ADD CONSTRAINT competizione_trofeocompetizione_fkey FOREIGN KEY (trofeocompetizione) REFERENCES progettobd.trofeocompetizione(nome);

ALTER TABLE ONLY progettobd.ha
    ADD CONSTRAINT ha_calciatore_fkey FOREIGN KEY (calciatore) REFERENCES progettobd.calciatore(idcalciatore);

ALTER TABLE ONLY progettobd.ha
    ADD CONSTRAINT ha_ruolo_fkey FOREIGN KEY (ruolo) REFERENCES progettobd.ruolo(posizione);

ALTER TABLE ONLY progettobd.militanza
    ADD CONSTRAINT militanza_calciatore_fkey FOREIGN KEY (calciatore) REFERENCES progettobd.calciatore(idcalciatore);

ALTER TABLE ONLY progettobd.militanza
    ADD CONSTRAINT militanza_squadra_fkey FOREIGN KEY (squadra) REFERENCES progettobd.squadra(idsquadra);

ALTER TABLE ONLY progettobd.partecipa
    ADD CONSTRAINT partecipa_competizione_fkey FOREIGN KEY (competizione) REFERENCES progettobd.competizione(nome);

ALTER TABLE ONLY progettobd.partecipa
    ADD CONSTRAINT partecipa_squadra_fkey FOREIGN KEY (squadra) REFERENCES progettobd.squadra(idsquadra);

ALTER TABLE ONLY progettobd.possiede
    ADD CONSTRAINT possiede_calciatore_fkey FOREIGN KEY (calciatore) REFERENCES progettobd.calciatore(idcalciatore);

ALTER TABLE ONLY progettobd.possiede
    ADD CONSTRAINT possiede_feature_fkey FOREIGN KEY (feature) REFERENCES progettobd.feature(tipofeature);

ALTER TABLE ONLY progettobd.squadra
    ADD CONSTRAINT "squadra_nazionalità_fkey" FOREIGN KEY ("nazionalità") REFERENCES progettobd."nazionalità"(nome);

ALTER TABLE ONLY progettobd.vincecalciatore
    ADD CONSTRAINT vincecalciatore_calciatore_fkey FOREIGN KEY (calciatore) REFERENCES progettobd.calciatore(idcalciatore);

ALTER TABLE ONLY progettobd.vincecalciatore
    ADD CONSTRAINT vincecalciatore_trofeocalciatore_fkey FOREIGN KEY (trofeocalciatore) REFERENCES progettobd.trofeocalciatore(nome);

ALTER TABLE ONLY progettobd.vincesquadra
    ADD CONSTRAINT vincesquadra_squadra_fkey FOREIGN KEY (squadra) REFERENCES progettobd.squadra(idsquadra);

ALTER TABLE ONLY progettobd.vincesquadra
    ADD CONSTRAINT vincesquadra_trofeocompetizione_fkey FOREIGN KEY (trofeocompetizione) REFERENCES progettobd.trofeocompetizione(nome);