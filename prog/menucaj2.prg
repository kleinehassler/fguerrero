*       *********************************************************
*       *                                                         
*       * 01/03/2016            MENUCAJ.PRG             12:48:49  
*       *                                                         
*       *********************************************************
*       *                                                         
*       * Nombre del autor                                        
*       *                                                         
*       * Copyright (C) 2016 Nombre de compañía                   
*       * Dirección                                               
*       * Ciudad,     Código pos                                  
*       * País                                              
*       *                                                         
*       * Descripción:                                            
*       * Este PROGRAMA lo ha generado automáticamente GENMENU.    
*       *                                                         
*       *********************************************************


*       *********************************************************
*       *                                                         
*       *                    Definición de menú                   
*       *                                                         
*       *********************************************************
*

SET SYSMENU TO
SET SYSMENU AUTOMATIC

DEFINE PAD _4kt0rgpxk OF _MSYSMENU PROMPT "Ventas" COLOR SCHEME 3 ;
	KEY ALT+V, ""
DEFINE PAD _4kt0rgpxl OF _MSYSMENU PROMPT "Ingresos" COLOR SCHEME 3 ;
	KEY ALT+I, ""
DEFINE PAD _4kt0rgpxm OF _MSYSMENU PROMPT "Egresos" COLOR SCHEME 3 ;
	KEY ALT+E, ""
DEFINE PAD _4kt0rgpxn OF _MSYSMENU PROMPT "Reportes" COLOR SCHEME 3 ;
	KEY ALT+R, ""
DEFINE PAD _4kt0rgpxo OF _MSYSMENU PROMPT "Configuracion" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4kt0rgpxp OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4kt0rgpxq OF _MSYSMENU PROMPT "Impresion" COLOR SCHEME 3 ;
	KEY ALT+I, ""
DEFINE PAD _4kt0rgpxr OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4kt0rgpxk OF _MSYSMENU ACTIVATE POPUP ventas
ON PAD _4kt0rgpxl OF _MSYSMENU ACTIVATE POPUP ingresos
ON PAD _4kt0rgpxm OF _MSYSMENU ACTIVATE POPUP newitem
ON PAD _4kt0rgpxn OF _MSYSMENU ACTIVATE POPUP reportes
ON PAD _4kt0rgpxo OF _MSYSMENU ACTIVATE POPUP configurac
ON PAD _4kt0rgpxp OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4kt0rgpxq OF _MSYSMENU ACTIVATE POPUP _2u51edjuu
ON PAD _4kt0rgpxr OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP ventas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ventas PROMPT "Doc. Ventas"
DEFINE BAR 2 OF ventas PROMPT "Cotizaciones"
DEFINE BAR 3 OF ventas PROMPT "Doc Generados"
DEFINE BAR 4 OF ventas PROMPT "\-"
DEFINE BAR 5 OF ventas PROMPT "Devoluciones Con Referencia"
DEFINE BAR 6 OF ventas PROMPT "Devoluciones Sin Referencia"
DEFINE BAR 7 OF ventas PROMPT "\-"
DEFINE BAR 8 OF ventas PROMPT "Anticipo de Clientes"
DEFINE BAR 9 OF ventas PROMPT "Canje de Retenciones"
DEFINE BAR 10 OF ventas PROMPT "Liquidaciones en Ventas"
DEFINE BAR 11 OF ventas PROMPT "\-"
DEFINE BAR 12 OF ventas PROMPT "Cheques Ventas"
DEFINE BAR 13 OF ventas PROMPT "\-"
DEFINE BAR 14 OF ventas PROMPT "Consulta de Items"
ON SELECTION BAR 1 OF ventas do form fac0101
ON SELECTION BAR 2 OF ventas do form fac0103
ON SELECTION BAR 3 OF ventas do form fac0101b
ON SELECTION BAR 5 OF ventas do form fac0401
ON SELECTION BAR 6 OF ventas do form fac0401a
ON SELECTION BAR 8 OF ventas do form fac0104
ON SELECTION BAR 9 OF ventas do form  fac0107
ON SELECTION BAR 10 OF ventas do form fac0113
ON SELECTION BAR 12 OF ventas do form  cheques
ON SELECTION BAR 14 OF ventas do form fac0109a

DEFINE POPUP ingresos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ingresos PROMPT "Cuentas por Cobrar"
DEFINE BAR 2 OF ingresos PROMPT "Otros ingresos"
ON SELECTION BAR 1 OF ingresos do form ban0101
ON SELECTION BAR 2 OF ingresos do form ban0102

DEFINE POPUP newitem MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF newitem PROMPT "Pago a proveedores"
DEFINE BAR 2 OF newitem PROMPT "Gastos deducibles"
DEFINE BAR 3 OF newitem PROMPT "Gastos No deducibles"
DEFINE BAR 4 OF newitem PROMPT "Otros Egresos"
ON SELECTION BAR 1 OF newitem do form ban0202
ON SELECTION BAR 2 OF newitem do form adq0105
ON SELECTION BAR 3 OF newitem do form adq0103
ON SELECTION BAR 4 OF newitem do form ban0207

DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT "Ingresos - Egresos (Contable)"
DEFINE BAR 2 OF reportes PROMPT "Ingresos - Egresos (det cancelacion)"
DEFINE BAR 3 OF reportes PROMPT "Movimiento Cta. Caja"
DEFINE BAR 4 OF reportes PROMPT "Doc. No Contabilizados"
DEFINE BAR 5 OF reportes PROMPT "Montos Totales"
ON SELECTION BAR 1 OF reportes do form con0116a
ON SELECTION BAR 2 OF reportes do form fac0311
ON SELECTION BAR 3 OF reportes do form fac0311a
ON SELECTION BAR 4 OF reportes do form con0115
ON SELECTION BAR 5 OF reportes do form fac0303

DEFINE POPUP configurac MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF configurac PROMPT "Apariencia"
DEFINE BAR 2 OF configurac PROMPT "Definir Cajero"
DEFINE BAR 3 OF configurac PROMPT "\-"
DEFINE BAR 4 OF configurac PROMPT "Consulta"
ON SELECTION BAR 1 OF configurac do form set0403
ON SELECTION BAR 2 OF configurac do form set0404
ON SELECTION BAR 4 OF configurac do form adq0705b

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Forma de Pago"
DEFINE BAR 2 OF documentos PROMPT "Consulta"
DEFINE BAR 3 OF documentos PROMPT "Anulacion"
DEFINE BAR 4 OF documentos PROMPT "Correccion"
ON SELECTION BAR 1 OF documentos do form adq0701b
ON SELECTION BAR 2 OF documentos do form adq0705b
ON SELECTION BAR 3 OF documentos do form adq0704
ON SELECTION BAR 4 OF documentos do form adq0706

DEFINE POPUP _2u51edjuu MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF _2u51edjuu PROMPT "Activar Impresión de Documentos"
DEFINE BAR 2 OF _2u51edjuu PROMPT "Desactivar Impresión de Doc. Ventas"
ON SELECTION BAR 1 OF _2u51edjuu do form actimpdoc
ON SELECTION BAR 2 OF _2u51edjuu ;
	DO _4kt0rgpxz ;
	IN LOCFILE("PROG\MENUCAJ" ,"MPX;MPR|FXP;PRG" ,"DÓNDE está MENUCAJ?")

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Regresar al Menú Princ."
DEFINE BAR 2 OF salir PROMPT "Abandonar el sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4kt0rgpy0 ;
	IN LOCFILE("PROG\MENUCAJ" ,"MPX;MPR|FXP;PRG" ,"DÓNDE está MENUCAJ?")
ON SELECTION BAR 2 OF salir ;
	DO _4kt0rgpy1 ;
	IN LOCFILE("PROG\MENUCAJ" ,"MPX;MPR|FXP;PRG" ,"DÓNDE está MENUCAJ?")


*       *********************************************************
*       *                                                         
*       *              Limpiar Código y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4KT0RGPXZ  ON SELECTION BAR 2 OF POPUP _2u51edjuu      
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUCAJ.PRG,            Record:   56        
*       * Called By:  ON SELECTION BAR 2 OF POPUP _2u51edjuu      
*       * Prompt:     Desactivar Impresión de Doc. Ventas         
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4kt0rgpxz
if type('_screen.objimp')='O'
	_screen.removeobject('objimp')
endif


*       *********************************************************
*       *                                                         
*       * _4KT0RGPY0  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUCAJ.PRG,            Record:   59        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Regresar al Menú Princ.                     
*       * Snippet:    2                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4kt0rgpy0
do while type('_screen.activeform')='O'
	_screen.activeform.release
enddo	

if used('ACCESOS') then
	sele accesos
	use
endif

deactivate menu _msysmenu
clea even
clea read
return


*       *********************************************************
*       *                                                         
*       * _4KT0RGPY1  ON SELECTION BAR 2 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUCAJ.PRG,            Record:   60        
*       * Called By:  ON SELECTION BAR 2 OF POPUP salir           
*       * Prompt:     Abandonar el sistema                        
*       * Snippet:    3                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4kt0rgpy1
deactivate menu _msysmenu
clea even
clea read
final=1
return

