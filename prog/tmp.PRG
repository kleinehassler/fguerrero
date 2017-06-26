select date(val(substr(a,1,4)),val(substr(a,6,2)),val(substr(a,9,2))) as fecha, c as tipo, d as numero, ;
	int(val(substr(e,1,6))) as codigo, substr(e,7,60) as cliente, ;
	round(val(f),2) as valor, round(val(h),2) as pendi ;
	from documentospen ;
	into cursor docpen

select codigo, sum(pendi) as pendi ;
from docpen ;
group by codigo ;
into table saldoscli

select int(val(a)) as codigo, b as nombre, round(val(c),2) as saldo, d as grupo ;
	from saldospen ;
	where val(c)>0 ;
	into table totpen

select sum(pendi) as pendi, codigo, cliente ;
from docpen ;
group by codigo ;
into table totdocpen

select t.codigo, t.nombre, t.saldo, pendi ;
from totpen t left join totdocpen d on (t.codigo=d.codigo);
where saldo<>pendi


*** facturacion - reportes - caja credito - mov de la cta caja
agregar varios usuarios como form fac0311