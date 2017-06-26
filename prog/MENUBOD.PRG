*       *********************************************************
*       *                                                         
*       * 05/01/2017            MENUBOD.PRG             18:03:33  
*       *                                                         
*       *********************************************************
*       *                                                         
*       * Nombre del autor                                        
*       *                                                         
*       * Copyright (C) 2017 Nombre de compañía                   
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

DEFINE PAD _4tg12pgz8 OF _MSYSMENU PROMPT "Productos" COLOR SCHEME 3 ;
	KEY ALT+P, ""
DEFINE PAD _4tg12pgz9 OF _MSYSMENU PROMPT "Compras" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4tg12pgza OF _MSYSMENU PROMPT "Configuracion" COLOR SCHEME 3 ;
	KEY ALT+C, ""
DEFINE PAD _4tg12pgzb OF _MSYSMENU PROMPT "Documentos" COLOR SCHEME 3 ;
	KEY ALT+D, ""
DEFINE PAD _4tg12pgzc OF _MSYSMENU PROMPT "Salir" COLOR SCHEME 3 ;
	KEY ALT+S, ""
ON PAD _4tg12pgz8 OF _MSYSMENU ACTIVATE POPUP productos
ON PAD _4tg12pgz9 OF _MSYSMENU ACTIVATE POPUP compras
ON PAD _4tg12pgza OF _MSYSMENU ACTIVATE POPUP configurac
ON PAD _4tg12pgzb OF _MSYSMENU ACTIVATE POPUP documentos
ON PAD _4tg12pgzc OF _MSYSMENU ACTIVATE POPUP salir

DEFINE POPUP productos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF productos PROMPT "Mantenimiento Inventario"
DEFINE BAR 2 OF productos PROMPT "\-"
DEFINE BAR 3 OF productos PROMPT "Codigos Barras"
ON SELECTION BAR 1 OF productos do form inv0101
ON BAR 3 OF productos ACTIVATE POPUP cotizacion

DEFINE POPUP cotizacion MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF cotizacion PROMPT "Impresion de Codigos Barras"
DEFINE BAR 2 OF cotizacion PROMPT "Impresion Codigo de Barras Verticales"
DEFINE BAR 3 OF cotizacion PROMPT "Asignar Codigos de Barras"
ON SELECTION BAR 1 OF cotizacion DO FORM GENCODBARR
ON SELECTION BAR 2 OF cotizacion DO FORM GENCODBARRA
ON SELECTION BAR 3 OF cotizacion DO FORM GENCODBARR2

DEFINE POPUP compras MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF compras PROMPT "Adquicisiones de Mercaderia"
DEFINE BAR 2 OF compras PROMPT "\-"
DEFINE BAR 3 OF compras PROMPT "Proveedores-Clientes"
ON SELECTION BAR 1 OF compras do form adq0101
ON SELECTION BAR 3 OF compras do form adm0303

DEFINE POPUP configurac MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF configurac PROMPT "Apariencia"
ON SELECTION BAR 1 OF configurac do form set0403

DEFINE POPUP documentos MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF documentos PROMPT "Forma de Pago"
DEFINE BAR 2 OF documentos PROMPT "Consulta"
ON SELECTION BAR 1 OF documentos do form adq0701b
ON SELECTION BAR 2 OF documentos do form adq0705b

DEFINE POPUP salir MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salir PROMPT "Abandonar el sistema"
ON SELECTION BAR 1 OF salir ;
	DO _4tg12pgzd ;
	IN LOCFILE("PROG\MENUBOD" ,"MPX;MPR|FXP;PRG" ,"DÓNDE está MENUBOD?")


*       *********************************************************
*       *                                                         
*       *              Limpiar Código y Procedimientos            
*       *                                                         
*       *********************************************************
*

read event

*       *********************************************************
*       *                                                         
*       * _4TG12PGZD  ON SELECTION BAR 1 OF POPUP salir           
*       *                                                         
*       * Procedure Origin:                                       
*       *                                                         
*       * From Menu:  MENUBOD.PRG,            Record:   28        
*       * Called By:  ON SELECTION BAR 1 OF POPUP salir           
*       * Prompt:     Abandonar el sistema                        
*       * Snippet:    1                                           
*       *                                                         
*       *********************************************************
*
PROCEDURE _4tg12pgzd
deactivate menu _msysmenu
clea even
clea read
final=1
return

