-- tournament
CREATE TABLE T (
  T_ID INTEGER NOT NULL,
  DESC VARCHAR(300),
  PRIMARY KEY (T_ID)
);

-- a tournament has multiple boards.
-- each board stores the last round's value
CREATE TABLE B (
 T_ID INTEGER NOT NULL REFERENCES T (T_ID),
 B_ID INTEGER NOT NULL,
 LAST_VALUE VARCHAR(128),
 CONSTRAINT B_PK_TREE PRIMARY KEY (T_ID, B_ID)
);

-- a tournament has multiple rounds.
CREATE TABLE R (
 T_ID INTEGER NOT NULL REFERENCES T (T_ID),
 R_ID INTEGER NOT NULL,
 R_POT INTEGER NOT NULL,
 VALUE VARCHAR(128) NOT NULL,
 CONSTRAINT R_PK_TREE PRIMARY KEY (T_ID, R_ID)
);
