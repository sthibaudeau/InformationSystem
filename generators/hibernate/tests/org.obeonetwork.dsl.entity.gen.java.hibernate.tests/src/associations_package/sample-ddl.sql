-- Start of user code DB Name
-- TODO specify the name of database used
USE sample;
-- End of user code

-- Tables for Entity Class_01_01 

DROP TABLE IF EXISTS CLASS_01_01;
CREATE TABLE CLASS_01_01
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR VARCHAR(255) NOT NULL,
	-- |1|-->1
	FK_CLASS_01_01_END_TARGET_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_01_END 

DROP TABLE IF EXISTS CLASS_01_01_END;
CREATE TABLE CLASS_01_01_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_01_BI 

DROP TABLE IF EXISTS CLASS_01_01_BI;
CREATE TABLE CLASS_01_01_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_01_BI_END 

DROP TABLE IF EXISTS CLASS_01_01_BI_END;
CREATE TABLE CLASS_01_01_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	-- |1|<-->1
	FK_CLASS_01_01_BI_SOURCE_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_01 

DROP TABLE IF EXISTS CLASS_1_01;
CREATE TABLE CLASS_1_01
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR VARCHAR(255) NOT NULL,
	-- |1|-->1
	FK_CLASS_1_01_END_TARGET_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_01_END 

DROP TABLE IF EXISTS CLASS_1_01_END;
CREATE TABLE CLASS_1_01_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_01_BI 

DROP TABLE IF EXISTS CLASS_1_01_BI;
CREATE TABLE CLASS_1_01_BI
(
	ID CHAR(32) NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_01_BI_END 

DROP TABLE IF EXISTS CLASS_1_01_BI_END;
CREATE TABLE CLASS_1_01_BI_END
(
	ID CHAR(32) NOT NULL,
	-- |1|<-->1
	FK_CLASS_1_01_BI_SOURCE_ID CHAR(32) UNIQUE NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_1 

DROP TABLE IF EXISTS CLASS_01_1;
CREATE TABLE CLASS_01_1
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	-- |1|-->1
	FK_CLASS_01_1_END_TARGET_ID CHAR(32) UNIQUE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_1_END 

DROP TABLE IF EXISTS CLASS_01_1_END;
CREATE TABLE CLASS_01_1_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_1_BI 

DROP TABLE IF EXISTS CLASS_01_1_BI;
CREATE TABLE CLASS_01_1_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR VARCHAR(255) NOT NULL,
	-- |1|<-->1
	FK_CLASS_01_1_BI_END_TARGET_ID CHAR(32) UNIQUE NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_1_BI_END 

DROP TABLE IF EXISTS CLASS_01_1_BI_END;
CREATE TABLE CLASS_01_1_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_1 

DROP TABLE IF EXISTS CLASS_1_1;
CREATE TABLE CLASS_1_1
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	-- |1|-->1
	FK_CLASS_1_1_END_TARGET_ID CHAR(32) UNIQUE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_1_END 

DROP TABLE IF EXISTS CLASS_1_1_END;
CREATE TABLE CLASS_1_1_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_1_BI 

DROP TABLE IF EXISTS CLASS_1_1_BI;
CREATE TABLE CLASS_1_1_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DATETIME NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_1_1_BI_END 

DROP TABLE IF EXISTS CLASS_1_1_BI_END;
CREATE TABLE CLASS_1_1_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	-- |1|<-->1
	FK_CLASS_1_1_BI_SOURCE_ID CHAR(32) UNIQUE NOT NULL,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_Many 

DROP TABLE IF EXISTS CLASS_01_MANY;
CREATE TABLE CLASS_01_MANY
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_Many_END 

DROP TABLE IF EXISTS CLASS_01_MANY_END;
CREATE TABLE CLASS_01_MANY_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_Many_BI 

DROP TABLE IF EXISTS CLASS_01_MANY_BI;
CREATE TABLE CLASS_01_MANY_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_01_Many_BI_END 

DROP TABLE IF EXISTS CLASS_01_MANY_BI_END;
CREATE TABLE CLASS_01_MANY_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	-- |*|<-->1
	FK_CLASS_01_MANY_BI_SOURCE_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_01 

DROP TABLE IF EXISTS CLASS_MANY_01;
CREATE TABLE CLASS_MANY_01
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	-- |*|-->1
	FK_CLASS_MANY_01_END_TARGET_ID CHAR(32) UNIQUE,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_01_END 

DROP TABLE IF EXISTS CLASS_MANY_01_END;
CREATE TABLE CLASS_MANY_01_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_01_BI 

DROP TABLE IF EXISTS CLASS_MANY_01_BI;
CREATE TABLE CLASS_MANY_01_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR VARCHAR(255) NOT NULL,
	-- |*|<-->1
	FK_CLASS_MANY_01_BI_END_TARGET_ID CHAR(32) UNIQUE,

	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_01_BI_END 

DROP TABLE IF EXISTS CLASS_MANY_01_BI_END;
CREATE TABLE CLASS_MANY_01_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_Many 

DROP TABLE IF EXISTS CLASS_MANY_MANY;
CREATE TABLE CLASS_MANY_MANY
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR DOUBLE NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|-->*
DROP TABLE IF EXISTS CLASS_MANY_MANY_CLASS_MANY_MANY_END;
CREATE TABLE CLASS_MANY_MANY_CLASS_MANY_MANY_END
(
	CLASS_MANY_MANY_ID CHAR(32) NOT NULL,
	CLASS_MANY_MANY_END_ID CHAR(32) NOT NULL,
	PRIMARY KEY (CLASS_MANY_MANY_ID, CLASS_MANY_MANY_END_ID)
);

-- Tables for Entity Class_Many_Many_End 

DROP TABLE IF EXISTS CLASS_MANY_MANY_END;
CREATE TABLE CLASS_MANY_MANY_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR VARCHAR(255) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_Many_BI 

DROP TABLE IF EXISTS CLASS_MANY_MANY_BI;
CREATE TABLE CLASS_MANY_MANY_BI
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR INT(1) NOT NULL,
	PRIMARY KEY (ID)
);

-- Tables for Entity Class_Many_Many_BI_END 

DROP TABLE IF EXISTS CLASS_MANY_MANY_BI_END;
CREATE TABLE CLASS_MANY_MANY_BI_END
(
	ID CHAR(32) NOT NULL,
	FAKE_ATTR  NOT NULL,
	PRIMARY KEY (ID)
);

-- |*|<-->*
DROP TABLE IF EXISTS CLASS_MANY_MANY_BI_END_CLASS_MANY_MANY_BI;
CREATE TABLE CLASS_MANY_MANY_BI_END_CLASS_MANY_MANY_BI
(
	CLASS_MANY_MANY_BI_END_ID CHAR(32) NOT NULL,
	CLASS_MANY_MANY_BI_ID CHAR(32) NOT NULL,
	PRIMARY KEY (CLASS_MANY_MANY_BI_END_ID, CLASS_MANY_MANY_BI_ID)
);

