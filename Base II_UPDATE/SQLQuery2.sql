use demo

create table prov
(
cprv integer not null primary key,
nomb char(40) not null,
ciud char(2) not null
)

create table alma
(
calm integer not null primary key,
noma char(40) not null,
ciud char(2) not null
)

create table prod
(
cprd integer not null primary key,
nomp char(40) not null,
colo char(15) not null
)

create table sumi
(
cprv integer not null,
calm integer not null,
cprd integer not null,
ftra date not null,
cant decimal(12,2) not null,
prec decimal(12,2) not null,
impt decimal(12,2) not null
)

insert into prov values(1,'PRV1','SC')
insert into prov values(2,'PRV2','LP')
insert into prov values(3,'PRV3','CB')


insert into alma values(1,'ALM1','CB')
insert into alma values(2,'ALM2','SC')
insert into alma values(3,'ALM3','LP')

insert into prod values(1,'PRD1','ROJO')
insert into prod values(2,'PRD2','VERDE')
insert into prod values(3,'PRD3','AMARILLO')
insert into prod values(4,'PRD4','ROJO')
insert into prod values(5,'PRD5','AMARILLO')

delete from sumi

insert into sumi values(1,3,1,'1/1/2012',20,5,100)
insert into sumi values(1,2,1,'25/2/2012',10,5,50)
insert into sumi values(1,2,3,'10/1/2012',80,2,160)
insert into sumi values(3,2,3,'15/3/2012',10,2,20)
insert into sumi values(3,1,3,'12/4/2012',40,2,80)
insert into sumi values(1,1,1,'1/1/2011',2,4,8)
insert into sumi values(1,2,1,'20/2/2011',100,5,500)
insert into sumi values(1,2,2,'11/12/2011',40,2,80)
insert into sumi values(3,3,3,'15/3/2012',1,2,2)
insert into sumi values(3,1,2,'12/4/2012',25,2,50)
insert into sumi values(3,1,4,'12/6/2012',15,3,45)

-----------------------------------------------------------------------------------

