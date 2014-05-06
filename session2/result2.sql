INSERT INTO F (x, y, violation, motivation) VALUES
("ABC", "EF", 0, "Not a violation, E->D means that all attributes are known"),
("E", "D", 1, "With only ED known, D->A gives ADE known. There is no other way to 'learn' more keys"),
("D", "A", 1, "With only AD known, there is no other key that can be learned"); 

INSERT INTO F1 (x, y, violation, motivation) VALUES
("BC", "EF", 0, "E->D provides all attributes"),
("E", "D", 1, "DE gives no opportunity to learn other attributes");

INSERT INTO F2 (x, y, violation, motivation) VALUES
("D", "A", 0, "That are the only values");