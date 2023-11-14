--------------------------------------------------------
--  Arquivo criado - quarta-feira-outubro-25-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

  CREATE TABLE "RM552363"."USUARIOS" 
   (	"ID" NUMBER, 
	"NOME" VARCHAR2(45 BYTE), 
	"EMAIL" VARCHAR2(45 BYTE), 
	"CPF" NUMBER(11,0), 
	"DT_NASCIMENTO" DATE, 
	"CEP" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
REM INSERTING into RM552363.USUARIOS
SET DEFINE OFF;
Insert into RM552363.USUARIOS (ID,NOME,EMAIL,CPF,DT_NASCIMENTO,CEP) values ('1','RODRIGO','SALMOS@GMAIL.COM','56465853498',to_date('02/07/03','DD/MM/RR'),'5365096');
Insert into RM552363.USUARIOS (ID,NOME,EMAIL,CPF,DT_NASCIMENTO,CEP) values ('2','GABRIEL','GENESIS@GMAIL.COM','56462553498',to_date('08/12/95','DD/MM/RR'),'5655096');
Insert into RM552363.USUARIOS (ID,NOME,EMAIL,CPF,DT_NASCIMENTO,CEP) values ('3','Vinicius','Corinthians@GMAIL.COM','56465855248',to_date('02/07/03','DD/MM/RR'),'7865096');
Insert into RM552363.USUARIOS (ID,NOME,EMAIL,CPF,DT_NASCIMENTO,CEP) values ('4','Jeniffer','PalmeirasS@GMAIL.COM','56425632398',to_date('19/08/03','DD/MM/RR'),'8965096');
Insert into RM552363.USUARIOS (ID,NOME,EMAIL,CPF,DT_NASCIMENTO,CEP) values ('5','Samuel','Galatas@GMAIL.COM','14658853498',to_date('22/07/03','DD/MM/RR'),'5142096');
--------------------------------------------------------
--  DDL for Index USUARIOS_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM552363"."USUARIOS_UK" ON "RM552363"."USUARIOS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM552363"."USUARIOS_UK1" ON "RM552363"."USUARIOS" ("CPF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Index USUARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RM552363"."USUARIOS_PK" ON "RM552363"."USUARIOS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS" ;
--------------------------------------------------------
--  DDL for Trigger USUARIO_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "RM552363"."USUARIO_ID_TRIGGER" 
   before insert on "RM552363"."USUARIOS" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select USUARIO_ID.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "RM552363"."USUARIO_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("DT_NASCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" MODIFY ("CEP" NOT NULL ENABLE);
  ALTER TABLE "RM552363"."USUARIOS" ADD CONSTRAINT "USUARIOS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM552363"."USUARIOS" ADD CONSTRAINT "USUARIOS_UK" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;
  ALTER TABLE "RM552363"."USUARIOS" ADD CONSTRAINT "USUARIOS_UK1" UNIQUE ("CPF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TBSPC_ALUNOS"  ENABLE;