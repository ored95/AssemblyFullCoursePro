program Project13;
{$APPTYPE CONSOLE}
uses
  SysUtils;
{$L PPSTART.OBJ}
PROCEDURE START; EXTERNAL;


{$L COUNT .OBJ}
FUNCTION COUNT:LONGWORD ; EXTERNAL;
{$L SetCler .OBJ}
PROCEDURE SetCler ; EXTERNAL;
{$L A-B.OBJ}
PROCEDURE A_B; EXTERNAL;


begin
ASM
  CALL START
END;
end.
