CREATE TABLE R (A INT, B INT, C INT, D INT, E INT, F INT);
CREATE TABLE F (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));


-- A gescheiden uit de tabel, met de koppeling D->A
CREATE TABLE R1(B INT, C INT, D INT, E INT, F INT);
CREATE TABLE R2(D INT, A INT);

CREATE TABLE F1(x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
CREATE TABLE F2(x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));


-- D ook gescheiden uit de tabel, met de koppeling E->D
CREATE TABLE Rn1(B INT, C INT, E INT, F INT);
CREATE TABLE Rn2(D INT, A INT);
CREATE TABLE Rn3(E INT, D INT);

CREATE TABLE Fn1(x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
CREATE TABLE Fn2(x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
CREATE TABLE Fn3(x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR(200));
