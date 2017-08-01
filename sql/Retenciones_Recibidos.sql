Select * from retenreci


select distinct  d.code, scode, sname, d.fecha, d.scedula, d.sruc, d.num, d.nomdoc, d.subconiva,
		d.subsiniva, d.descuconiva, d.descusiniva, d.montototal,
		f.valorren, f.valoriva, f.numret
		from vdocuments d left join retenreci f on (d.code=f.code)
where d.code=328343 and d.isaccount and not d.isanulado 



select * from vdocuments where code=327821


select distinct  d.code, scode, sname, d.fecha, r.rubname, d.scedula, d.sruc, d.num, d.nomdoc, d.subconiva, "+;
		"d.subsiniva, d.descuconiva, d.descusiniva, "+;
		"b.valor, case when b.basecal=0 then b.valor*100/r.valcal else b.basecal end as basecal, r.valcal, r.rubtab "+;
		"from vdocuments d left join cobros b on (d.code=b.code) "+;
						 "left join rubros r on (b.rubcode=r.rubcode) "+;
		"where d.isaccount and not d.isanulado AND r.isdocret and "+fdh+;
		" and "+timp+" and "+cli+" and ( d.iddocu in "+;
		"(select distinct d.iddocu from gdoc g, dgdoc t, docuse d "+;
		" where (g.tag='ANXVTA' or g.tag='RECAPS' or g.tag='CISAIN' or g.tag='DOGESD') and g.idgdoc=t.idgdoc and "+;
		" t.dtag=d.dtag )  ) ;"
