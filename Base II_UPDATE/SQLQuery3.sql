--mostrar todos los productos de color rojo
use demo
select nomp
from prod
where colo = 'ROJO'

--mostrar los proveedores de las ciudades de santa cruz y la paz
select nomb
from prov
where CIUD = 'SC' or CIUD = 'LP'

--mostrar los almacenes de la ciudad de cbba,sc,tarija,beni,pando
select *
from alma
where ciud = 'CB' or ciud = 'SC' or ciud = 'TA' or ciud = 'BE' or ciud = 'PA' 

select *
from alma
where ciud in ('CB','SC','TA','BE','PA' )

--mostrar los productos existentes en cada almacen

select noma,nomp
from prod,alma
where cprd in (select cprd
			   from sumi)and
	  calm in (select calm 
			   from sumi) 
order by 1,2;	

--mostrar los almacenes de la ciudad de cbba
select *
from alma
where ciud = 'CB'		   			  
		
--mostrar los productos existentes en los almacenes de la ciudad de santa cruz	
select nomp
from prod
where cprd in (select cprd
			   from sumi 
			   where calm in (select calm 
			                  from alma
			                  where ciud = 'SC')) 
			                  
select nomp from prod 
where exists 
(select * from sumi,alma
where sumi.calm = alma.calm 
and   sumi.cprd = prod.cprd 
and   alma.ciud = 'SC')			  

--               