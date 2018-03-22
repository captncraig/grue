Resident data ends at 5780, program starts at 5892, file ends at 1f62c

Starting analysis pass at address 5780

End of analysis pass, low address = 57c0, high address = 1e9d9

64 bytes of data before code from 5780 to 57c0

[Start of code]

Routine R0001, 3 locals (0000, 0000, 0000)

       ADD             G24,#d2 -> L02
       ADD             G24,G59 -> L01
L0001: JE              L01,L02 [TRUE] RFALSE
       LOADW           L01,#02 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0002
       LOADW           L01,#00 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          
L0002: ADD             L01,#06 -> L01
       JUMP            L0001

Routine R0002, 4 locals (0000, 0000, 0000, 0000)

       ADD             G24,#d2 -> L02
       ADD             G24,G59 -> L01
L0001: JE              L01,L02 [TRUE] RFALSE
       LOADW           L01,#02 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0002
       LOADW           L01,#00 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADW           L01,#01 -> L03
       JZ              L03 [TRUE] RFALSE
       JG              L03,#01 [FALSE] RTRUE
       RFALSE          
L0002: ADD             L01,#06 -> L01
       JUMP            L0001

Routine R0003, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           L00,#00 -> L02
       LOADW           L00,#01 -> L03
       DEC             L02
       ADD             L00,#02 -> L00
       MUL             L03,#02 -> -(SP)
       ADD             L00,(SP)+ -> L06
       JZ              L01 [TRUE] L0001
       JZ              L03 [FALSE] L0001
       STORE           L04,L01
       JUMP            L0002
L0001: SUB             L02,L03 -> -(SP)
       RANDOM          (SP)+ -> L04
L0002: LOADW           L06,L04 -> L05
       LOADW           L06,#01 -> -(SP)
       STOREW          L06,L04,(SP)+
       STOREW          L06,#01,L05
       INC             L03
       JE              L03,L02 [FALSE] L0003
       STORE           L03,#00
L0003: STOREW          L00,#00,L03
       RET             L05

Routine R0004, 1 local (0000)

       GET_PROP        L00,#08 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       GET_PROP        L00,#08 -> -(SP)
       PRINT_PADDR     (SP)+
       RTRUE           
L0001: PRINT_OBJ       L00
       RTRUE           

Main routine R0005, 0 locals ()

L0001: STORE           Gaf,#d3
       STORE           G2f,#d3
       STORE           G00,#51
       INSERT_OBJ      "it","In the Wings"
       CALL            R0090 -> -(SP)
       NEW_LINE        
       PRINT           "As you trudge along in the wake of the outflowing
crowd, you thumb through your memories of this evening. Your experience of the
circus, with its ballyhooed promises of wonderment and its ultimate
disappointment, has been to sink your teeth into a candy apple whose fruit is
rotten.

Never mind the outrageous prices, the Mt. Everest vantage point, the
communistically long lines, the audience more savage than the lion act. And it
wasn't the shabbiness of the performances themselves that's got you soured on
Spangleland. No, instead it's that the circus is a reminder of your own secret
irrational desire to steal the spotlight, to defy death, and to bask in the
thunder of applause."
       NEW_LINE        
       NEW_LINE        
       CALL            R0170 -> -(SP)
       STOREB          G5b,#00,#3b
       CALL            R0006 -> -(SP)
       JUMP            L0001

Routine R0006, 1 local (0000)

L0001: CALL            R0007 -> L00
       JUMP            L0001

Routine R0007, 11 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000)

       STORE           L03,#00
       STORE           L04,#00
       STORE           G1e,#00
       STORE           L07,#01
       CALL            R0016 -> G98
       JZ              G98 [TRUE] L0058
       LOADW           G38,G16 -> L00
       LOADW           G86,G16 -> L01
       JZ              Gbd [TRUE] L0007
       CALL            R0288 (Gbd) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       STORE           L09,#00
L0001: INC_CHK         L03,L00 [FALSE] L0002
       JUMP            L0003
L0002: LOADW           G38,L03 -> -(SP)
       JE              (SP)+,#4d [FALSE] L0001
       STOREW          G38,L03,Gbd
       STORE           L09,#01
L0003: JZ              L09 [FALSE] L0006
       STORE           L03,#00
L0004: INC_CHK         L03,L01 [FALSE] L0005
       JUMP            L0006
L0005: LOADW           G86,L03 -> -(SP)
       JE              (SP)+,#4d [FALSE] L0004
       STOREW          G86,L03,Gbd
L0006: STORE           L03,#00
L0007: JZ              L01 [FALSE] L0008
       PUSH            L01
       JUMP            L0013
L0008: JG              L01,#01 [FALSE] L0011
       STORE           L05,G86
       JZ              L00 [FALSE] L0009
       STORE           L04,#00
       JUMP            L0010
L0009: LOADW           G38,#01 -> L04
L0010: PUSH            L01
       JUMP            L0013
L0011: JG              L00,#01 [FALSE] L0012
       STORE           L07,#00
       STORE           L05,G38
       LOADW           G86,#01 -> L04
       PUSH            L00
       JUMP            L0013
L0012: PUSH            #01
L0013: STORE           L02,(SP)+
       JZ              L04 [FALSE] L0014
       JE              L00,#01 [FALSE] L0014
       LOADW           G38,#01 -> L04
L0014: JE              G7a,#a2 [FALSE] L0015
       CALL            R0011 (G7a,G6a) -> L06
       JUMP            L0053
L0015: JZ              L02 [FALSE] L0022
       LOADB           G76,#00 -> -(SP)
       AND             (SP)+,#03 -> -(SP)
       JZ              (SP)+ [FALSE] L0016
       CALL            R0011 (G7a) -> L06
       STORE           G6a,#00
       JUMP            L0053
L0016: JZ              G48 [FALSE] L0017
       PRINT_PADDR     G67
       NEW_LINE        
       CALL            R0298 -> -(SP)
       JUMP            L0053
L0017: PRINT           "[There isn't anything to "
       LOADW           Ga1,#01 -> L09
       JE              G7a,#0e [FALSE] L0018
       PRINT           "talk to"
       JUMP            L0021
L0018: JZ              Gae [FALSE] L0019
       JZ              G6e [TRUE] L0020
L0019: LOADW           L09,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0021
L0020: LOADB           L09,#02 -> L0a
       LOADB           L09,#03 -> -(SP)
       CALL            R0028 (L0a,(SP)+) -> -(SP)
L0021: PRINT           ".]"
       NEW_LINE        
       STORE           L06,#00
       CALL            R0298 -> -(SP)
       JUMP            L0053
L0022: STORE           Gcf,#00
       JG              L02,#01 [FALSE] L0023
       STORE           G1e,#01
L0023: STORE           L09,#00
L0024: INC_CHK         L03,L02 [FALSE] L0030
       JG              Gcf,#00 [FALSE] L0029
       PRINT           "[The "
       JE              Gcf,L02 [TRUE] L0025
       PRINT           "other "
L0025: PRINT           "object"
       JE              Gcf,#01 [TRUE] L0026
       PRINT           "s"
L0026: PRINT           " that you mentioned "
       JE              Gcf,#01 [TRUE] L0027
       PRINT           "are"
       JUMP            L0028
L0027: PRINT           "is"
L0028: PRINT           "n't here.]"
       NEW_LINE        
       JUMP            L0053
L0029: JZ              L09 [FALSE] L0053
       PRINT_PADDR     G3d
       NEW_LINE        
       JUMP            L0053
L0030: JZ              L07 [TRUE] L0031
       LOADW           G86,L03 -> L08
       JUMP            L0032
L0031: LOADW           G38,L03 -> L08
L0032: JZ              L07 [TRUE] L0033
       PUSH            L08
       JUMP            L0034
L0033: PUSH            L04
L0034: STORE           G6a,(SP)+
       JZ              L07 [TRUE] L0035
       PUSH            L04
       JUMP            L0036
L0035: PUSH            L08
L0036: STORE           Gc6,(SP)+
       JG              L02,#01 [TRUE] L0037
       LOADW           Ga1,#06 -> -(SP)
       LOADW           (SP)+,#00 -> -(SP)
       JE              (SP)+,"all" [FALSE] L0052
L0037: JE              L08,#bd [FALSE] L0038
       INC             Gcf
       JUMP            L0024
L0038: JE              Ga6,#01 [FALSE] L0044
       JE              G7a,#75 [FALSE] L0044
       GET_PARENT      L08 -> -(SP)
       JE              (SP)+,Gaf,G00,Gc6 [TRUE] L0039
       GET_PARENT      L08 -> -(SP)
       TEST_ATTR       (SP)+,#11 [FALSE] L0024
L0039: TEST_ATTR       L08,#16 [TRUE] L0040
       TEST_ATTR       L08,#10 [FALSE] L0024
L0040: JE              L08,#ea,#8c,#12 [TRUE] L0024
       JE              L08,#60 [FALSE] L0041
       TEST_ATTR       "lion stand",#06 [TRUE] L0024
L0041: JE              L08,#c4 [FALSE] L0042
       TEST_ATTR       #c4,#06 [TRUE] L0042
       JIN             #c4,"Inside Prop Tent" [TRUE] L0024
L0042: JE              L08,#db [FALSE] L0043
       TEST_ATTR       "Comrade Thumb",#06 [TRUE] L0024
L0043: JE              L08,#0e [FALSE] L0044
       TEST_ATTR       "skeleton key",#10 [FALSE] L0044
       JUMP            L0024
L0044: JE              G7a,#75 [FALSE] L0045
       JZ              Gc6 [TRUE] L0045
       JIN             G6a,Gc6 [TRUE] L0045
       JUMP            L0024
L0045: JE              Ga6,#01 [FALSE] L0046
       JE              G7a,#3a [FALSE] L0046
       JIN             L08,Gaf [TRUE] L0046
       JUMP            L0024
L0046: JE              Ga6,#01 [FALSE] L0047
       JZ              Gc6 [TRUE] L0047
       JE              G6a,Gc6 [FALSE] L0047
       JUMP            L0024
L0047: JE              Ga6,#01 [FALSE] L0048
       JE              G7a,#3b [FALSE] L0048
       CALL            R0292 (G6a,Gc6) -> -(SP)
       JZ              (SP)+ [TRUE] L0048
       JUMP            L0024
L0048: CALL            R0288 (L08) -> -(SP)
       JZ              (SP)+ [FALSE] L0049
       JUMP            L0024
L0049: JE              L08,#4d [FALSE] L0050
       CALL            R0004 (Gbd) -> -(SP)
       JUMP            L0051
L0050: CALL            R0004 (L08) -> -(SP)
L0051: PRINT           ": "
L0052: STORE           L09,#01
       CALL            R0011 (G7a,G6a,Gc6) -> L06
       JE              L06,#02 [FALSE] L0024
       JUMP            L0053
L0053: JE              L06,#02 [TRUE] L0055
       JE              G7a,#02,#01,#0e [TRUE] L0055
       JE              G7a,#0c,#08,#00 [TRUE] L0055
       JE              G7a,#0b,#0a,#07 [FALSE] L0054
       JUMP            L0055
L0054: GET_PARENT      Gaf -> -(SP)
       GET_PROP        (SP)+,#09 -> -(SP)
       CALL            (SP)+ (#06) -> L06
L0055: JE              G7a,#0a,#07,#08 [TRUE] L0057
       JE              G7a,#01,#00,#0b [TRUE] L0057
       JE              G7a,#02 [FALSE] L0056
       JUMP            L0057
L0056: JZ              Gae [TRUE] L0057
L0057: JE              L06,#02 [FALSE] L0059
       STORE           G34,#00
       JUMP            L0059
L0058: STORE           G34,#00
L0059: JZ              G98 [TRUE] RFALSE
       JE              G7a,#02,#01,#0e [TRUE] L0061
       JE              G7a,#05,#0c,#00 [TRUE] L0061
       JE              G7a,#07,#08,#09 [TRUE] L0061
       JE              G7a,#4d,#0b,#0a [TRUE] L0061
       JE              G7a,#06 [FALSE] L0060
       JUMP            L0061
L0060: CALL            R0015 -> L06
L0061: STORE           G7a,#00
       STORE           G6a,#00
       STORE           Gc6,#00
       RET             Gc6

Routine R0008, 0 locals ()

       LOADW           #00,#08 -> -(SP)
       OR              (SP)+,#02 -> -(SP)
       STOREW          #00,#08,(SP)+
       RTRUE           

Routine R0009, 0 locals ()

       LOADW           #00,#08 -> -(SP)
       AND             (SP)+,#fffd -> -(SP)
       STOREW          #00,#08,(SP)+
       RTRUE           

Routine R0010, 2 locals (0000, 0000)

       CALL            R0034 (G76,#00) -> -(SP)
       PRINT           "[Be specific: What object do you want to "
       LOADW           G21,#01 -> L00
       JZ              L00 [FALSE] L0001
       PRINT           "tell"
       JUMP            L0003
L0001: LOADB           G4e,#02 -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       LOADW           L00,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0003
L0002: LOADB           L00,#02 -> L01
       LOADB           L00,#03 -> -(SP)
       CALL            R0028 (L01,(SP)+) -> -(SP)
       STOREB          G4e,#02,#00
L0003: STORE           Gae,#01
       STORE           G98,#00
       LOADB           G76,#01 -> -(SP)
       CALL            R0039 ((SP)+) -> -(SP)
       PRINT_RET       "?]"

Routine R0011, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           L04,G7a
       STORE           L05,G6a
       STORE           L06,Gc6
       STORE           G7a,L00
       JE              #4d,L02,L01 [FALSE] L0002
       JE              L00,#a2 [TRUE] L0002
       JZ              L02 [FALSE] L0001
       CALL            R0010 -> -(SP)
       RET             #02
L0001: PRINT_PADDR     G3d
       NEW_LINE        
       RET             #02
L0002: STORE           G6a,L01
       JZ              G6a [TRUE] L0003
       JE              G7a,#a2 [TRUE] L0003
       JE              G6a,#bd [TRUE] L0003
       STORE           Gbd,G6a
L0003: STORE           Gc6,L02
       JE              L00,#a2 [TRUE] L0004
       JE              #bd,G6a,Gc6 [FALSE] L0004
       CALL            R0012 (S001,#5f18) -> L03
       JZ              L03 [TRUE] L0004
       STORE           G98,#00
       JUMP            L0011
L0004: STORE           L01,G6a
       STORE           L02,Gc6
       GET_PROP        Gaf,#09 -> -(SP)
       CALL            R0012 (S002,(SP)+) -> L03
       JZ              L03 [TRUE] L0005
       JUMP            L0011
L0005: GET_PARENT      Gaf -> -(SP)
       GET_PROP        (SP)+,#09 -> -(SP)
       CALL            R0012 (S003,(SP)+,#01) -> L03
       JZ              L03 [TRUE] L0006
       JUMP            L0011
L0006: LOADW           Gda,L00 -> -(SP)
       CALL            R0012 (S004,(SP)+) -> L03
       JZ              L03 [TRUE] L0007
       JUMP            L0011
L0007: JZ              L02 [TRUE] L0008
       GET_PROP        L02,#09 -> -(SP)
       CALL            R0012 (S005,(SP)+) -> L03
       JZ              L03 [TRUE] L0008
       JUMP            L0011
L0008: JZ              L01 [TRUE] L0009
       JE              L00,#a2 [TRUE] L0009
       GET_PARENT      L01 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       GET_PARENT      L01 -> -(SP)
       GET_PROP        (SP)+,#05 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       GET_PARENT      L01 -> -(SP)
       GET_PROP        (SP)+,#05 -> -(SP)
       CALL            R0012 (S006,(SP)+) -> L03
       JZ              L03 [TRUE] L0009
       JUMP            L0011
L0009: JZ              L01 [TRUE] L0010
       JE              L00,#a2 [TRUE] L0010
       GET_PROP        L01,#09 -> -(SP)
       CALL            R0012 (S007,(SP)+) -> L03
       JZ              L03 [TRUE] L0010
       JUMP            L0011
L0010: LOADW           Gd9,L00 -> -(SP)
       CALL            R0012 (#00,(SP)+) -> L03
       JZ              L03 [TRUE] L0011
L0011: STORE           G7a,L04
       STORE           G6a,L05
       STORE           Gc6,L06
       RET             L03

Routine R0012, 4 locals (0000, 0000, 0000, 0000)

       JZ              L01 [TRUE] RFALSE
       JZ              L02 [TRUE] L0001
       CALL            L01 (L02) -> -(SP)
       JUMP            L0002
L0001: CALL            L01 -> -(SP)
L0002: STORE           L03,(SP)+
       RET             L03

Routine R0013, 3 locals (0000, 0000, 0000)

       CALL            R0014 (L00) -> L02
       STOREW          L02,#01,L01
       RET             L02

Routine R0014, 4 locals (0000, 0000, 0000, 0000)

       ADD             G24,#d2 -> L01
       ADD             G24,G59 -> L02
L0001: JE              L02,L01 [FALSE] L0002
       SUB             G59,#06 -> G59
       ADD             G24,G59 -> L03
       STOREW          L03,#02,L00
       RET             L03
L0002: LOADW           L02,#02 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0003
       RET             L02
L0003: ADD             L02,#06 -> L02
       JUMP            L0001

Routine R0015, 4 locals (0000, 0000, 0000, 0000)

       JZ              G1f [TRUE] L0001
       STORE           G1f,#00
       RFALSE          
L0001: JZ              G98 [TRUE] L0002
       PUSH            G59
       JUMP            L0003
L0002: PUSH            #00
L0003: ADD             G24,(SP)+ -> L00
       ADD             G24,#d2 -> L01
L0004: JE              L00,L01 [FALSE] L0005
       INC             G02
       RET             L03
L0005: LOADW           L00,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       LOADW           L00,#01 -> L02
       JZ              L02 [FALSE] L0006
       JUMP            L0007
L0006: SUB             L02,#01 -> -(SP)
       STOREW          L00,#01,(SP)+
       JG              L02,#01 [TRUE] L0007
       LOADW           L00,#02 -> -(SP)
       CALL            (SP)+ -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       STORE           L03,#01
L0007: ADD             L00,#06 -> L00
       JUMP            L0004

Routine R0016, 14 locals (0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, ffff, 0000, 0000)

L0001: INC_CHK         L0b,#09 [FALSE] L0002
       JUMP            L0004
L0002: JZ              Gae [FALSE] L0003
       LOADW           Ga1,L0b -> -(SP)
       STOREW          G21,L0b,(SP)+
L0003: STOREW          Ga1,L0b,#00
       JUMP            L0001
L0004: STORE           G66,#00
       STORE           G47,#00
       STORE           L04,G6e
       STORE           L05,Gaf
       STOREW          G20,#00,#00
       STOREW          G20,#01,#00
       STOREW          G50,#00,#00
       STOREW          G50,#01,#00
       STORE           G1b,#00
       STORE           G6e,#00
       STORE           G04,#00
       STOREW          G86,G16,#00
       STOREW          G38,G16,#00
       STOREW          G0d,G16,#00
       JZ              Ga3 [FALSE] L0006
       JE              Gaf,G2f [TRUE] L0006
       STORE           Gaf,G2f
       GET_PARENT      Gaf -> -(SP)
       TEST_ATTR       (SP)+,#1e [TRUE] L0005
       GET_PARENT      Gaf -> G00
L0005: CALL            R0065 (G00) -> G48
L0006: JZ              Gc7 [TRUE] L0008
       STORE           L00,Gc7
       CALL            R0018 (G5b,G51) -> -(SP)
       CALL            R0019 (G8e,G3f) -> -(SP)
       JE              G3b,#01,#02 [FALSE] L0007
       JE              G2f,Gaf [FALSE] L0007
       NEW_LINE        
L0007: STORE           Gc7,#00
       STORE           G34,#00
       JUMP            L0013
L0008: JZ              G34 [TRUE] L0010
       STORE           L00,G34
       JE              G3b,#01,#02 [FALSE] L0009
       JE              G2f,Gaf [FALSE] L0009
       NEW_LINE        
L0009: STORE           G34,#00
       JUMP            L0013
L0010: STORE           Gaf,G2f
       STORE           Ga3,#00
       GET_PARENT      Gaf -> -(SP)
       TEST_ATTR       (SP)+,#1e [TRUE] L0011
       GET_PARENT      Gaf -> G00
L0011: CALL            R0065 (G00) -> G48
       JE              G3b,#01,#02 [FALSE] L0012
       NEW_LINE        
L0012: PRINT           ">"
       READ            G8e,G5b
       LOADB           G5b,#01 -> L06
L0013: LOADB           G5b,#01 -> G55
       JZ              G55 [FALSE] L0014
       PRINT           "[I beg your pardon?]"
       NEW_LINE        
       RFALSE          
L0014: LOADW           G5b,L00 -> -(SP)
       JE              (SP)+,"oops" [FALSE] L0019
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,".","," [FALSE] L0015
       ADD             L00,#02 -> L00
       DEC             G55
L0015: JG              G55,#01 [TRUE] L0016
       CALL            R0348 (S008) -> -(SP)
       RFALSE          
L0016: LOADW           G28,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       JG              G55,#02 [FALSE] L0017
       PRINT           "[Warning: Only the first word after OOPS is used.]"
       NEW_LINE        
L0017: LOADW           G28,#00 -> L0d
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       STOREW          G3a,L0d,(SP)+
       STORE           Gaf,L05
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#06 -> -(SP)
       LOADB           G5b,(SP)+ -> L0c
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#07 -> -(SP)
       LOADB           G5b,(SP)+ -> L0d
       LOADW           G28,#00 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#03 -> -(SP)
       CALL            R0020 (L0c,L0d,(SP)+) -> -(SP)
       CALL            R0018 (G5b,G3a) -> -(SP)
       LOADB           G5b,#01 -> G55
       LOADW           G28,#01 -> L00
       CALL            R0019 (G8e,Gaa) -> -(SP)
       JUMP            L0020
L0018: STOREW          G28,#03,#00
       PRINT           "[There was no word to replace.]"
       NEW_LINE        
       RFALSE          
L0019: STOREW          G28,#03,#00
L0020: LOADW           G5b,L00 -> -(SP)
       JE              (SP)+,"again","g" [FALSE] L0033
       STORE           G47,#01
       JZ              Gae [FALSE] L0021
       CALL            R0002 (#a2cf) -> -(SP)
       JZ              (SP)+ [TRUE] L0022
L0021: CALL            R0348 (S009) -> -(SP)
       RFALSE          
L0022: JZ              G98 [FALSE] L0023
       PRINT           "[That would just repeat a mistake.]"
       NEW_LINE        
       RFALSE          
L0023: JE              L05,G2f [TRUE] L0024
       CALL            R0289 (L05) -> -(SP)
       JZ              (SP)+ [FALSE] L0024
       PRINT           "[You can't see"
       CALL            R0302 (L05,#01) -> -(SP)
       PRINT           " any more.]"
       NEW_LINE        
       RFALSE          
L0024: JG              G55,#01 [FALSE] L0027
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,".",",","then" [TRUE] L0025
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"and" [FALSE] L0026
L0025: MUL             #02,#02 -> -(SP)
       ADD             L00,(SP)+ -> L00
       LOADB           G5b,#01 -> -(SP)
       SUB             (SP)+,#02 -> -(SP)
       STOREB          G5b,#01,(SP)+
       JUMP            L0028
L0026: PRINT_PADDR     Gc5
       NEW_LINE        
       RFALSE          
L0027: ADD             L00,#02 -> L00
       LOADB           G5b,#01 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       STOREB          G5b,#01,(SP)+
L0028: LOADB           G5b,#01 -> -(SP)
       JG              (SP)+,#00 [FALSE] L0029
       CALL            R0018 (G51,G5b) -> -(SP)
       CALL            R0019 (G3f,G8e) -> -(SP)
       STORE           Gc7,L00
       JUMP            L0030
L0029: STORE           Gc7,#00
L0030: STORE           Gaf,L05
       STORE           G6e,L04
       CALL            R0019 (G8e,Gaa) -> -(SP)
       CALL            R0018 (G5b,G3a) -> -(SP)
       STORE           L0b,#ffff
       STORE           L08,Gb3
L0031: INC_CHK         L0b,#09 [FALSE] L0032
       JUMP            L0067
L0032: LOADW           G21,L0b -> -(SP)
       STOREW          Ga1,L0b,(SP)+
       JUMP            L0031
L0033: CALL            R0018 (G3a,G5b) -> -(SP)
       CALL            R0019 (Gaa,G8e) -> -(SP)
       STOREW          G28,#01,L00
       MUL             #04,G55 -> -(SP)
       STOREW          G28,#02,(SP)+
       LOADB           G5b,#01 -> -(SP)
       MUL             #02,(SP)+ -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       MUL             #02,(SP)+ -> L07
       SUB             L07,#01 -> -(SP)
       LOADB           G5b,(SP)+ -> L0d
       SUB             L07,#02 -> -(SP)
       LOADB           G5b,(SP)+ -> -(SP)
       ADD             L0d,(SP)+ -> -(SP)
       STOREW          G28,#03,(SP)+
       STORE           Gc7,#00
       STORE           L07,G55
       STORE           Gd2,#00
       STORE           Ga6,#00
L0034: DEC_CHK         G55,#00 [FALSE] L0035
       STORE           Ga3,#00
       JUMP            L0067
L0035: LOADW           G5b,L00 -> L01
       CALL            R0049 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       LOADW           G5b,L00 -> L01
       CALL            R0048 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       LOADW           G5b,L00 -> L01
       JZ              L01 [FALSE] L0036
       CALL            R0023 (L00) -> L01
       JZ              L01 [TRUE] L0065
L0036: JE              L01,"to" [FALSE] L0037
       JE              L03,#c2,#70 [FALSE] L0037
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       CALL            R0021 ((SP)+,#40,#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0037
       STOREW          Ga1,#00,#c2
       STORE           L01,"""
       JUMP            L0039
L0037: JE              L01,"then" [FALSE] L0038
       JG              G55,#00 [FALSE] L0038
       JZ              L03 [FALSE] L0038
       JZ              Ga3 [FALSE] L0038
       STOREW          Ga1,#00,#c2
       STOREW          Ga1,#01,#00
       STORE           L01,"""
       JUMP            L0039
L0038: JE              L01,"." [FALSE] L0039
       JE              L0a,"mr","dr" [FALSE] L0039
       DEC             Gd2
       CALL            R0017 (L00,L0a,#01) -> -(SP)
       STORE           L01,L0a
       STORE           L0a,#00
L0039: JE              L01,"then","." [TRUE] L0040
       JE              L01,""" [FALSE] L0044
L0040: JE              L01,""" [FALSE] L0042
       JZ              Ga3 [TRUE] L0041
       STORE           Ga3,#00
       JUMP            L0042
L0041: STORE           Ga3,#01
L0042: JZ              G55 [TRUE] L0043
       ADD             L00,#02 -> G34
L0043: STOREB          G5b,#01,G55
       JUMP            L0067
L0044: CALL            R0021 (L01,#10,#03) -> L02
       JZ              L02 [TRUE] L0050
       JE              L03,#00,#f6,#7a [FALSE] L0050
       JE              L07,#01 [TRUE] L0048
       JE              L07,#02 [FALSE] L0045
       JE              L03,#f6,#7a [TRUE] L0048
L0045: ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> L09
       JE              L09,"then",".",""" [FALSE] L0046
       JL              L07,#02 [FALSE] L0048
L0046: JZ              Ga3 [TRUE] L0047
       JE              L07,#02 [FALSE] L0047
       JE              L09,""" [TRUE] L0048
L0047: JG              L07,#02 [FALSE] L0050
       JE              L09,",","and" [FALSE] L0050
L0048: STORE           L08,L02
       JE              L09,",","and" [FALSE] L0049
       ADD             L00,#02 -> -(SP)
       CALL            R0017 ((SP)+,"then") -> -(SP)
L0049: JG              L07,#02 [TRUE] L0066
       STORE           Ga3,#00
       JUMP            L0067
L0050: CALL            R0021 (L01,#40,#01) -> L02
       JZ              L02 [TRUE] L0051
       JZ              L03 [FALSE] L0051
       STORE           G7b,L01
       STORE           L03,L02
       STOREW          Ga1,#00,L02
       STOREW          Ga1,#01,G4e
       STOREW          G4e,#00,L01
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> L0b
       LOADB           G5b,L0b -> -(SP)
       STOREB          G4e,#02,(SP)+
       ADD             L0b,#01 -> -(SP)
       LOADB           G5b,(SP)+ -> -(SP)
       STOREB          G4e,#03,(SP)+
       JUMP            L0066
L0051: CALL            R0021 (L01,#08,#00) -> L02
       JZ              L02 [FALSE] L0053
       JE              L01,"all","one","both" [TRUE] L0052
       CALL            R0021 (L01,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0052
       CALL            R0021 (L01,#80) -> -(SP)
       JZ              (SP)+ [TRUE] L0062
L0052: STORE           L02,#00
L0053: JG              G55,#00 [FALSE] L0054
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"of" [FALSE] L0054
       JZ              L02 [FALSE] L0054
       JE              L01,"all","one","a" [TRUE] L0054
       JE              L01,"both" [TRUE] L0054
       JE              L01,"front","head" [FALSE] L0066
       STORE           G66,#01
       JUMP            L0066
L0054: JZ              L02 [TRUE] L0056
       JZ              G55 [TRUE] L0055
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"then","." [FALSE] L0056
L0055: STORE           G04,#01
       JL              Gd2,#02 [FALSE] L0066
       STOREW          Ga1,#02,L02
       STOREW          Ga1,#03,L01
       JUMP            L0066
L0056: JE              Gd2,#02 [FALSE] L0057
       PRINT           "[There were too many nouns in that sentence.]"
       NEW_LINE        
       RFALSE          
L0057: INC             Gd2
       JE              L02,#fa [FALSE] L0058
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"front" [FALSE] L0058
       STORE           G66,#01
       JUMP            L0061
L0058: ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"front","head" [TRUE] L0059
       ADD             L00,#03 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"front","head" [TRUE] L0059
       ADD             L00,#04 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"front","head" [FALSE] L0060
L0059: STORE           G66,#01
       JUMP            L0061
L0060: JE              L02,#f5 [FALSE] L0061
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"in" [FALSE] L0061
       ADD             L00,#04 -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       JE              (SP)+,"front" [FALSE] L0061
       STORE           G66,#01
L0061: CALL            R0022 (L00,L02,L01) -> L00
       JZ              L00 [TRUE] RFALSE
       JL              L00,#00 [FALSE] L0066
       STORE           Ga3,#00
       JUMP            L0067
L0062: CALL            R0021 (L01,#04) -> -(SP)
       JZ              (SP)+ [TRUE] L0063
       JUMP            L0066
L0063: JE              L03,#c2 [FALSE] L0064
       CALL            R0021 (L01,#40,#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0064
       JE              Gaf,G2f [FALSE] L0064
       CALL            R0357 -> -(SP)
       RFALSE          
L0064: CALL            R0030 (L00) -> -(SP)
       RFALSE          
L0065: CALL            R0029 (L00) -> -(SP)
       RFALSE          
L0066: STORE           L0a,L01
       ADD             L00,#02 -> L00
       JUMP            L0034
L0067: STOREW          G28,#00,#00
       JZ              L08 [TRUE] L0068
       STORE           G7a,#a2
       STORE           G6a,L08
       STORE           Gae,#00
       STORE           G29,L08
       STORE           Gb3,L08
       RET             #01
L0068: STORE           G29,#00
       STORE           Gb3,#00
       JZ              Gae [TRUE] L0069
       CALL            R0025 -> -(SP)
L0069: CALL            R0031 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0045 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0062 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0060 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0017, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       JZ              L02 [TRUE] L0001
       SUB             L00,#02 -> -(SP)
       MUL             #02,(SP)+ -> -(SP)
       ADD             #02,(SP)+ -> L03
       LOADB           G5b,L03 -> L04
       MUL             #02,L00 -> -(SP)
       ADD             #02,(SP)+ -> L05
       STOREB          G5b,L05,L04
       STOREB          G3a,L05,L04
       ADD             #01,L03 -> -(SP)
       LOADB           G5b,(SP)+ -> L04
       MUL             #02,L00 -> -(SP)
       ADD             #03,(SP)+ -> L05
       STOREB          G5b,L05,L04
       STOREB          G3a,L05,L04
L0001: STOREW          G5b,L00,L01
       STOREW          G3a,L00,L01
       RTRUE           

Routine R0018, 6 locals (0000, 0000, 001d, 0001, 0001, 0000)

       LOADB           L01,#00 -> -(SP)
       STOREB          L00,#00,(SP)+
       LOADB           L01,#01 -> -(SP)
       STOREB          L00,#01,(SP)+
L0001: LOADW           L01,L03 -> -(SP)
       STOREW          L00,L03,(SP)+
       MUL             L03,#02 -> -(SP)
       ADD             (SP)+,#02 -> L05
       LOADB           L01,L05 -> -(SP)
       STOREB          L00,L05,(SP)+
       MUL             L03,#02 -> -(SP)
       ADD             (SP)+,#03 -> L05
       LOADB           L01,L05 -> -(SP)
       STOREB          L00,L05,(SP)+
       ADD             L03,#02 -> L03
       INC_CHK         L04,L02 [FALSE] L0001
       RTRUE           

Routine R0019, 3 locals (0000, 0000, ffff)

L0001: INC_CHK         L02,#3b [TRUE] RTRUE
       LOADB           L01,L02 -> -(SP)
       STOREB          L00,L02,(SP)+
       JUMP            L0001

Routine R0020, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           G28,#03 -> L05
       JZ              L05 [TRUE] L0001
       STORE           L03,L05
       JUMP            L0002
L0001: LOADW           G28,#02 -> L05
       LOADB           G3a,L05 -> L06
       ADD             L05,#01 -> -(SP)
       LOADB           G3a,(SP)+ -> -(SP)
       ADD             L06,(SP)+ -> L03
L0002: ADD             L03,L00 -> -(SP)
       STOREW          G28,#03,(SP)+
L0003: ADD             L03,L04 -> L06
       ADD             L01,L04 -> -(SP)
       LOADB           G8e,(SP)+ -> -(SP)
       STOREB          Gaa,L06,(SP)+
       INC             L04
       JE              L04,L00 [FALSE] L0003
       STOREB          G3a,L02,L03
       SUB             L02,#01 -> -(SP)
       STOREB          G3a,(SP)+,L00
       RTRUE           

Routine R0021, 5 locals (0000, 0000, 0005, 0005, 0000)

       LOADB           L00,#04 -> L04
       TEST            L04,L01 [FALSE] RFALSE
       JG              L02,#04 [TRUE] RTRUE
       AND             L04,#03 -> L04
       JE              L04,L02 [TRUE] L0001
       INC             L03
L0001: LOADB           L00,L03 -> -(SP)
       RET_POPPED      

Routine R0022, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000,
                          0000)

       SUB             Gd2,#01 -> -(SP)
       MUL             (SP)+,#02 -> L03
       JZ              L01 [TRUE] L0001
       ADD             #02,L03 -> L04
       STOREW          Ga1,L04,L01
       ADD             L04,#01 -> -(SP)
       STOREW          Ga1,(SP)+,L02
       ADD             L00,#02 -> L00
       JUMP            L0002
L0001: INC             G55
L0002: JZ              G55 [FALSE] L0003
       DEC             Gd2
       RET             #ffff
L0003: ADD             #06,L03 -> L04
       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       STOREW          Ga1,L04,(SP)+
       LOADW           G5b,L00 -> -(SP)
       JE              (SP)+,"the","a","an" [FALSE] L0004
       LOADW           Ga1,L04 -> -(SP)
       ADD             (SP)+,#04 -> -(SP)
       STOREW          Ga1,L04,(SP)+
L0004: DEC_CHK         G55,#00 [FALSE] L0005
       ADD             L04,#01 -> L09
       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       STOREW          Ga1,L09,(SP)+
       RET             #ffff
L0005: LOADW           G5b,L00 -> L02
       JZ              L02 [FALSE] L0006
       CALL            R0023 (L00) -> L02
       JZ              L02 [TRUE] L0021
L0006: JZ              G55 [FALSE] L0007
       STORE           L07,#00
       JUMP            L0008
L0007: ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> L07
L0008: JE              L02,"." [FALSE] L0009
       JE              L08,"mr","dr" [FALSE] L0009
       STORE           L08,#00
       JUMP            L0022
L0009: JE              L02,"and","," [FALSE] L0010
       STORE           L05,#01
       JUMP            L0022
L0010: JE              L02,"all","one","both" [FALSE] L0011
       JE              L07,"of" [FALSE] L0022
       DEC             G55
       ADD             L00,#02 -> L00
       JUMP            L0022
L0011: JE              L02,"then","." [TRUE] L0012
       CALL            R0021 (L02,#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       LOADW           Ga1,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       JZ              L06 [FALSE] L0013
L0012: INC             G55
       ADD             L04,#01 -> L09
       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       STOREW          Ga1,L09,(SP)+
       SUB             L00,#02 -> -(SP)
       RET_POPPED      
L0013: JZ              L05 [TRUE] L0014
       LOADW           Ga1,#00 -> -(SP)
       JZ              (SP)+ [FALSE] L0014
       SUB             L00,#04 -> L00
       ADD             L00,#02 -> -(SP)
       CALL            R0017 ((SP)+,"then") -> -(SP)
       ADD             G55,#02 -> G55
       JUMP            L0022
L0014: CALL            R0021 (L02,#80) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       JG              G55,#00 [FALSE] L0015
       JE              L07,"of" [FALSE] L0015
       JE              L02,"all","one" [TRUE] L0015
       JUMP            L0022
L0015: CALL            R0021 (L02,#20,#02) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       JZ              L07 [TRUE] L0016
       CALL            R0021 (L07,#80) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       CALL            R0021 (L07,#20) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       JUMP            L0022
L0016: JZ              L05 [FALSE] L0017
       JE              L07,"but","except" [TRUE] L0017
       JE              L07,"and","," [TRUE] L0017
       ADD             L04,#01 -> L09
       ADD             L00,#02 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       STOREW          Ga1,L09,(SP)+
       RET             L00
L0017: STORE           L05,#00
       JUMP            L0022
L0018: CALL            R0021 (L02,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       CALL            R0021 (L02,#04) -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       JUMP            L0022
L0019: CALL            R0021 (L02,#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
       JUMP            L0022
L0020: CALL            R0030 (L00) -> -(SP)
       RFALSE          
L0021: CALL            R0029 (L00) -> -(SP)
       RFALSE          
L0022: STORE           L08,L02
       STORE           L06,#00
       ADD             L00,#02 -> L00
       JUMP            L0004

Routine R0023, 12 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, 0000)

       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       LOADB           (SP)+,#02 -> L01
       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       LOADB           (SP)+,#03 -> L02
L0001: DEC_CHK         L01,#00 [FALSE] L0002
       JUMP            L0006
L0002: LOADB           G8e,L02 -> L03
       JE              L03,#3a [FALSE] L0003
       JZ              L07 [FALSE] RFALSE
       STORE           L05,L04
       STORE           L04,#00
       JUMP            L0005
L0003: JG              L04,#270f [TRUE] RFALSE
       JL              L03,#3a [FALSE] L0004
       JG              L03,#2f [FALSE] L0004
       MUL             L04,#0a -> L0b
       SUB             L03,#30 -> -(SP)
       ADD             L0b,(SP)+ -> L04
       JUMP            L0005
L0004: JE              L03,#24 [FALSE] RFALSE
       STORE           L06,#01
L0005: INC             L02
       JUMP            L0001
L0006: CALL            R0017 (L00,"intnum") -> -(SP)
       ADD             L00,#02 -> -(SP)
       LOADW           G5b,(SP)+ -> L0a
       JZ              L06 [TRUE] L0011
       JE              L0a,"." [FALSE] L0011
       JG              G55,#01 [FALSE] L0011
       MUL             #02,#02 -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       CALL            R0024 ((SP)+) -> L09
       JZ              L09 [TRUE] L0014
       JE              L09,#64 [FALSE] L0007
       STORE           L09,#00
L0007: MUL             #64,L04 -> -(SP)
       ADD             (SP)+,L09 -> L04
       SUB             G55,#02 -> L08
L0008: DEC_CHK         L08,#00 [FALSE] L0009
       JUMP            L0010
L0009: ADD             L00,#02 -> L00
       MUL             #02,#02 -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       LOADW           G5b,(SP)+ -> -(SP)
       CALL            R0017 (L00,(SP)+) -> -(SP)
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> L0b
       MUL             #02,#02 -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       LOADB           G5b,(SP)+ -> -(SP)
       STOREB          G5b,L0b,(SP)+
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#03 -> L0b
       MUL             #02,#02 -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#03 -> -(SP)
       LOADB           G5b,(SP)+ -> -(SP)
       STOREB          G5b,L0b,(SP)+
       JUMP            L0008
L0010: SUB             G55,#02 -> G55
       LOADB           G5b,#01 -> -(SP)
       SUB             (SP)+,#02 -> -(SP)
       STOREB          G5b,#01,(SP)+
       JUMP            L0014
L0011: JZ              L06 [TRUE] L0012
       MUL             L04,#64 -> L04
       JUMP            L0014
L0012: JE              L0a,"dollar" [FALSE] L0013
       STORE           L06,#01
       MUL             L04,#64 -> L04
       JUMP            L0014
L0013: JE              L0a,"cent","cents" [FALSE] L0014
       STORE           L06,#01
L0014: JG              L04,#270f [TRUE] RFALSE
       JZ              L07 [TRUE] L0015
       STORE           G81,#00
       JUMP            L0017
L0015: JZ              L05 [TRUE] L0016
       STORE           G81,#00
       JG              L05,#17 [TRUE] RFALSE
       MUL             L05,#3c -> -(SP)
       ADD             L04,(SP)+ -> L04
       JUMP            L0017
L0016: STORE           G81,#00
L0017: JZ              L06 [TRUE] L0018
       JG              L04,#00 [FALSE] L0018
       STORE           G13,L04
       STORE           G47,#01
       PUT_PROP        #c1,#08,S010
       RET             "money"
L0018: STORE           Gac,L04
       PUT_PROP        #c1,#08,S011
       RET             "number"

Routine R0024, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       LOADB           (SP)+,#02 -> L01
       MUL             L00,#02 -> -(SP)
       ADD             G5b,(SP)+ -> -(SP)
       LOADB           (SP)+,#03 -> L02
L0001: DEC_CHK         L01,#00 [FALSE] L0002
       JUMP            L0003
L0002: LOADB           G8e,L02 -> L04
       INC             L03
       JG              L03,#02 [TRUE] RFALSE
       JL              L04,#3a [FALSE] RFALSE
       JG              L04,#2f [FALSE] RFALSE
       MUL             L05,#0a -> L06
       SUB             L04,#30 -> -(SP)
       ADD             L06,(SP)+ -> L05
       INC             L02
       JUMP            L0001
L0003: JZ              L05 [FALSE] L0004
       RET             #64
L0004: JE              L03,#01 [FALSE] L0005
       MUL             #0a,L05 -> -(SP)
       RET_POPPED      
L0005: RET             L05

Routine R0025, 8 locals (ffff, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           Gae,#00
       LOADW           Ga1,#01 -> -(SP)
       LOADW           (SP)+,#00 -> L06
       CALL            R0021 (L06,#40,#01) -> L07
       LOADW           G21,#00 -> -(SP)
       JE              L07,(SP)+ [TRUE] L0001
       CALL            R0021 (L06,#20) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: STORE           L05,#01
       JUMP            L0003
L0002: CALL            R0021 (L06,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JZ              Gd2 [FALSE] L0003
       STOREW          Ga1,#00,#00
       STOREW          Ga1,#01,#00
       ADD             G5b,#02 -> -(SP)
       STOREW          Ga1,#06,(SP)+
       ADD             G5b,#06 -> -(SP)
       STOREW          Ga1,#07,(SP)+
       STORE           Gd2,#01
L0003: LOADW           Ga1,#00 -> L02
       JZ              L02 [TRUE] L0004
       JZ              L05 [FALSE] L0004
       LOADW           G21,#00 -> -(SP)
       JE              L02,(SP)+ [FALSE] RFALSE
L0004: JE              Gd2,#02 [TRUE] RFALSE
       LOADW           G21,#06 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0009
       LOADW           Ga1,#02 -> L01
       LOADW           G21,#02 -> -(SP)
       JE              L01,(SP)+ [TRUE] L0005
       JZ              L01 [FALSE] RFALSE
L0005: JZ              L05 [TRUE] L0007
       ADD             G5b,#02 -> -(SP)
       STOREW          G21,#06,(SP)+
       LOADW           Ga1,#07 -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       ADD             G5b,#06 -> -(SP)
       STOREW          Ga1,#07,(SP)+
L0006: JZ              Gd2 [FALSE] L0008
       STORE           Gd2,#01
       JUMP            L0008
L0007: LOADW           Ga1,#06 -> -(SP)
       STOREW          G21,#06,(SP)+
L0008: LOADW           Ga1,#07 -> -(SP)
       STOREW          G21,#07,(SP)+
       JUMP            L0023
L0009: LOADW           G21,#08 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0012
       LOADW           Ga1,#02 -> L01
       LOADW           G21,#04 -> -(SP)
       JE              L01,(SP)+ [TRUE] L0010
       JZ              L01 [FALSE] RFALSE
L0010: JZ              L05 [TRUE] L0011
       ADD             G5b,#02 -> -(SP)
       STOREW          Ga1,#06,(SP)+
       LOADW           Ga1,#07 -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       ADD             G5b,#06 -> -(SP)
       STOREW          Ga1,#07,(SP)+
L0011: LOADW           Ga1,#06 -> -(SP)
       STOREW          G21,#08,(SP)+
       LOADW           Ga1,#07 -> -(SP)
       STOREW          G21,#09,(SP)+
       STORE           Gd2,#02
       JUMP            L0023
L0012: JZ              G12 [TRUE] L0023
       JE              Gd2,#01 [TRUE] L0013
       JZ              L05 [FALSE] L0013
       STORE           G12,#00
       RFALSE          
L0013: LOADW           Ga1,#06 -> L03
       JZ              L05 [TRUE] L0014
       ADD             G5b,#02 -> L03
       STORE           L05,#00
L0014: LOADW           Ga1,#07 -> L04
L0015: LOADW           L03,#00 -> L06
       JE              L03,L04 [FALSE] L0017
       JZ              L05 [TRUE] L0016
       CALL            R0026 (L05) -> -(SP)
       JUMP            L0023
L0016: STORE           G12,#00
       RFALSE          
L0017: JZ              L05 [FALSE] L0019
       LOADB           L06,#04 -> -(SP)
       TEST            (SP)+,#20 [TRUE] L0018
       JE              L06,"all","one" [FALSE] L0019
L0018: STORE           L05,L06
       JUMP            L0022
L0019: JE              L06,"one" [FALSE] L0020
       CALL            R0026 (L05) -> -(SP)
       JUMP            L0023
L0020: LOADB           L06,#04 -> -(SP)
       TEST            (SP)+,#80 [FALSE] L0022
       JE              L06,G2c [FALSE] L0021
       CALL            R0026 (L05) -> -(SP)
       JUMP            L0023
L0021: CALL            R0027 -> -(SP)
       JUMP            L0023
L0022: ADD             L03,#04 -> L03
       JZ              L04 [FALSE] L0015
       STORE           L04,L03
       STORE           Gd2,#01
       SUB             L03,#04 -> -(SP)
       STOREW          Ga1,#06,(SP)+
       STOREW          Ga1,#07,L03
       JUMP            L0015
L0023: LOADW           G9c,#00 -> -(SP)
       STOREW          G4e,#00,(SP)+
       LOADB           G9c,#02 -> -(SP)
       STOREB          G4e,#02,(SP)+
       LOADB           G9c,#03 -> -(SP)
       STOREB          G4e,#03,(SP)+
       STOREW          G21,#01,G4e
       STOREB          G4e,#02,#00
L0024: INC_CHK         L00,#09 [FALSE] L0025
       STORE           G6e,#01
       RTRUE           
L0025: LOADW           G21,L00 -> -(SP)
       STOREW          Ga1,L00,(SP)+
       JUMP            L0024

Routine R0026, 1 local (0000)

       LOADW           G21,#00 -> -(SP)
       STOREW          Ga1,#00,(SP)+
       STOREW          G5a,#00,G12
       ADD             G12,#01 -> -(SP)
       STOREW          G5a,#01,(SP)+
       STOREW          G5a,#02,G12
       ADD             G12,#01 -> -(SP)
       STOREW          G5a,#03,(SP)+
       CALL            R0040 (G21,G21,L00) -> -(SP)
       LOADW           G21,#08 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           Gd2,#02
L0001: STORE           G12,#00
       RTRUE           

Routine R0027, 0 locals ()

       STOREW          G5a,#00,#06
       STOREW          G5a,#01,#07
       STOREW          G5a,#02,G12
       ADD             G12,#01 -> -(SP)
       STOREW          G5a,#03,(SP)+
       CALL            R0040 (Ga1,G21) -> -(SP)
       LOADW           G21,#08 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           Gd2,#02
L0001: STORE           G12,#00
       RTRUE           

Routine R0028, 2 locals (0000, 0000)

L0001: DEC_CHK         L00,#00 [TRUE] RTRUE
       LOADB           G8e,L01 -> -(SP)
       PRINT_CHAR      (SP)+
       INC             L01
       JUMP            L0001

Routine R0029, 3 locals (0000, 0000, 0000)

       STOREW          G28,#00,L00
       PRINT           "[I don't know the word ""
       MUL             L00,#02 -> L01
       ADD             G5b,L01 -> -(SP)
       LOADB           (SP)+,#02 -> L02
       ADD             G5b,L01 -> -(SP)
       LOADB           (SP)+,#03 -> -(SP)
       CALL            R0028 (L02,(SP)+) -> -(SP)
       PRINT           "."]"
       NEW_LINE        
       STORE           Ga3,#00
       STORE           Gae,#00
       RET             Gae

Routine R0030, 3 locals (0000, 0000, 0000)

       PRINT           "[You used the word ""
       MUL             L00,#02 -> L01
       ADD             G5b,L01 -> -(SP)
       LOADB           (SP)+,#02 -> L02
       ADD             G5b,L01 -> -(SP)
       LOADB           (SP)+,#03 -> -(SP)
       CALL            R0028 (L02,(SP)+) -> -(SP)
       PRINT           "" in a way that I don't understand.]"
       NEW_LINE        
       STORE           Ga3,#00
       STORE           Gae,#00
       RET             Gae

Routine R0031, 11 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000)

       LOADW           Ga1,#00 -> L07
       JZ              L07 [FALSE] L0001
       PRINT           "[There was no verb in that sentence!]"
       NEW_LINE        
       RFALSE          
L0001: SUB             #ff,L07 -> -(SP)
       LOADW           Gdb,(SP)+ -> L00
       LOADB           L00,#00 -> L01
       INC             L00
L0002: LOADB           L00,#00 -> -(SP)
       AND             (SP)+,#03 -> L02
       JG              Gd2,L02 [FALSE] L0003
       JUMP            L0007
L0003: JL              L02,#01 [TRUE] L0005
       JZ              Gd2 [FALSE] L0005
       LOADW           Ga1,#02 -> L06
       JZ              L06 [TRUE] L0004
       LOADB           L00,#01 -> -(SP)
       JE              L06,(SP)+ [FALSE] L0005
L0004: STORE           L04,L00
       JUMP            L0007
L0005: LOADB           L00,#01 -> L0a
       LOADW           Ga1,#02 -> -(SP)
       JE              L0a,(SP)+ [FALSE] L0007
       JE              L02,#02 [FALSE] L0006
       JE              Gd2,#01 [FALSE] L0006
       STORE           L05,L00
       JUMP            L0007
L0006: LOADB           L00,#02 -> L0a
       LOADW           Ga1,#04 -> -(SP)
       JE              L0a,(SP)+ [FALSE] L0007
       CALL            R0043 (L00) -> -(SP)
       RTRUE           
L0007: DEC_CHK         L01,#01 [FALSE] L0009
       JZ              L04 [FALSE] L0010
       JZ              L05 [TRUE] L0008
       JUMP            L0010
L0008: CALL            R0241 -> -(SP)
       RFALSE          
L0009: ADD             L00,#08 -> L00
       JUMP            L0002
L0010: JZ              L04 [TRUE] L0011
       LOADB           L04,#03 -> L09
       LOADB           L04,#05 -> L0a
       LOADB           L04,#01 -> -(SP)
       CALL            R0044 (L09,L0a,(SP)+) -> L03
       JZ              L03 [TRUE] L0011
       STOREW          G86,G16,#01
       STOREW          G86,#01,L03
       CALL            R0043 (L04) -> -(SP)
       RET_POPPED      
L0011: JZ              L05 [TRUE] L0012
       LOADB           L05,#04 -> L09
       LOADB           L05,#06 -> L0a
       LOADB           L05,#02 -> -(SP)
       CALL            R0044 (L09,L0a,(SP)+) -> L03
       JZ              L03 [TRUE] L0012
       STOREW          G38,G16,#01
       STOREW          G38,#01,L03
       CALL            R0043 (L05) -> -(SP)
       RET_POPPED      
L0012: JE              L07,#f4 [FALSE] L0013
       PRINT           "[That question can't be answered.]"
       NEW_LINE        
       RFALSE          
L0013: JE              Gaf,G2f [FALSE] L0014
       CALL            R0034 (L04,L05) -> -(SP)
       PRINT           "[Wh"
       JUMP            L0015
L0014: PRINT           "[Your command was not complete. Next time, type wh"
L0015: JE              L07,#f6,#7a,#72 [TRUE] L0016
       JE              G7b,"crawl" [FALSE] L0017
L0016: PRINT           "ere"
       JUMP            L0021
L0017: JZ              L04 [TRUE] L0018
       LOADB           L04,#03 -> -(SP)
       JE              (SP)+,#1f [TRUE] L0019
L0018: JZ              L05 [TRUE] L0020
       LOADB           L05,#04 -> -(SP)
       JE              (SP)+,#1f [FALSE] L0020
L0019: PRINT           "om"
       JUMP            L0021
L0020: PRINT           "at"
L0021: JE              Gaf,G2f [FALSE] L0022
       PRINT           " do you want to "
       JUMP            L0023
L0022: PRINT           " you want"
       CALL            R0302 (Gaf,#01) -> -(SP)
       PRINT           " to "
L0023: CALL            R0032 -> -(SP)
       JZ              L05 [TRUE] L0024
       CALL            R0035 (#06,#07) -> -(SP)
L0024: STORE           Gae,#01
       JZ              L04 [TRUE] L0025
       LOADB           L04,#01 -> -(SP)
       JUMP            L0026
L0025: LOADB           L05,#02 -> -(SP)
L0026: CALL            R0039 ((SP)+) -> -(SP)
       JE              Gaf,G2f [FALSE] L0027
       STORE           Gae,#01
       PRINT           "?]"
       NEW_LINE        
       RFALSE          
L0027: STORE           Gae,#00
       PRINT           ".]"
       NEW_LINE        
       RFALSE          

Routine R0032, 2 locals (0000, 0000)

       LOADW           Ga1,#01 -> L00
       JZ              L00 [FALSE] L0001
       PRINT           "tell"
       RTRUE           
L0001: LOADB           G4e,#02 -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       LOADW           L00,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       RTRUE           
L0002: LOADB           L00,#02 -> L01
       LOADB           L00,#03 -> -(SP)
       CALL            R0028 (L01,(SP)+) -> -(SP)
       STOREB          G4e,#02,#00
       RTRUE           

Routine R0033, 0 locals ()

       PRINT           ""I don't understand! What are you referring to?""
       NEW_LINE        
       RFALSE          

Routine R0034, 3 locals (0000, 0000, ffff)

       JZ              G6e [FALSE] L0001
       STOREW          G71,G16,#00
L0001: LOADW           G4e,#00 -> -(SP)
       STOREW          G9c,#00,(SP)+
       LOADB           G4e,#02 -> -(SP)
       STOREB          G9c,#02,(SP)+
       LOADB           G4e,#03 -> -(SP)
       STOREB          G9c,#03,(SP)+
L0002: INC_CHK         L02,#09 [FALSE] L0003
       JUMP            L0004
L0003: LOADW           Ga1,L02 -> -(SP)
       STOREW          G21,L02,(SP)+
       JUMP            L0002
L0004: JE              Gd2,#02 [FALSE] L0005
       STOREW          G5a,#00,#08
       STOREW          G5a,#01,#09
       STOREW          G5a,#02,#08
       STOREW          G5a,#03,#09
       CALL            R0040 (Ga1,G21) -> -(SP)
L0005: JL              Gd2,#01 [TRUE] L0006
       STOREW          G5a,#00,#06
       STOREW          G5a,#01,#07
       STOREW          G5a,#02,#06
       STOREW          G5a,#03,#07
       CALL            R0040 (Ga1,G21) -> -(SP)
L0006: JZ              L00 [TRUE] L0007
       LOADB           L00,#01 -> -(SP)
       STOREW          G21,#02,(SP)+
       STOREW          G21,#06,#01
       RTRUE           
L0007: JZ              L01 [TRUE] RFALSE
       LOADB           L01,#02 -> -(SP)
       STOREW          G21,#04,(SP)+
       STOREW          G21,#08,#01
       RTRUE           

Routine R0035, 4 locals (0000, 0000, 0001, 0000)

       LOADW           Ga1,L00 -> L03
       LOADW           Ga1,L01 -> -(SP)
       CALL            R0036 (L03,(SP)+,L02) -> -(SP)
       RET_POPPED      

Routine R0036, 8 locals (0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000)

L0001: JE              L00,L01 [TRUE] RTRUE
       JZ              L03 [TRUE] L0002
       STORE           L03,#00
       JUMP            L0003
L0002: PRINT           " "
L0003: LOADW           L00,#00 -> L04
       JE              L04,"." [FALSE] L0004
       STORE           L03,#01
       JUMP            L0012
L0004: JE              L04,"me" [FALSE] L0005
       CALL            R0004 (#1d) -> -(SP)
       STORE           L06,#01
       JUMP            L0012
L0005: CALL            R0037 (L04) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0038 (L00) -> -(SP)
       STORE           L06,#01
       JUMP            L0012
L0006: JZ              L05 [TRUE] L0007
       JZ              L06 [FALSE] L0007
       JZ              L02 [TRUE] L0007
       PRINT           "the "
L0007: JZ              Gae [FALSE] L0008
       JZ              G6e [TRUE] L0009
L0008: PRINT_ADDR      L04
       JUMP            L0011
L0009: JE              L04,"it" [FALSE] L0010
       CALL            R0288 (Gbd) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       CALL            R0004 (Gbd) -> -(SP)
       JUMP            L0011
L0010: LOADB           L00,#02 -> L07
       LOADB           L00,#03 -> -(SP)
       CALL            R0028 (L07,(SP)+) -> -(SP)
L0011: STORE           L05,#00
L0012: ADD             L00,#04 -> L00
       JUMP            L0001

Routine R0037, 1 local (0000)

       JE              L00,"harry","elsie","nimrod" [TRUE] RTRUE
       JE              L00,"smaldo","eddie","harry" [TRUE] RTRUE
       JE              L00,"consta","thumb","comrad" [TRUE] RTRUE
       JE              L00,"chuckl","jenny","andrew" [TRUE] RTRUE
       JE              L00,"bill","billy","monday" [TRUE] RTRUE
       JE              L00,"gottfr","katzen","wilhel" [TRUE] RTRUE
       JE              L00,"munrab","herr","tina" [TRUE] RTRUE
       JE              L00,"rimsha","howard" [TRUE] RTRUE
       JE              L00,"ed","coke","willia" [TRUE] RTRUE
       JE              L00,"jerry","annie","oakley" [TRUE] RTRUE
       JE              L00,"mahler","katz","joey" [TRUE] RTRUE
       JE              L00,"chelse","taft","hannib" [TRUE] RTRUE
       JE              L00,"andy","jennif","mr" [TRUE] RTRUE
       JE              L00,"genato","malcom","gloria" [TRUE] RTRUE
       JE              L00,"duffy","sgt" [FALSE] RFALSE
       RTRUE           

Routine R0038, 2 locals (0000, 0000)

       JZ              Gae [FALSE] L0001
       JZ              G6e [TRUE] L0002
L0001: LOADW           L00,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       RTRUE           
L0002: LOADB           L00,#03 -> -(SP)
       LOADB           G8e,(SP)+ -> -(SP)
       SUB             (SP)+,#20 -> -(SP)
       PRINT_CHAR      (SP)+
       LOADB           L00,#02 -> -(SP)
       SUB             (SP)+,#01 -> L01
       LOADB           L00,#03 -> -(SP)
       ADD             (SP)+,#01 -> -(SP)
       CALL            R0028 (L01,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0039, 2 locals (0000, 0000)

       JZ              L00 [TRUE] RFALSE
       PRINT           " "
       JE              L00,#f2 [FALSE] L0001
       PRINT           "through"
       RTRUE           
L0001: CALL            R0042 (L00) -> L01
       PRINT_ADDR      L01
       RTRUE           

Routine R0040, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           G5a,#00 -> -(SP)
       LOADW           L00,(SP)+ -> L03
       LOADW           G5a,#01 -> -(SP)
       LOADW           L00,(SP)+ -> L04
       LOADW           G5a,#02 -> L05
       LOADW           G71,G16 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       ADD             G71,(SP)+ -> -(SP)
       STOREW          L01,L05,(SP)+
L0001: JE              L03,L04 [FALSE] L0002
       LOADW           G5a,#03 -> L05
       LOADW           G71,G16 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       ADD             G71,(SP)+ -> -(SP)
       STOREW          L01,L05,(SP)+
       RTRUE           
L0002: JZ              L02 [TRUE] L0003
       LOADW           L03,#00 -> -(SP)
       JE              G2c,(SP)+ [FALSE] L0003
       CALL            R0041 (L02) -> -(SP)
L0003: LOADW           L03,#00 -> -(SP)
       CALL            R0041 ((SP)+) -> -(SP)
       ADD             L03,#04 -> L03
       JUMP            L0001

Routine R0041, 2 locals (0000, 0000)

       LOADW           G71,G16 -> -(SP)
       ADD             (SP)+,#02 -> L01
       SUB             L01,#01 -> -(SP)
       STOREW          G71,(SP)+,L00
       STOREW          G71,L01,#00
       STOREW          G71,G16,L01
       RTRUE           

Routine R0042, 3 locals (0000, 0000, 0000)

       LOADW           Gd8,#00 -> -(SP)
       MUL             (SP)+,#02 -> L02
L0001: INC_CHK         L01,L02 [TRUE] RFALSE
       LOADW           Gd8,L01 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0001
       SUB             L01,#01 -> -(SP)
       LOADW           Gd8,(SP)+ -> -(SP)
       RET_POPPED      

Routine R0043, 1 local (0000)

       STORE           G76,L00
       LOADB           L00,#07 -> G7a
       RET             G7a

Routine R0044, 4 locals (0000, 0000, 0000, 0000)

       JE              L00,#1c [FALSE] L0001
       RET             #2b
L0001: STORE           G6f,L00
       STORE           G14,L01
       STOREW          G94,G16,#00
       CALL            R0053 (G94,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           G6f,#00
       LOADW           G94,G16 -> -(SP)
       JE              (SP)+,#01 [FALSE] RFALSE
       LOADW           G94,#01 -> L03
       PRINT           "["
       JZ              L02 [TRUE] L0004
       JZ              G04 [FALSE] L0004
       CALL            R0042 (L02) -> L02
       PRINT_ADDR      L02
       JE              L02,"out" [FALSE] L0002
       PRINT           " of"
L0002: TEST_ATTR       L03,#01 [TRUE] L0003
       PRINT           " the "
       JUMP            L0004
L0003: PRINT           " "
L0004: CALL            R0004 (L03) -> -(SP)
       PRINT           "]"
       NEW_LINE        
       RET             L03
L0005: STORE           G6f,#00
       RFALSE          

Routine R0045, 1 local (0000)

       LOADW           Ga1,#06 -> L00
       JZ              L00 [TRUE] L0001
       STORE           G08,#00
       LOADB           G76,#05 -> G14
       LOADW           Ga1,#07 -> -(SP)
       CALL            R0047 (L00,(SP)+,G86) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADW           G0d,G16 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0046 (G86) -> G86
L0001: LOADW           Ga1,#08 -> L00
       JZ              L00 [TRUE] RTRUE
       STORE           G08,#01
       LOADB           G76,#06 -> G14
       LOADW           Ga1,#09 -> -(SP)
       CALL            R0047 (L00,(SP)+,G38) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADW           G0d,G16 -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       LOADW           G38,G16 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0002
       CALL            R0046 (G86) -> G86
       RTRUE           
L0002: CALL            R0046 (G38) -> G38
       RTRUE           

Routine R0046, 7 locals (0000, 0000, 0000, 0001, 0000, 0000, 0000)

       LOADW           L00,G16 -> L01
       STOREW          G94,G16,#00
L0001: DEC_CHK         L01,#00 [FALSE] L0002
       JUMP            L0005
L0002: LOADW           L00,L03 -> L05
       CALL            R0063 (L05,G0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JUMP            L0004
L0003: ADD             L04,#01 -> -(SP)
       STOREW          G94,(SP)+,L05
       INC             L04
L0004: INC             L03
       JUMP            L0001
L0005: STOREW          G94,G16,L04
       STORE           L06,G94
       STORE           G94,L00
       RET             L06

Routine R0047, 9 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           G88,#00
       JE              Ga6,#01 [FALSE] L0001
       STORE           L08,#01
L0001: STORE           Ga6,#00
       STOREW          G0d,G16,#00
       STOREW          L02,G16,#00
       LOADW           L00,#00 -> L06
L0002: JE              L00,L01 [FALSE] L0006
       JZ              L03 [TRUE] L0003
       PUSH            L03
       JUMP            L0004
L0003: PUSH            L02
L0004: CALL            R0053 ((SP)+) -> L05
       JZ              L08 [TRUE] L0005
       STORE           Ga6,#01
L0005: RET             L05
L0006: LOADW           L00,#02 -> L07
       JE              L06,"all","both" [FALSE] L0007
       STORE           Ga6,#01
       JE              L07,"of" [FALSE] L0022
       ADD             L00,#04 -> L00
       JUMP            L0022
L0007: CALL            R0049 (L06) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0048 (L06) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              L06,"but","except" [FALSE] L0010
       JZ              L03 [TRUE] L0008
       PUSH            L03
       JUMP            L0009
L0008: PUSH            L02
L0009: CALL            R0053 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           L03,G0d
       STOREW          L03,G16,#00
       JUMP            L0022
L0010: JE              L06,"a","one" [FALSE] L0014
       JZ              G54 [FALSE] L0011
       STORE           Ga6,#02
       JE              L07,"of" [FALSE] L0022
       ADD             L00,#04 -> L00
       JUMP            L0022
L0011: STORE           G23,G8a
       JZ              L03 [TRUE] L0012
       PUSH            L03
       JUMP            L0013
L0012: PUSH            L02
L0013: CALL            R0053 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JZ              L07 [TRUE] RTRUE
       JUMP            L0022
L0014: JE              L06,"and","," [FALSE] L0017
       JE              L07,"and","," [TRUE] L0017
       STORE           G88,#01
       JZ              L03 [TRUE] L0015
       PUSH            L03
       JUMP            L0016
L0015: PUSH            L02
L0016: CALL            R0053 ((SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       RFALSE          
L0017: CALL            R0021 (L06,#04) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       JUMP            L0022
L0018: JE              L06,"and","," [FALSE] L0019
       JUMP            L0022
L0019: JE              L06,"of" [FALSE] L0020
       JZ              Ga6 [FALSE] L0022
       STORE           Ga6,#04
       JUMP            L0022
L0020: CALL            R0021 (L06,#20,#02) -> L05
       JZ              L05 [TRUE] L0021
       CALL            R0052 (L06) -> -(SP)
       JZ              (SP)+ [TRUE] L0021
       JE              L07,"of" [TRUE] L0021
       STORE           G54,L05
       STORE           Gb2,L06
       JUMP            L0022
L0021: CALL            R0021 (L06,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0022
       STORE           G23,L06
       STORE           G8a,L06
L0022: JE              L00,L01 [TRUE] L0002
       ADD             L00,#04 -> L00
       STORE           L06,L07
       JUMP            L0002

Routine R0048, 1 local (0000)

       JE              L00,"say" [FALSE] L0001
       CALL            R0357 -> -(SP)
       RTRUE           
L0001: CALL            R0050 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0051 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0002: JE              G4c,#07 [FALSE] L0003
       PRINT_RET       "It didn't hurt that much."
L0003: PRINT_RET       "[That's uncalled for.]"

Routine R0049, 1 local (0000)

       CALL            R0002 (#a2cf) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           G34,#00
       INC             G89
       JE              G00,#0d [FALSE] L0004
       CALL            R0050 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0004 (#09) -> -(SP)
       PRINT           " takes it as an insult. He"
       JUMP            L0003
L0001: CALL            R0051 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "No respecter of nuance in language, "
       CALL            R0004 (#09) -> -(SP)
       JUMP            L0003
L0002: PRINT           "No time for that. "
       CALL            R0004 (#09) -> -(SP)
L0003: CALL            R0624 -> -(SP)
       RTRUE           
L0004: CALL            R0050 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       CALL            R0003 (Gb6) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0005: CALL            R0051 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       JZ              G62 [TRUE] L0006
       STORE           G62,#00
       CALL            R0014 (#a2cf) -> -(SP)
       STOREW          (SP)+,#00,#00
       PRINT_RET       "Cut! Cut! Okay, that's a wrap."
L0006: STORE           G62,#01
       PRINT_RET       "Bravisimo! Once more now, with feeling."
L0007: JG              G89,#04 [FALSE] L0008
       STORE           G89,#00
       CALL            R0014 (#a2cf) -> -(SP)
       STOREW          (SP)+,#00,#00
       PRINT_RET       "You've lost the opportunity to curse the pain, and it
overtakes you: "Aaaaaaaarrrrrrrrrrgggggggghhhhhhh.""
L0008: CALL            R0003 (G5f) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0050, 1 local (0000)

       JE              L00,"shit","fuck","bitch" [TRUE] RTRUE
       JE              L00,"shithe","piss" [TRUE] RTRUE
       JE              L00,"bastar","screw","fuckin" [TRUE] RTRUE
       JE              L00,"fucked","cunt","asshol" [TRUE] RTRUE
       JE              L00,"goddam","cocksu" [FALSE] RFALSE
       RTRUE           

Routine R0051, 1 local (0000)

       JE              L00,"curse","damn","damned" [TRUE] RTRUE
       JE              L00,"hell","darn","shucks" [TRUE] RTRUE
       JE              L00,"pee","fudge","heck" [TRUE] RTRUE
       JE              L00,"cuss","dagnab","ouch" [TRUE] RTRUE
       JE              L00,"drat","shoot" [FALSE] RFALSE
       RTRUE           

Routine R0052, 1 local (0000)

       JZ              G54 [TRUE] RTRUE
       RFALSE          

Routine R0053, 9 locals (0000, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           L04,G14
       LOADW           L00,G16 -> L05
       TEST            Ga6,#04 [TRUE] RTRUE
       JZ              G23 [FALSE] L0002
       JZ              G54 [TRUE] L0002
       CALL            R0021 (Gb2,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           G23,Gb2
       STORE           G54,#00
       JUMP            L0002
L0001: CALL            R0021 (Gb2,#10,#03) -> L02
       JZ              L02 [TRUE] L0002
       STORE           G3c,L02
L0002: JZ              G23 [FALSE] L0003
       JZ              G54 [FALSE] L0003
       JE              Ga6,#01 [TRUE] L0003
       JZ              G6f [FALSE] L0003
       JZ              L01 [TRUE] RFALSE
       PRINT_PADDR     G4a
       NEW_LINE        
       RFALSE          
L0003: JE              Ga6,#01 [FALSE] L0004
       JZ              G14 [FALSE] L0005
L0004: STORE           G14,#ffff
L0005: STORE           Ga5,L00
L0006: JZ              L06 [TRUE] L0007
       CALL            R0056 (L00) -> -(SP)
       JUMP            L0009
L0007: JZ              G48 [TRUE] L0008
       CLEAR_ATTR      G2f,#0d
       CALL            R0057 (G00,#10,#20) -> -(SP)
       SET_ATTR        G2f,#0d
L0008: CALL            R0057 (G2f,#80,#40) -> -(SP)
L0009: LOADW           L00,G16 -> -(SP)
       SUB             (SP)+,L05 -> L03
       TEST            Ga6,#01 [FALSE] L0010
       JUMP            L0022
L0010: TEST            Ga6,#02 [FALSE] L0012
       JZ              L03 [TRUE] L0012
       JE              L03,#01 [TRUE] L0011
       RANDOM          L03 -> -(SP)
       LOADW           L00,(SP)+ -> -(SP)
       STOREW          L00,#01,(SP)+
       PRINT           "[How about the "
       LOADW           L00,#01 -> -(SP)
       CALL            R0004 ((SP)+) -> -(SP)
       PRINT           "?]"
       NEW_LINE        
L0011: STOREW          L00,G16,#01
       JUMP            L0022
L0012: JG              L03,#01 [TRUE] L0013
       JZ              L03 [FALSE] L0022
       JE              G14,#ffff [TRUE] L0022
L0013: JE              G14,#ffff [FALSE] L0014
       STORE           G14,L04
       STORE           L07,L03
       LOADW           L00,G16 -> -(SP)
       SUB             (SP)+,L03 -> -(SP)
       STOREW          L00,G16,(SP)+
       JUMP            L0006
L0014: STOREW          G20,G08,G23
       STOREW          G50,G08,G54
       JZ              L03 [FALSE] L0015
       STORE           L03,L07
L0015: JZ              G23 [TRUE] L0016
       ADD             L05,#01 -> -(SP)
       LOADW           L00,(SP)+ -> L08
       JZ              L08 [TRUE] L0016
       GET_PROP        L08,#07 -> -(SP)
       CALL            (SP)+ -> L08
       JZ              L08 [TRUE] L0016
       JE              L08,#bd [TRUE] RFALSE
       STOREW          L00,#01,L08
       STOREW          L00,G16,#01
       STORE           G23,#00
       STORE           G54,#00
       RTRUE           
L0016: JZ              L01 [TRUE] L0017
       JE              Gaf,#d3 [TRUE] L0017
       CALL            R0033 -> -(SP)
       STORE           G23,#00
       STORE           G54,#00
       RFALSE          
L0017: JZ              L01 [TRUE] L0020
       JZ              G23 [TRUE] L0020
       CALL            R0055 (L05,L03,L00) -> -(SP)
       JE              L00,G86 [FALSE] L0018
       PUSH            #06
       JUMP            L0019
L0018: PUSH            #08
L0019: STORE           G12,(SP)+
       STORE           G79,G54
       STORE           G2c,G23
       CALL            R0034 (#00,#00) -> -(SP)
       STORE           Gae,#01
       JUMP            L0021
L0020: JZ              L01 [TRUE] L0021
       PRINT_PADDR     G4a
       NEW_LINE        
L0021: STORE           G23,#00
       STORE           G54,#00
       RFALSE          
L0022: JZ              L03 [FALSE] L0026
       JZ              L06 [TRUE] L0026
       STOREW          G20,G08,G23
       STOREW          G50,G08,G54
       JZ              L01 [TRUE] L0025
       STORE           G14,L04
       JZ              G48 [FALSE] L0023
       JE              G7a,#0e [TRUE] L0023
       JE              G7a,#a9,#a8,#ac [FALSE] L0024
L0023: CALL            R0059 (#bd,L00) -> -(SP)
       STORE           G26,G23
       STORE           G77,G54
       STORE           G4f,Gb2
       STORE           G23,#00
       STORE           G54,#00
       STORE           Gb2,#00
       RTRUE           
L0024: PRINT_PADDR     G67
       NEW_LINE        
L0025: STORE           G23,#00
       STORE           G54,#00
       RFALSE          
L0026: JZ              L03 [FALSE] L0027
       STORE           L06,#01
       JUMP            L0006
L0027: STORE           G14,L04
       STOREW          G20,G08,G23
       STOREW          G50,G08,G54
       STORE           G23,#00
       STORE           G54,#00
       RTRUE           

Routine R0054, 6 locals (0000, 0001, 0000, 0000, 0000, 0000)

       STORE           L04,G23
       STORE           L05,G54
       STORE           G23,G26
       STORE           G54,G77
       STOREW          L00,G16,#00
L0001: JIN             L01,#2b [TRUE] L0002
       CALL            R0068 (L01) -> L03
       JZ              L03 [TRUE] L0002
       CALL            R0059 (L01,L00) -> L03
L0002: INC_CHK         L01,#ef [FALSE] L0001
       LOADW           L00,G16 -> L02
       JE              L02,#01 [FALSE] L0003
       LOADW           L00,#01 -> G27
L0003: STORE           G23,L04
       STORE           G54,L05
       RET             L02

Routine R0055, 5 locals (0000, 0000, 0000, 0000, 0000)

       STORE           L04,L01
       PRINT           "[Which"
       JZ              Gae [FALSE] L0001
       JZ              G6e [FALSE] L0001
       JZ              G88 [TRUE] L0002
L0001: PRINT           " "
       PRINT_ADDR      G23
       JUMP            L0004
L0002: JE              L02,G86 [FALSE] L0003
       CALL            R0035 (#06,#07,#00) -> -(SP)
       JUMP            L0004
L0003: CALL            R0035 (#08,#09,#00) -> -(SP)
L0004: PRINT           " do you mean, "
L0005: INC             L00
       LOADW           L02,L00 -> L03
       TEST_ATTR       L03,#01 [TRUE] L0006
       PRINT           "the "
L0006: CALL            R0004 (L03) -> -(SP)
       JE              L01,#02 [FALSE] L0008
       JE              L04,#02 [TRUE] L0007
       PRINT           ","
L0007: PRINT           " or "
       JUMP            L0009
L0008: JG              L01,#02 [FALSE] L0009
       PRINT           ", "
L0009: DEC_CHK         L01,#01 [FALSE] L0005
       PRINT_RET       "?]"

Routine R0056, 8 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           L00,G16 -> L01
       STORE           L06,G14
       GET_PROP_ADDR   G00,#11 -> L02
       JZ              L02 [TRUE] L0003
       GET_PROP_LEN    L02 -> -(SP)
       SUB             (SP)+,#01 -> L03
L0001: LOADB           L02,L04 -> L05
       CALL            R0068 (L05) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0059 (L05,L00) -> -(SP)
L0002: INC_CHK         L04,L03 [FALSE] L0001
L0003: GET_PROP_ADDR   G00,#0e -> L02
       JZ              L02 [TRUE] L0006
       GET_PROP_LEN    L02 -> -(SP)
       DIV             (SP)+,#04 -> -(SP)
       SUB             (SP)+,#01 -> L03
       STORE           L04,#00
L0004: MUL             L04,#02 -> -(SP)
       LOADW           L02,(SP)+ -> -(SP)
       JE              G23,(SP)+ [FALSE] L0005
       STORE           G32,G00
       MUL             L04,#02 -> -(SP)
       ADD             (SP)+,#01 -> -(SP)
       LOADW           L02,(SP)+ -> -(SP)
       PUT_PROP        "pseudo",#09,(SP)+
       GET_PROP_ADDR   "pseudo",#09 -> -(SP)
       SUB             (SP)+,#05 -> L07
       LOADW           G23,#00 -> -(SP)
       STOREW          L07,#00,(SP)+
       LOADW           G23,#01 -> -(SP)
       STOREW          L07,#01,(SP)+
       CALL            R0059 (#ee,L00) -> -(SP)
       JUMP            L0006
L0005: INC_CHK         L04,L03 [FALSE] L0004
L0006: LOADW           L00,G16 -> -(SP)
       JE              (SP)+,L01 [FALSE] RFALSE
       STORE           G14,#ffff
       STORE           Ga5,L00
       CALL            R0057 (#4c,#01,#01) -> -(SP)
       STORE           G14,L06
       RET             G14

Routine R0057, 4 locals (0000, 0000, 0000, 0000)

       ADD             L01,L02 -> -(SP)
       TEST            G14,(SP)+ [FALSE] L0001
       CALL            R0058 (L00,Ga5,#01) -> -(SP)
       RET_POPPED      
L0001: TEST            G14,L01 [FALSE] L0002
       CALL            R0058 (L00,Ga5,#00) -> -(SP)
       RET_POPPED      
L0002: TEST            G14,L02 [FALSE] RTRUE
       CALL            R0058 (L00,Ga5,#02) -> -(SP)
       RET_POPPED      

Routine R0058, 5 locals (0000, 0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L00 [FALSE] RFALSE
L0001: JE              L02,#02 [TRUE] L0002
       GET_PROP_ADDR   L00,#13 -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0068 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0059 (L00,L01) -> -(SP)
L0002: JE              L02,#00 [FALSE] L0003
       TEST_ATTR       L00,#0e [TRUE] L0003
       TEST_ATTR       L00,#11 [FALSE] L0008
L0003: GET_CHILD       L00 -> L04 [FALSE] L0008
       TEST_ATTR       L00,#0f [TRUE] L0004
       TEST_ATTR       L00,#0d [TRUE] L0004
       JZ              G52 [TRUE] L0008
L0004: TEST_ATTR       L00,#11 [FALSE] L0005
       PUSH            #01
       JUMP            L0007
L0005: TEST_ATTR       L00,#0e [FALSE] L0006
       PUSH            #01
       JUMP            L0007
L0006: PUSH            #00
L0007: CALL            R0058 (L00,L01,(SP)+) -> L03
L0008: GET_SIBLING     L00 -> L00 [TRUE] L0001
       RTRUE           

Routine R0059, 3 locals (0000, 0000, 0000)

       LOADW           L01,G16 -> L02
       ADD             L02,#01 -> -(SP)
       STOREW          L01,(SP)+,L00
       ADD             L02,#01 -> -(SP)
       STOREW          L01,G16,(SP)+
       RTRUE           

Routine R0060, 0 locals ()

       LOADB           G76,#05 -> -(SP)
       CALL            R0061 (G86,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADB           G76,#06 -> -(SP)
       CALL            R0061 (G38,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0061, 5 locals (0000, 0000, 0000, 0000, 0000)

       LOADW           L00,G16 -> L02
       JZ              L02 [TRUE] RTRUE
       TEST            L01,#02 [TRUE] L0001
       TEST            L01,#08 [FALSE] RTRUE
L0001: DEC_CHK         L02,#00 [TRUE] RTRUE
       ADD             L02,#01 -> -(SP)
       LOADW           L00,(SP)+ -> L03
       JE              L03,#4d [FALSE] L0003
       CALL            R0288 (Gbd) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       PRINT_PADDR     G3d
       NEW_LINE        
       RFALSE          
L0002: STORE           L03,Gbd
L0003: CALL            R0292 (L03) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              L03,#98,#c1,#0b [TRUE] L0001
       JE              L03,#ba [TRUE] L0001
       JE              G00,#e1 [FALSE] L0004
       JE              L03,#48 [FALSE] L0004
       JUMP            L0001
L0004: STORE           G6a,L03
       TEST_ATTR       L03,#10 [FALSE] L0005
       STORE           L04,#01
       JUMP            L0008
L0005: JE              Gaf,#d3 [TRUE] L0006
       STORE           L04,#00
       JUMP            L0008
L0006: TEST            L01,#08 [FALSE] L0007
       CALL            R0274 (#00) -> -(SP)
       JE              (SP)+,#01 [FALSE] L0007
       STORE           L04,#00
       JUMP            L0008
L0007: STORE           L04,#01
L0008: JZ              L04 [TRUE] L0014
       TEST            L01,#02 [FALSE] L0014
       LOADW           L00,G16 -> -(SP)
       JL              #01,(SP)+ [FALSE] L0009
       PRINT_PADDR     G90
       PRINT           " all those things!"
       NEW_LINE        
       RFALSE          
L0009: JE              L03,#bd [FALSE] L0011
       JE              G00,#0f [FALSE] L0010
       JE              L03,G6a [FALSE] L0010
       CALL            R0347 (G6a) -> -(SP)
       RFALSE          
L0010: CALL            R0347 (#00,S013) -> -(SP)
       RFALSE          
L0011: JE              Gaf,#d3 [FALSE] L0012
       PRINT_PADDR     G90
       JUMP            L0013
L0012: PRINT           "It doesn't look like"
       CALL            R0302 (Gaf,#01) -> -(SP)
       PRINT           " is holding"
L0013: CALL            R0302 (L03,#01) -> -(SP)
       STORE           Gbd,L03
       PRINT_PADDR     G5d
       RFALSE          
L0014: JZ              L04 [FALSE] L0001
       JE              Gaf,#d3 [FALSE] L0001
       PRINT           "[Taking"
       CALL            R0302 (L03,#01) -> -(SP)
       PRINT           " first]"
       NEW_LINE        
       JUMP            L0001

Routine R0062, 3 locals (0000, 0000, 0000)

       LOADW           G86,G16 -> -(SP)
       JG              (SP)+,#01 [FALSE] L0001
       LOADB           G76,#05 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0001
       STORE           L00,#01
       JUMP            L0002
L0001: LOADW           G38,G16 -> -(SP)
       JG              (SP)+,#01 [FALSE] L0002
       LOADB           G76,#06 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0002
       STORE           L00,#02
L0002: JZ              L00 [TRUE] RTRUE
       PRINT           "[You can't use multiple "
       JE              L00,#02 [FALSE] L0003
       PRINT           "in"
L0003: PRINT           "direct objects with ""
       LOADW           Ga1,#01 -> L01
       JZ              L01 [FALSE] L0004
       PRINT           "tell"
       JUMP            L0007
L0004: JZ              Gae [FALSE] L0005
       JZ              G6e [TRUE] L0006
L0005: LOADW           L01,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0007
L0006: LOADB           L01,#02 -> L02
       LOADB           L01,#03 -> -(SP)
       CALL            R0028 (L02,(SP)+) -> -(SP)
L0007: PRINT           "."]"
       NEW_LINE        
       RFALSE          

Routine R0063, 4 locals (0000, 0000, ffff, 0001)

       JZ              L01 [TRUE] RFALSE
       JL              L02,#00 [TRUE] L0001
       STORE           L03,#00
       JUMP            L0002
L0001: LOADW           L01,#00 -> L02
L0002: LOADW           L01,L03 -> -(SP)
       JE              L00,(SP)+ [TRUE] RTRUE
       INC_CHK         L03,L02 [FALSE] L0002
       RFALSE          

Routine R0064, 4 locals (0000, 0000, 0000, 0000)

L0001: LOADB           L01,L03 -> -(SP)
       JE              L00,(SP)+ [TRUE] RTRUE
       INC_CHK         L03,L02 [FALSE] L0001
       RFALSE          

Routine R0065, 4 locals (0000, 0001, 0000, 0000)

       STORE           G6f,#18
       STORE           L02,G00
       STORE           G00,L00
       JZ              L01 [TRUE] L0001
       TEST_ATTR       L00,#18 [FALSE] L0001
       STORE           L03,#01
       JUMP            L0003
L0001: STOREW          G94,G16,#00
       STORE           Ga5,G94
       STORE           G14,#ffff
       JE              L02,L00 [FALSE] L0002
       CALL            R0057 (Gaf,#01,#01) -> -(SP)
       JE              Gaf,G2f [TRUE] L0002
       JIN             G2f,L00 [FALSE] L0002
       CALL            R0057 (G2f,#01,#01) -> -(SP)
L0002: CALL            R0057 (L00,#01,#01) -> -(SP)
       LOADW           Ga5,G16 -> -(SP)
       JG              (SP)+,#00 [FALSE] L0003
       STORE           L03,#01
L0003: STORE           G00,L02
       STORE           G6f,#00
       RET             L03

Routine R0066, 1 local (0000)

       JZ              G6e [FALSE] L0001
       LOADW           Ga1,#06 -> L00
       LOADW           L00,#00 -> -(SP)
       JE              (SP)+,"it" [FALSE] L0002
L0001: PRINT           " "
       CALL            R0004 (G6a) -> -(SP)
       RET_POPPED      
L0002: LOADW           Ga1,#07 -> -(SP)
       CALL            R0036 (L00,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0067, 1 local (0000)

       JZ              G6e [FALSE] L0001
       LOADW           Ga1,#08 -> L00
       LOADW           L00,#00 -> -(SP)
       JE              (SP)+,"it" [FALSE] L0002
L0001: PRINT           " "
       CALL            R0004 (G6a) -> -(SP)
       RET_POPPED      
L0002: LOADW           Ga1,#09 -> -(SP)
       CALL            R0036 (L00,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0068, 3 locals (0000, 0000, 0000)

       TEST_ATTR       L00,#13 [TRUE] RFALSE
       JZ              G23 [TRUE] L0001
       GET_PROP_ADDR   L00,#13 -> L01
       GET_PROP_LEN    L01 -> -(SP)
       DIV             (SP)+,#02 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0063 (G23,L01,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0001: JZ              G54 [TRUE] L0002
       GET_PROP_ADDR   L00,#0a -> L01
       JZ              L01 [TRUE] RFALSE
       GET_PROP_LEN    L01 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0064 (G54,L01,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0002: JZ              G6f [TRUE] RTRUE
       TEST_ATTR       L00,G6f [TRUE] RTRUE
       RFALSE          

Routine R0069, 0 locals ()
    Action routine for:
        "#comm"

       INPUT_STREAM    #01
       RTRUE           

Routine R0070, 0 locals ()
    Action routine for:
        "#rand OBJ"

       JE              G6a,#c1 [TRUE] L0001
       PRINT_RET       "Illegal call to #RANDOM."
L0001: SUB             #00,Gac -> -(SP)
       RANDOM          (SP)+ -> -(SP)
       RTRUE           

Routine R0071, 0 locals ()
    Action routine for:
        "#reco"

       OUTPUT_STREAM   RECORD_ENABLE
       RTRUE           

Routine R0072, 0 locals ()
    Action routine for:
        "#unre"

       OUTPUT_STREAM   #fffc
       RTRUE           

Routine R0073, 0 locals ()
    Action routine for:
        "verbos"

       STORE           G3b,#02
       PRINT           "Maximum verbosity."
       NEW_LINE        
       NEW_LINE        
       CALL            R0170 -> -(SP)
       RET_POPPED      

Routine R0074, 0 locals ()
    Action routine for:
        "save"

       SAVE            [FALSE] L0001
       PRINT_RET       "Ok."
L0001: PRINT_RET       "Failed."

Routine R0075, 0 locals ()
    Action routine for:
        "restor"

       RESTORE         [FALSE] L0001
       PRINT           "Ok."
       NEW_LINE        
       NEW_LINE        
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0001: PRINT_RET       "Failed."

Routine R0076, 1 local (0001)
    Action routine for:
        "score"

       PRINT           "Your score is "
       PRINT_NUM       G01
       PRINT           " of a possible 200, in "
       PRINT_NUM       G02
       PRINT           " turn"
       JE              G02,#01 [TRUE] L0001
       PRINT           "s"
L0001: PRINT_PADDR     G5d
       RET             #02

Routine R0077, 0 locals ()
    Action routine for:
        "script"

       LOADW           #00,#08 -> -(SP)
       OR              (SP)+,#01 -> -(SP)
       STOREW          #00,#08,(SP)+
       CALL            R0079 (S014) -> -(SP)
       CALL            R0090 -> -(SP)
       RET_POPPED      

Routine R0078, 0 locals ()
    Action routine for:
        "unscri"

       CALL            R0079 (S015) -> -(SP)
       CALL            R0090 -> -(SP)
       LOADW           #00,#08 -> -(SP)
       AND             (SP)+,#fffe -> -(SP)
       STOREW          #00,#08,(SP)+
       RTRUE           

Routine R0079, 1 local (0000)

       PRINT           "Here "
       PRINT_PADDR     L00
       PRINT_RET       " a transcript with Ballyhoo."

Routine R0080, 0 locals ()
    Action routine for:
        "brief"

       STORE           G3b,#01
       PRINT_RET       "Brief descriptions."

Routine R0081, 0 locals ()
    Action routine for:
        "super"

       STORE           G3b,#00
       PRINT_RET       "Super-brief descriptions."

Routine R0082, 0 locals ()
    Action routine for:
        "diagno"

       JZ              G8c [FALSE] L0001
       JG              Gb4,#07 [FALSE] L0001
       STORE           Gbc,#09
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "Are you really so heartless as to think of your own
well-being at a time like this?"
L0001: PRINT           "You're "
       TEST_ATTR       "two-dollar-and-25-cent frozen banana",#0c [FALSE] L0002
       PRINT           "still "
L0002: PRINT_RET       "famished."

Routine R0083, 0 locals ()
    Action routine for:
        "i"
        "invent"

       PRINT           "You have"
       GET_CHILD       "it" -> -(SP) [TRUE] L0003
       PRINT           " "
       JZ              G8f [FALSE] L0001
       PRINT           "naught"
       JUMP            L0002
L0001: CALL            R0084 (G8f) -> -(SP)
       PRINT           " to your name"
L0002: PRINT_PADDR     G5d
       RTRUE           
L0003: CALL            R0281 (#d3) -> -(SP)
       RTRUE           

Routine R0084, 1 local (0000)

       PRINT           "$"
       DIV             L00,#64 -> -(SP)
       PRINT_NUM       (SP)+
       PRINT           "."
       MOD             L00,#64 -> L00
       JZ              L00 [FALSE] L0001
       PRINT           "00"
       RTRUE           
L0001: JL              L00,#0a [FALSE] L0002
       PRINT           "0"
       PRINT_NUM       L00
       RTRUE           
L0002: PRINT_NUM       L00
       RTRUE           

Routine R0085, 0 locals ()
    Action routine for:
        "q"

       CALL            R0076 -> -(SP)
       PRINT           "Do you wish to leave the game? (Y is affirmative): "
       CALL            R0087 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       QUIT            
       RTRUE           
L0001: PRINT_RET       "Ok."

Routine R0086, 0 locals ()
    Action routine for:
        "restar"

       CALL            R0076 (#01) -> -(SP)
       PRINT           "Do you wish to restart? (Y is affirmative): "
       CALL            R0087 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "Restarting."
       NEW_LINE        
       RESTART         
       PRINT_RET       "Failed."

Routine R0087, 0 locals ()

       PRINT           ">"
       READ            G8e,G5b
       LOADW           G5b,#01 -> -(SP)
       JE              (SP)+,"yes","y" [FALSE] RFALSE
       RTRUE           

Routine R0088, 1 local (0000)

       JL              G74,#03 [FALSE] L0001
       NEW_LINE        
L0001: JZ              L00 [FALSE] L0002
       CALL            R0076 -> -(SP)
       NEW_LINE        
L0002: CALL            R0089 -> -(SP)
       READ            G8e,G5b
       LOADW           G5b,#01 -> -(SP)
       JE              (SP)+,"restar" [FALSE] L0003
       RESTART         
       PRINT           "Failed."
       NEW_LINE        
       CALL            R0088 (#01) -> -(SP)
       RET_POPPED      
L0003: LOADW           G5b,#01 -> -(SP)
       JE              (SP)+,"restor" [FALSE] L0005
       RESTORE         [FALSE] L0004
       PRINT_RET       "Ok."
L0004: PRINT           "Failed."
       NEW_LINE        
       CALL            R0088 (#01) -> -(SP)
       RET_POPPED      
L0005: LOADW           G5b,#01 -> -(SP)
       JE              (SP)+,"quit","q" [FALSE] L0006
       QUIT            
       RTRUE           
L0006: CALL            R0088 (#01) -> -(SP)
       RET_POPPED      

Routine R0089, 0 locals ()

       PRINT           "Would you like to start over, restore a saved position,
or end this session of the game? (Type RESTART, RESTORE, or QUIT):

>"
       RTRUE           

Routine R0090, 2 locals (0011, 0000)
    Action routine for:
        "versio"

       LOADW           #00,#01 -> -(SP)
       AND             (SP)+,#07ff -> L01
       PRINT           "BALLYHOO
Infocom interactive fiction
Copyright (c) 1986 by Infocom, Inc. All rights reserved.
Release "
       PRINT_NUM       L01
       PRINT           " / Serial number "
L0001: INC_CHK         L00,#17 [FALSE] L0002
       JUMP            L0003
L0002: LOADB           #00,L00 -> -(SP)
       PRINT_CHAR      (SP)+
       JUMP            L0001
L0003: NEW_LINE        
       RTRUE           

Routine R0091, 0 locals ()
    Action routine for:
        "$ve OBJ"
        "$ve"

       JE              G6a,#c1 [FALSE] L0001
       JE              Gac,#03c3 [FALSE] L0001
       PRINT_NUM       #000a
       NEW_LINE        
       RTRUE           
L0001: PRINT           "Verifying..."
       NEW_LINE        
       VERIFY          [FALSE] L0002
       PRINT_RET       "Good."
L0002: NEW_LINE        
       PRINT_RET       "** Bad **"

Routine R0092, 0 locals ()
    Action routine for:
        "advanc OBJ"

       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0093, 0 locals ()
    Action routine for:
        "awake up OBJ"
        "awake OBJ"

       JE              G6a,#2b [FALSE] L0001
       CALL            R0011 (#a1,#1d) -> -(SP)
       RTRUE           
L0001: PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " isn't asleep."

Routine R0094, 0 locals ()
    Action routine for:
        "answer"

       JZ              Gbc [TRUE] L0001
       LOADW           G5b,G34 -> -(SP)
       JE              (SP)+,"yes" [FALSE] L0001
       CALL            R0273 -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JZ              Gbc [TRUE] L0002
       LOADW           G5b,G34 -> -(SP)
       JE              (SP)+,"no" [FALSE] L0002
       CALL            R0182 -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: PRINT           "Nobody is awaiting your answer."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0095, 0 locals ()
    Action routine for:
        "applau OBJ"

       TEST_ATTR       G6a,#08 [FALSE] L0001
       JE              G6a,#a2,#2a,#cd [TRUE] L0001
       JE              G6a,#99,#42,#a8 [TRUE] L0001
       JE              G6a,#4e [TRUE] L0001
       PRINT           "Gracefully,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " takes a bow."
L0001: JE              G6a,#56 [FALSE] L0002
       JE              G00,#b6 [FALSE] L0002
       PRINT_RET       "You're drowned out."
L0002: PRINT           "Not surprisingly,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " doesn't react."

Routine R0096, 0 locals ()
    Action routine for:
        "arrest OBJ"

       PRINT_RET       "Fine. Since you wield zero police power, the only thing
that's getting arrested around here is your logical faculty."

Routine R0097, 0 locals ()
    Action routine for:
        "ask OBJ on OBJ"
        "ask OBJ about OBJ"

       JE              G6a,#1d [FALSE] L0001
       CALL            R0011 (#0e,#1d) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6a,#1f [FALSE] L0004
       PRINT           "A long silence tells you that"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " isn't interested in talking about"
       JIN             Gc6,#2b [FALSE] L0002
       PRINT           " that"
       JUMP            L0003
L0002: CALL            R0302 (Gc6,#01) -> -(SP)
L0003: PRINT_PADDR     G5d
       RTRUE           
L0004: CALL            R0011 (#0e,G6a) -> -(SP)
       RTRUE           

Routine R0098, 0 locals ()
    Action routine for:
        "ask OBJ for OBJ"

       PRINT           "Unsurprisingly,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " doesn't oblige."

Routine R0099, 0 locals ()
    Action routine for:
        "balanc OBJ with OBJ"
        "balanc OBJ"
        "balanc"

       PRINT_RET       "Your knees wobble a bit."

Routine R0100, 0 locals ()
    Action routine for:
        "bet OBJ"

       PRINT_RET       "You can't bet here."

Routine R0101, 0 locals ()
    Action routine for:
        "bite OBJ"

       CALL            R0301 (S016) -> -(SP)
       RET_POPPED      

Routine R0102, 0 locals ()
    Pre-action routine for:
        "carry in OBJ"
        "climb in OBJ"
        "board OBJ"
        "cut in OBJ"

       GET_PARENT      "it" -> -(SP)
       JE              G6a,(SP)+ [FALSE] L0001
       JZ              G66 [FALSE] L0001
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0001: CALL            R0354 ("cut") -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           G66,#01
       RFALSE          
L0002: JE              G8f,#0501 [FALSE] L0003
       JE              G6a,#50,#11 [FALSE] L0003
       PRINT_RET       "You've lost all patience for waiting in line."
L0003: CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G6a,#d0 [TRUE] RFALSE
       PRINT_RET       "You're holding it!"

Routine R0103, 1 local (0000)
    Action routine for:
        "carry in OBJ"
        "climb in OBJ"
        "board OBJ"
        "cut in OBJ"

       GET_PARENT      "it" -> L00
       JE              G6a,#50,#11 [FALSE] L0001
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#11,#50 [FALSE] L0001
       CALL            R0351 (L00) -> -(SP)
       RTRUE           
L0001: JE              G6a,#11 [FALSE] L0002
       JE              G2d,#01 [TRUE] L0002
       TEST_ATTR       "long line",#0c [TRUE] L0002
       INSERT_OBJ      "it","long line"
       CALL            R0458 -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6a,#1e [FALSE] L0005
       PRINT           "You are now "
       JE              G6a,#50,#11 [FALSE] L0003
       PRINT_PADDR     Gd5
       JUMP            L0004
L0003: PRINT           "on"
L0004: CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       INSERT_OBJ      Gaf,G6a
       GET_PROP        G6a,#09 -> -(SP)
       CALL            (SP)+ (#02) -> -(SP)
       RTRUE           
L0005: JZ              G66 [TRUE] L0006
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0006: PRINT           "You can't get onto"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       "!"

Routine R0104, 0 locals ()
    Action routine for:
        "bribe OBJ with OBJ"
        "bribe OBJ"

       JZ              Gc6 [FALSE] L0001
       CALL            R0011 (#47,#98,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#47,Gc6,G6a) -> -(SP)
       RTRUE           

Routine R0105, 0 locals ()
    Pre-action routine for:
        "buy OBJ from OBJ"
        "buy OBJ"

       JZ              Gc6 [TRUE] RFALSE
       JE              Gc6,#4e,#e0,#b5 [TRUE] RFALSE
       PRINT           "But"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " isn't selling."

Routine R0106, 0 locals ()
    Action routine for:
        "buy OBJ from OBJ"
        "buy OBJ"

       PRINT           "Sorry,"
       JE              G6a,#7a [FALSE] L0001
       PRINT           " a ticket"
       JUMP            L0002
L0001: CALL            R0302 (G6a,#01) -> -(SP)
L0002: PRINT_RET       " isn't for sale."

Routine R0107, 0 locals ()
    Action routine for:
        "call to OBJ"
        "call out OBJ"
        "call OBJ"

       JE              G00,#3b [FALSE] L0001
       CALL            R0011 (#6e,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0290 (G6a) -> -(SP)
       JE              (SP)+,G00 [TRUE] L0002
       JE              G6a,#1d [TRUE] L0002
       CALL            R0294 (G6a,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0347 (G6a) -> -(SP)
       RET_POPPED      
L0002: CALL            R0011 (#0e,G6a) -> -(SP)
       RTRUE           

Routine R0108, 0 locals ()
    Action routine for:
        "captur OBJ with OBJ"
        "captur OBJ in OBJ"

       CALL            R0011 (#7b,G6a,Gc6) -> -(SP)
       RTRUE           

Routine R0109, 0 locals ()
    Action routine for:
        "gaze OBJ"

       JE              G6a,#29 [FALSE] L0001
       CALL            R0011 (#5d) -> -(SP)
       RTRUE           
L0001: PRINT_RET       "Use prepositions to indicate precisely what you want to
do: LOOK AT the object, LOOK INSIDE it, LOOK UNDER it, etc."

Routine R0110, 0 locals ()
    Action routine for:
        "cheat at OBJ"
        "cheat OBJ"
        "cheat"

       JE              G00,#e8 [FALSE] L0003
       JZ              G6a [TRUE] L0001
       JE              G6a,#08,#5f,#74 [FALSE] L0003
L0001: JIN             G00,"Comrade Thumb" [FALSE] L0002
       CALL            R0011 (#1a,#98) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "You'll need help."
L0003: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0111, 1 local (0000)
    Action routine for:
        "clap OBJ"
        "clap"
        "applau"

       JZ              G6a [TRUE] L0001
       CALL            R0011 (#7a,G6a) -> -(SP)
       RTRUE           
L0001: JZ              G93 [TRUE] L0004
       JIN             "roustabout",G00 [FALSE] L0004
       PRINT           "The "
       CALL            R0004 (#62) -> -(SP)
       TEST_ATTR       "roustabout",#0c [FALSE] L0002
       CLEAR_ATTR      "roustabout",#0c
       PRINT           " snaps out of his trance with a shake of his head."
       JUMP            L0003
L0002: SET_ATTR        "roustabout",#0c
       PRINT           "'s eyes widen and become vacant as some invisible force
comes over him. He straightens up out of his usual slouch and appears perfectly
rigid."
L0003: NEW_LINE        
       RTRUE           
L0004: JE              G00,#04 [FALSE] L0005
       JIN             "Comrade Thumb",G00 [FALSE] L0005
       STORE           G6a,#db
       CALL            R0011 (#13,G6a) -> -(SP)
       RTRUE           
L0005: JE              G00,#b6 [FALSE] L0006
       CALL            R0011 (#13,#56) -> -(SP)
       RTRUE           
L0006: CALL            R0295 (G00,#1f) -> G6a
       JZ              G6a [TRUE] L0007
       CALL            R0011 (#13,G6a) -> -(SP)
       RTRUE           
L0007: JE              G6a,#cd [FALSE] L0008
       CALL            R0011 (#0e,#cd) -> -(SP)
       RTRUE           
L0008: PRINT_RET       "Clap!"

Routine R0112, 0 locals ()
    Action routine for:
        "clean up OBJ"
        "clean OBJ"

       PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " isn't all that dirty."

Routine R0113, 0 locals ()
    Action routine for:
        "procee down OBJ"
        "climb down OBJ"
        "descen OBJ"
        "go down OBJ"

       JE              G6a,#2b [FALSE] L0001
       CALL            R0297 (#16) -> -(SP)
       RET_POPPED      
L0001: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0114, 0 locals ()
    Action routine for:
        "climb OBJ"

       JE              G6a,#29 [FALSE] L0001
       CALL            R0352 -> -(SP)
       RTRUE           
L0001: JE              G6a,#2b [FALSE] L0003
       JE              G00,#3f,#38 [FALSE] L0002
       CALL            R0322 -> -(SP)
       RET_POPPED      
L0002: CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0003: JE              G6a,#ab,#6e,#a6 [FALSE] L0004
       CALL            R0011 (#25,G6a) -> -(SP)
       RTRUE           
L0004: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0115, 0 locals ()
    Action routine for:
        "carry on OBJ"
        "climb on OBJ"
        "rest in OBJ"
        "rest on OBJ"

       TEST_ATTR       G6a,#1e [TRUE] L0001
       JE              G6a,#50,#11 [FALSE] L0002
       JE              G7b,"get" [FALSE] L0002
L0001: CALL            R0011 (#1c,G6a) -> -(SP)
       RTRUE           
L0002: JE              G6a,#d9 [FALSE] L0003
       CALL            R0011 (#87) -> -(SP)
       RTRUE           
L0003: JE              G6a,#b1 [FALSE] L0004
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0004: PRINT           "You can't climb onto"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0116, 0 locals ()
    Action routine for:
        "climb over OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0117, 0 locals ()
    Action routine for:
        "procee up OBJ"
        "climb up OBJ"
        "go up OBJ"

       JE              G6a,#2b [FALSE] L0001
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0001: CALL            R0155 -> -(SP)
       RET_POPPED      

Routine R0118, 0 locals ()
    Action routine for:
        "close OBJ"

       TEST_ATTR       G6a,#11 [FALSE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6a,#1f [FALSE] L0002
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       G6a,#1b [TRUE] L0003
       TEST_ATTR       G6a,#17 [FALSE] L0005
L0003: TEST_ATTR       G6a,#0f [FALSE] L0004
       PRINT           "Okay,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " is now closed."
       NEW_LINE        
       CLEAR_ATTR      G6a,#0f
       RTRUE           
L0004: PRINT_PADDR     G61
       NEW_LINE        
       RTRUE           
L0005: CALL            R0349 -> -(SP)
       RET_POPPED      

Routine R0119, 0 locals ()
    Pre-action routine for:
        "compar OBJ with OBJ"
        "compar OBJ to OBJ"
        "compar OBJ"

       JZ              Gc6 [FALSE] L0001
       LOADW           G86,#00 -> -(SP)
       JE              #01,(SP)+ [TRUE] L0002
L0001: LOADW           G86,#00 -> -(SP)
       JE              #02,(SP)+ [FALSE] RFALSE
L0002: PRINT           "Try typing "COMPARE IT TO (something).""
       NEW_LINE        
       RET             #02

Routine R0120, 0 locals ()
    Action routine for:
        "compar OBJ with OBJ"
        "compar OBJ to OBJ"
        "compar OBJ"

       JE              G6a,Gc6 [FALSE] L0001
       PRINT_RET       "The self-same thing."
L0001: PRINT           "Like Rimshaw,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " is incomparable."

Routine R0121, 0 locals ()
    Action routine for:
        "count OBJ"

       CALL            R0003 (Gcc) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0122, 0 locals ()
    Action routine for:
        "procee under OBJ"
        "carry under OBJ"
        "climb under OBJ"
        "side- OBJ"
        "sidewa OBJ"
        "go under OBJ"

       JE              G6a,#29 [FALSE] L0001
       CALL            R0352 -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6a,#16 [TRUE] L0002
       CALL            R0353 -> -(SP)
       RET_POPPED      
L0002: JE              G6a,#60 [FALSE] L0003
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0003: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0123, 0 locals ()
    Action routine for:
        "cut throug OBJ with OBJ"
        "cut OBJ with OBJ"
        "cut OBJ"

       JZ              Gc6 [FALSE] L0001
       CALL            R0155 -> -(SP)
       RET_POPPED      
L0001: PRINT           "It's doubtful the "cutting edge" of"
       CALL            R0302 (Gc6) -> -(SP)
       PRINT_RET       " is adequate."

Routine R0124, 0 locals ()
    Action routine for:
        "dig throug OBJ"
        "dig with OBJ"
        "dig in OBJ"

       CALL            R0003 (Gd7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0125, 0 locals ()
    Action routine for:
        "procee out OBJ"
        "carry out OBJ"
        "climb off OBJ"
        "climb out OBJ"
        "debark OBJ"
        "go out OBJ"

       TEST_ATTR       G6a,#16 [FALSE] L0001
       CALL            R0290 (G6a) -> -(SP)
       JE              (SP)+,G00 [FALSE] L0001
       JIN             G6a,G00 [TRUE] L0001
       JIN             G6a,"it" [TRUE] L0001
       CALL            R0011 (#75,G6a) -> -(SP)
       RTRUE           
L0001: GET_PARENT      Gaf -> -(SP)
       JE              (SP)+,G6a [TRUE] L0002
       PRINT_PADDR     Ga0
       NEW_LINE        
       RET             #02
L0002: JE              G6a,#50,#11 [FALSE] L0005
       JE              G2d,#00,#01 [TRUE] L0005
       JE              G2d,#04,#05 [TRUE] L0003
       JE              G2d,#02,#03 [FALSE] L0005
L0003: JE              G2d,#02,#03 [FALSE] L0004
       PRINT_RET       "You hesitate momentarily, as your line has appears to
be about to move."
L0004: STORE           G34,#00
       STORE           G1f,#01
       STORE           Gbc,#01
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "You hear an inner voice whisper, "Do I really want to
forfeit my position in the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       "?" To which you answer:"
L0005: PRINT           "You get "
       JE              G6a,#60,#14 [FALSE] L0006
       PRINT           "off"
       JUMP            L0007
L0006: PRINT           "out"
L0007: PRINT           " of the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           "."
       NEW_LINE        
       INSERT_OBJ      Gaf,G00
       RTRUE           

Routine R0126, 0 locals ()
    Action routine for:
        "drink OBJ"

       PRINT_RET       "You can't drink that!"

Routine R0127, 0 locals ()
    Action routine for:
        "drink from OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0128, 0 locals ()
    Action routine for:
        "drive OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0129, 0 locals ()
    Pre-action routine for:
        "hang down OBJ"
        "drop OBJ"

       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0130, 0 locals ()
    Action routine for:
        "hang down OBJ"
        "drop OBJ"

       INSERT_OBJ      G6a,G00
       JE              G6a,#8c [FALSE] L0001
       SET_ATTR        "fat lady's hand",#06
L0001: PRINT_RET       "Dropped."

Routine R0131, 0 locals ()
    Action routine for:
        "devour OBJ"

       PRINT           "Stuffing your face with"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " would do little to help at this point."

Routine R0132, 0 locals ()
    Action routine for:
        "eject OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0133, 2 locals (0000, 0000)
    Action routine for:
        "empty out OBJ"
        "empty OBJ"

       TEST_ATTR       G6a,#17 [FALSE] L0007
       TEST_ATTR       G6a,#0f [FALSE] L0006
       GET_CHILD       G6a -> L00 [TRUE] L0001
L0001: JZ              L00 [TRUE] L0005
L0002: JZ              L00 [TRUE] RTRUE
       GET_SIBLING     L00 -> L01 [TRUE] L0003
L0003: TEST_ATTR       L00,#01 [TRUE] L0004
       PRINT           "The "
L0004: CALL            R0004 (L00) -> -(SP)
       PRINT           ": "
       CALL            R0011 (#75,L00,G6a) -> -(SP)
       STORE           L00,L01
       JUMP            L0002
L0005: PRINT_RET       "It's already empty!"
L0006: PRINT_RET       "It's closed."
L0007: CALL            R0121 -> -(SP)
       RTRUE           

Routine R0134, 1 local (0000)
    Action routine for:
        "enter"

       CALL            R0295 (G00,#1e) -> L00
       JZ              L00 [TRUE] L0001
       JE              L00,#85 [TRUE] L0001
       CALL            R0011 (#1c,L00) -> -(SP)
       RTRUE           
L0001: CALL            R0297 (#15) -> -(SP)
       RET_POPPED      

Routine R0135, 0 locals ()
    Action routine for:
        "gaze to OBJ"
        "gaze over OBJ"
        "gaze at OBJ"
        "descri OBJ"

       TEST_ATTR       G6a,#1b [TRUE] L0001
       TEST_ATTR       G6a,#11 [FALSE] L0002
L0001: JE              G6a,#9a,#14 [TRUE] L0002
       CALL            R0173 -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       G6a,#17 [FALSE] L0004
       TEST_ATTR       G6a,#1f [TRUE] L0004
       JE              G6a,#9b,#88,#9a [TRUE] L0004
       JE              G6a,#14,#30 [TRUE] L0004
       TEST_ATTR       G6a,#0f [FALSE] L0003
       CALL            R0173 -> -(SP)
       RET_POPPED      
L0003: PRINT_RET       "It's closed."
L0004: TEST_ATTR       G6a,#03 [FALSE] L0005
       PRINT_RET       "It's invisible, naturally."
L0005: JE              G6a,#b3,#33 [FALSE] L0006
       PRINT_RET       "That would involve quite a contortion."
L0006: PRINT           "You see"
       JE              G6a,#4a,#14 [FALSE] L0007
       TEST_ATTR       G6a,#0c [FALSE] L0007
       PRINT           ", indeed,"
L0007: PRINT           " nothing "
       CALL            R0003 (G03) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " about"
       CALL            R0354 ("tablec") -> -(SP)
       JZ              (SP)+ [FALSE] L0008
       CALL            R0354 ("cloth") -> -(SP)
       JZ              (SP)+ [TRUE] L0009
L0008: PRINT           " the tablecloth"
       JUMP            L0010
L0009: CALL            R0302 (G6a,#01) -> -(SP)
L0010: JE              G6a,#02 [FALSE] L0011
       PRINT           " (contrary to his billing)"
       JUMP            L0012
L0011: JE              G6a,#db [FALSE] L0012
       PRINT           " (except that he's about two feet high)"
L0012: PRINT_RET       "."

Routine R0136, 0 locals ()
    Action routine for:
        "gaze at OBJ throug OBJ"
        "descri OBJ throug OBJ"

       PRINT_RET       "This reveals nothing new."

Routine R0137, 0 locals ()
    Action routine for:
        "depart OBJ"
        "depart"

       JZ              G6a [TRUE] L0001
       TEST_ATTR       G6a,#1e [FALSE] L0001
       CALL            R0011 (#28,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0297 (#14) -> -(SP)
       RET_POPPED      

Routine R0138, 1 local (0000)
    Action routine for:
        "feed OBJ"

       JE              G6a,#c4 [FALSE] L0001
       CALL            R0292 (#27) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           L00,#27
       JUMP            L0005
L0001: CALL            R0292 (#66) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           L00,#66
       JUMP            L0005
L0002: CALL            R0292 (#a3) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       STORE           L00,#a3
       JUMP            L0005
L0003: CALL            R0292 (#d1) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       STORE           L00,#d1
       JUMP            L0005
L0004: CALL            R0292 (#27) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           L00,#27
L0005: JZ              L00 [TRUE] L0006
       PRINT           "(the "
       CALL            R0004 (L00) -> -(SP)
       PRINT           ")"
       NEW_LINE        
       CALL            R0011 (#47,L00,G6a) -> -(SP)
       RTRUE           
L0006: PRINT           "You have nothing to feed"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " with."

Routine R0139, 0 locals ()
    Action routine for:
        "fill OBJ"
        "fill OBJ with OBJ"

       JZ              Gc6 [FALSE] L0003
       JE              G00,#39 [FALSE] L0001
       CALL            R0011 (#49,G6a,#0a) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6a,#17 [FALSE] L0002
       GET_PROP        G6a,#0b -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_RET       "There's nothing to fill it with."
L0002: CALL            R0121 -> -(SP)
       RET_POPPED      
L0003: JE              Gc6,#0a,#bb [FALSE] L0008
       JIN             "water",G6a [FALSE] L0004
       PRINT_RET       "It's already full."
L0004: JE              G00,#39 [TRUE] L0005
       CALL            R0347 (#bb) -> -(SP)
       RET_POPPED      
L0005: JE              G6a,#41 [TRUE] L0006
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0006: GET_CHILD       "bucket" -> -(SP) [FALSE] L0007
       PRINT           "That would get"
       CALL            R0280 (#41,#01) -> -(SP)
       PRINT_RET       " all wet."
L0007: INSERT_OBJ      "water","bucket"
       PRINT           "A good measure of "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " gurgles into the "
       CALL            R0004 (#41) -> -(SP)
       PRINT_RET       "."
L0008: JE              Gc6,#bb [FALSE] L0009
       CALL            R0011 (#72,#bb,G6a) -> -(SP)
       STORE           Gbd,G6a
       RTRUE           
L0009: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0140, 2 locals (0000, 0000)
    Action routine for:
        "find OBJ"
        "frisk for OBJ"
        "gaze for OBJ"
        "descri for OBJ"

       GET_PARENT      G6a -> L01
       JE              G6a,#1d [FALSE] L0001
       PRINT           "You're in"
       CALL            R0302 (G00,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0001: JIN             G6a,"it" [FALSE] L0002
       PRINT_RET       "You have it!"
L0002: JE              G6a,#0e [FALSE] L0003
       TEST_ATTR       "skeleton key",#10 [FALSE] L0003
       CALL            R0141 (L00) -> -(SP)
       RET_POPPED      
L0003: JIN             G6a,G00 [FALSE] L0004
       PRINT_RET       "Right in front of you."
L0004: JIN             G6a,#4c [TRUE] L0005
       CALL            R0294 (G6a,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
L0005: PRINT_RET       "You figure it out!"
L0006: TEST_ATTR       L01,#1f [FALSE] L0007
       CALL            R0289 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       PRINT           "As far as you can tell,"
       CALL            R0302 (L01,#01) -> -(SP)
       PRINT_RET       " has it."
L0007: TEST_ATTR       L01,#17 [FALSE] L0008
       CALL            R0289 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       JIN             L01,#4c [TRUE] L0008
       PRINT           "It's in"
       CALL            R0302 (L01,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0008: CALL            R0141 (L00) -> -(SP)
       RET_POPPED      

Routine R0141, 1 local (0000)

       JZ              L00 [TRUE] L0001
       PRINT_RET       "Beats me."
L0001: PRINT_RET       "You'll have to do that yourself."

Routine R0142, 0 locals ()

       CALL            R0279 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G3b,#01,#02 [FALSE] RFALSE
       CALL            R0281 -> -(SP)
       RET_POPPED      

Routine R0143, 0 locals ()
    Action routine for:
        "chase OBJ"

       JIN             G6a,G00 [TRUE] L0001
       JE              G6a,#a8 [FALSE] L0002
       JE              G00,#b6 [FALSE] L0002
L0001: PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " is right here!"
L0002: TEST_ATTR       G6a,#1f [TRUE] L0003
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0003: JE              G6a,#62 [FALSE] L0004
       JZ              G93 [FALSE] L0004
       JE              G00,#51 [FALSE] L0004
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0004: CALL            R0144 -> -(SP)
       CALL            R0144 -> -(SP)
       NEW_LINE        
       RTRUE           

Routine R0144, 0 locals ()

       PRINT           "Which way did "
       TEST_ATTR       G6a,#05 [FALSE] L0001
       PRINT           "s"
L0001: PRINT           "he go? "
       RTRUE           

Routine R0145, 0 locals ()

       JE              G4c,#04 [FALSE] L0001
       JE              G00,#c9 [FALSE] L0001
       PRINT           "The "
       CALL            R0004 (#52) -> -(SP)
       PRINT           "s part slightly and are quickly drawn back."
       NEW_LINE        
L0001: STORE           G4c,#00
       RFALSE          

Routine R0146, 0 locals ()
    Pre-action routine for:
        "pass OBJ throug OBJ"
        "pass OBJ to OBJ"
        "feed OBJ to OBJ"
        "donate OBJ to OBJ"

       JE              G7a,#47 [FALSE] L0002
       JE              G6a,#0b [FALSE] L0002
       JE              Gc6,#02 [FALSE] L0001
       STORE           Gaf,#02
       CALL            R0011 (#7d,#0b) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           
L0001: CALL            R0011 (#84,Gc6) -> -(SP)
       RTRUE           
L0002: CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0147, 0 locals ()
    Action routine for:
        "carry down OBJ"

       JE              G6a,#2b [FALSE] L0001
       CALL            R0297 (#16) -> -(SP)
       RET_POPPED      
L0001: CALL            R0011 (#90,G6a) -> -(SP)
       RTRUE           

Routine R0148, 0 locals ()
    Action routine for:
        "pass OBJ throug OBJ"
        "pass OBJ to OBJ"
        "feed OBJ to OBJ"
        "donate OBJ to OBJ"

       TEST_ATTR       Gc6,#1f [FALSE] L0003
       JE              Gc6,#42 [TRUE] L0003
       JE              Gc6,#99 [FALSE] L0001
       JZ              Gc4 [TRUE] L0001
       PRINT           "Haplessly,"
       JUMP            L0002
L0001: PRINT           "Briskly,"
L0002: CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " refuses your offer."
L0003: PRINT           "You can't give"
       CALL            R0302 (G6a) -> -(SP)
       PRINT           " to"
       CALL            R0302 (Gc6) -> -(SP)
       PRINT_RET       "!"

Routine R0149, 0 locals ()
    Action routine for:
        "hang up OBJ"

       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0150, 0 locals ()
    Action routine for:
        "hello OBJ"
        "hello"

       JZ              G6a [TRUE] L0001
       TEST_ATTR       G6a,#1f [FALSE] L0001
       PRINT           ""Hello.""
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JZ              G6a [TRUE] L0002
       CALL            R0011 (#0e,G6a) -> -(SP)
       RTRUE           
L0002: CALL            R0011 (#0e,#1d) -> -(SP)
       RTRUE           

Routine R0151, 0 locals ()
    Action routine for:
        "help"

       PRINT_RET       "If you're really stuck, maps and hint booklets are
available from your dealer, or via mail order with the form that came in your
package."

Routine R0152, 0 locals ()
    Action routine for:
        "crouch under OBJ"
        "crouch"

       JZ              G6a [FALSE] L0001
       JIN             "figure of President Taft",G00 [FALSE] L0001
       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0011 (#50,#42) -> -(SP)
       RTRUE           
L0001: JE              G00,#01 [FALSE] L0002
       JE              G6a,#42 [FALSE] L0002
       PRINT           "There's no need to"
       JUMP            L0003
L0002: PRINT           "You can't"
L0003: PRINT           " hide "
       JZ              G6a [TRUE] L0004
       PRINT           "t"
L0004: PRINT_RET       "here."

Routine R0153, 0 locals ()
    Action routine for:
        "procee behind OBJ"
        "rise behind OBJ"
        "crouch behind OBJ"
        "go behind OBJ"

       JZ              G91 [TRUE] L0001
       PRINT_PADDR     G82
       NEW_LINE        
       RTRUE           
L0001: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0154, 0 locals ()
    Action routine for:
        "hypnot OBJ"

       CALL            R0001 (#e1bc) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       TEST_ATTR       "clown mask",#14 [FALSE] L0001
       CALL            R0011 (#0e,#02) -> -(SP)
       RTRUE           
L0001: STORE           Gaf,#02
       CALL            R0011 (#51,G6a) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           
L0002: JE              G6a,#1d [FALSE] L0003
       PRINT_PADDR     G0b
       NEW_LINE        
       RTRUE           
L0003: TEST_ATTR       G6a,#1f [FALSE] L0005
       PRINT_PADDR     G60
       CALL            R0302 (G6a,#01) -> -(SP)
       TEST_ATTR       G6a,#08 [TRUE] L0004
       PRINT           ", though not lacking in animal magnetism,"
L0004: PRINT_RET       " is not hypnotizable."
L0005: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0155, 0 locals ()
    Action routine for:
        "breath in OBJ from OBJ"
        "breath in OBJ"
        "breath OBJ"

       JE              G6a,#06 [FALSE] L0001
       PRINT_RET       "Deep-breathing -- good for the health."
L0001: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0156, 0 locals ()
    Action routine for:
        "kick OBJ"

       CALL            R0301 (S017) -> -(SP)
       RET_POPPED      

Routine R0157, 0 locals ()
    Action routine for:
        "knock down OBJ"
        "assaul OBJ with OBJ"
        "assaul OBJ"
        "break down OBJ"

       JE              G6a,#9a [FALSE] L0002
       TEST_ATTR       #9a,#0c [TRUE] L0002
       JZ              Gc6 [TRUE] L0001
       CALL            R0011 (#75,#9a) -> -(SP)
       RTRUE           
L0001: PRINT           ""SNAP!" The "
       CALL            R0004 (#9a) -> -(SP)
       PRINT_RET       " does a back flip."
L0002: TEST_ATTR       G6a,#1f [FALSE] L0003
       JE              G6a,#cd,#42,#db [TRUE] L0003
       PRINT_RET       "Thinking of your own safety, you refrain."
L0003: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0158, 0 locals ()
    Action routine for:
        "knock on OBJ"
        "knock at OBJ"

       TEST_ATTR       G6a,#1b [FALSE] L0002
       TEST_ATTR       G6a,#0f [FALSE] L0001
       CALL            R0011 (#6c,G6a) -> -(SP)
       RTRUE           
L0001: PRINT_RET       "Silence answers back."
L0002: CALL            R0301 (S018) -> -(SP)
       RET_POPPED      

Routine R0159, 0 locals ()
    Action routine for:
        "kiss OBJ"

       TEST_ATTR       G6a,#08 [FALSE] L0001
       JE              G6a,#42 [TRUE] L0001
       PRINT           "It would be totally out of character for"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " to be smooching with you right now."
L0001: TEST_ATTR       G6a,#1f [FALSE] L0002
       TEST_ATTR       G6a,#08 [TRUE] L0002
       PRINT_RET       "The ASPCA has taken people to court for lesser
offences!"
L0002: PRINT_RET       "Kissed."

Routine R0160, 0 locals ()
    Action routine for:
        "exting OBJ"
        "flick off OBJ"
        "close off OBJ"

       PRINT_RET       "You can't turn that off."

Routine R0161, 0 locals ()
    Action routine for:
        "light OBJ"
        "flick on OBJ"
        "activa OBJ"

       PRINT_RET       "You can't turn that on."

Routine R0162, 0 locals ()
    Action routine for:
        "bounce down OBJ"
        "bounce up OBJ"
        "bounce on OBJ"
        "bounce across OBJ"
        "bounce over OBJ"
        "bounce"

       JZ              G6a [TRUE] L0001
       JIN             G6a,G00 [TRUE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: JZ              G6a [TRUE] L0002
       TEST_ATTR       G6a,#08 [FALSE] L0002
       CALL            R0011 (#18,G6a) -> -(SP)
       RTRUE           
L0002: JIN             "it","leather sofa" [FALSE] L0003
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0003: PRINT_RET       "Your feet barely leave the ground."

Routine R0163, 0 locals ()
    Action routine for:
        "bounce out OBJ"
        "bounce off OBJ"
        "bounce from OBJ"

       TEST_ATTR       G6a,#1e [FALSE] L0001
       CALL            R0011 (#28,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#52,G6a) -> -(SP)
       RTRUE           

Routine R0164, 0 locals ()
    Action routine for:
        "lean to OBJ"
        "lean OBJ"

       JE              G00,#3e [FALSE] L0007
       CALL            R0002 (#7926) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       JE              G3c,#1b,#1f [FALSE] L0006
       JE              G3c,#1b [FALSE] L0001
       JZ              G83 [TRUE] L0002
L0001: JE              G3c,#1f [FALSE] L0003
       JZ              G83 [TRUE] L0003
L0002: PRINT_PADDR     G25
       CALL            R0422 -> -(SP)
       PRINT           "And you fall ..."
       CALL            R0423 -> -(SP)
       RTRUE           
L0003: RANDOM          #64 -> -(SP)
       JL              #28,(SP)+ [TRUE] L0004
       PRINT           "Overly cautious, you don't put enough of "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " in that "
       CALL            R0004 (#29) -> -(SP)
       PRINT_RET       "."
L0004: PRINT           "You overcompensate, and are now"
       CALL            R0420 -> -(SP)
       JZ              G83 [TRUE] L0005
       CALL            R0421 -> -(SP)
       RET_POPPED      
L0005: CALL            R0421 (#01) -> -(SP)
       RET_POPPED      
L0006: CALL            R0422 -> -(SP)
       PRINT           "You drop like a quail ..."
       CALL            R0423 -> -(SP)
       RTRUE           
L0007: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0165, 0 locals ()
    Action routine for:
        "procee away OBJ"
        "leave OBJ"
        "leave"
        "go away OBJ"

       JZ              G6a [FALSE] L0001
       STORE           G6a,#2b
L0001: JE              G6a,#2b [FALSE] L0002
       CALL            R0297 (#14) -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       G6a,#1e [TRUE] L0003
       JE              G6a,#50,#11 [FALSE] L0004
L0003: CALL            R0011 (#28,G6a) -> -(SP)
       RTRUE           
L0004: CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           

Routine R0166, 0 locals ()
    Action routine for:
        "lie down OBJ"
        "lie in OBJ"
        "lie on OBJ"

       PRINT_RET       "There's no time for that."

Routine R0167, 0 locals ()
    Action routine for:
        "hear OBJ"
        "listen to OBJ"

       PRINT           "At the moment,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " makes no sound."

Routine R0168, 0 locals ()
    Pre-action routine for:
        "lock OBJ with OBJ"
        "lock OBJ"
        "unlock OBJ with OBJ"
        "unlock OBJ"

       JE              G6a,#40,#8d [TRUE] RFALSE
       JE              G6a,#52 [TRUE] L0001
       TEST_ATTR       G6a,#1b [TRUE] L0002
       JE              G6a,#e3,#d5,#0c [TRUE] L0002
       JE              G6a,#25,#67 [TRUE] L0002
L0001: CALL            R0121 -> -(SP)
       RTRUE           
L0002: JE              G00,#3b [FALSE] L0003
       JE              G6a,#64 [FALSE] L0003
       JZ              Gc6 [TRUE] RFALSE
L0003: JE              G00,#3b [FALSE] L0004
       JE              G6a,#64 [FALSE] L0004
       JZ              Gc6 [TRUE] L0004
       JE              Gc6,#0e [FALSE] L0004
       PRINT           "(You don't need the key, which doesn't fit anyway.) "
       NEW_LINE        
       NEW_LINE        
       RFALSE          
L0004: JZ              Gc6 [FALSE] L0006
       CALL            R0292 (#0e) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       JE              G00,#3b [FALSE] L0005
       JE              G6a,#64 [TRUE] L0006
L0005: STORE           Gc6,#0e
       PRINT           "(with the key)"
       NEW_LINE        
       RFALSE          
L0006: JE              Gc6,#0e [TRUE] RFALSE
       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           " cannot be "
       JE              G7a,#9c [FALSE] L0007
       PRINT           "un"
L0007: PRINT           "locked with"
       JZ              Gc6 [TRUE] L0008
       CALL            R0302 (Gc6,#01) -> -(SP)
       JUMP            L0009
L0008: PRINT           " "
       CALL            R0004 (#0b) -> -(SP)
L0009: PRINT_PADDR     G5d
       RTRUE           

Routine R0169, 0 locals ()
    Action routine for:
        "lock OBJ with OBJ"
        "lock OBJ"

       TEST_ATTR       G6a,#1b [TRUE] L0001
       JE              G6a,#67,#d5,#e3 [FALSE] L0005
L0001: TEST_ATTR       G6a,#0f [FALSE] L0002
       PRINT           "But the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " is open."
L0002: TEST_ATTR       G6a,#0a [FALSE] L0003
       PRINT_RET       "It already is."
L0003: TEST_ATTR       G6a,#09 [TRUE] L0004
       JE              G00,#3b [TRUE] L0004
       CALL            R0251 -> -(SP)
       RTRUE           
L0004: SET_ATTR        G6a,#0a
       PRINT           "Okay, the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " is now locked."
L0005: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0170, 0 locals ()
    Action routine for:
        "gaze around OBJ"
        "gaze"

       CALL            R0279 (#01) -> -(SP)
       CALL            R0281 -> -(SP)
       RET_POPPED      

Routine R0171, 0 locals ()
    Action routine for:
        "gaze behind OBJ"

       TEST_ATTR       G6a,#1b [FALSE] L0001
       CALL            R0011 (#44,G6a) -> -(SP)
       RTRUE           
L0001: PRINT           "There is nothing "
       JE              G6a,#31 [FALSE] L0002
       PRINT           "on the other side of"
       JUMP            L0003
L0002: PRINT           "behind"
L0003: CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0172, 0 locals ()
    Action routine for:
        "gaze down OBJ"

       JZ              G48 [FALSE] L0001
       PRINT_PADDR     G67
       NEW_LINE        
       RTRUE           
L0001: JE              G00,#3e,#38,#46 [FALSE] L0004
       JE              Gce,#02,#03 [FALSE] L0002
       PRINT           "Without looking down, you're confident the net is
properly positioned under the girl and not "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           ". It's the kind of confidence that makes your knees
buckle."
       JUMP            L0003
L0002: PRINT           "First lesson of a wire walker: NEVER look down. "
       JIN             "safety net","Performance Ring" [FALSE] L0003
       PRINT           "However, you trust the net is in place."
L0003: NEW_LINE        
       RTRUE           
L0004: JE              G6a,#2b [FALSE] L0005
       CALL            R0011 (#42,#bc) -> -(SP)
       RTRUE           
L0005: CALL            R0011 (#44,G6a) -> -(SP)
       RTRUE           

Routine R0173, 0 locals ()
    Action routine for:
        "gaze in OBJ"
        "gaze throug OBJ"
        "descri on OBJ"
        "descri in OBJ"

       JE              G6a,#43,#3a [FALSE] L0001
       CALL            R0011 (#42,G6a) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6a,#1f [FALSE] L0002
       PRINT_RET       "There is nothing special to be seen."
L0002: TEST_ATTR       G6a,#11 [FALSE] L0004
       GET_PARENT      Gaf -> -(SP)
       JE              G6a,(SP)+ [FALSE] L0003
       CALL            R0283 -> -(SP)
       RTRUE           
L0003: PRINT_PADDR     G7c
       CALL            R0280 (G6a) -> -(SP)
       PRINT           " on"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0004: TEST_ATTR       G6a,#1b [FALSE] L0007
       PRINT           "All you can tell is that"
       TEST_ATTR       G6a,#0f [FALSE] L0005
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " is open."
       JUMP            L0006
L0005: CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " is closed."
L0006: NEW_LINE        
       RTRUE           
L0007: TEST_ATTR       G6a,#17 [FALSE] L0015
       JE              G6a,#a5 [TRUE] L0015
       GET_PARENT      Gaf -> -(SP)
       JE              G6a,(SP)+ [FALSE] L0008
       CALL            R0283 -> -(SP)
       RTRUE           
L0008: CALL            R0293 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       GET_CHILD       G6a -> -(SP) [FALSE] L0011
       PRINT_PADDR     G7c
       CALL            R0280 (G6a) -> -(SP)
       JE              G6a,#83 [FALSE] L0009
       PRINT           " on"
       JUMP            L0010
L0009: PRINT           " in"
L0010: CALL            R0302 (G6a,#01) -> -(SP)
       JUMP            L0012
L0011: PRINT_PADDR     G9b
L0012: PRINT_PADDR     G5d
       RTRUE           
L0013: TEST_ATTR       G6a,#0f [TRUE] L0014
       GET_CHILD       G6a -> -(SP) [FALSE] L0014
       CALL            R0011 (#6c,G6a) -> -(SP)
       RTRUE           
L0014: PRINT           "It seems that"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " is closed."
L0015: PRINT_RET       "You can't do that."

Routine R0174, 0 locals ()
    Action routine for:
        "gaze on OBJ"

       TEST_ATTR       G6a,#11 [FALSE] L0001
       CALL            R0011 (#44,G6a) -> -(SP)
       RET_POPPED      
L0001: CALL            R0011 (#42,G6a) -> -(SP)
       RTRUE           

Routine R0175, 0 locals ()
    Action routine for:
        "gaze out OBJ"

       TEST_ATTR       G6a,#1b [TRUE] L0001
       TEST_ATTR       G6a,#0d [TRUE] L0001
       JE              G6a,#de [FALSE] L0002
L0001: CALL            R0011 (#4baa,G6a) -> -(SP)
       RTRUE           
L0002: CALL            R0170 -> -(SP)
       RTRUE           

Routine R0176, 0 locals ()
    Action routine for:
        "gaze under OBJ"

       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       TEST_ATTR       G6a,#14 [FALSE] L0001
       PRINT_RET       "You're wearing it!"
L0001: PRINT_RET       "You're holding it!"
L0002: JE              G6a,#bf [FALSE] L0003
       JE              G00,#0d [FALSE] L0003
       TEST_ATTR       "trap door",#0f [TRUE] L0003
       CLEAR_ATTR      "trap door",#13
       PRINT           "Under the coarse layer of "
       CALL            R0004 (#bf) -> -(SP)
       PRINT           " the outline of a "
       CALL            R0004 (#e9) -> -(SP)
       PRINT_RET       " is visible."
L0003: PRINT           "There's nothing eye-catching under"
       CALL            R0302 (G6a,#01) -> -(SP)
       JE              G00,#af,#79 [FALSE] L0004
       JE              G6a,#bf [FALSE] L0004
       PRINT           " that's within reach"
       JUMP            L0005
L0004: JE              G00,#0d [FALSE] L0005
       JE              G6a,#bf [FALSE] L0005
       PRINT           " except the "
       CALL            R0358 (#e9) -> -(SP)
       PRINT           " "
       CALL            R0004 (#e9) -> -(SP)
L0005: PRINT_PADDR     G5d
       RTRUE           

Routine R0177, 0 locals ()
    Action routine for:
        "gaze up OBJ"

       JZ              G48 [FALSE] L0001
       PRINT_PADDR     G67
       NEW_LINE        
       RTRUE           
L0001: JE              G6a,#2b [FALSE] L0010
       TEST_ATTR       G00,#0b [TRUE] L0004
       PRINT           "The sky is "
       JZ              G8c [TRUE] L0002
       PRINT           "deep blue."
       JUMP            L0003
L0002: PRINT           "an inky black."
L0003: NEW_LINE        
       RTRUE           
L0004: JE              G00,#83 [FALSE] L0005
       JZ              G93 [FALSE] L0005
       PRINT_PADDR     G7c
       PRINT           " the supporting apparatus for the "
       CALL            R0004 (#48) -> -(SP)
       PRINT_RET       "."
L0005: JE              G00,#ce [FALSE] L0006
       PRINT           "From here the "
       CALL            R0004 (#d9) -> -(SP)
       PRINT_RET       " resembles a huge venetian blind, letting in broad
panels of hazy light."
L0006: JE              G00,#83,#38,#3e [FALSE] L0007
       JZ              Gce [TRUE] L0007
       CALL            R0407 -> -(SP)
       NEW_LINE        
       RTRUE           
L0007: JE              G00,#46 [FALSE] L0008
       TEST_ATTR       "balloon",#12 [TRUE] L0008
       GET_PROP        "balloon",#10 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0008: JE              G00,#70 [FALSE] L0009
       TEST_ATTR       "burn hole",#13 [TRUE] L0009
       PRINT_PADDR     G7c
       PRINT           " "
       CALL            R0004 (#2f) -> -(SP)
       PRINT_RET       "s."
L0009: CALL            R0011 (#42,#ca) -> -(SP)
       RTRUE           
L0010: CALL            R0011 (#44,G6a) -> -(SP)
       RTRUE           

Routine R0178, 0 locals ()
    Action routine for:
        "lower OBJ"

       CALL            R0199 -> -(SP)
       RET_POPPED      

Routine R0179, 0 locals ()
    Action routine for:
        "make OBJ"

       PRINT           "You can't make"
       CALL            R0302 (G6a) -> -(SP)
       PRINT_RET       "!"

Routine R0180, 0 locals ()
    Action routine for:
        "move OBJ with OBJ"
        "move OBJ"

       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_RET       "Why juggle objects?"
L0001: CALL            R0296 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       TEST_ATTR       G6a,#16 [TRUE] L0002
       TEST_ATTR       G6a,#10 [FALSE] L0003
L0002: PRINT           "Moving"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " reveals nothing."
L0003: PRINT           "You can't move"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0181, 0 locals ()
    Action routine for:
        "break OBJ with OBJ"
        "break OBJ"

       CALL            R0301 (S019) -> -(SP)
       RET_POPPED      

Routine R0182, 0 locals ()
    Action routine for:
        "didn'"
        "did not OBJ"

       JE              Gbc,#01 [FALSE] L0001
       CALL            R0011 (#9e) -> -(SP)
       RTRUE           
L0001: JE              Gbc,#02 [FALSE] L0002
       PRINT           "Contain "
       CALL            R0004 (#1d) -> -(SP)
       PRINT_RET       "."
L0002: JE              Gbc,#03 [FALSE] L0003
       PRINT_RET       "You should start."
L0003: JE              Gbc,#04 [FALSE] L0004
       PRINT           "Right. "
       CALL            R0273 -> -(SP)
       RET_POPPED      
L0004: JE              Gbc,#05 [FALSE] L0005
       PRINT_RET       "Then you don't need it."
L0005: JE              Gbc,#06 [FALSE] L0008
       JZ              G2e [FALSE] L0006
       PRINT           ""Of course you did now, didn't you?""
       JUMP            L0007
L0006: PRINT           ""Did so.""
L0007: CLEAR_ATTR      "it",#0c
       NEW_LINE        
       RTRUE           
L0008: JE              Gbc,#07 [FALSE] L0009
       PRINT           "Quit your "
       CALL            R0004 (#d9) -> -(SP)
       PRINT_RET       "ing."
L0009: JE              Gbc,#08 [FALSE] L0010
       JIN             "Billy Monday",G00 [FALSE] L0010
       CALL            R0011 (#16,#e0,#2e) -> -(SP)
       RTRUE           
L0010: JE              Gbc,#09 [FALSE] L0011
       PRINT_RET       "We didn't think so."
L0011: JE              Gbc,#0a [FALSE] L0012
       STORE           Gbc,#0b
       CALL            R0273 -> -(SP)
       RET_POPPED      
L0012: JE              Gbc,#0b [FALSE] L0013
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0013: JE              Gbc,#0c [FALSE] L0014
       STORE           G74,#00
       PRINT_RET       "That's the spirit."
L0014: JE              Gbc,#0d [FALSE] L0015
       PRINT_RET       "Then think of one."
L0015: PRINT_RET       "You sound rather negative."

Routine R0183, 2 locals (0000, 0000)
    Action routine for:
        "draw OBJ with OBJ"
        "draw up OBJ"
        "draw OBJ"

       TEST_ATTR       G6a,#11 [FALSE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6a,#1f [FALSE] L0002
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0002: JE              G6a,#d5 [FALSE] L0003
       TEST_ATTR       "compartment",#0a [FALSE] L0004
L0003: TEST_ATTR       G6a,#17 [FALSE] L0008
       JE              G6a,#e3,#d5,#67 [TRUE] L0008
L0004: TEST_ATTR       G6a,#0f [FALSE] L0005
       PRINT_PADDR     G9a
       NEW_LINE        
       RTRUE           
L0005: SET_ATTR        G6a,#0f
       SET_ATTR        G6a,#12
       GET_CHILD       G6a -> -(SP) [FALSE] L0006
       TEST_ATTR       G6a,#0d [FALSE] L0007
L0006: PRINT_RET       "Opened."
L0007: PRINT           "Opening"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " reveals"
       CALL            R0280 (G6a) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0008: TEST_ATTR       G6a,#1b [TRUE] L0009
       JE              G6a,#67,#d5,#e3 [FALSE] L0016
L0009: JE              G7a,#6c [FALSE] L0010
       JE              Gc6,#0e [FALSE] L0010
       CALL            R0011 (#9c,G6a,#0e) -> -(SP)
       RTRUE           
L0010: TEST_ATTR       G6a,#0a [TRUE] L0015
       TEST_ATTR       G6a,#0f [TRUE] L0014
       SET_ATTR        G6a,#0f
       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           " "
       JE              G6a,#52,#d4 [FALSE] L0011
       PRINT           "slides"
       JUMP            L0013
L0011: JE              G6a,#44,#a4,#95 [FALSE] L0012
       PRINT           "creaks slowly"
       JUMP            L0013
L0012: PRINT           "swings"
L0013: PRINT_RET       " open."
L0014: PRINT_RET       "It's already open."
L0015: PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " is locked."
L0016: CALL            R0349 -> -(SP)
       RET_POPPED      

Routine R0184, 1 local (0000)
    Action routine for:
        "pass OBJ"

       JE              G7b,"pay" [FALSE] L0001
       JE              G6a,#c1 [TRUE] L0001
       JZ              Gc6 [FALSE] L0001
       CALL            R0356 -> -(SP)
       RET             #02
L0001: TEST_ATTR       G6a,#16 [TRUE] L0002
       JE              G6a,#c1,#98,#ba [FALSE] L0005
L0002: CALL            R0295 (G00,#1f) -> L00
       JZ              L00 [FALSE] L0003
       CALL            R0295 (#d3,#1f) -> L00
       JZ              L00 [TRUE] L0004
L0003: PRINT           "(to"
       CALL            R0302 (L00,#01) -> -(SP)
       PRINT           ")"
       NEW_LINE        
       CALL            R0011 (#47,G6a,L00) -> -(SP)
       RTRUE           
L0004: CALL            R0121 -> -(SP)
       RET_POPPED      
L0005: STORE           G66,#01
       CALL            R0011 (#1c,G6a) -> -(SP)
       RTRUE           

Routine R0185, 0 locals ()
    Action routine for:
        "dial OBJ"

       JE              G00,#3b [TRUE] L0001
       CALL            R0347 (#00,S020) -> -(SP)
       RET_POPPED      
L0001: JE              G6a,#c5,#12,#30 [TRUE] L0002
       JE              G6a,#c1 [FALSE] L0004
       JE              Gac,#0492 [FALSE] L0004
L0002: JZ              G93 [TRUE] L0003
       TEST_ATTR       "radio dial",#0c [FALSE] L0003
       STORE           G1a,#01
       PRINT_RET       "After verifying, via computer, your credit card number,
home address, social security number, and credit rating, the cheerful voice on
the other end of the line takes your pledge and hangs up."
L0003: PRINT_RET       "The line is busy."
L0004: JE              G6a,#21 [FALSE] L0005
       PRINT           "E.T. quit this "
       CALL            R0004 (#56) -> -(SP)
       PRINT_RET       " long ago."
L0005: JE              G6a,#c1 [FALSE] L0009
       JZ              G81 [FALSE] L0006
       JZ              Gac [FALSE] L0006
       PRINT_RET       "The operator suggests you dial 411 for information."
L0006: JZ              G81 [FALSE] L0007
       JE              Gac,#019b [FALSE] L0007
       PRINT_RET       "A recording informs you to consult your directory."
L0007: JZ              G81 [FALSE] L0008
       JE              Gac,#038f [FALSE] L0008
       CALL            R0011 (#6e,#17) -> -(SP)
       RTRUE           
L0008: PRINT_PADDR     G9d
       RTRUE           
L0009: PRINT_PADDR     G9d
       RTRUE           

Routine R0186, 0 locals ()
    Action routine for:
        "call OBJ on OBJ"
        "call OBJ with OBJ"
        "dial OBJ on OBJ"
        "dial OBJ with OBJ"

       JE              Gc6,#cb [TRUE] L0001
       PRINT           "You can't use"
       CALL            R0302 (Gc6) -> -(SP)
       PRINT           " as a "
       CALL            R0004 (#cb) -> -(SP)
       PRINT_RET       "."
L0001: CALL            R0011 (#6e,G6a) -> -(SP)
       RTRUE           

Routine R0187, 0 locals ()
    Action routine for:
        "jimmy OBJ with OBJ"
        "jimmy OBJ"

       TEST_ATTR       G6a,#1b [FALSE] L0001
       PRINT_RET       "You're no locksmith."
L0001: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0188, 0 locals ()
    Action routine for:
        "jimmy up OBJ"

       CALL            R0011 (#75,G6a,Gc6) -> -(SP)
       RTRUE           

Routine R0189, 0 locals ()
    Action routine for:
        "play OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0190, 0 locals ()
    Action routine for:
        "pour OBJ over OBJ"
        "pour OBJ from OBJ"
        "pour OBJ on OBJ"
        "pour out OBJ into OBJ"
        "pour OBJ in OBJ"
        "pour out OBJ"
        "pour OBJ"

       CALL            R0155 -> -(SP)
       RET_POPPED      

Routine R0191, 0 locals ()
    Action routine for:
        "punch out OBJ"
        "punch OBJ"

       CALL            R0011 (#18,G6a) -> -(SP)
       RTRUE           

Routine R0192, 0 locals ()
    Action routine for:
        "move on OBJ"
        "press on OBJ"
        "press OBJ"
        "slide OBJ"

       JE              G6a,#81 [FALSE] L0001
       TEST_ATTR       "fiberglass pole",#12 [TRUE] L0001
       CALL            R0011 (#75,#81) -> -(SP)
       RTRUE           
L0001: JE              G7b,"pull" [FALSE] L0002
       CALL            R0301 (S021) -> -(SP)
       RET_POPPED      
L0002: CALL            R0301 (S022) -> -(SP)
       RET_POPPED      

Routine R0193, 0 locals ()
    Pre-action routine for:
        "hang OBJ in OBJ"
        "hurl OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "slide OBJ on OBJ"
        "slide OBJ down OBJ"
        "slide OBJ throug OBJ"
        "slide OBJ in OBJ"
        "hang OBJ across OBJ"
        "hang OBJ over OBJ"
        "hang OBJ around OBJ"
        "hang OBJ on OBJ"
        "hang OBJ down OBJ"
        "attach OBJ around OBJ"
        "drop OBJ on OBJ"
        "hang OBJ out OBJ"
        "drop OBJ out OBJ"

       JE              Gc6,#bf,#d7,#bc [FALSE] L0002
       GET_PROP        G00,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0011 (#98,G6a,#0c) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0002: JE              G6a,#0e [FALSE] L0003
       TEST_ATTR       "skeleton key",#10 [FALSE] L0003
       CALL            R0011 (#7b,#0e,Gc6) -> -(SP)
       RTRUE           
L0003: JE              G7a,#3b [FALSE] L0004
       JE              G00,#39 [FALSE] L0004
       JE              G6a,#0a [FALSE] L0004
       JZ              Gc6 [TRUE] L0004
       CALL            R0011 (#49,Gc6,#0a) -> -(SP)
       RTRUE           
L0004: JE              G6a,#0b [FALSE] L0006
       JE              G7a,#3b [FALSE] L0005
       CALL            R0011 (#79,Gc6) -> -(SP)
       RTRUE           
L0005: CALL            R0121 -> -(SP)
       RET_POPPED      
L0006: CALL            R0292 (Gc6,G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       PRINT           "You can't put"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " in"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT           " when"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT           " is already in"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       "!"
L0007: JZ              G66 [TRUE] L0008
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0008: CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0194, 1 local (0000)
    Action routine for:
        "hang OBJ in OBJ"
        "hurl OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "slide OBJ on OBJ"
        "slide OBJ down OBJ"
        "slide OBJ throug OBJ"
        "slide OBJ in OBJ"

       TEST_ATTR       Gc6,#0f [TRUE] L0001
       TEST_ATTR       Gc6,#1b [TRUE] L0001
       TEST_ATTR       Gc6,#17 [TRUE] L0001
       TEST_ATTR       Gc6,#11 [TRUE] L0001
       TEST_ATTR       Gc6,#1e [TRUE] L0001
       PRINT           "You can't put"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " in"
       CALL            R0302 (Gc6) -> -(SP)
       PRINT_RET       "!"
L0001: TEST_ATTR       Gc6,#1f [FALSE] L0002
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0002: JE              Gc6,G6a [TRUE] L0003
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       TEST_ATTR       G6a,#16 [TRUE] L0004
L0003: PRINT_RET       "How can you do that?"
L0004: TEST_ATTR       Gc6,#0f [TRUE] L0005
       TEST_ATTR       Gc6,#11 [TRUE] L0005
       PRINT           "Inspection reveals that"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT           " isn't open."
       NEW_LINE        
       STORE           Gbd,Gc6
       RET             Gbd
L0005: JIN             G6a,Gc6 [FALSE] L0006
       PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " is already in"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0006: CALL            R0278 (Gc6) -> L00
       GET_PROP        G6a,#0d -> -(SP)
       ADD             L00,(SP)+ -> L00
       GET_PROP        Gc6,#0d -> -(SP)
       SUB             L00,(SP)+ -> L00
       GET_PROP        Gc6,#0b -> -(SP)
       JG              L00,(SP)+ [FALSE] L0010
       TEST_ATTR       Gc6,#1e [FALSE] L0007
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0007: PRINT           "There's no room "
       TEST_ATTR       G6a,#11 [FALSE] L0008
       PRINT           "on"
       JUMP            L0009
L0008: PRINT           "in"
L0009: PRINT           " the "
       CALL            R0004 (Gc6) -> -(SP)
       PRINT           " for"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0010: CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       CALL            R0274 -> -(SP)
       JE              (SP)+,#02,#00 [TRUE] RTRUE
L0011: INSERT_OBJ      G6a,Gc6
       SET_ATTR        G6a,#12
       PRINT_RET       "Done."

Routine R0195, 0 locals ()
    Action routine for:
        "hang OBJ behind OBJ"

       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0196, 0 locals ()
    Action routine for:
        "hang OBJ across OBJ"
        "hang OBJ over OBJ"
        "hang OBJ around OBJ"
        "hang OBJ on OBJ"
        "hang OBJ down OBJ"
        "attach OBJ around OBJ"
        "drop OBJ on OBJ"

       JE              Gc6,#1d [TRUE] L0001
       JE              Gc6,#33 [FALSE] L0002
       JE              G6a,#5d [FALSE] L0002
L0001: CALL            R0011 (#77,G6a) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       Gc6,#11 [FALSE] L0003
       CALL            R0194 -> -(SP)
       RET_POPPED      
L0003: TEST_ATTR       Gc6,#08 [FALSE] L0004
       JE              Gc6,#42,#99,#cd [TRUE] L0004
       PRINT           "Perturbed,"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " stays your mischievous hand."
L0004: TEST_ATTR       G6a,#15 [FALSE] L0005
       TEST_ATTR       Gc6,#1f [FALSE] L0005
       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           " isn't"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       "'s style."
L0005: PRINT           "There's no good surface on"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0197, 0 locals ()
    Action routine for:
        "hang OBJ out OBJ"
        "drop OBJ out OBJ"

       JE              G00,#aa [FALSE] L0001
       JE              Gc6,#25 [FALSE] L0001
       CALL            R0011 (#97,G6a,#25) -> -(SP)
       RTRUE           
L0001: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0198, 0 locals ()
    Action routine for:
        "hang OBJ under OBJ"
        "move OBJ under OBJ"
        "press OBJ under OBJ"
        "slide OBJ under OBJ"

       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0199, 0 locals ()
    Action routine for:
        "boost OBJ to OBJ"
        "boost up OBJ"
        "boost OBJ"
        "move up OBJ"
        "press up OBJ"

       CALL            R0301 (S023) -> -(SP)
       RET_POPPED      

Routine R0200, 1 local (0000)
    Action routine for:
        "reach in OBJ"

       GET_CHILD       G6a -> L00 [TRUE] L0001
L0001: TEST_ATTR       G6a,#1f [TRUE] L0002
       TEST_ATTR       G6a,#11 [TRUE] L0002
       TEST_ATTR       G6a,#17 [TRUE] L0003
L0002: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0003: TEST_ATTR       G6a,#0f [TRUE] L0004
       PRINT_RET       "It's not open."
L0004: JZ              L00 [TRUE] L0005
       TEST_ATTR       L00,#13 [TRUE] L0005
       TEST_ATTR       L00,#16 [TRUE] L0006
L0005: PRINT           "There's nothing in"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0006: JE              G6a,#41 [FALSE] L0007
       JIN             "water","bucket" [FALSE] L0007
       PRINT_PADDR     G9e
       RTRUE           
L0007: PRINT           "You reach into"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " and feel something."
       NEW_LINE        
       GET_CHILD       G6a -> Gbd [TRUE] L0008
L0008: RTRUE           

Routine R0201, 0 locals ()
    Pre-action routine for:
        "gaze to OBJ"
        "gaze over OBJ"
        "gaze at OBJ"
        "descri OBJ"
        "gaze at OBJ throug OBJ"
        "descri OBJ throug OBJ"
        "gaze under OBJ"
        "gaze behind OBJ"
        "read OBJ on OBJ"
        "read OBJ with OBJ"
        "read OBJ throug OBJ"
        "read OBJ"

       JZ              G48 [FALSE] L0001
       PRINT_PADDR     G67
       NEW_LINE        
       RTRUE           
L0001: JE              G6a,#33 [FALSE] L0002
       CALL            R0011 (#7a,#33) -> -(SP)
       RTRUE           
L0002: JZ              Gc6 [TRUE] RFALSE
       TEST_ATTR       Gc6,#0d [TRUE] RFALSE
       PRINT           "How does one look through"
       CALL            R0302 (Gc6) -> -(SP)
       PRINT_RET       "?"

Routine R0202, 0 locals ()
    Action routine for:
        "read OBJ on OBJ"
        "read OBJ with OBJ"
        "read OBJ throug OBJ"
        "read OBJ"

       PRINT           "How can you read"
       CALL            R0302 (G6a) -> -(SP)
       PRINT_RET       "?"

Routine R0203, 0 locals ()
    Action routine for:
        "record on OBJ"
        "record OBJ"
        "record"

       CALL            R0289 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0011 (#7c,#24) -> -(SP)
       RTRUE           
L0001: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0204, 0 locals ()
    Action routine for:
        "let go OBJ"

       JE              G6a,#2b [FALSE] L0001
       JIN             "elephant prod","it" [FALSE] L0001
       CALL            R0011 (#3a,#61) -> -(SP)
       RTRUE           
L0001: JE              G6a,#2b [FALSE] L0002
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0002: CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           

Routine R0205, 0 locals ()
    Action routine for:
        "rewind OBJ"

       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0206, 0 locals ()
    Action routine for:
        "doff OBJ"

       TEST_ATTR       G6a,#15 [FALSE] L0001
       CALL            R0011 (#90,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#75,G6a) -> -(SP)
       RTRUE           

Routine R0207, 0 locals ()
    Action routine for:
        "answer to OBJ"
        "answer OBJ"

       PRINT           "It is hardly likely that"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " is interested."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0208, 0 locals ()
    Action routine for:
        "feel OBJ on OBJ"
        "feel OBJ with OBJ"
        "feel OBJ"
        "reach OBJ"

       CALL            R0296 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G6a,#33 [FALSE] L0001
       PRINT_RET       "You feel the bumps but lack the interpretive skills of
the phrenologist."
L0001: CALL            R0301 (S024) -> -(SP)
       RET_POPPED      

Routine R0209, 0 locals ()
    Action routine for:
        "save OBJ"
        "help OBJ"

       CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JIN             "Comrade Thumb",G00 [FALSE] L0001
       CALL            R0011 (#69,#db) -> -(SP)
       RTRUE           
L0001: PRINT           "Sorry, but"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " is beyond help."

Routine R0210, 0 locals ()
    Action routine for:
        "frisk throug OBJ"
        "frisk in OBJ"
        "frisk OBJ"

       TEST_ATTR       G6a,#08 [FALSE] L0001
       JE              G6a,#42,#a8 [TRUE] L0001
       PRINT           "It seems"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " isn't the sort of person who'd allow such a frisking
without a search warrant."
L0001: TEST_ATTR       G6a,#17 [FALSE] L0006
       GET_PARENT      Gaf -> -(SP)
       JE              G6a,(SP)+ [FALSE] L0002
       CALL            R0283 -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6a,#0f [TRUE] L0003
       CALL            R0212 -> -(SP)
       RTRUE           
L0003: GET_CHILD       G6a -> -(SP) [FALSE] L0006
       GET_CHILD       G6a -> -(SP) [TRUE] L0004
       PUSH            #00
       JUMP            L0005
L0004: PUSH            #01
L0005: TEST_ATTR       (SP)+,#06 [TRUE] L0006
       PRINT_PADDR     G7c
       CALL            R0280 (G6a) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0006: PRINT_RET       "You find nothing unusual."

Routine R0211, 0 locals ()
    Action routine for:
        "frisk OBJ for OBJ"

       TEST_ATTR       G6a,#08 [FALSE] L0001
       CALL            R0011 (#81,G6a) -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6a,#17 [FALSE] L0002
       TEST_ATTR       G6a,#0f [TRUE] L0002
       CALL            R0212 -> -(SP)
       RET_POPPED      
L0002: JIN             Gc6,G6a [TRUE] L0003
       JIN             Gc6,G00 [FALSE] L0007
L0003: PRINT           "Very observant. There "
       TEST_ATTR       Gc6,#05 [FALSE] L0004
       PUSH            S025
       JUMP            L0006
L0004: TEST_ATTR       Gc6,#08 [FALSE] L0005
       PUSH            S026
       JUMP            L0006
L0005: PUSH            S027
L0006: PRINT_PADDR     (SP)+
       PRINT_RET       " is."
L0007: PRINT           "You don't find"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " there."

Routine R0212, 0 locals ()

       PRINT           "You'll have to open"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " first."

Routine R0213, 0 locals ()
    Action routine for:
        "flick in OBJ to OBJ"
        "flick OBJ with OBJ"
        "flick OBJ to OBJ"
        "flick around OBJ"
        "flick OBJ"

       JE              G6a,#2b [FALSE] L0003
       JE              G00,#3e [FALSE] L0002
       JZ              G19 [TRUE] L0001
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0001: CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0002: CALL            R0003 (Gd7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0003: JZ              Gc6 [FALSE] L0006
       JE              G6a,#30,#12 [FALSE] L0004
       TEST_ATTR       "transistor radio",#18 [FALSE] L0004
       PRINT_RET       "Without setting the dial to a specific number, you pick
up mostly static, interspersed with even more irritating snippets of talk and
music."
L0004: TEST_ATTR       G6a,#16 [FALSE] L0005
       CALL            R0301 (S028) -> -(SP)
       RET_POPPED      
L0005: PRINT_PADDR     G90
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0006: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0214, 0 locals ()
    Action routine for:
        "pass OBJ OBJ"
        "feed OBJ OBJ"
        "donate OBJ OBJ"

       CALL            R0011 (#47,Gc6,G6a) -> -(SP)
       RTRUE           

Routine R0215, 1 local (0000)
    Action routine for:
        "shake OBJ"

       TEST_ATTR       G6a,#1f [FALSE] L0001
       PRINT_RET       "Be real."
L0001: CALL            R0301 (S029) -> -(SP)
       RET_POPPED      

Routine R0216, 0 locals ()
    Action routine for:
        "shake OBJ with OBJ"

       JE              G6a,#0b [TRUE] L0001
       CALL            R0241 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       Gc6,#1f [TRUE] L0002
       PRINT           "But"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " doesn't even have hands."
L0002: CALL            R0011 (#96,Gc6) -> -(SP)
       RTRUE           

Routine R0217, 0 locals ()
    Action routine for:
        "show OBJ to OBJ"

       PRINT           "It's doubtful"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " is interested."

Routine R0218, 1 local (0000)
    Action routine for:
        "rest down OBJ"
        "rest"

       CALL            R0295 (G00,#1e) -> L00
       JZ              L00 [TRUE] L0002
       JE              L00,#50,#11 [FALSE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: CALL            R0011 (#1c,L00) -> -(SP)
       RTRUE           
L0002: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0219, 0 locals ()
    Action routine for:
        "hop"

       PRINT_RET       "Wasn't that fun?"

Routine R0220, 0 locals ()
    Action routine for:
        "doze"

       PRINT_RET       "Temporary insomnia prevents this."

Routine R0221, 0 locals ()
    Action routine for:
        "smell OBJ"
        "smell"

       JZ              G6a [FALSE] L0003
       JE              G00,#9d [FALSE] L0001
       PRINT_RET       "It's quite bad."
L0001: JE              G00,#c0 [FALSE] L0002
       CALL            R0011 (#89,#0c) -> -(SP)
       RTRUE           
L0002: PRINT           "You smell nothing "
       CALL            R0003 (G03) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       "."
L0003: PRINT           "It smells just like"
       CALL            R0302 (G6a) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0222, 0 locals ()
    Action routine for:
        "smile at OBJ"
        "smile"

       PRINT_RET       "How nice."

Routine R0223, 0 locals ()
    Action routine for:
        "spin OBJ"

       PRINT_RET       "You can't spin that!"

Routine R0224, 0 locals ()
    Action routine for:
        "cover OBJ with OBJ"

       CALL            R0011 (#3c,Gc6,G6a) -> -(SP)
       RTRUE           

Routine R0225, 0 locals ()
    Action routine for:
        "crack OBJ over OBJ"
        "crack OBJ on OBJ"
        "crack OBJ at OBJ"

       CALL            R0011 (#aa,Gc6,G6a) -> -(SP)
       RTRUE           

Routine R0226, 0 locals ()
    Action routine for:
        "show OBJ OBJ"

       CALL            R0011 (#85,Gc6,G6a) -> -(SP)
       RTRUE           

Routine R0227, 0 locals ()
    Action routine for:
        "carry up OBJ"
        "rise up OBJ"
        "rise"

       JZ              G6a [TRUE] L0001
       JE              G6a,#2b [TRUE] L0001
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0001: GET_PARENT      Gaf -> -(SP)
       JE              (SP)+,#50,#11 [TRUE] L0002
       GET_PARENT      Gaf -> -(SP)
       TEST_ATTR       (SP)+,#1e [FALSE] L0002
       GET_PARENT      Gaf -> -(SP)
       CALL            R0011 (#28,(SP)+) -> -(SP)
       RTRUE           
L0002: JZ              G95 [TRUE] L0003
       JE              G00,#b6 [FALSE] L0003
       STORE           G95,#00
       PRINT_RET       "As you rise, your row scrunches into the empty space."
L0003: PRINT_RET       "You are already standing."

Routine R0228, 0 locals ()
    Action routine for:
        "rise in OBJ"
        "rise on OBJ"

       JE              G6a,#11,#50,#60 [FALSE] L0001
       CALL            R0011 (#1c,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0229, 0 locals ()
    Action routine for:
        "tell OBJ OBJ"

       CALL            R0011 (#0e,Gc6) -> -(SP)
       RTRUE           

Routine R0230, 0 locals ()
    Action routine for:
        "stop OBJ"

       JE              G6a,#30,#24 [FALSE] L0001
       CALL            R0011 (#2d,G6a) -> -(SP)
       RTRUE           
L0001: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0231, 0 locals ()
    Pre-action routine for:
        "jimmy up OBJ"
        "carry OBJ in OBJ"
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "empty OBJ out OBJ"
        "empty OBJ from OBJ"
        "doff OBJ from OBJ"
        "carry OBJ with OBJ"
        "reach OBJ with OBJ"

       JE              G6a,#ee [TRUE] RFALSE
       CALL            R0296 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       GET_PARENT      G6a -> -(SP)
       JE              Gc6,(SP)+ [FALSE] L0001
       JE              G7a,#7b [FALSE] RFALSE
L0001: JE              G6a,#7f,#b4 [TRUE] RFALSE
       JE              G6a,#0e [FALSE] L0002
       JE              Gc6,#0e [TRUE] RFALSE
L0002: JE              G6a,#d1 [FALSE] L0003
       JE              Gc6,#d1 [TRUE] RFALSE
L0003: JZ              Gc6 [TRUE] L0004
       JE              G7a,#75 [FALSE] L0004
       JE              Gc6,#81 [FALSE] L0004
       CALL            R0011 (#7b,G6a,#81) -> -(SP)
       RTRUE           
L0004: JIN             G6a,"it" [TRUE] L0005
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       TEST_ATTR       G6a,#16 [TRUE] L0007
L0005: TEST_ATTR       G6a,#14 [FALSE] L0006
       PRINT_RET       "You are already wearing it."
L0006: CALL            R0232 -> -(SP)
       RET_POPPED      
L0007: JZ              Gc6 [TRUE] L0018
       JE              G7a,#7b [FALSE] L0010
       JE              Gc6,#0b [FALSE] L0008
       CALL            R0011 (#75,G6a) -> -(SP)
       RTRUE           
L0008: CALL            R0292 (Gc6) -> -(SP)
       JZ              (SP)+ [FALSE] L0009
       JE              Gc6,#98,#ba [TRUE] L0009
       PRINT_PADDR     G90
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0009: CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0232 -> -(SP)
       RET_POPPED      
L0010: JE              G6a,#1d [FALSE] L0011
       CALL            R0011 (#3a,Gc6) -> -(SP)
       RTRUE           
L0011: JE              G00,#39 [FALSE] L0012
       JE              G6a,#0a,#bb [TRUE] RFALSE
L0012: JIN             G6a,"Chuckles" [FALSE] L0013
       JE              Gc6,#49 [TRUE] RFALSE
L0013: GET_PARENT      G6a -> -(SP)
       JE              Gc6,(SP)+ [TRUE] L0017
       PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " isn't "
       TEST_ATTR       Gc6,#1f [FALSE] L0014
       PRINT           "being held by"
       JUMP            L0016
L0014: TEST_ATTR       Gc6,#11 [FALSE] L0015
       PRINT           "on"
       JUMP            L0016
L0015: PRINT           "in"
L0016: CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0017: STORE           Gc6,#00
       RFALSE          
L0018: GET_PARENT      Gaf -> -(SP)
       JE              G6a,(SP)+ [FALSE] RFALSE
       PRINT_RET       "You are on it!"

Routine R0232, 0 locals ()

       PRINT           "You already have "
       JE              G6a,#db [FALSE] L0001
       PRINT           "him"
       JUMP            L0003
L0001: JE              G6a,#54 [FALSE] L0002
       PRINT           "her"
       JUMP            L0003
L0002: PRINT           "it"
L0003: PRINT_PADDR     G5d
       RTRUE           

Routine R0233, 0 locals ()
    Action routine for:
        "carry OBJ in OBJ"
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "empty OBJ out OBJ"
        "empty OBJ from OBJ"
        "doff OBJ from OBJ"

       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] RTRUE
       PRINT           "Taken."
       NEW_LINE        
       JE              G6a,#30 [FALSE] RTRUE
       JZ              G64 [FALSE] RTRUE
       STORE           G64,#01
       ADD             G01,#0a -> G01
       RTRUE           

Routine R0234, 0 locals ()
    Action routine for:
        "carry off OBJ"

       TEST_ATTR       G6a,#14 [FALSE] L0001
       CLEAR_ATTR      G6a,#14
       PRINT           "Okay, you're no longer wearing"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       JE              G6a,#5d [FALSE] RTRUE
       PUT_PROP        "it",#09,#6407
       RTRUE           
L0001: TEST_ATTR       G6a,#1e [FALSE] L0002
       CALL            R0011 (#28,G6a) -> -(SP)
       RTRUE           
L0002: JE              G6a,#0c,#6e,#34 [TRUE] L0003
       JE              G6a,#91 [FALSE] L0006
L0003: JE              G00,#1e,#35,#91 [FALSE] L0004
       CALL            R0297 (#16) -> -(SP)
       RTRUE           
L0004: JE              G00,#3f [FALSE] L0005
       CALL            R0011 (#27,#65) -> -(SP)
       RTRUE           
L0005: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0006: TEST_ATTR       G6a,#15 [FALSE] L0007
       PRINT_RET       "You aren't wearing that!"
L0007: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0235, 0 locals ()
    Action routine for:
        "carry OBJ with OBJ"
        "reach OBJ with OBJ"

       PRINT           "Well,"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT           " is of little use in obtaining"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0236, 0 locals ()
    Action routine for:
        "speak in OBJ"

       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0237, 0 locals ()
    Action routine for:
        "tame OBJ with OBJ"
        "tame OBJ"

       JE              G6a,#23,#1f,#75 [FALSE] L0001
       PRINT_PADDR     G0b
       NEW_LINE        
       RTRUE           
L0001: PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " isn't so wild."

Routine R0238, 0 locals ()
    Action routine for:
        "lick OBJ"

       TEST_ATTR       G6a,#19 [FALSE] L0001
       PRINT_RET       "The taste is quite strong."
L0001: PRINT_RET       "Yuck!"

Routine R0239, 0 locals ()
    Action routine for:
        "addres OBJ"
        "tell OBJ"
        "speak to OBJ"

       TEST_ATTR       G6a,#1f [FALSE] L0004
       JZ              G34 [TRUE] L0001
       STORE           Gaf,G6a
       GET_PARENT      Gaf -> G00
       RTRUE           
L0001: PRINT           "Hmmm ..."
       CALL            R0302 (G6a,#01) -> -(SP)
       JE              G6a,#cf [FALSE] L0002
       PRINT           " appears willing to listen to you"
       JUMP            L0003
L0002: PRINT           " looks at you expectantly, as if you seemed to be about
to talk"
L0003: PRINT_PADDR     G5d
       RTRUE           
L0004: PRINT           "You can't talk to"
       CALL            R0302 (G6a) -> -(SP)
       PRINT           "!"
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0240, 0 locals ()
    Action routine for:
        "tell OBJ about OBJ"

       JE              G6a,#1d [FALSE] L0001
       CALL            R0011 (#a8,Gc6) -> -(SP)
       RTRUE           
L0001: PRINT           "It doesn't look like"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " is interested."

Routine R0241, 0 locals ()

       PRINT_PADDR     Gc5
       NEW_LINE        
       RTRUE           

Routine R0242, 0 locals ()
    Action routine for:
        "tell OBJ to OBJ"

       CALL            R0241 -> -(SP)
       RET_POPPED      

Routine R0243, 0 locals ()
    Action routine for:
        "thank"
        "thank OBJ"

       JZ              G6a [TRUE] L0001
       TEST_ATTR       G6a,#08 [FALSE] L0001
       PRINT_RET       "You're more than welcome."
L0001: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0244, 1 local (0000)
    Action routine for:
        "procee throug OBJ"
        "procee on OBJ"
        "procee in OBJ"
        "bounce throug OBJ"
        "bounce in OBJ"
        "climb throug OBJ"
        "enter OBJ"
        "cross OBJ"
        "go throug OBJ"
        "go on OBJ"
        "go in OBJ"

       TEST_ATTR       G6a,#1b [FALSE] L0001
       CALL            R0291 (G6a) -> -(SP)
       CALL            R0297 ((SP)+) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6a,#1e [TRUE] L0002
       JE              G6a,#50,#11 [FALSE] L0003
L0002: CALL            R0011 (#1c,G6a) -> -(SP)
       RTRUE           
L0003: JE              G6a,#29 [FALSE] L0004
       CALL            R0011 (#a2,G6a) -> -(SP)
       RTRUE           
L0004: TEST_ATTR       G6a,#16 [TRUE] L0005
       CALL            R0353 -> -(SP)
       RET_POPPED      
L0005: JIN             G6a,Gaf [FALSE] L0006
       CALL            R0011 (#42,#b3) -> -(SP)
       RTRUE           
L0006: CALL            R0155 -> -(SP)
       RET_POPPED      

Routine R0245, 0 locals ()
    Pre-action routine for:
        "hurl OBJ out OBJ"
        "hurl OBJ throug OBJ"
        "hurl OBJ to OBJ"
        "hurl OBJ at OBJ"
        "hurl OBJ up OBJ"
        "hurl OBJ"
        "hurl OBJ over OBJ"
        "hurl OBJ off OBJ"

       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0246, 0 locals ()
    Action routine for:
        "hurl OBJ out OBJ"
        "hurl OBJ throug OBJ"
        "hurl OBJ to OBJ"
        "hurl OBJ at OBJ"
        "hurl OBJ up OBJ"
        "hurl OBJ"

       JZ              Gc6 [TRUE] L0001
       TEST_ATTR       "cage door",#0f [FALSE] L0001
       JE              Gc6,#95 [FALSE] L0001
       PRINT_RET       "That wouldn't do any good."
L0001: JZ              Gc6 [TRUE] L0002
       JE              Gc6,#bc [TRUE] L0002
       INSERT_OBJ      G6a,G00
       PRINT_PADDR     G0a
       PRINT           ";"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " goes sailing by."
L0002: GET_PROP        G00,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0011 (#98,G6a,#0c) -> -(SP)
       RTRUE           
L0003: INSERT_OBJ      G6a,G00
       PRINT_RET       "Thrown."

Routine R0247, 0 locals ()
    Action routine for:
        "hurl OBJ over OBJ"
        "hurl OBJ off OBJ"

       GET_PROP        G00,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              Gc6,#0c,#34,#91 [FALSE] L0001
       GET_PROP        G00,#06 -> -(SP)
       INSERT_OBJ      G6a,(SP)+
       PRINT_RET       "It falls to the ground below."
L0001: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0248, 0 locals ()
    Action routine for:
        "attach OBJ to OBJ"
        "attach OBJ"

       JE              G6a,#55 [FALSE] L0001
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0001: PRINT           "You can't tie"
       CALL            R0302 (G6a) -> -(SP)
       JZ              Gc6 [TRUE] L0002
       PRINT           " to"
       CALL            R0302 (Gc6) -> -(SP)
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0249, 0 locals ()
    Action routine for:
        "adjust in OBJ to OBJ"
        "adjust OBJ to OBJ"
        "adjust OBJ"

       JZ              Gc6 [FALSE] L0001
       PRINT           "Unfortunately, "
       CALL            R0301 (S030) -> -(SP)
       RET_POPPED      
L0001: CALL            R0011 (#9a,G6a,Gc6) -> -(SP)
       RTRUE           

Routine R0250, 0 locals ()
    Action routine for:
        "unlock OBJ with OBJ"
        "unlock OBJ"

       TEST_ATTR       G6a,#1b [TRUE] L0001
       JE              G6a,#e3,#d5,#67 [FALSE] L0007
L0001: TEST_ATTR       G6a,#0f [FALSE] L0002
       JE              G6a,#67 [TRUE] L0002
       CALL            R0011 (#5c,G6a,Gc6) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6a,#09 [TRUE] L0003
       JE              G00,#3b [FALSE] L0004
L0003: JE              G6a,#67 [FALSE] L0005
L0004: CALL            R0251 -> -(SP)
       RET_POPPED      
L0005: TEST_ATTR       G6a,#0a [FALSE] L0006
       CLEAR_ATTR      G6a,#0a
       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " is now unlocked."
L0006: PRINT           "But the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " isn't locked."
L0007: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0251, 0 locals ()

       PRINT           "However many times you flip over the key, jiggle the
lock, and cajole the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       ", you can't make the key fit the lock."

Routine R0252, 0 locals ()
    Action routine for:
        "free OBJ with OBJ"
        "free OBJ"

       JE              G6a,#65 [FALSE] L0001
       JE              G00,#83,#38 [FALSE] L0001
       JZ              G93 [TRUE] L0001
       PRINT_RET       "It's hopelessly balled up."
L0001: CALL            R0155 -> -(SP)
       RET_POPPED      

Routine R0253, 0 locals ()
    Action routine for:
        "pole- over OBJ with OBJ"
        "pole- over OBJ"
        "pole- on OBJ"
        "bounce over OBJ with OBJ"

       JZ              Gc6 [FALSE] L0001
       CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       PRINT_RET       "You have no pole."
L0001: JE              Gc6,#81 [TRUE] L0002
       JZ              Gc6 [FALSE] L0003
       CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       TEST_ATTR       G6a,#16 [TRUE] L0003
L0002: PRINT           "You carefully mark off the steps leading up to"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " but, right before the approach, you're psyched out by
the image of "
       CALL            R0004 (#1d) -> -(SP)
       PRINT_RET       " in a full body-cast."
L0003: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0254, 5 locals (0000, 0000, 0000, 0000, 0000)
    Action routine for:
        "procee OBJ"
        "go OBJ"

       JZ              G29 [FALSE] L0001
       CALL            R0011 (#14,G6a) -> -(SP)
       RTRUE           
L0001: GET_PROP_ADDR   G00,G6a -> L00
       JZ              L00 [TRUE] L0011
       GET_PROP_LEN    L00 -> L01
       JE              L01,#01 [FALSE] L0002
       LOADB           L00,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0002: JE              L01,#02 [FALSE] L0003
       LOADW           L00,#00 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RET             #02
L0003: JE              L01,#03 [FALSE] L0005
       LOADW           L00,#00 -> -(SP)
       CALL            (SP)+ -> L04
       JZ              L04 [TRUE] L0004
       CALL            R0284 (L04) -> -(SP)
       RET_POPPED      
L0004: RET             #02
L0005: JE              L01,#04 [FALSE] L0008
       LOADB           L00,#01 -> -(SP)
       LOAD            [(SP)+] -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       LOADB           L00,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0006: LOADW           L00,#01 -> L02
       JZ              L02 [TRUE] L0007
       PRINT_PADDR     L02
       NEW_LINE        
       RET             #02
L0007: PRINT_PADDR     G40
       NEW_LINE        
       RET             #02
L0008: JE              L01,#05 [FALSE] RFALSE
       LOADB           L00,#01 -> L03
       TEST_ATTR       L03,#0f [FALSE] L0009
       LOADB           L00,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0009: LOADW           L00,#01 -> L02
       JZ              L02 [TRUE] L0010
       PRINT_PADDR     L02
       NEW_LINE        
       STORE           Gbd,L03
       RET             #02
L0010: PRINT           "The "
       CALL            R0004 (L03) -> -(SP)
       PRINT           " is closed."
       NEW_LINE        
       STORE           Gbd,L03
       RET             #02
L0011: JE              G6a,#15,#14 [FALSE] L0012
       CALL            R0255 -> -(SP)
       RET             #02
L0012: PRINT_PADDR     G40
       NEW_LINE        
       RET             #02

Routine R0255, 0 locals ()
    Action routine for:
        "procee around OBJ"
        "procee"
        "move around OBJ"
        "go around OBJ"
        "go"

       STORE           Gbc,#0d
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "Did you have any particular direction in mind?"

Routine R0256, 0 locals ()
    Action routine for:
        "procee over OBJ"
        "go over OBJ"

       JE              G6a,#31 [FALSE] L0001
       CALL            R0011 (#62,#31) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#2a,G6a) -> -(SP)
       RTRUE           

Routine R0257, 0 locals ()
    Action routine for:
        "approa OBJ"
        "procee to OBJ"
        "go to OBJ"

       JZ              G6a [TRUE] L0002
       JE              G6a,#29 [FALSE] L0001
       CALL            R0297 (G3c) -> -(SP)
       RTRUE           
L0001: CALL            R0143 -> -(SP)
       RET_POPPED      
L0002: CALL            R0255 -> -(SP)
       RET_POPPED      

Routine R0258, 1 local (0003)
    Action routine for:
        "stay"

       PRINT           "Time passes..."
       NEW_LINE        
L0001: DEC_CHK         L00,#00 [FALSE] L0002
       JUMP            L0003
L0002: CALL            R0015 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
L0003: STORE           G1f,#01
       RET             G1f

Routine R0259, 0 locals ()
    Action routine for:
        "stay for OBJ"

       PRINT_RET       "You may be waiting quite a while."

Routine R0260, 0 locals ()
    Action routine for:
        "stay on OBJ"
        "stay in OBJ"

       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,G6a [FALSE] L0001
       CALL            R0258 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6a,#1e [FALSE] L0002
       CALL            R0011 (#1c,G6a) -> -(SP)
       RTRUE           
L0002: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0261, 0 locals ()
    Action routine for:
        "wave OBJ"

       CALL            R0155 -> -(SP)
       RET_POPPED      

Routine R0262, 0 locals ()
    Action routine for:
        "wave to OBJ"
        "wave at OBJ"
        "wave"

       JZ              G6a [FALSE] L0001
       CALL            R0222 -> -(SP)
       RET_POPPED      
L0001: PRINT           "Despite your friendly nature,"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " isn't likely to respond."

Routine R0263, 0 locals ()
    Pre-action routine for:
        "hang on OBJ"
        "don OBJ"

       TEST_ATTR       G6a,#15 [TRUE] L0001
       PRINT           "You can't wear"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0001: TEST_ATTR       G6a,#14 [FALSE] RFALSE
       PRINT           "You're already wearing"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       "!"

Routine R0264, 0 locals ()
    Action routine for:
        "hang on OBJ"
        "don OBJ"

       INSERT_OBJ      G6a,"it"
       SET_ATTR        G6a,#14
       PRINT           "You are now wearing"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0265, 0 locals ()
    Action routine for:
        "what OBJ"
        "what"

       JZ              G6a [FALSE] L0001
       PRINT           "That's what."
       NEW_LINE        
       JUMP            L0003
L0001: JE              G6a,#02 [FALSE] L0002
       CALL            R0354 ("phreno") -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "Look it up."
       NEW_LINE        
       JUMP            L0003
L0002: PRINT           "Good question."
       NEW_LINE        
L0003: CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0266, 0 locals ()
    Action routine for:
        "where OBJ"
        "where"

       JZ              G6a [TRUE] L0001
       CALL            R0140 (#01) -> -(SP)
       RET_POPPED      
L0001: PRINT_RET       "Right here."

Routine R0267, 0 locals ()
    Action routine for:
        "crack OBJ with OBJ"
        "crack OBJ"

       JZ              Gc6 [FALSE] L0003
       CALL            R0434 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G6a,#10 [FALSE] L0001
       PRINT_RET       "The quietude is shattered by an earsplitting "crack!"
The musty scent of rawhide drifts into your nostrils."
L0001: JIN             "rawhide bullwhip","it" [FALSE] L0002
       CALL            R0011 (#aa,G6a,#10) -> -(SP)
       RTRUE           
L0002: CALL            R0434 -> -(SP)
       RTRUE           
L0003: JE              Gc6,#10 [FALSE] L0009
       CALL            R0434 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0004: TEST_ATTR       G6a,#08 [FALSE] L0007
       JE              G6a,#42 [TRUE] L0007
       PRINT           "As"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " sidesteps your attack, the bullwhip shatters the air
right next to "
       TEST_ATTR       G6a,#05 [FALSE] L0005
       PRINT           "her"
       JUMP            L0006
L0005: PRINT           "him"
L0006: PRINT_PADDR     G5d
       RTRUE           
L0007: TEST_ATTR       G6a,#14 [FALSE] L0008
       CALL            R0011 (#aa,#1d,#10) -> -(SP)
       RTRUE           
L0008: PRINT           "The whip strikes"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       ", but nothing else happens."
L0009: PRINT_RET       "Don't ever bother applying for a job as a cowboy."

Routine R0268, 0 locals ()
    Action routine for:
        "who OBJ"
        "who"

       JZ              G6a [FALSE] L0001
       PRINT_RET       "You."
L0001: TEST_ATTR       G6a,#1f [FALSE] L0002
       CALL            R0011 (#a8,G6a) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "That's not a person!"

Routine R0269, 0 locals ()
    Action routine for:
        "why"

       PRINT_RET       "Why not?"

Routine R0270, 0 locals ()
    Action routine for:
        "howl to OBJ"
        "howl at OBJ"
        "howl"

       PRINT           "You begin to get a sore throat."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0271, 0 locals ()
    Action routine for:
        "you OBJ"
        "you"

       JZ              G6a [FALSE] L0001
       CALL            R0001 (#9f7b) -> -(SP)
       CALL            R0011 (#0e,#c8) -> -(SP)
       RTRUE           
L0001: CALL            R0011 (#0e,#1d) -> -(SP)
       RTRUE           

Routine R0272, 0 locals ()

       STORE           Gbc,#00
       RFALSE          

Routine R0273, 1 local (0000)
    Action routine for:
        "ok"
        "did so OBJ"
        "did"

       GET_PARENT      "it" -> L00
       JE              Gbc,#01 [FALSE] L0001
       PRINT           "You nonchalantly walk away from the "
       CALL            R0004 (L00) -> -(SP)
       PRINT           "."
       NEW_LINE        
       INSERT_OBJ      "it",G00
       RTRUE           
L0001: JE              Gbc,#02 [FALSE] L0002
       PRINT_RET       "A most wholesome decision."
L0002: JE              Gbc,#03 [FALSE] L0003
       PRINT_RET       "Not surprisingly."
L0003: JE              Gbc,#04 [FALSE] L0004
       PRINT_RET       "That's really beneath you."
L0004: JE              Gbc,#05 [FALSE] L0005
       PRINT           "Alright, that's the last "
       CALL            R0004 (#bf) -> -(SP)
       PRINT           "."
       NEW_LINE        
       CALL            R0089 -> -(SP)
       READ            G8e,G5b
       PRINT_RET       "Well, not quite the LAST straw. Please resume play."
L0005: JE              Gbc,#06 [FALSE] L0007
       JZ              G2e [TRUE] L0006
       SET_ATTR        "it",#0c
       PRINT_RET       ""Did not ... Er, um ... Well, I guess I didn't answer
that question before. All I can say is that I haven't seen the kid all
evening.""
L0006: PRINT           ""Thought you'd see it my way.""
       NEW_LINE        
       STORE           G2e,#00
       CALL            R0014 (#a5fc) -> -(SP)
       STOREW          (SP)+,#00,#00
       RTRUE           
L0007: JE              Gbc,#07 [FALSE] L0008
       PRINT_RET       "Real brainy of you."
L0008: JE              Gbc,#08 [FALSE] L0009
       JIN             "Billy Monday",G00 [FALSE] L0009
       PRINT_RET       ""Well then scram.""
L0009: JE              Gbc,#09 [FALSE] L0010
       PRINT_RET       "For shame."
L0010: JE              Gbc,#0a,#0c [FALSE] L0011
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0011: JE              Gbc,#0b [FALSE] L0012
       STORE           G74,#00
       PRINT_RET       "Then you'd be helpless against this dangerous beast."
L0012: JE              Gbc,#0d [FALSE] L0013
       PRINT_RET       "Then supply it."
L0013: PRINT_RET       "Yes?"

Routine R0274, 3 locals (0001, 0000, 0000)

       TEST_ATTR       G6a,#16 [TRUE] L0002
       JZ              L00 [TRUE] L0001
       CALL            R0155 -> -(SP)
L0001: RET             #02
L0002: GET_PARENT      G6a -> -(SP)
       JIN             (SP)+,Gaf [TRUE] L0006
       CALL            R0278 (G6a) -> L02
       CALL            R0278 (Gaf) -> -(SP)
       ADD             L02,(SP)+ -> -(SP)
       JG              (SP)+,#64 [FALSE] L0004
       JZ              L00 [TRUE] L0003
       PRINT           "Your load would be too heavy."
       NEW_LINE        
L0003: RET             #02
L0004: CALL            R0277 (Gaf) -> -(SP)
       JG              (SP)+,#09 [FALSE] L0006
       JZ              L00 [TRUE] L0005
       PRINT           "You're holding too much already."
       NEW_LINE        
L0005: RET             #02
L0006: INSERT_OBJ      G6a,"it"
       SET_ATTR        G6a,#12
       CLEAR_ATTR      G6a,#06
       RTRUE           

Routine R0275, 0 locals ()

       JE              G6a,#48 [FALSE] L0001
       JE              G00,#e1 [TRUE] RFALSE
L0001: JE              G7a,#3a [FALSE] L0002
       JE              G6a,#1d [FALSE] L0002
       JE              G00,#e1 [FALSE] L0002
       CALL            R0011 (#52) -> -(SP)
       RTRUE           
L0002: JE              G6a,#12 [FALSE] L0003
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#3a [FALSE] L0004
       JE              G6a,#cb [TRUE] RFALSE
L0004: JE              G6a,#86,#b3,#0b [TRUE] L0005
       JE              G6a,#33 [FALSE] L0007
L0005: JE              G7a,#47,#97,#3a [TRUE] L0006
       JE              G6a,#33,#86,#b3 [FALSE] RFALSE
       JE              G7a,#3c,#3b [FALSE] RFALSE
L0006: CALL            R0121 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#97,#3a,#47 [TRUE] L0008
       JE              G7a,#3c,#3b [FALSE] L0009
L0008: JE              G6a,#c1 [FALSE] L0009
       JZ              G47 [FALSE] L0009
       CALL            R0356 -> -(SP)
       STORE           G1f,#01
       RET             #02
L0009: JE              G6a,#ba,#98 [TRUE] L0010
       JE              G6a,#c1 [FALSE] L0018
       JZ              G47 [TRUE] L0018
L0010: JE              G7a,#47 [FALSE] L0011
       JE              G8f,#0731 [FALSE] L0011
       JE              G00,#b6 [TRUE] RFALSE
L0011: JE              G7a,#47 [FALSE] L0012
       JE              Gc6,#a8,#4e [FALSE] L0012
       JE              G00,#b6 [FALSE] RFALSE
       PRINT_RET       "The hawker doesn't notice your desire to buy."
L0012: JE              G7a,#47 [FALSE] L0013
       JE              Gc6,#cf [FALSE] L0013
       PRINT_RET       ""Hey, you'd better take better care of your money,
especially around here.""
L0013: JE              G7a,#47 [FALSE] L0014
       TEST_ATTR       Gc6,#08 [FALSE] L0014
       JE              Gc6,#42 [TRUE] L0014
       PRINT           "Disdainfully,"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " rejects your cash payment."
L0014: JE              Gc6,#a0 [FALSE] L0015
       JE              G7a,#3b [TRUE] RFALSE
L0015: JE              Gc6,#5f [FALSE] L0016
       JE              G7a,#3c [TRUE] RFALSE
L0016: JE              G7a,#3b [FALSE] L0017
       JE              Gc6,#6a [FALSE] L0017
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0017: PRINT_RET       "You can't afford to."
L0018: JE              G6a,#c1 [FALSE] L0020
       JZ              Gc6 [TRUE] L0019
       CALL            R0011 (G7a,G6a,#98) -> -(SP)
       RTRUE           
L0019: CALL            R0011 (G7a,#98) -> -(SP)
       RTRUE           
L0020: CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       PRINT           "That's easy for you to say since you don't even have"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0021: JE              G00,#35 [FALSE] L0025
       TEST_ATTR       G6a,#14 [TRUE] L0025
       JE              G6a,#61 [TRUE] L0025
       JE              G7a,#3a [TRUE] L0022
       JE              G7a,#3c [FALSE] L0025
       JE              Gc6,#34 [FALSE] L0025
L0022: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0023
       INSERT_OBJ      G6a,"Top of Cage"
       JUMP            L0024
L0023: INSERT_OBJ      G6a,"Menagerie Nook"
L0024: PRINT_RET       "It slides off the tent."
L0025: JE              G00,#3e [FALSE] L0029
       JE              G6a,#bb,#a5 [TRUE] L0029
       JE              Gc6,#91,#41,#6a [TRUE] L0029
       JE              G7a,#47 [TRUE] L0029
       TEST_ATTR       G6a,#14 [TRUE] L0029
       INSERT_OBJ      G6a,"Performance Ring"
       JE              G6a,#41 [FALSE] L0026
       JIN             "water","bucket" [FALSE] L0026
       INSERT_OBJ      "water",#32
L0026: PRINT           "It falls"
       JIN             "safety net","Performance Ring" [TRUE] L0027
       JIN             "safety net","Mr. Munrab" [FALSE] L0028
L0027: PRINT           ", luckily for the sake of whoever may later dive into
the net,"
L0028: PRINT           " to the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT_RET       " below."
L0029: JIN             G6a,Gaf [TRUE] L0030
       GET_PARENT      G6a -> -(SP)
       TEST_ATTR       (SP)+,#17 [FALSE] L0030
       GET_PARENT      G6a -> -(SP)
       TEST_ATTR       (SP)+,#0f [TRUE] L0030
       PRINT           "Impossible because"
       GET_PARENT      G6a -> -(SP)
       CALL            R0302 ((SP)+,#01) -> -(SP)
       PRINT_RET       " is closed."
L0030: JE              G7a,#3c [FALSE] L0031
       JE              Gc6,#1d [FALSE] L0031
       CALL            R0011 (#77,G6a) -> -(SP)
       RTRUE           
L0031: TEST_ATTR       G6a,#14 [FALSE] L0032
       CALL            R0276 -> -(SP)
       RET_POPPED      
L0032: JE              G6a,#7f [FALSE] RFALSE
       JE              G7a,#85 [TRUE] RFALSE
       PRINT_PADDR     G90
       PRINT           " the "
       CALL            R0004 (#7f) -> -(SP)
       PRINT_RET       "."

Routine R0276, 1 local (0000)

       PRINT           "You'll have to remove "
       JZ              L00 [TRUE] L0001
       PRINT           "the "
       CALL            R0004 (L00) -> -(SP)
       JUMP            L0002
L0001: PRINT           "it"
L0002: PRINT_RET       " first."

Routine R0277, 3 locals (0000, 0000, 0000)

       GET_CHILD       L00 -> L02 [FALSE] L0003
L0001: TEST_ATTR       L02,#14 [TRUE] L0002
       INC             L01
L0002: GET_SIBLING     L02 -> L02 [TRUE] L0001
L0003: RET             L01

Routine R0278, 3 locals (0000, 0000, 0000)

       GET_CHILD       L00 -> L01 [FALSE] L0006
L0001: JE              L00,G2f [FALSE] L0002
       TEST_ATTR       L01,#14 [FALSE] L0002
       INC             L02
       JUMP            L0005
L0002: JE              L00,G2f [FALSE] L0003
       GET_PARENT      L01 -> -(SP)
       TEST_ATTR       (SP)+,#14 [FALSE] L0003
       INC             L02
       JUMP            L0005
L0003: JE              L00,G2f [FALSE] L0004
       INC             L02
       JUMP            L0005
L0004: CALL            R0278 (L01) -> -(SP)
       ADD             L02,(SP)+ -> L02
L0005: GET_SIBLING     L01 -> L01 [TRUE] L0001
L0006: GET_PROP        L00,#0d -> -(SP)
       ADD             L02,(SP)+ -> -(SP)
       RET_POPPED      

Routine R0279, 4 locals (0000, 0000, 0000, 0000)

       JZ              L00 [TRUE] L0001
       PUSH            L00
       JUMP            L0003
L0001: JE              G3b,#02 [TRUE] L0002
       PUSH            #00
       JUMP            L0003
L0002: PUSH            #01
L0003: PULL            L01
       JZ              G48 [FALSE] L0004
       PRINT           "It is pitch black."
       NEW_LINE        
       RET             #00
L0004: TEST_ATTR       G00,#12 [TRUE] L0005
       SET_ATTR        G00,#12
       STORE           L01,#01
L0005: JIN             G00,#2b [FALSE] L0007
       JE              G00,#3e [TRUE] L0006
       CALL            R0004 (G00) -> -(SP)
L0006: GET_PARENT      Gaf -> L03
       TEST_ATTR       L03,#1e [TRUE] L0007
       JZ              G91 [FALSE] L0007
       JE              G00,#3e [TRUE] L0007
       NEW_LINE        
L0007: JZ              L00 [FALSE] L0008
       JE              G3b,#01,#02 [FALSE] RTRUE
L0008: JZ              G91 [TRUE] L0009
       PRINT           ", hiding behind the "
       CALL            R0004 (#42) -> -(SP)
       NEW_LINE        
       JUMP            L0013
L0009: TEST_ATTR       L03,#1e [FALSE] L0013
       JE              L03,#50,#11 [FALSE] L0010
       PRINT           ", "
       PRINT_PADDR     Gd5
       PRINT           " a "
       JUMP            L0012
L0010: JE              L03,#03 [FALSE] L0011
       PRINT           ", in the "
       JUMP            L0012
L0011: PRINT           ", on the "
L0012: CALL            R0004 (L03) -> -(SP)
       NEW_LINE        
L0013: JZ              L01 [TRUE] L0014
       GET_PROP        G00,#09 -> -(SP)
       CALL            (SP)+ (#03) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0014: JZ              L01 [TRUE] L0015
       GET_PROP        G00,#0f -> L02
       JZ              L02 [TRUE] L0015
       PRINT_PADDR     L02
       NEW_LINE        
       JUMP            L0016
L0015: GET_PROP        G00,#09 -> -(SP)
       CALL            (SP)+ (#04) -> -(SP)
L0016: JE              G00,L03 [TRUE] RTRUE
       TEST_ATTR       L03,#1e [FALSE] RTRUE
       GET_PROP        L03,#09 -> -(SP)
       CALL            (SP)+ (#03) -> -(SP)
       RTRUE           

Routine R0280, 7 locals (0000, 0000, 0000, 0000, 0001, 0000, 0000)

       GET_CHILD       L00 -> L02 [TRUE] L0001
L0001: JZ              L02 [TRUE] L0006
       GET_SIBLING     L02 -> L03 [TRUE] L0002
L0002: TEST_ATTR       L02,#13 [TRUE] L0004
       TEST_ATTR       L02,#06 [FALSE] L0003
       JE              L02,#55 [FALSE] L0004
L0003: JE              L02,Gaf [FALSE] L0005
L0004: INSERT_OBJ      L02,#ec
L0005: STORE           L02,L03
       JUMP            L0001
L0006: GET_CHILD       L00 -> L02 [TRUE] L0007
L0007: JZ              L02 [FALSE] L0008
       PRINT           " nothing "
       CALL            R0003 (G03) -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0016
L0008: JZ              L02 [TRUE] L0015
       GET_SIBLING     L02 -> L03 [TRUE] L0009
L0009: JZ              L04 [TRUE] L0010
       STORE           L04,#00
       JUMP            L0012
L0010: JZ              L03 [TRUE] L0011
       PRINT           ","
       JUMP            L0012
L0011: PRINT           " and"
L0012: CALL            R0302 (L02,L01) -> -(SP)
       JZ              L05 [FALSE] L0013
       JZ              L06 [FALSE] L0013
       STORE           L05,L02
       JUMP            L0014
L0013: STORE           L06,#01
       STORE           L05,#00
L0014: STORE           L02,L03
       JUMP            L0008
L0015: JZ              L05 [TRUE] L0016
       JZ              L06 [FALSE] L0016
       STORE           Gbd,L05
L0016: CALL            R0299 (#ec,L00) -> -(SP)
       RET_POPPED      

Routine R0281, 8 locals (0000, 0000, 0000, 0000, 0001, 0000, 0000, 0000)

       JZ              L00 [FALSE] L0001
       STORE           L00,G00
L0001: JZ              G48 [FALSE] L0002
       PRINT_PADDR     G67
       NEW_LINE        
       RTRUE           
L0002: GET_CHILD       L00 -> L01 [TRUE] L0003
L0003: JZ              L01 [TRUE] RTRUE
L0004: JZ              L01 [TRUE] L0008
       GET_SIBLING     L01 -> L02 [TRUE] L0005
L0005: TEST_ATTR       L01,#13 [TRUE] L0006
       TEST_ATTR       L01,#06 [TRUE] L0006
       JE              L01,Gaf [TRUE] L0006
       GET_PARENT      "it" -> -(SP)
       JE              L01,(SP)+ [FALSE] L0007
L0006: INSERT_OBJ      L01,#cc
L0007: STORE           L01,L02
       JUMP            L0004
L0008: GET_CHILD       L00 -> L01 [TRUE] L0009
L0009: JZ              L01 [TRUE] L0012
       JE              L00,G00 [FALSE] L0012
       GET_SIBLING     L01 -> L02 [TRUE] L0010
L0010: GET_PROP        L01,#10 -> L03
       JZ              L03 [TRUE] L0011
       TEST_ATTR       L01,#12 [TRUE] L0011
       NEW_LINE        
       PRINT_PADDR     L03
       NEW_LINE        
       INSERT_OBJ      L01,#cc
L0011: STORE           L01,L02
       JUMP            L0009
L0012: GET_CHILD       L00 -> L01 [TRUE] L0013
L0013: JZ              L01 [TRUE] L0016
       JE              L00,G00 [FALSE] L0016
       GET_SIBLING     L01 -> L02 [TRUE] L0014
L0014: GET_PROP        L01,#0f -> L03
       JZ              L03 [TRUE] L0015
       NEW_LINE        
       PRINT_PADDR     L03
       NEW_LINE        
       INSERT_OBJ      L01,#cc
L0015: STORE           L01,L02
       JUMP            L0013
L0016: GET_CHILD       L00 -> L01 [TRUE] L0017
L0017: JZ              L01 [TRUE] L0020
       JE              L00,G00 [FALSE] L0020
       GET_SIBLING     L01 -> L02 [TRUE] L0018
L0018: GET_PROP        L01,#12 -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       NEW_LINE        
       GET_PROP        L01,#12 -> -(SP)
       CALL            (SP)+ (#05) -> -(SP)
       NEW_LINE        
       INSERT_OBJ      L01,#cc
L0019: STORE           L01,L02
       JUMP            L0017
L0020: GET_CHILD       L00 -> L01 [TRUE] L0021
L0021: JZ              L01 [TRUE] L0039
L0022: JZ              L01 [TRUE] L0035
       GET_SIBLING     L01 -> L02 [TRUE] L0023
L0023: JZ              L04 [TRUE] L0025
       STORE           L04,#00
       JE              L00,G00 [FALSE] L0028
       NEW_LINE        
       JZ              L02 [TRUE] L0024
       PRINT_PADDR     G7c
       JUMP            L0028
L0024: PRINT           "There's"
       JUMP            L0028
L0025: JZ              L02 [FALSE] L0026
       JE              L00,#d3 [FALSE] L0027
       JG              G8f,#00 [FALSE] L0027
L0026: PRINT           ","
       JUMP            L0028
L0027: PRINT           " and"
L0028: CALL            R0302 (L01) -> -(SP)
       TEST_ATTR       L01,#14 [FALSE] L0029
       PRINT           " (being worn)"
L0029: JE              L01,#7f [FALSE] L0030
       CALL            R0292 (#7f) -> -(SP)
       JZ              (SP)+ [TRUE] L0030
       PRINT           " on "
       CALL            R0004 (#b3) -> -(SP)
L0030: JE              L01,#41 [FALSE] L0031
       JIN             "water","bucket" [FALSE] L0031
       PRINT           " (filled with "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           ")"
       JUMP            L0032
L0031: CALL            R0293 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] L0032
       CALL            R0282 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] L0032
       INSERT_OBJ      L01,#7c
L0032: JZ              L06 [FALSE] L0033
       JZ              L05 [FALSE] L0033
       STORE           L06,L01
       JUMP            L0034
L0033: STORE           L05,#01
       STORE           L06,#00
L0034: STORE           L01,L02
       JUMP            L0022
L0035: JZ              L06 [TRUE] L0036
       JZ              L05 [FALSE] L0036
       STORE           Gbd,L06
L0036: JE              L00,#d3 [FALSE] L0037
       JG              G8f,#00 [FALSE] L0037
       PRINT           " and "
       CALL            R0084 (G8f) -> -(SP)
       PRINT           " to your name"
L0037: JE              L00,G00 [FALSE] L0038
       PRINT           " here"
L0038: PRINT           "."
       STORE           L07,#01
L0039: GET_CHILD       #7c -> L01 [TRUE] L0040
L0040: JZ              L01 [FALSE] L0041
       JUMP            L0045
L0041: TEST_ATTR       L01,#11 [FALSE] L0042
       NEW_LINE        
       NEW_LINE        
       PRINT           "On"
       JUMP            L0043
L0042: NEW_LINE        
       NEW_LINE        
       PRINT           "Inside"
L0043: CALL            R0302 (L01,#01) -> -(SP)
       PRINT           " you see"
       CALL            R0280 (L01) -> -(SP)
       PRINT           "."
       GET_SIBLING     L01 -> L01 [TRUE] L0044
L0044: JUMP            L0040
L0045: JZ              L07 [TRUE] L0046
       NEW_LINE        
L0046: CALL            R0299 (#7c,L00) -> -(SP)
       CALL            R0299 (#cc,L00) -> -(SP)
       RET_POPPED      

Routine R0282, 4 locals (0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L01 [TRUE] L0001
L0001: JZ              L01 [TRUE] L0004
       TEST_ATTR       L01,#13 [TRUE] L0002
       TEST_ATTR       L01,#06 [TRUE] L0002
       JE              L01,Gaf [TRUE] L0002
       STORE           L03,#01
       RET             L03
L0002: GET_SIBLING     L01 -> L01 [TRUE] L0003
L0003: JUMP            L0001
L0004: RET             L03

Routine R0283, 0 locals ()

       INSERT_OBJ      "it",#2b
       GET_CHILD       G6a -> -(SP) [FALSE] L0001
       CALL            R0280 (G6a) -> -(SP)
       PRINT_PADDR     G5d
       JUMP            L0002
L0001: PRINT_PADDR     G9b
       PRINT           " (not counting you)."
       NEW_LINE        
L0002: INSERT_OBJ      "it",G6a
       RTRUE           

Routine R0284, 2 locals (0000, 0001)

       INSERT_OBJ      "it",L00
       STORE           G00,L00
       CALL            R0065 (G00) -> G48
       GET_PROP        G00,#09 -> -(SP)
       CALL            (SP)+ (#02) -> -(SP)
       JZ              L01 [TRUE] RTRUE
       JE              G00,L00 [FALSE] RTRUE
       CALL            R0142 -> -(SP)
       RTRUE           

Routine R0285, 2 locals (0000, 0000)

       PRINT_PADDR     L01
       CALL            R0286 -> -(SP)
       PRINT           "Well not quite died. The doctors do what they can, but
as the debts rise and the prognosis dips you take the only avenue left -- and
sell "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " to the circus.

As "The Human "
       LOADW           G07,L00 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           "," you enjoy top billing as a popular midway
attraction, garnering fame to rival that of nineteenth century oddity John
Merrick.

Still, as the fingers of the Great Unwashed poke at your benumbed hide, you
contemplate how this fate might have been thwarted."
       NEW_LINE        
       CALL            R0088 -> -(SP)
       RET_POPPED      

Routine R0286, 0 locals ()

       NEW_LINE        
       NEW_LINE        
       PRINT           "    ****  You have died  ****"
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0287, 0 locals ()

       CALL            R0014 (#5d6c) -> -(SP)
       STOREW          (SP)+,#00,#00
       NEW_LINE        
       PRINT_RET       "(The reports of your demise have been grossly
exaggerated. You suffer little more than injured pride.)"

Routine R0288, 2 locals (0000, 0000)

       GET_PARENT      L00 -> L01
       TEST_ATTR       L00,#13 [TRUE] RFALSE
       JE              L00,#ee [FALSE] L0001
       JE              G32,G00 [FALSE] RFALSE
       RTRUE           
L0001: JZ              L01 [TRUE] RFALSE
       JE              L01,#4c [TRUE] RTRUE
       JE              L01,#32 [FALSE] L0002
       CALL            R0294 (L00,G00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0002: CALL            R0290 (L00) -> -(SP)
       JE              (SP)+,G00 [FALSE] RFALSE
       JE              L01,Gaf,G00 [TRUE] RTRUE
       TEST_ATTR       L01,#0f [FALSE] RFALSE
       CALL            R0288 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0289, 2 locals (0000, 0000)

       GET_PARENT      L00 -> L01
       CALL            R0288 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0293 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0289 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0290, 1 local (0000)

L0001: JZ              L00 [TRUE] RFALSE
       JIN             L00,#4c [FALSE] L0002
       RET             #4c
L0002: JIN             L00,#2b [FALSE] L0003
       RET             L00
L0003: GET_PARENT      L00 -> L00
       JUMP            L0001

Routine R0291, 3 locals (0000, 0000, 0000)

L0001: GET_NEXT_PROP   G00,L01 -> L01
       JL              L01,#14 [TRUE] RFALSE
       GET_PROP_ADDR   G00,L01 -> L02
       GET_PROP_LEN    L02 -> -(SP)
       JE              (SP)+,#05 [FALSE] L0001
       LOADB           L02,#01 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0001
       RET             L01

Routine R0292, 2 locals (0000, 0000)

       JZ              L01 [FALSE] L0001
       STORE           L01,Gaf
L0001: JZ              L00 [TRUE] RFALSE
       JIN             L00,L01 [TRUE] RTRUE
       JIN             L00,#2b [TRUE] RFALSE
       JIN             L00,#4c [TRUE] RFALSE
       GET_PARENT      L00 -> -(SP)
       CALL            R0292 ((SP)+,L01) -> -(SP)
       RET_POPPED      

Routine R0293, 1 local (0000)

       JZ              L00 [TRUE] RFALSE
       TEST_ATTR       L00,#13 [TRUE] RFALSE
       TEST_ATTR       L00,#0d [TRUE] RTRUE
       TEST_ATTR       L00,#0f [TRUE] RTRUE
       RFALSE          

Routine R0294, 3 locals (0000, 0000, 0000)

       GET_PROP_ADDR   L01,#11 -> L02
       JZ              L02 [TRUE] RFALSE
       GET_PROP_LEN    L02 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0064 (L00,L02,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0295, 3 locals (0000, 0000, 0000)

       GET_CHILD       L00 -> L02 [TRUE] L0001
L0001: JZ              L02 [TRUE] RFALSE
L0002: TEST_ATTR       L02,L01 [FALSE] L0003
       RET             L02
L0003: GET_SIBLING     L02 -> L02 [TRUE] L0002
       RFALSE          

Routine R0296, 0 locals ()

       GET_PARENT      G6a -> -(SP)
       TEST_ATTR       (SP)+,#17 [FALSE] RFALSE
       GET_PARENT      G6a -> -(SP)
       TEST_ATTR       (SP)+,#0f [TRUE] RFALSE
       TEST_ATTR       G6a,#16 [FALSE] RFALSE
       PRINT           "But"
       GET_PARENT      G6a -> -(SP)
       CALL            R0302 ((SP)+,#01) -> -(SP)
       PRINT_RET       " is closed!"

Routine R0297, 1 local (0000)

       STORE           G29,L00
       CALL            R0011 (#a2,L00) -> -(SP)
       RET_POPPED      

Routine R0298, 0 locals ()

       STORE           G34,#00
       STORE           Ga3,#00
       RET             #02

Routine R0299, 4 locals (0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L03 [TRUE] L0001
L0001: JZ              L03 [TRUE] RTRUE
       GET_SIBLING     L03 -> L02 [TRUE] L0002
L0002: JE              L01,#9f [FALSE] L0003
       TEST_ATTR       L03,#14 [FALSE] L0003
       SET_ATTR        L03,#02
L0003: JE              L01,#d3 [FALSE] L0004
       TEST_ATTR       L03,#02 [FALSE] L0004
       SET_ATTR        L03,#14
       JUMP            L0005
L0004: CLEAR_ATTR      L03,#14
L0005: INSERT_OBJ      L03,L01
       STORE           L03,L02
       JUMP            L0001

Routine R0300, 3 locals (0000, 0000, 0000)

L0001: CALL            R0295 (L00,#16) -> L02
       JZ              L02 [TRUE] RTRUE
       INSERT_OBJ      L02,L01
       JUMP            L0001

Routine R0301, 1 local (0000)

       PRINT_PADDR     L00
       CALL            R0302 (G6a,#01) -> -(SP)
       CALL            R0003 (Gbe) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0302, 2 locals (0000, 0000)

       JZ              L00 [FALSE] L0001
       STORE           L00,#bd
L0001: TEST_ATTR       L00,#01 [TRUE] L0005
       JZ              L01 [TRUE] L0002
       PRINT           " the"
       JUMP            L0005
L0002: TEST_ATTR       L00,#04 [FALSE] L0003
       PRINT           " "
       CALL            R0004 (L00) -> -(SP)
       RTRUE           
L0003: TEST_ATTR       L00,#07 [FALSE] L0004
       PRINT           " an"
       JUMP            L0005
L0004: PRINT           " a"
L0005: PRINT           " "
       CALL            R0004 (L00) -> -(SP)
       RET_POPPED      

Routine R0303, 0 locals ()

       CALL            R0354 ("stomac") -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G7a,#4b [FALSE] L0001
       CALL            R0011 (#4b,#22) -> -(SP)
       RTRUE           
L0001: CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0304, 0 locals ()

       JZ              G47 [TRUE] L0001
       JE              G7a,#75,#17,#1a [TRUE] L0001
       JE              Gaf,#d3 [FALSE] L0001
       JG              G13,G8f [FALSE] L0001
       PRINT_PADDR     G0c
       RTRUE           
L0001: JE              Gac,#15 [FALSE] RFALSE
       JE              #c1,G6a [FALSE] L0002
       CALL            R0011 (G7a,#08,Gc6) -> -(SP)
       RTRUE           
L0002: CALL            R0011 (G7a,G6a,#08) -> -(SP)
       RTRUE           

Routine R0305, 0 locals ()

       CALL            R0499 (#98) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G7a,#45 [FALSE] L0001
       CALL            R0124 -> -(SP)
       RTRUE           
L0001: JE              G7a,#6d [TRUE] RFALSE
       JG              G8f,#00 [FALSE] L0005
       JE              G7a,#30 [FALSE] L0002
       PRINT           "You're carrying "
       CALL            R0084 (G8f) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0002: JE              G7a,#42 [FALSE] L0003
       PRINT           "It looks a lot like "
       CALL            R0084 (G8f) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0003: JE              G7a,#75 [FALSE] L0004
       CALL            R0232 -> -(SP)
       RET_POPPED      
L0004: PRINT_RET       "Treating your hard-earned cash this way won't get you
anywhere."
L0005: CALL            R0347 (#98) -> -(SP)
       RET_POPPED      

Routine R0306, 0 locals ()

       JL              G8f,#64 [FALSE] L0001
       JZ              G8f [TRUE] L0001
       PRINT_PADDR     G0c
       RTRUE           
L0001: JE              G7a,#1a [FALSE] L0004
       CALL            R0355 (#f2) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           G13,#c8
       JUMP            L0003
L0002: STORE           G13,#64
L0003: STORE           G47,#01
       CALL            R0011 (#1a,#c1) -> -(SP)
       RTRUE           
L0004: JE              G7a,#42 [TRUE] RFALSE
       CALL            R0305 -> -(SP)
       RET_POPPED      

Routine R0307, 4 locals (0000, 0001, 0000, 0000)

       JE              G6a,#bd [FALSE] L0001
       JE              Gc6,#bd [FALSE] L0001
       PRINT_RET       "[Those things aren't here!]"
L0001: JE              G6a,#bd [FALSE] L0002
       STORE           L00,G86
       JUMP            L0003
L0002: STORE           L00,G38
       STORE           L01,#00
L0003: JZ              L01 [TRUE] L0005
       JE              G7a,#45,#4a,#6e [TRUE] L0004
       JE              G7a,#a8,#a9,#ac [TRUE] L0004
       JE              G7a,#9f,#14,#21 [TRUE] L0004
       JE              G7a,#1f,#20 [TRUE] L0004
       JE              G6a,#54 [FALSE] L0007
       JE              G7a,#4b [FALSE] L0007
       JIN             "Chelsea",#32 [FALSE] L0007
L0004: STORE           L03,#01
       CALL            R0308 (L00,L01) -> L02
       JZ              L02 [TRUE] RFALSE
       JE              L02,#bd [FALSE] RTRUE
       JUMP            L0007
L0005: JE              G7a,#16,#17,#93 [TRUE] L0006
       JE              G7a,#82 [FALSE] L0007
L0006: STORE           L03,#01
       CALL            R0308 (L00,L01) -> L02
       JZ              L02 [TRUE] RFALSE
       JE              L02,#bd [FALSE] RTRUE
L0007: JZ              L03 [TRUE] L0008
       PRINT_PADDR     G05
       JUMP            L0015
L0008: JE              Gaf,#d3 [FALSE] L0012
       PRINT           "[You can't "
       JE              G26,"conver","voice","voices" [FALSE] L0009
       PRINT           "hear"
       JUMP            L0010
L0009: PRINT           "see"
L0010: CALL            R0037 (G26) -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       PRINT           " any"
L0011: CALL            R0309 (L01) -> -(SP)
       PRINT           " here.]"
       NEW_LINE        
       JUMP            L0015
L0012: JE              #db,Gaf [TRUE] RFALSE
       JE              #99,Gaf [FALSE] L0013
       TEST_ATTR       "detective",#0c [TRUE] RFALSE
       JZ              G68 [FALSE] RFALSE
L0013: JE              Gaf,#cf [TRUE] RFALSE
       PRINT           "Looking confused,"
       CALL            R0302 (Gaf,#01) -> -(SP)
       PRINT           " says, "I don't see"
       CALL            R0037 (G26) -> -(SP)
       JZ              (SP)+ [FALSE] L0014
       PRINT           " any"
L0014: CALL            R0309 (L01) -> -(SP)
       PRINT           " here!""
       NEW_LINE        
L0015: CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0308, 4 locals (0000, 0000, 0000, 0000)

       CALL            R0054 (L00) -> L02
       JE              #01,L02 [FALSE] L0002
       JZ              L01 [TRUE] L0001
       STORE           G6a,G27
       STORE           Gbd,G6a
       RFALSE          
L0001: STORE           Gc6,G27
       RFALSE          
L0002: JL              #01,L02 [FALSE] L0004
       LOADW           L00,#01 -> L03
       GET_PROP        L03,#07 -> -(SP)
       CALL            (SP)+ -> L03
       JZ              L03 [TRUE] L0004
       JE              L03,#bd [TRUE] RTRUE
       JZ              L01 [TRUE] L0003
       STORE           G6a,L03
       STORE           Gbd,G6a
       RFALSE          
L0003: STORE           Gc6,L03
       RFALSE          
L0004: RET             #bd

Routine R0309, 2 locals (0000, 0000)

       JE              G26,#49 [FALSE] L0001
       PRINT           "anyone by that name"
       RTRUE           
L0001: JZ              Gae [TRUE] L0003
       JZ              G77 [TRUE] L0002
       PRINT           " "
       PRINT_ADDR      G4f
L0002: JZ              G26 [TRUE] RFALSE
       PRINT           " "
       PRINT_ADDR      G26
       RTRUE           
L0003: JZ              L00 [TRUE] L0004
       LOADW           Ga1,#06 -> L01
       LOADW           Ga1,#07 -> -(SP)
       CALL            R0036 (L01,(SP)+,#00) -> -(SP)
       RET_POPPED      
L0004: LOADW           Ga1,#08 -> L01
       LOADW           Ga1,#09 -> -(SP)
       CALL            R0036 (L01,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0310, 0 locals ()

       JE              G7a,#2d,#5b [FALSE] RFALSE
       PRINT_RET       "You've no access to the lighting equipment."

Routine R0311, 0 locals ()

       JE              G7a,#14,#1c,#2a [FALSE] RFALSE
       CALL            R0255 -> -(SP)
       RET_POPPED      

Routine R0312, 0 locals ()

       JE              G7a,#24,#25,#26 [TRUE] L0001
       JE              G7a,#1c [FALSE] L0002
L0001: CALL            R0124 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#61 [FALSE] L0003
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#82 [FALSE] L0004
       JE              G00,#ce [FALSE] L0004
       JE              G6a,#bc [FALSE] L0004
       CALL            R0011 (#82,#c3,Gc6) -> -(SP)
       RTRUE           
L0004: JE              G7a,#42 [FALSE] L0005
       JE              G00,#38,#46,#3e [FALSE] L0005
       CALL            R0011 (#5e) -> -(SP)
       RTRUE           
L0005: JE              G7a,#42 [FALSE] L0006
       JE              G00,#0d [FALSE] L0006
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#2a [FALSE] L0007
       CALL            R0255 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#59 [FALSE] RFALSE
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      

Routine R0313, 0 locals ()

       JE              G00,#01,#5e [FALSE] L0001
       CALL            R0011 (G7a,#d2) -> -(SP)
       RTRUE           
L0001: JE              G7a,#3b [FALSE] L0002
       JE              G6a,#db [FALSE] L0002
       JE              G00,#e2 [FALSE] L0002
       CALL            R0011 (#3b,#db,#7b) -> -(SP)
       RTRUE           
L0002: JE              G7a,#57 [FALSE] RFALSE
       JE              G00,#e2 [FALSE] RFALSE
       JIN             "Chelsea",#32 [FALSE] RFALSE
       JZ              Gb1 [FALSE] L0003
       CALL            R0314 -> -(SP)
       RET_POPPED      
L0003: CALL            R0011 (#57,#ef) -> -(SP)
       RTRUE           

Routine R0314, 0 locals ()

       STORE           Gb1,#01
       PRINT           "You can hear a faint whimper coming from the "
       CALL            R0004 (#7b) -> -(SP)
       PRINT_RET       "."

Routine R0315, 0 locals ()

       JE              G00,#3f [FALSE] L0001
       JIN             "Mr. Munrab","On the Wagon" [FALSE] L0001
       CALL            R0011 (#57,#64) -> -(SP)
       RTRUE           
L0001: JE              G7a,#61 [FALSE] RFALSE
       CALL            R0011 (#5d) -> -(SP)
       RTRUE           

Routine R0316, 0 locals ()

       JE              G7a,#44,#42 [FALSE] L0001
       CALL            R0170 -> -(SP)
       RTRUE           
L0001: JE              G7a,#2a,#40,#14 [FALSE] RFALSE
       JE              G00,#e8 [FALSE] L0002
       CALL            R0011 (#14,#19) -> -(SP)
       RTRUE           
L0002: PRINT           "You're close enough to the "
       CALL            R0004 (#84) -> -(SP)
       PRINT_RET       " already."

Routine R0317, 0 locals ()

       JE              G7a,#a8 [FALSE] L0001
       PRINT_RET       "You'd have to see it to believe it."
L0001: JE              G7a,#14 [FALSE] RFALSE
       CALL            R0297 (#14) -> -(SP)
       RET_POPPED      

Routine R0318, 0 locals ()

       JE              G00,#94 [FALSE] L0001
       TEST_ATTR       "ladder",#0c [TRUE] L0001
       CALL            R0347 (#65) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#75 [FALSE] L0003
       JE              G7b,"take","get","remove" [FALSE] L0002
       PRINT_RET       "It's not takeable."
L0002: CALL            R0011 (#24,#65) -> -(SP)
       RTRUE           
L0003: JE              G00,#35 [FALSE] L0008
       JE              G7a,#27,#45,#42 [TRUE] L0004
       JE              G7a,#24 [FALSE] L0007
L0004: CALL            R0001 (#d097) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       PRINT_RET       "You desperately grope in the darkness for the rope
ladder, but can't seem to find it."
L0005: PRINT           "You can barely see the ladder. "
       JE              G7a,#24,#27 [FALSE] L0006
       CALL            R0297 (#16) -> -(SP)
       RTRUE           
L0006: NEW_LINE        
       RTRUE           
L0007: CALL            R0001 (#d097) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0347 (#65) -> -(SP)
       RET_POPPED      
L0008: JZ              G93 [TRUE] L0010
       JE              G00,#83,#38 [FALSE] L0010
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#60 [TRUE] L0010
       JE              G7a,#9d [TRUE] L0010
       CALL            R0339 (#65) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#42 [FALSE] RFALSE
       CALL            R0406 (#01) -> -(SP)
       RET_POPPED      
L0010: JE              G7a,#7b,#9d [FALSE] L0011
       JE              Gc6,#81 [FALSE] L0011
       CALL            R0011 (#9d,#65) -> -(SP)
       RTRUE           
L0011: JE              G7a,#24,#26 [FALSE] L0012
       JE              G00,#9d [FALSE] L0012
       CALL            R0011 (#1c,#b9) -> -(SP)
       RTRUE           
L0012: JE              G7a,#24 [FALSE] L0013
       JE              G00,#3f [FALSE] L0013
       CALL            R0011 (#27,#65) -> -(SP)
       RTRUE           
L0013: JE              G7a,#24,#26 [FALSE] L0014
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0014: JE              G7a,#27 [FALSE] RFALSE
       JE              G00,#3f [FALSE] L0016
       CALL            R0319 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0002 (#9581) -> -(SP)
       JZ              (SP)+ [TRUE] L0015
       CALL            R0502 (#01) -> -(SP)
L0015: CALL            R0284 (#94) -> -(SP)
       RTRUE           
L0016: CALL            R0297 (#16) -> -(SP)
       RET_POPPED      

Routine R0319, 3 locals (0000, 0001, 0000)

       JZ              G93 [TRUE] L0001
       JE              G00,#83 [FALSE] L0001
       JIN             "it","lion stand" [TRUE] L0001
       PRINT           "The rope "
       CALL            R0004 (#65) -> -(SP)
       PRINT_RET       ", which is tangled around its platform, dangles down a
couple of feet out of your reach."
L0001: CALL            R0320 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       GET_CHILD       "it" -> L00 [TRUE] L0002
L0002: TEST_ATTR       L00,#14 [TRUE] L0003
       JE              L00,#a5,#c4 [TRUE] L0003
       JUMP            L0005
L0003: GET_SIBLING     L00 -> L00 [TRUE] L0004
L0004: JUMP            L0002
L0005: GET_PROP        G00,#06 -> L02
       JZ              L02 [TRUE] L0006
       INSERT_OBJ      L00,L02
       JUMP            L0007
L0006: STORE           L01,#00
       INSERT_OBJ      L00,G00
L0007: PRINT           "Trying to grip the "
       CALL            R0004 (#65) -> -(SP)
       PRINT           ", you fumble away"
       CALL            R0302 (L00,#01) -> -(SP)
       JZ              L01 [TRUE] L0008
       PRINT           " and it falls to the ground below"
L0008: PRINT_PADDR     G5d
       RTRUE           
L0009: JE              Gce,#01 [FALSE] RFALSE
       JE              G00,#83 [FALSE] RFALSE
       STORE           Gce,#02
       CLEAR_ATTR      "Platform",#12
       PRINT           "As you hoist "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " onto the "
       CALL            R0004 (#65) -> -(SP)
       PRINT           ", the platform buckles with the addition of your
weight. "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " is spooked, and "
       JIN             "safety net","Mr. Munrab" [TRUE] L0010
       PRINT           "loses his bundle which falls tragically in front of
your horrified face to the ground below."
       CALL            R0088 -> -(SP)
       RET_POPPED      
L0010: PRINT           "clambers up into the supporting apparatus as you board
the platform."
       NEW_LINE        
       NEW_LINE        
       CALL            R0290 (#30) -> -(SP)
       JE              (SP)+,#38 [FALSE] L0011
       TEST_ATTR       "transistor radio",#18 [FALSE] L0011
       JE              Gd1,#0492 [FALSE] L0011
       PRINT           "In his distress, "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " must not have noticed the radio playing."
       NEW_LINE        
       NEW_LINE        
L0011: CALL            R0284 (#38) -> -(SP)
       RTRUE           

Routine R0320, 0 locals ()

       CALL            R0277 (#d3) -> -(SP)
       JG              (SP)+,#02 [TRUE] L0001
       CALL            R0278 (#d3) -> -(SP)
       JG              (SP)+,#1e [FALSE] L0002
L0001: CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
L0002: CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0277 (#d3) -> -(SP)
       JG              (SP)+,#01 [TRUE] RTRUE
L0003: CALL            R0292 (#60) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0321, 0 locals ()

       JE              G00,#94 [FALSE] L0001
       TEST_ATTR       "ladder",#0c [TRUE] L0001
       PRINT_PADDR     G40
       NEW_LINE        
       RFALSE          
L0001: CALL            R0319 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0323 -> -(SP)
       JE              G00,#83 [FALSE] L0002
       RET             #38
L0002: JE              G00,#94 [FALSE] L0003
       RET             #3f
L0003: RET             #35

Routine R0322, 0 locals ()

       CALL            R0319 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0323 -> -(SP)
       JE              G00,#38 [FALSE] L0001
       RET             #83
L0001: JE              G00,#3f [FALSE] L0002
       RET             #94
L0002: RET             #1e

Routine R0323, 0 locals ()

       JE              G00,#3f [FALSE] L0001
       CALL            R0002 (#9581) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0502 (#01) -> -(SP)
       RTRUE           
L0001: PRINT           "You grasp the "
       CALL            R0004 (#65) -> -(SP)
       PRINT           " firmly and climb "
       JE              G29,#17 [FALSE] L0002
       PRINT           "up"
       JUMP            L0003
L0002: PRINT           "down"
L0003: PRINT           " ..."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0324, 0 locals ()

       JE              G7a,#89 [FALSE] RFALSE
       CALL            R0011 (#89) -> -(SP)
       RTRUE           

Routine R0325, 1 local (0000)

       JE              G7a,#a6 [FALSE] L0001
       STORE           G6a,#00
       CALL            R0011 (#a7) -> -(SP)
       RTRUE           
L0001: JE              G7a,#7a,#7d [FALSE] L0002
       JE              G6a,#0b [FALSE] L0002
       CALL            R0001 (#e1bc) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           Gaf,#02
       CALL            R0011 (G7a,G6a) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           
L0002: JE              G7a,#42,#7d [FALSE] L0003
       PRINT_RET       "Your lifeline is very short."
L0003: JE              G7a,#12 [FALSE] L0004
       STORE           G6a,#00
       CALL            R0011 (#12) -> -(SP)
       RTRUE           
L0004: JE              G7a,#3b [FALSE] L0005
       JE              Gc6,#0b [FALSE] L0005
       CALL            R0011 (#75,G6a) -> -(SP)
       RTRUE           
L0005: JE              G7a,#83 [FALSE] RFALSE
       CALL            R0295 (G00,#08) -> L00
       JZ              L00 [TRUE] L0007
       JE              L00,#cd [FALSE] L0006
       CALL            R0011 (#83,#8c) -> -(SP)
       RTRUE           
L0006: CALL            R0011 (#96,L00) -> -(SP)
       RTRUE           
L0007: PRINT_RET       "Glad to meet you."

Routine R0326, 0 locals ()

       JIN             "monkey","detective" [FALSE] L0001
       JIN             "detective",G00 [FALSE] L0001
       PRINT           "Obviously, the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " doesn't ACTUALLY have a "
       CALL            R0004 (#7f) -> -(SP)
       PRINT_RET       " on his back. This is merely a metaphor indicating
"obsession" or "addiction"; in the detective's case, the latter."
L0001: JIN             "monkey","it" [FALSE] RFALSE
       JE              G7a,#42 [FALSE] L0002
       PRINT           ""Obsessed" though you may be, that is no metaphorical "
       CALL            R0004 (#7f) -> -(SP)
       PRINT_RET       ". It's high-strung, ill-mannered and foul-smelling."
L0002: CALL            R0342 (#7f) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       JE              G7a,#4a,#7e,#75 [TRUE] L0003
       JE              G7a,#68 [FALSE] L0004
L0003: PRINT_RET       "The animal darts over to your opposite shoulder,
piercing your ear with a shriek."
L0004: JE              G7a,#7a [FALSE] L0005
       PRINT           "He snaps his primate choppers at "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       " and you flinch."
L0005: JE              G7a,#85,#47 [FALSE] L0008
       JE              Gc6,#7f [FALSE] L0008
       JE              G6a,#d1 [FALSE] L0007
       TEST_ATTR       "two-dollar-and-25-cent frozen banana",#0c [FALSE] L0006
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana","monkey"
       SET_ATTR        "two-dollar-and-25-cent frozen banana",#06
       PRINT           "The human-like hand of the "
       CALL            R0004 (#7f) -> -(SP)
       PRINT           " grasps it and chomps away while clinging ever more
tightly onto "
       CALL            R0004 (#b3) -> -(SP)
       PRINT_RET       "."
L0006: CALL            R0344 -> -(SP)
       RET_POPPED      
L0007: CALL            R0011 (#75,#7f) -> -(SP)
       RTRUE           
L0008: CALL            R0337 (#7f) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       PRINT           "It screeches loudly."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#89 [FALSE] RFALSE
       PRINT_RET       "Foul."

Routine R0327, 0 locals ()

       JE              G7a,#7d,#7a [FALSE] RFALSE
       JE              G6a,#33 [FALSE] RFALSE
       CALL            R0001 (#e1bc) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           Gaf,#02
       CALL            R0011 (G7a,G6a) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           

Routine R0328, 0 locals ()

       RFALSE          

Routine R0329, 0 locals ()

       TEST_ATTR       "clown mask",#14 [FALSE] L0003
       JE              Gaf,#d3 [FALSE] L0001
       JE              G7a,#93,#0e,#16 [TRUE] L0001
       JE              G7a,#11,#4c [FALSE] L0002
L0001: PRINT           "The "
       CALL            R0004 (#5d) -> -(SP)
       PRINT           " muffles your words."
       NEW_LINE        
       STORE           Gbd,#5d
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#56,#1d [FALSE] RFALSE
       JZ              G6a [TRUE] RFALSE
       PRINT           "The "
       CALL            R0004 (#5d) -> -(SP)
       PRINT           " is in the way."
       NEW_LINE        
       STORE           Gbd,#5d
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: CALL            R0001 (#72f0) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0337 (#cf) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G6a,#24 [TRUE] RFALSE
       JE              G7a,#93,#0e,#16 [TRUE] L0004
       JE              G7a,#11,#4c [TRUE] L0004
       JE              Gaf,#d3 [TRUE] RFALSE
L0004: STORE           Gd4,#01
       PUT_PROP        "it",#09,#6407
       PRINT           "As a squeaky voice emerges, you're surprised"
       JZ              G6a [TRUE] L0005
       JE              G6a,#1d [TRUE] L0005
       PRINT           " but"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " isn't at all amused"
L0005: PRINT_PADDR     G5d
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0330, 0 locals ()

       JE              G7a,#16 [FALSE] L0001
       JE              Gc6,#ae [FALSE] L0001
       CALL            R0011 (#16,G6a,G6a) -> -(SP)
       RTRUE           
L0001: JE              G7a,#93 [FALSE] RFALSE
       JE              Gc6,#ae [FALSE] RFALSE
       CALL            R0011 (#93,G6a,Gaf) -> -(SP)
       RTRUE           

Routine R0331, 1 local (0000)

       JE              G7a,#0e [FALSE] L0001
       PRINT           "Talking to yourself is a sign that it's getting late."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#4b [FALSE] L0002
       PRINT_RET       "Yes?"
L0002: JE              G7a,#a1 [FALSE] L0004
       JZ              G8c [TRUE] L0003
       CALL            R0686 -> -(SP)
       RET_POPPED      
L0003: PRINT_PADDR     G82
       NEW_LINE        
       RTRUE           
L0004: JE              G7a,#32,#18,#75 [FALSE] L0005
       PRINT_PADDR     G56
       NEW_LINE        
       RTRUE           
L0005: JE              G7a,#3c,#72,#97 [FALSE] L0006
       JE              G6a,#bb [FALSE] L0006
       INSERT_OBJ      "water",#32
       PRINT_PADDR     G9e
       RTRUE           
L0006: JE              G7a,#47 [FALSE] L0007
       JE              Gc6,#1d [FALSE] L0007
       CALL            R0011 (#75,G6a) -> -(SP)
       RTRUE           
L0007: JE              G7a,#68 [FALSE] L0008
       CALL            R0255 -> -(SP)
       RET_POPPED      
L0008: JE              G7a,#81 [FALSE] L0009
       CALL            R0083 -> -(SP)
       RTRUE           
L0009: JE              G7a,#aa [FALSE] L0010
       JE              Gc6,#10 [FALSE] L0010
       CALL            R0434 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT_RET       "You may feel this mystery has got you whipped, but now
it's clear you've  actually beaten yourself."
L0010: JE              G7a,#45 [FALSE] L0011
       PRINT_RET       "You're right here!"
L0011: JE              G7a,#4a [FALSE] RFALSE
       CALL            R0255 -> -(SP)
       RET_POPPED      

Routine R0332, 0 locals ()

       JE              G7a,#42,#44,#5d [FALSE] L0001
       CALL            R0170 -> -(SP)
       RTRUE           
L0001: JE              G7a,#81 [FALSE] L0002
       JE              G00,#e2 [FALSE] L0002
       JIN             "crowbar",#32 [FALSE] L0002
       CALL            R0011 (#2c,#ef) -> -(SP)
       RTRUE           
L0002: JE              G7a,#40,#14,#2a [FALSE] L0006
       JE              G6a,#83 [FALSE] L0003
       JE              G00,#51 [FALSE] L0003
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0003: JE              G6a,#3d [FALSE] L0004
       JE              G00,#57 [FALSE] L0004
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0004: JE              G6a,#1c [FALSE] L0005
       JE              G00,#39 [FALSE] L0005
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0005: CALL            R0255 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#41,#59 [FALSE] L0007
       CALL            R0297 (#14) -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#67 [FALSE] L0008
       PRINT_RET       "Walking around here reveals nothing new. To move
elsewhere, just type the desired direction."
L0008: JE              G7a,#5b [FALSE] RFALSE
       CALL            R0011 (#5b,#3a) -> -(SP)
       RTRUE           

Routine R0333, 0 locals ()

       JE              G7a,#4b [FALSE] RFALSE
       JE              G00,#57 [FALSE] L0001
       PRINT_RET       "The scratchy recording of a calliope, blaring out from
unseen speakers, is drowning out the voices."
L0001: CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JE              Gb4,#07,#08 [TRUE] RTRUE
       PRINT_RET       "They're too muffled."
L0002: CALL            R0347 (#18) -> -(SP)
       RET_POPPED      

Routine R0334, 1 local (0000)

       JE              G7a,#4b [FALSE] L0003
       CALL            R0290 (#db) -> -(SP)
       JE              (SP)+,G00 [FALSE] L0001
       CALL            R0011 (#4b,#db) -> -(SP)
       RTRUE           
L0001: LOADW           G50,#00 -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0347 (#18) -> -(SP)
       RET_POPPED      
L0002: CALL            R0347 (#00,S054) -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#80 [FALSE] L0008
       JIN             "guard",G00 [FALSE] L0005
       CALL            R0001 (#72f0) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0011 (#4c,#cf) -> -(SP)
       RTRUE           
L0004: PRINT_RET       "The guard turns his head toward you but seems unmoved
by your falsetto performance."
L0005: CALL            R0295 (G00,#08) -> L00
       JZ              L00 [TRUE] L0006
       PRINT           "Hardly amused, "
       CALL            R0004 (L00) -> -(SP)
       PRINT_RET       " ignores your performance."
L0006: CALL            R0295 (G00,#1f) -> L00
       JZ              L00 [TRUE] L0007
       CALL            R0011 (#0e,L00) -> -(SP)
       RTRUE           
L0007: CALL            R0011 (#0e,#1d) -> -(SP)
       RTRUE           
L0008: CALL            R0499 (#6f) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0347 (#18) -> -(SP)
       RET_POPPED      

Routine R0335, 0 locals ()

       RET             #18

Routine R0336, 0 locals ()

       JE              G7a,#4b [FALSE] RFALSE
       PRINT_RET       ""Rrrrr...grrrrr.""

Routine R0337, 1 local (0000)

       CALL            R0338 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              Gaf,L00 [TRUE] RTRUE
       JE              G7a,#4c,#93,#0e [TRUE] L0001
       JE              G7a,#ae,#11,#a7 [TRUE] L0001
       JE              G7a,#a1 [FALSE] RFALSE
L0001: JE              G6a,L00 [FALSE] RFALSE
       RTRUE           

Routine R0338, 1 local (0000)

       JE              G7a,#17,#16 [FALSE] RFALSE
       JE              G6a,L00 [FALSE] RFALSE
       RTRUE           

Routine R0339, 1 local (0000)

       CALL            R0340 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G6a,L00 [TRUE] RTRUE
L0001: CALL            R0342 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              Gc6,L00 [FALSE] RFALSE
       JE              G7a,#3b,#47,#85 [TRUE] RTRUE
       JE              G7a,#3c [FALSE] RFALSE
       RTRUE           

Routine R0340, 0 locals ()

       JE              G7a,#75,#7a,#83 [TRUE] RTRUE
       JE              G7a,#8b,#a5,#56 [TRUE] RTRUE
       JE              G7a,#6a,#2c,#61 [TRUE] RTRUE
       JE              G7a,#68,#6c,#57 [TRUE] RTRUE
       JE              G7a,#9a,#83,#69 [TRUE] RTRUE
       JE              G7a,#9c,#5c,#26 [TRUE] RTRUE
       JE              G7a,#24,#27,#25 [TRUE] RTRUE
       JE              G7a,#1c,#2a,#5b [TRUE] RTRUE
       JE              G7a,#1b,#55,#18 [TRUE] RTRUE
       JE              G7a,#32,#aa,#6a [TRUE] RTRUE
       JE              G7a,#52,#2d,#3b [TRUE] RTRUE
       JE              G7a,#3c,#81,#44 [TRUE] RTRUE
       JE              G7a,#72 [FALSE] RFALSE
       RTRUE           

Routine R0341, 1 local (0000)

       CALL            R0339 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0337 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0342, 1 local (0000)

       JE              G7a,#32,#55,#18 [TRUE] L0001
       JE              G7a,#57,#31,#aa [TRUE] L0001
       JE              G7a,#1b,#6a [FALSE] RFALSE
L0001: JE              G6a,L00 [FALSE] RFALSE
       RTRUE           

Routine R0343, 0 locals ()

       PRINT_RET       "There is nothing within your reach."

Routine R0344, 0 locals ()

       PRINT           "The "
       CALL            R0004 (Gc6) -> -(SP)
       PRINT           " doesn't seem interested in the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       "."

Routine R0345, 1 local (0000)

       PRINT           "The bars of the "
       JZ              L00 [TRUE] L0001
       CALL            R0004 (G6a) -> -(SP)
       JUMP            L0002
L0001: CALL            R0004 (Gc6) -> -(SP)
L0002: PRINT_RET       " are too closely spaced."

Routine R0346, 1 local (0000)

       PRINT           "You"
       CALL            R0003 (Gb9) -> -(SP)
       PRINT_PADDR     (SP)+
       CALL            R0302 (L00,#01) -> -(SP)
       JE              L00,#09,#1f,#75 [FALSE] L0001
       PRINT_RET       ", luckily."
L0001: JE              L00,#8c [TRUE] RTRUE
       PRINT_PADDR     G5d
       RTRUE           

Routine R0347, 2 locals (0000, 0000)

       JZ              G1e [TRUE] L0001
       INC             Gcf
       JUMP            L0010
L0001: PRINT           "[You can't "
       JZ              L00 [TRUE] L0003
       JE              L00,#18,#6f,#22 [TRUE] L0002
       JE              L00,#37,#7e [FALSE] L0003
L0002: PRINT           "hear"
       JUMP            L0004
L0003: PRINT           "see"
L0004: JZ              L00 [TRUE] L0006
       JE              L00,G6a [FALSE] L0005
       LOADW           G20,#00 -> -(SP)
       CALL            R0037 ((SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
L0005: PRINT           " any"
L0006: JZ              L00 [FALSE] L0007
       PRINT           " "
       PRINT_PADDR     L01
       JUMP            L0009
L0007: JE              L00,Gc6 [FALSE] L0008
       CALL            R0067 -> -(SP)
       JUMP            L0009
L0008: CALL            R0066 -> -(SP)
L0009: PRINT           " here.]"
       NEW_LINE        
L0010: STORE           G98,#00
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0348, 1 local (0000)

       PRINT           "[You can't use "
       PRINT_PADDR     L00
       PRINT_RET       " that way.]"

Routine R0349, 0 locals ()

       JE              G7a,#2c,#6c [FALSE] RFALSE
       PRINT           "You can't "
       JE              G7a,#6c [FALSE] L0001
       PRINT           "open"
       JUMP            L0002
L0001: PRINT           "close"
L0002: CALL            R0302 (G6a) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           

Routine R0350, 1 local (0000)

L0001: NEW_LINE        
       DEC             L00
       JZ              L00 [FALSE] L0001
       RTRUE           

Routine R0351, 1 local (0000)

       PRINT           "You'll have to get "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#60,#14 [FALSE] L0001
       PRINT           "off"
       JUMP            L0002
L0001: PRINT           "out"
L0002: PRINT           " of the "
       CALL            R0004 (L00) -> -(SP)
       PRINT_RET       " first."

Routine R0352, 0 locals ()

       JE              G7b,"crawl" [FALSE] L0001
       CALL            R0297 (G3c) -> -(SP)
       RTRUE           
L0001: CALL            R0294 (#9f,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0011 (#2b,#9f) -> -(SP)
       RTRUE           
L0002: CALL            R0294 (#34,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0011 (#2b,#34) -> -(SP)
       RTRUE           
L0003: CALL            R0347 (#34) -> -(SP)
       RTRUE           

Routine R0353, 0 locals ()

       PRINT           "You hit your head against"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " as you attempt this."

Routine R0354, 2 locals (0000, 0000)

       LOADW           G20,#00 -> L01
       LOADW           G20,#01 -> -(SP)
       JE              L00,L01,(SP)+ [FALSE] RFALSE
       RTRUE           

Routine R0355, 2 locals (0000, 0000)

       LOADW           G50,#00 -> L01
       LOADW           G50,#01 -> -(SP)
       JE              L00,L01,(SP)+ [FALSE] RFALSE
       RTRUE           

Routine R0356, 1 local (0000)

       STORE           G34,#00
       PRINT           "[Specify an amount of money, such as: "
       JZ              L00 [TRUE] L0001
       PRINT           "BET "
L0001: PRINT           "75 CENTS, or "
       JZ              L00 [TRUE] L0002
       PRINT           "BET "
L0002: PRINT           "$1.50.]
"
       RTRUE           

Routine R0357, 0 locals ()

       PRINT_RET       "[Please consult your manual for the correct way to talk
to characters.]"

Routine R0358, 1 local (0000)

       TEST_ATTR       L00,#0f [FALSE] L0001
       PRINT           "open"
       RTRUE           
L0001: PRINT           "closed"
       RTRUE           

Routine R0359, 2 locals (0000, 0000)

       INC_CHK         G85,#34 [FALSE] L0001
       PRINT           ""I'm shuffling the decks now.""
       NEW_LINE        
       CALL            R0366 -> -(SP)
L0001: RANDOM          #34 -> -(SP)
       SUB             (SP)+,#01 -> L00
       JZ              G6c [TRUE] L0002
       RANDOM          #2f -> -(SP)
       ADD             #03,(SP)+ -> L00
L0002: LOADW           Gad,L00 -> L01
       JZ              L01 [FALSE] L0003
       JUMP            L0001
L0003: SUB             L01,#01 -> -(SP)
       STOREW          Gad,L00,(SP)+
       RET             L00

Routine R0360, 1 local (0000)

       DIV             L00,#04 -> -(SP)
       LOADW           G42,(SP)+ -> -(SP)
       RET_POPPED      

Routine R0361, 1 local (0000)

       CALL            R0359 -> -(SP)
       STOREW          L00,#01,(SP)+
       STOREW          L00,#00,#01
       CALL            R0359 -> -(SP)
       STOREW          L00,#02,(SP)+
       STOREW          L00,#00,#02
       RTRUE           

Routine R0362, 3 locals (0000, 0000, 0001)

       LOADW           L00,#00 -> L01
L0001: JZ              L01 [TRUE] RTRUE
       JZ              L02 [TRUE] L0002
       STORE           L02,#00
       JUMP            L0003
L0002: PRINT           " and the "
L0003: LOADW           L00,L01 -> -(SP)
       CALL            R0363 ((SP)+) -> -(SP)
       DEC             L01
       JUMP            L0001

Routine R0363, 1 local (0000)

       DIV             L00,#04 -> -(SP)
       LOADW           Ga8,(SP)+ -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " of "
       MOD             L00,#04 -> -(SP)
       LOADW           Gb8,(SP)+ -> -(SP)
       PRINT_PADDR     (SP)+
       RTRUE           

Routine R0364, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STOREW          G11,#00,#00
       STOREW          G22,#00,#00
       CALL            R0361 (G11) -> -(SP)
       CALL            R0361 (G22) -> -(SP)
       PRINT           "The dealer gives you the "
       CALL            R0362 (G22) -> -(SP)
       PRINT_PADDR     G5d
       PRINT           "He deals himself the "
       LOADW           G11,#01 -> -(SP)
       CALL            R0363 ((SP)+) -> -(SP)
       PRINT           " and one card down"
       JIN             "Comrade Thumb",G00 [FALSE] L0001
       PRINT           ", which he peeks at"
L0001: PRINT           "."
       NEW_LINE        
       NEW_LINE        
       LOADW           G22,#01 -> -(SP)
       CALL            R0360 ((SP)+) -> L06
       LOADW           G22,#02 -> -(SP)
       CALL            R0360 ((SP)+) -> -(SP)
       ADD             L06,(SP)+ -> Gc2
       LOADW           G11,#01 -> -(SP)
       CALL            R0360 ((SP)+) -> L06
       LOADW           G11,#02 -> -(SP)
       CALL            R0360 ((SP)+) -> -(SP)
       ADD             L06,(SP)+ -> G5e
       JE              G5e,#15 [FALSE] L0003
       PRINT           "The dealer turns over his hole card, which is the "
       LOADW           G11,#02 -> -(SP)
       CALL            R0363 ((SP)+) -> -(SP)
       PRINT           ". "Blackjack!" he announces"
       JE              Gc2,#15 [FALSE] L0002
       PRINT           ". You tie him for a push."
       NEW_LINE        
       RFALSE          
L0002: PRINT           ", as he collects your bet."
       NEW_LINE        
       MUL             L00,#ffff -> -(SP)
       RET_POPPED      
L0003: JE              Gc2,#15 [FALSE] L0004
       PRINT           "You show the dealer your blackjack, and he pays you "
       MUL             L00,#03 -> -(SP)
       DIV             (SP)+,#02 -> L00
       CALL            R0084 (L00) -> -(SP)
       PRINT_PADDR     G5d
       RET             L00
L0004: STORE           G6c,#00
       LOADW           G11,#02 -> -(SP)
       CALL            R0360 ((SP)+) -> L03
       JIN             "Comrade Thumb",G00 [FALSE] L0007
       STORE           G06,#01
       PRINT           "Inexplicably, you feel "
       JE              L03,#01,#0b [FALSE] L0005
       PRINT           "one tap"
       JUMP            L0006
L0005: PRINT_NUM       L03
       PRINT           " taps"
L0006: PRINT           " on your foot."
       NEW_LINE        
       NEW_LINE        
L0007: PRINT           "Do you want another card? (Y is affirmative): "
       CALL            R0087 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       LOADW           G22,#00 -> -(SP)
       ADD             (SP)+,#01 -> L02
       STOREW          G22,#00,L02
       CALL            R0359 -> L01
       STOREW          G22,L02,L01
       NEW_LINE        
       PRINT           "You're dealt the "
       CALL            R0363 (L01) -> -(SP)
       CALL            R0360 (L01) -> -(SP)
       ADD             Gc2,(SP)+ -> Gc2
       JG              Gc2,#15 [FALSE] L0008
       CALL            R0365 -> -(SP)
       JZ              (SP)+ [FALSE] L0008
       PRINT           " which puts you over 21, and the "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " rakes in your bet."
       NEW_LINE        
       SUB             #00,L00 -> L04
       JUMP            L0010
L0008: PRINT_PADDR     G5d
       JUMP            L0007
L0009: JG              Gc2,#15 [FALSE] L0010
       CALL            R0365 -> -(SP)
L0010: NEW_LINE        
       PRINT           "The dealer turns up his hole card, the "
       LOADW           G11,#02 -> -(SP)
       CALL            R0363 ((SP)+) -> -(SP)
       JZ              L04 [TRUE] L0011
       PRINT           ", and smiles."
       NEW_LINE        
       RET             L04
L0011: PRINT           "."
       NEW_LINE        
L0012: JG              G5e,#15 [FALSE] L0013
       CALL            R0365 (#00) -> -(SP)
       JZ              (SP)+ [FALSE] L0013
       PRINT           "This gives him "
       PRINT_NUM       G5e
       PRINT           ", putting him over. He pays you "
       CALL            R0084 (L00) -> -(SP)
       PRINT_PADDR     G5d
       RET             L00
L0013: JG              G5e,#10 [FALSE] L0016
       PRINT           "He stops here, with "
       PRINT_NUM       G5e
       PRINT           "."
       JG              Gc2,G5e [FALSE] L0014
       PRINT           " You beat him and reap the payoff, "
       CALL            R0084 (L00) -> -(SP)
       PRINT_PADDR     G5d
       RET             L00
L0014: JE              Gc2,G5e [FALSE] L0015
       PRINT           " Your hand ties his for a push."
       NEW_LINE        
       RFALSE          
L0015: PRINT           " He beats you and rakes in your money."
       NEW_LINE        
       SUB             #00,L00 -> -(SP)
       RET_POPPED      
L0016: LOADW           G11,#00 -> -(SP)
       ADD             (SP)+,#01 -> L02
       STOREW          G11,#00,L02
       CALL            R0359 -> L01
       STOREW          G11,L02,L01
       CALL            R0360 (L01) -> -(SP)
       ADD             G5e,(SP)+ -> G5e
       JZ              L05 [TRUE] L0017
       PRINT           "He draws again"
       JUMP            L0018
L0017: PRINT           "The dealer draws"
L0018: PRINT           " and picks up the "
       CALL            R0363 (L01) -> -(SP)
       PRINT_PADDR     G5d
       STORE           L05,#01
       JUMP            L0012

Routine R0365, 4 locals (0001, 0000, 0000, 0000)

       JZ              L00 [TRUE] L0001
       STORE           L03,G22
       JUMP            L0002
L0001: STORE           L03,G11
L0002: LOADW           L03,#00 -> L01
L0003: JZ              L01 [TRUE] RFALSE
       LOADW           L03,L01 -> L02
       CALL            R0360 (L02) -> -(SP)
       JE              (SP)+,#0b [FALSE] L0006
       ADD             L02,#34 -> -(SP)
       STOREW          L03,L01,(SP)+
       JZ              L00 [TRUE] L0004
       SUB             Gc2,#0a -> Gc2
       STORE           L02,Gc2
       JUMP            L0005
L0004: SUB             G5e,#0a -> G5e
       STORE           L02,G5e
L0005: JL              L02,#16 [TRUE] RTRUE
L0006: DEC             L01
       JUMP            L0003

Routine R0366, 1 local (0034)

L0001: JZ              L00 [FALSE] L0002
       JUMP            L0003
L0002: DEC             L00
       STOREW          Gad,L00,#04
       JUMP            L0001
L0003: STORE           G85,#00
       CALL            R0367 (G11) -> -(SP)
       CALL            R0367 (G22) -> -(SP)
       RET_POPPED      

Routine R0367, 3 locals (0000, 0000, 0000)

       LOADW           L00,#00 -> L01
L0001: JZ              L01 [TRUE] RTRUE
       LOADW           L00,L01 -> L02
       JG              L02,#34 [TRUE] L0002
       JE              L02,#34 [FALSE] L0003
L0002: SUB             L02,#34 -> L02
L0003: LOADW           Gad,L02 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       STOREW          Gad,L02,(SP)+
       INC             G85
       DEC             L01
       JUMP            L0001

Routine R0368, 0 locals ()

       JE              G7a,#42 [FALSE] RFALSE
       JE              G00,#b6 [FALSE] RFALSE
       PRINT_RET       "How the crowd's enjoying a show that's so hard to see
is hard to see."

Routine R0369, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You're standing between the underside of the "
       CALL            R0004 (#d9) -> -(SP)
       PRINT           " and the side wall of the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           ". Not unexpectedly, the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           " here is strewn with garbage. The only exit is "
       JZ              G72 [TRUE] L0001
       PRINT           "back under the tent"
       JUMP            L0002
L0001: PRINT           "southwest"
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0370, 0 locals ()

       JE              G29,#1a [FALSE] L0002
       JZ              G72 [TRUE] L0001
       PRINT           "The grandstand"
       PRINT_PADDR     G1c
       PRINT           ", blocking the former exit."
       NEW_LINE        
       RFALSE          
L0001: RET             #51
L0002: TEST_ATTR       "big top",#0c [FALSE] L0003
       CALL            R0011 (#2b,#9f) -> -(SP)
       RFALSE          
L0003: PRINT           "You bump into the side wall of the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           "."
       NEW_LINE        
       RFALSE          

Routine R0371, 0 locals ()

       PRINT           "You're UNDER the stands, understand?"
       NEW_LINE        
       STORE           Gbc,#07
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       RFALSE          

Routine R0372, 0 locals ()

       JE              G7a,#42,#82,#81 [TRUE] L0001
       JE              G7a,#61,#68,#35 [TRUE] L0001
       JE              G7a,#44 [FALSE] L0004
L0001: JIN             "your ticket",#32 [FALSE] L0002
       INSERT_OBJ      "your ticket",G00
       STORE           Gbd,#7a
       ADD             G01,#0a -> G01
       PRINT           "Your foray into "
       CALL            R0004 (#c3) -> -(SP)
       PRINT_RET       " reclamation pays off, as you turn up the unmarked
ticket of some luckless circus-goer."
L0002: JIN             "one-dollar-and-85-cent granola bar",#32 [FALSE] L0003
       TEST_ATTR       "one-dollar-and-85-cent granola bar",#0c [TRUE] L0003
       JZ              G72 [TRUE] L0003
       STORE           Gbd,#a3
       INSERT_OBJ      "one-dollar-and-85-cent granola bar",G00
       PRINT           "Recalling the precise trajectory of your fallen "
       CALL            R0004 (#a3) -> -(SP)
       PRINT_RET       ", you uncover it after a brief excavation."
L0003: JE              G7a,#42 [TRUE] RFALSE
       PRINT_RET       "You merely raise a stench."
L0004: JE              G7a,#a5 [FALSE] L0005
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#89 [FALSE] RFALSE
       PRINT           "It smells vaguely of "
       CALL            R0003 (G31) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " and "
       CALL            R0003 (G31) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       "."

Routine R0373, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       JE              G00,#ce [FALSE] L0001
       STORE           G6a,#2b
       CALL            R0011 (#5f,G6a) -> -(SP)
       RTRUE           
L0001: JE              G7a,#2a,#24,#26 [TRUE] L0002
       JE              G7a,#1c [FALSE] L0004
L0002: JE              G00,#83 [FALSE] L0003
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0003: CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#27 [FALSE] L0007
       JE              G00,#ce [FALSE] L0005
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#b6 [FALSE] L0006
       CALL            R0297 (#16) -> -(SP)
       RET_POPPED      
L0006: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0007: JE              G7a,#1c [FALSE] RFALSE
       JE              G00,#ce,#51 [FALSE] L0008
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#83 [FALSE] L0009
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0009: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           

Routine R0374, 1 local (0000)

       JE              L00,#03 [FALSE] L0008
       JZ              G95 [TRUE] L0001
       PRINT           "You're in the "blues," sitting"
       PRINT_PADDR     G4d
       PRINT           ". "
L0001: JE              G7a,#a2 [TRUE] L0002
       JE              Gc8,#0c [TRUE] L0002
       PRINT           "You know the exit from the "
       CALL            R0004 (#d9) -> -(SP)
       PRINT           " to be vaguely eastward and down. "
L0002: PRINT           "All around you the crowd is in a state of pandemonium"
       JZ              G95 [FALSE] L0007
       PRINT           ". The paths of least resistance are "
       JE              Gc8,#03,#09 [FALSE] L0003
       LOADW           G43,#01 -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0007
L0003: JE              Gc8,#0b [FALSE] L0004
       LOADW           G43,#05 -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0007
L0004: JE              Gc8,#08 [FALSE] L0005
       LOADW           G43,#02 -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0007
L0005: JE              Gc8,#0c [FALSE] L0006
       LOADW           G43,#06 -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0007
L0006: LOADW           G43,Gc8 -> -(SP)
       PRINT_PADDR     (SP)+
L0007: PRINT_PADDR     G5d
       RTRUE           
L0008: JE              L00,#06 [FALSE] L0011
       TEST_ATTR       "hawker",#0c [FALSE] L0009
       JE              Gc8,G49 [FALSE] L0009
       STORE           G72,#01
       ADD             G01,#0a -> G01
       NEW_LINE        
       PRINT           "A man in the audience suddenly hails you, tossing the "
       CALL            R0004 (#a3) -> -(SP)
       PRINT           " in your "
       CALL            R0004 (#29) -> -(SP)
       PRINT           ". It glances off "
       CALL            R0004 (#33) -> -(SP)
       PRINT           ", falls through the stands and right before it hits the
ground, in a cold sweat you "
       CALL            R0686 -> -(SP)
       RET_POPPED      
L0009: JE              Gc8,#0c [FALSE] L0010
       JE              G8f,#0731 [FALSE] L0010
       NEW_LINE        
       PRINT           "Suddenly a hawker appears at the end of the row and you
flag him down. "
       INSERT_OBJ      "hawker",G00
       CALL            R0375 -> -(SP)
       NEW_LINE        
       STORE           G47,#01
       STORE           G13,#b9
       CALL            R0011 (#47,#c1,#4e) -> -(SP)
       STORE           Gbd,#98
       RTRUE           
L0010: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] RFALSE
       JZ              G95 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "The bank of people above you shouts, in chorus, ""
       CALL            R0003 (G99) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       "!""
L0011: JE              L00,#01 [FALSE] RFALSE
       JE              G7a,#a2,#87 [FALSE] L0012
       JZ              G95 [TRUE] L0012
       PRINT_RET       "But you are seated."
L0012: JE              G7a,#87 [FALSE] RFALSE
       PRINT_RET       ""Oof! Get off of me!""

Routine R0375, 0 locals ()

       PRINT_RET       "The hawker can barely hear you above the crowd noise.
He flashes one finger, then eight fingers, then five fingers at you, and
gestures to pass the money through the crowd."

Routine R0376, 0 locals ()

       CALL            R0013 (#6caa,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INC             Gcd
       JE              Gcd,#0c [FALSE] L0001
       JE              G00,#b6 [FALSE] L0001
       JE              G8f,#0678 [FALSE] L0001
       NEW_LINE        
       PRINT_RET       "The audience settles back down to a state of
pandemonium."
L0001: JIN             "hawker",G00 [FALSE] L0005
       JE              G00,#b6 [FALSE] L0005
       INSERT_OBJ      "hawker",#32
       NEW_LINE        
       PRINT           "Trudging "
       RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0002
       PRINT           "down"
       JUMP            L0003
L0002: PRINT           "up"
L0003: PRINT           "ward, the hawker disappears into the "
       CALL            R0004 (#a8) -> -(SP)
       JE              G7a,#4a,#14 [FALSE] L0004
       PRINT           " before you can reach him"
L0004: PRINT_PADDR     G5d
       RTRUE           
L0005: JE              Gcd,#02,#03 [FALSE] L0008
       NEW_LINE        
       PRINT           "You hear a loud "
       JE              Gcd,#02 [FALSE] L0006
       PRINT           "growl"
       JUMP            L0007
L0006: PRINT           "roar"
L0007: PRINT_RET       " nearby."
L0008: JE              Gcd,#04 [FALSE] L0009
       NEW_LINE        
       PRINT_RET       "You realize the noise is your own stomach."
L0009: JE              Gcd,#05 [TRUE] L0010
       JG              Gcd,#05 [FALSE] RFALSE
       RANDOM          #64 -> -(SP)
       JL              #19,(SP)+ [TRUE] RFALSE
       JE              G00,#b6 [FALSE] RFALSE
       JE              Gcd,#0b,#0c,#0d [TRUE] RFALSE
L0010: SET_ATTR        "hawker",#06
       INSERT_OBJ      "hawker",G00
       NEW_LINE        
       PRINT           "A "
       CALL            R0004 (#4e) -> -(SP)
       PRINT           " appears at the "
       JE              Gc8,#01,#02,#03 [TRUE] L0011
       JE              Gc8,#07,#08,#09 [FALSE] L0012
L0011: PRINT           "west"
       JUMP            L0013
L0012: PRINT           "east"
L0013: PRINT           " end of your row, calling out in a sing-song manner,
"Get your "
       CALL            R0003 (G31) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " here. Get your "
       CALL            R0003 (G31) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       " here.""

Routine R0377, 0 locals ()

       JE              G7a,#1f [FALSE] L0005
       JE              G00,#b6 [FALSE] L0001
       JIN             "hawker",G00 [FALSE] L0001
       CALL            R0011 (#0e,#4e) -> -(SP)
       RTRUE           
L0001: JE              G00,#b6 [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#4e) -> -(SP)
       PRINT_RET       "'s nowhere in sight."
L0002: JE              G00,#51 [FALSE] L0004
       JIN             "hawker",G00 [FALSE] L0004
       TEST_ATTR       "hawker",#0c [FALSE] L0003
       PRINT_RET       ""Sorry, I'm all sold out. I made a killing up there,"
he says, looking exhausted but happy."
L0003: CALL            R0011 (#0e,#4e) -> -(SP)
       RTRUE           
L0004: JE              G00,#39 [FALSE] RFALSE
       JZ              G8c [TRUE] RFALSE
       PRINT_RET       "You're not alone in your hunger."
L0005: CALL            R0499 (#45) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G7a,#16,#17 [TRUE] RFALSE
       JE              G00,#51 [FALSE] RFALSE
       JIN             "hawker",G00 [FALSE] RFALSE
       PRINT           "The only remnant of the "
       JE              #45,G6a [FALSE] L0006
       CALL            R0066 -> -(SP)
       JUMP            L0007
L0006: CALL            R0067 -> -(SP)
L0007: PRINT           " is ground into the "
       CALL            R0004 (#4e) -> -(SP)
       PRINT_RET       "'s uniform."

Routine R0378, 0 locals ()

       CALL            R0381 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G4c,#63 [FALSE] RTRUE
       RET             #02
L0001: JE              G7a,#14,#4a [FALSE] L0004
       JE              G00,#b6 [FALSE] L0004
       JE              Gc8,#01,#02,#03 [TRUE] L0002
       JE              Gc8,#07,#08,#09 [FALSE] L0003
L0002: CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0003: CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#42 [FALSE] L0005
       JE              G00,#51 [FALSE] L0005
       PRINT_RET       "Yup, it's the same guy you encountered in the stands.
He's empty-handed and his uniform resembles modern art, a besplattered canvas
of condiments."
L0005: JE              G7a,#47 [FALSE] L0006
       JE              Gc6,#4e [FALSE] L0006
       CALL            R0011 (#a7,#4e) -> -(SP)
       RTRUE           
L0006: JE              G00,#b6 [FALSE] L0007
       CALL            R0339 (#4e) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       CALL            R0346 (#4e) -> -(SP)
       RET_POPPED      
L0007: CALL            R0337 (#4e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G00,#b6 [FALSE] L0008
       JE              G8f,#0731 [FALSE] L0008
       CALL            R0013 (#6caa,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0375 -> -(SP)
       JUMP            L0014
L0008: JE              G00,#b6 [FALSE] L0010
       JE              G7a,#a7 [FALSE] L0009
       PRINT           "He didn't notice you."
       NEW_LINE        
       JUMP            L0014
L0009: PRINT           "The crowd noise completely drowns you out."
       NEW_LINE        
       JUMP            L0014
L0010: JE              G8f,#0501 [FALSE] L0011
       TEST_ATTR       "hawker",#0c [FALSE] L0012
L0011: PRINT           "Exhausted, he ignores you."
       NEW_LINE        
       JUMP            L0014
L0012: SET_ATTR        "hawker",#0c
       PRINT           ""Hey, you're the one I passed the granola bar to in the
"
       CALL            R0004 (#d9) -> -(SP)
       PRINT           ". "
       JZ              G5c [FALSE] L0013
       PRINT           "I know that's not what you ordered, but that's all I
had left. "
L0013: PRINT           "Well, the guy that was sitting next to you is holding
the granola for you.""
       NEW_LINE        
L0014: CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0379, 0 locals ()

       JE              G7a,#4b [FALSE] L0001
       JE              G00,#b6 [FALSE] L0001
       PRINT_RET       "They're all madly screaming."
L0001: JE              G7a,#4a [FALSE] L0003
       JE              G00,#39 [FALSE] L0002
       TEST_ATTR       "Beside the Big Top",#12 [TRUE] L0002
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0002: JE              G00,#51 [FALSE] RFALSE
       TEST_ATTR       "Connection",#12 [TRUE] RFALSE
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0003: JE              G00,#51 [FALSE] L0004
       TEST_ATTR       "Connection",#12 [FALSE] L0005
L0004: JE              G00,#39 [FALSE] L0006
       CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
L0005: CALL            R0380 -> -(SP)
       RET_POPPED      
L0006: CALL            R0337 (#a8) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       PRINT           "You have neither the voice nor the talent to capture
the "
       CALL            R0004 (#a8) -> -(SP)
       PRINT           "'s attention."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0007: CALL            R0381 -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       JE              G4c,#63 [FALSE] RTRUE
       RET             #02
L0008: JE              G7a,#2a [FALSE] L0010
       JE              G00,#57 [FALSE] L0009
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0009: CALL            R0255 -> -(SP)
       RET_POPPED      
L0010: JE              G7a,#42 [FALSE] RFALSE
       PRINT_RET       "Each member appears to have been born precisely one
minute apart from the next."

Routine R0380, 0 locals ()

       PRINT           "The "
       CALL            R0004 (#a8) -> -(SP)
       PRINT           "'s gone "
       JE              G00,#39 [FALSE] L0001
       PRINT           "east"
       JUMP            L0002
L0001: PRINT           "south"
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0381, 0 locals ()

       JE              G8f,#0731 [FALSE] RFALSE
       JIN             "hawker",G00 [FALSE] RFALSE
       JE              Gc6,#4e,#a8 [FALSE] RFALSE
       JE              G7a,#47 [FALSE] RFALSE
       JE              G6a,#c1 [FALSE] L0004
       JZ              G47 [TRUE] L0004
       JG              G13,G8f [FALSE] L0001
       PRINT_PADDR     G0c
       RTRUE           
L0001: JE              G13,#b9 [FALSE] L0002
       STORE           G8f,#0678
       INSERT_OBJ      "hawker",#32
       STORE           Gcd,#0a
       STORE           G49,Gc8
       PRINT_RET       "Your $1.85 is passed from hand to hand all the way down
the row. As the hawker pockets your money, he's suddenly engulfed by the crowd,
which erupts into a standing ovation. The state of riot panic continues for
several anxious moments."
L0002: JE              G6a,#98,#ba,#c1 [FALSE] L0003
       STORE           G4c,#63
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0356 -> -(SP)
       RTRUE           
L0003: PRINT_RET       "The man seemed to indicate $1.85."
L0004: JE              G6a,#98 [FALSE] RFALSE
       STORE           G47,#01
       STORE           G13,#b9
       CALL            R0011 (#47,#c1,#a8) -> -(SP)
       STORE           Gbd,#98
       RTRUE           

Routine R0382, 0 locals ()

       JE              Gc8,#02,#04,#05 [TRUE] L0001
       JE              Gc8,#07,#08,#0a [TRUE] L0001
       JE              Gc8,#0b [FALSE] L0002
L0001: CALL            R0388 (#01) -> -(SP)
       RET_POPPED      
L0002: CALL            R0386 (#01) -> -(SP)
       RET_POPPED      

Routine R0383, 0 locals ()

       JE              Gc8,#01,#03,#04 [TRUE] L0001
       JE              Gc8,#06,#07,#09 [TRUE] L0001
       JE              Gc8,#0a,#0c [FALSE] L0002
L0001: CALL            R0388 -> -(SP)
       RET_POPPED      
L0002: CALL            R0386 (#02) -> -(SP)
       RET_POPPED      

Routine R0384, 0 locals ()

       JE              Gc8,#01,#02,#03 [TRUE] L0001
       JE              Gc8,#07,#08,#09 [FALSE] L0002
L0001: CALL            R0387 (#01) -> -(SP)
       RET_POPPED      
L0002: CALL            R0386 (#03) -> -(SP)
       RET_POPPED      

Routine R0385, 0 locals ()

       JE              Gc8,#04,#05,#06 [TRUE] L0001
       JE              Gc8,#0a,#0b,#0c [FALSE] L0002
L0001: CALL            R0387 -> -(SP)
       RET_POPPED      
L0002: CALL            R0386 (#04) -> -(SP)
       RET_POPPED      

Routine R0386, 1 local (0000)

       JE              L00,#01,#02 [FALSE] L0003
       PRINT           "You have no "
       JE              L00,#01 [FALSE] L0001
       PRINT           "up"
       JUMP            L0002
L0001: PRINT           "down"
L0002: PRINT           "ward mobility here"
       JUMP            L0005
L0003: PRINT           "The crowd is impenetrable to the "
       JE              L00,#03 [FALSE] L0004
       PRINT           "east"
       JUMP            L0005
L0004: PRINT           "west"
L0005: PRINT_PADDR     G5d
       RFALSE          

Routine R0387, 1 local (0000)

       CLEAR_ATTR      "Standing Room Only",#12
       JZ              L00 [TRUE] L0001
       ADD             Gc8,#03 -> Gc8
       JUMP            L0002
L0001: SUB             Gc8,#03 -> Gc8
L0002: PRINT           "The row of legs pivots away as you scissor awkwardly
past."
       NEW_LINE        
       NEW_LINE        
       RET             #b6

Routine R0388, 1 local (0000)

       CLEAR_ATTR      "Standing Room Only",#12
       PRINT           "You plow your way "
       JZ              L00 [TRUE] L0001
       PRINT           "up"
       DEC             Gc8
       JUMP            L0002
L0001: PRINT           "down"
       INC             Gc8
L0002: PRINT           "ward through the crowd"
       JE              Gc8,#0d [FALSE] L0004
       PRINT           " all the way into the wings."
       NEW_LINE        
       NEW_LINE        
       TEST_ATTR       "monkey",#0c [TRUE] L0003
       SET_ATTR        "monkey",#0c
       CLEAR_ATTR      "In the Wings",#12
       INSERT_OBJ      "roar",#32
       INSERT_OBJ      "hawker",#32
       CALL            R0284 (#51) -> -(SP)
       NEW_LINE        
       CLEAR_ATTR      "monkey",#06
       INSERT_OBJ      "monkey","it"
       PRINT           "As you exhale a sigh of relief, a smallish and hairy
animal inexplicably plops down upon you from the upper reaches of the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           "."
       NEW_LINE        
       RFALSE          
L0003: RET             #51
L0004: PRINT_PADDR     G5d
       NEW_LINE        
       RET             #b6

Routine R0389, 0 locals ()

       JE              G7a,#1c,#2b [FALSE] L0006
       JE              G00,#57 [TRUE] L0001
       JE              G00,#ce [FALSE] L0004
       TEST_ATTR       "big top",#0c [FALSE] L0004
L0001: PRINT           "You creep under the side wall of the "
       CALL            R0004 (#9f) -> -(SP)
       JE              G00,#ce [FALSE] L0002
       PRINT           ", right where you crawled in before"
L0002: PRINT_PADDR     G5d
       NEW_LINE        
       SET_ATTR        "big top",#0c
       JE              G00,#ce [FALSE] L0003
       CALL            R0284 (#57) -> -(SP)
       RET_POPPED      
L0003: CALL            R0284 (#ce) -> -(SP)
       RET_POPPED      
L0004: JE              G00,#5b,#96 [FALSE] L0005
       STORE           G6a,#cd
       CALL            R0353 -> -(SP)
       RET_POPPED      
L0005: CALL            R0564 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#2a,#14 [FALSE] L0010
       JE              G00,#39,#51,#57 [TRUE] L0007
       JE              G00,#e6 [FALSE] L0008
L0007: CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#51,#83,#aa [TRUE] L0009
       JE              G00,#b6,#ce [FALSE] RFALSE
L0009: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0010: JE              G7a,#28,#41,#59 [FALSE] L0014
       JE              G00,#51,#83 [FALSE] L0011
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0011: JE              G00,#aa [FALSE] L0012
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0012: JE              G00,#b6,#ce [FALSE] L0013
       CALL            R0255 -> -(SP)
       RET_POPPED      
L0013: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0014: JE              G7a,#42 [FALSE] L0016
       JE              G00,#5b,#96 [TRUE] L0016
       PRINT           "Soiled by endless miles of travel and heavily patched
in places, the wide blue-and-white stripes nevertheless rise up to"
       TEST_ATTR       G00,#0b [FALSE] L0015
       PRINT_RET       " meet at the top of the towering center pole."
L0015: PRINT_RET       " the black sky above."
L0016: JE              G00,#5b,#96 [FALSE] L0017
       JE              G7a,#69,#61 [FALSE] L0017
       CALL            R0717 -> -(SP)
       RET_POPPED      
L0017: JE              G7a,#7e,#75 [FALSE] RFALSE
       JE              G00,#5b,#96 [FALSE] RFALSE
       CALL            R0588 -> -(SP)
       RET_POPPED      

Routine R0390, 0 locals ()

       CALL            R0354 ("sawdus") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           G6a,#d7
       RFALSE          
L0001: CALL            R0339 (#4f) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JE              G00,#83 [TRUE] L0002
       CALL            R0346 (#4f) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#25,#26,#24 [FALSE] RFALSE
       PRINT           "You barely get off the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT_RET       " before you slide back down."

Routine R0391, 0 locals ()

       CALL            R0354 ("second") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0011 (G7a,#25,Gc6) -> -(SP)
       RTRUE           
L0001: CALL            R0332 -> -(SP)
       RET_POPPED      

Routine R0392, 0 locals ()

       JE              G7a,#75 [FALSE] L0001
       SET_ATTR        "balloon",#12
       INSERT_OBJ      "balloon","it"
       PRINT_RET       "You grab the helium-filled balloon at the frill where
it is tied. The balloon gives a constant upward tug at your fingertips."
L0001: JE              G7a,#42 [FALSE] L0004
       PRINT           "It's a bright red balloon which is "
       TEST_ATTR       "balloon",#0f [FALSE] L0002
       PRINT           "untied"
       JUMP            L0003
L0002: PRINT           "tied closed"
L0003: PRINT_RET       " and filled with helium."
L0004: JE              G7a,#3b,#97,#3a [TRUE] L0005
       JE              G7b,"free" [FALSE] L0006
L0005: CALL            R0393 -> -(SP)
       NEW_LINE        
       RTRUE           
L0006: JE              G7a,#6c,#9d [FALSE] L0010
       CALL            R0292 (#a5) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       PRINT_PADDR     G90
       PRINT           " the "
       CALL            R0004 (#a5) -> -(SP)
       PRINT_RET       "."
L0007: TEST_ATTR       "balloon",#0f [TRUE] L0008
       SET_ATTR        "balloon",#0f
       PRINT           "You untie the end of the "
       CALL            R0004 (#a5) -> -(SP)
       PRINT_RET       ", holding it closed."
L0008: JE              G7a,#6c [FALSE] L0009
       TEST_ATTR       "balloon",#0f [FALSE] L0009
       SET_ATTR        "balloon",#0f
       CALL            R0393 -> -(SP)
       NEW_LINE        
       RTRUE           
L0009: PRINT_RET       "It isn't tied."
L0010: JE              G7a,#2c,#99 [FALSE] L0012
       JZ              Gc6 [FALSE] L0012
       TEST_ATTR       "balloon",#0f [FALSE] L0011
       CLEAR_ATTR      "balloon",#0f
       PRINT           "Okay, the "
       CALL            R0004 (#a5) -> -(SP)
       PRINT_RET       " is once again tied closed."
L0011: PRINT_RET       "It is."
L0012: JE              G7a,#1d [FALSE] L0013
       PRINT_RET       "It would be safer to inhale what's IN the balloon."
L0013: CALL            R0342 (#a5) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "You manage to puncture it. "
       INSERT_OBJ      "balloon",#32
       CALL            R0393 -> -(SP)
       NEW_LINE        
       RTRUE           

Routine R0393, 0 locals ()

       SET_ATTR        "balloon",#12
       INSERT_OBJ      "balloon",#32
       TEST_ATTR       "balloon",#0f [TRUE] L0002
       CALL            R0342 (#a5) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#a5) -> -(SP)
       PRINT           " flies up and "
       TEST_ATTR       G00,#0b [TRUE] L0001
       PRINT           "disappears into the night sky."
       RTRUE           
L0001: PRINT           "gets punctured on the "
       CALL            R0004 (#ca) -> -(SP)
       PRINT           ". "
L0002: PRINT           "With helium spitting out of it, the fink zips wildly
through the air and disappears. "
       RTRUE           

Routine R0394, 0 locals ()

       JE              G7a,#1d [FALSE] L0002
       TEST_ATTR       "balloon",#0f [FALSE] L0001
       INSERT_OBJ      "balloon",#32
       INSERT_OBJ      "helium",#32
       CALL            R0013 (#72f0,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "The "
       CALL            R0004 (#a5) -> -(SP)
       PRINT           " shrinks rapidly before your eyes as your chest expands
and tightens ... then it slips from your grasp! "
       CALL            R0393 -> -(SP)
       PRINT           "You manage to momentarily hold the helium in your
lungs."
       NEW_LINE        
       PUT_PROP        "it",#09,#6408
       RTRUE           
L0001: PRINT           "But the "
       CALL            R0004 (#a5) -> -(SP)
       PRINT_RET       " is tied closed."
L0002: JE              G7a,#3a [FALSE] RFALSE
       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0395, 0 locals ()

       CALL            R0014 (#72f0) -> -(SP)
       STOREW          (SP)+,#00,#00
       JZ              Gd4 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "You exhale your lungsful of helium."
       NEW_LINE        
       RFALSE          

Routine R0396, 1 local (0000)

       JE              L00,#01 [FALSE] L0003
       JE              G7a,#a2 [FALSE] L0001
       JE              G29,#16,#14 [FALSE] L0001
       CALL            R0011 (#28,#03) -> -(SP)
       RTRUE           
L0001: JE              G7a,#a2 [FALSE] L0002
       CALL            R0351 (#03) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#52 [FALSE] RFALSE
       PRINT           "After bouncing about the net a while you appreciate
that much more the talent of the "
       CALL            R0004 (#a9) -> -(SP)
       PRINT_RET       " Brothers."
L0003: JZ              L00 [FALSE] RFALSE
       JE              G7a,#1c [FALSE] L0004
       JIN             "safety net","Mr. Munrab" [FALSE] L0004
       PRINT_PADDR     G56
       NEW_LINE        
       RTRUE           
L0004: JE              G7a,#75 [FALSE] L0005
       JIN             "safety net","Mr. Munrab" [FALSE] L0005
       CALL            R0004 (#92) -> -(SP)
       PRINT           " looks flustered then yanks the coarsely woven net out
of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       ". "I'm in charge here!""
L0005: CALL            R0339 (#03) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       JIN             "safety net",#4c [FALSE] L0006
       CALL            R0347 (#03) -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#2c,#6c [FALSE] L0007
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#27,#28 [FALSE] RFALSE
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#03 [FALSE] RFALSE
       INSERT_OBJ      "it",G00
       PRINT           "You climb out of the "
       CALL            R0004 (#03) -> -(SP)
       PRINT_RET       " with a bounce in your step."

Routine R0397, 0 locals ()

       CALL            R0499 (#b7) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             "safety net",#32 [TRUE] L0002
       JIN             "safety net","Mr. Munrab" [TRUE] L0001
       JIN             "safety net","Performance Ring" [FALSE] L0003
L0001: JE              G00,#3e,#38,#46 [TRUE] L0003
L0002: CALL            R0347 (#b7) -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#42,#44 [FALSE] L0004
       CALL            R0011 (#5e) -> -(SP)
       RTRUE           
L0004: JE              G7a,#3b [FALSE] L0005
       JE              Gc6,#b7 [FALSE] L0005
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0005: JE              G7a,#1c,#2a,#52 [FALSE] L0006
       STORE           G00,#38
       CALL            R0011 (#53,#91) -> -(SP)
       RTRUE           
L0006: CALL            R0339 (#b7) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0346 (#03) -> -(SP)
       RET_POPPED      

Routine R0398, 0 locals ()

       RET             #03

Routine R0399, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       JE              G8f,#0501 [FALSE] L0001
       TEST_ATTR       "long line",#0c [FALSE] L0001
       JZ              G8c [TRUE] L0001
       CALL            R0014 (#6caa) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "hawker",#06
       INSERT_OBJ      "hawker","In the Wings"
       INSERT_OBJ      "refreshment","hawker"
       RTRUE           
L0001: JE              L00,#03 [FALSE] L0007
       PRINT           "The "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " can be entered to the north and exited to the south. "
       JZ              G72 [FALSE] L0002
       JE              Gb4,#0a [FALSE] L0003
       JZ              G8c [FALSE] L0003
L0002: NEW_LINE        
       NEW_LINE        
L0003: PRINT           "To the northeast, the grandstand"
       JZ              G72 [TRUE] L0004
       PRINT_PADDR     G1c
       JUMP            L0006
L0004: JE              Gb4,#0a [FALSE] L0005
       JZ              G8c [FALSE] L0005
       PRINT           " has been retracted slightly, revealing a passage"
       JUMP            L0006
L0005: PRINT           " begins its precipitous rise"
L0006: PRINT_PADDR     G5d
       RTRUE           
L0007: JE              L00,#01 [FALSE] L0008
       JE              G7a,#9e [FALSE] L0008
       PRINT           "Very theatrical of you, waiting in the wings. Expect no
awards, however. "
       RFALSE          
L0008: JE              L00,#06 [FALSE] L0010
       JE              Gb4,#0a [TRUE] L0009
       TEST_ATTR       "fiberglass pole",#12 [FALSE] L0010
L0009: TEST_ATTR       "Platform",#12 [TRUE] L0010
       JZ              G8c [FALSE] L0010
       JIN             "safety net","Performance Ring" [FALSE] L0010
       TEST_ATTR       "Camp, West",#12 [TRUE] L0010
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4c,#0e
       STORE           Gbd,#62
       INSERT_OBJ      "safety net",#32
       CLEAR_ATTR      "Performance Ring",#12
       NEW_LINE        
       PRINT           "A roustabout who is wearing a "
       CALL            R0004 (#24) -> -(SP)
       PRINT           " and carrying a large net over his shoulder passes you
and exits the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT_RET       "."
L0010: JE              L00,#06 [FALSE] RFALSE
       CALL            R0450 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       RTRUE           

Routine R0400, 0 locals ()

       JZ              G8c [TRUE] L0001
       PRINT           "You are immediately driven out of the ring by a rousing
chorus of boos."
       NEW_LINE        
       RFALSE          
L0001: RET             #83

Routine R0401, 0 locals ()

       JE              Gb4,#0a [FALSE] L0002
       JZ              G8c [FALSE] L0002
       JZ              G72 [FALSE] L0002
       JE              G29,#17 [FALSE] L0001
       CALL            R0403 -> -(SP)
       RFALSE          
L0001: RET             #ce
L0002: JZ              G8c [TRUE] L0004
       CALL            R0292 (#7f) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0402 -> -(SP)
       RFALSE          
L0003: STORE           Gc8,#0c
       PRINT           "You forge ahead and up the steps."
       NEW_LINE        
       NEW_LINE        
       RET             #b6
L0004: CALL            R0403 -> -(SP)
       RFALSE          

Routine R0402, 0 locals ()

       PRINT           "Agitated by your choice of "
       CALL            R0004 (#29) -> -(SP)
       PRINT           ", the "
       CALL            R0004 (#7f) -> -(SP)
       PRINT_RET       " steers you away from it."

Routine R0403, 0 locals ()

       PRINT           "Climbing up into the deserted and littered grandstands
produces a disorienting sense of deja vu. You make a headachy descent down the
steps."
       NEW_LINE        
       RFALSE          

Routine R0404, 1 local (0000)

       JE              L00,#03 [FALSE] L0006
       PRINT           "This is the arena's oval-shaped performance ring"
       JZ              G93 [FALSE] L0003
       PRINT           " which "
       JIN             "safety net","Performance Ring" [FALSE] L0001
       PRINT           "is occupied by a sagging, rectangular "
       JUMP            L0002
L0001: PRINT           "appears deathly quiet without its circus atmosphere.
Also missing is its "
L0002: CALL            R0004 (#03) -> -(SP)
       PRINT           ". A rope ladder dangles to within a foot of the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           "."
       JUMP            L0004
L0003: PRINT           ". "
       CALL            R0406 -> -(SP)
L0004: NEW_LINE        
       NEW_LINE        
       PRINT           "Just west lies the entrance to a large, round cage that
completely encircles the second of the two rings. To the south the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           "'s vaulted wing leads out into the open air. The
arena's rickety grandstands rise steeply north and east."
       JZ              G93 [TRUE] L0005
       CALL            R0407 -> -(SP)
L0005: NEW_LINE        
       RTRUE           
L0006: JE              L00,#01 [FALSE] L0008
       JIN             "safety net","Mr. Munrab" [FALSE] L0008
       JE              G7a,#0e,#ae,#16 [TRUE] L0007
       JE              G7a,#11,#4c,#93 [FALSE] L0008
L0007: STORE           G34,#00
       PRINT_RET       "You're hardly recognized above the commotion."
L0008: JE              L00,#02 [FALSE] RFALSE
       JZ              G93 [TRUE] L0009
       INSERT_OBJ      "Mahler","Performance Ring"
       JIN             "safety net","Mr. Munrab" [TRUE] RFALSE
       INSERT_OBJ      "safety net",#4c
       RFALSE          
L0009: JE              G29,#1d,#14 [FALSE] L0010
       JIN             "smooth-bodied lion","barred passage" [FALSE] L0010
       JIN             "lion stand","Lions' Den" [FALSE] L0010
       INSERT_OBJ      "lion stand","Performance Ring"
       CLEAR_ATTR      "lion stand",#1e
       SET_ATTR        "lion stand",#06
L0010: JIN             "corpuscular lump of meat","Lions' Den" [FALSE] L0011
       INSERT_OBJ      "corpuscular lump of meat",#32
       CALL            R0432 (#83) -> -(SP)
       PRINT_PADDR     Gc0
       PRINT           "s together finish off the meat and settle back on the "
       CALL            R0004 (#d7) -> -(SP)
       PRINT           "."
       NEW_LINE        
       NEW_LINE        
       STORE           Gab,#00
       RTRUE           
L0011: JE              G29,#1d,#14 [FALSE] RFALSE
       JIN             "smooth-bodied lion","Lions' Den" [FALSE] RFALSE
       JIN             "corpuscular lump of meat","Lions' Den" [TRUE] RFALSE
       CALL            R0014 (#7d8c) -> -(SP)
       STOREW          (SP)+,#00,#00
       PRINT_PADDR     Gc0
       JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0012
       TEST_ATTR       "rusty grate",#0f [FALSE] L0012
       PRINT           "s slink out through the open grate."
       CALL            R0013 (#7d8c,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0432 (#31) -> -(SP)
       JUMP            L0016
L0012: JZ              Gab [FALSE] L0013
       PRINT           "s quit"
       JUMP            L0014
L0013: PRINT           " quits"
L0014: PRINT           " pacing and hunker"
       JG              Gab,#00 [FALSE] L0015
       PRINT           "s"
L0015: PRINT           " back down onto the sawdust."
       STORE           Gab,#00
       CALL            R0432 (#83) -> -(SP)
L0016: NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0405, 0 locals ()

       CALL            R0292 (#60) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "The "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " is too bulky to be carried that distance."
       NEW_LINE        
       RFALSE          
L0001: RET             #51

Routine R0406, 1 local (0000)

       PRINT           "The rope ladder"
       JE              G00,#83 [FALSE] L0001
       PRINT           " above "
       CALL            R0004 (#33) -> -(SP)
L0001: PRINT           " has been tangled around the platform from which it
hangs."
       JZ              L00 [TRUE] RFALSE
       NEW_LINE        
       RTRUE           

Routine R0407, 0 locals ()

       JE              G7a,#5f [TRUE] L0001
       NEW_LINE        
       NEW_LINE        
L0001: JE              Gce,#01 [FALSE] L0002
       PRINT           "Craning your neck upward, you see "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " standing on the platform above the rope "
       CALL            R0004 (#65) -> -(SP)
       JUMP            L0005
L0002: JE              Gce,#02 [FALSE] L0003
       PRINT           "The shadowy form of the great ape is ensconced among
the guy wires above the tightrope"
       JUMP            L0005
L0003: CALL            R0004 (#09) -> -(SP)
       PRINT           " stands "
       JE              G00,#3e,#38 [FALSE] L0004
       PRINT           "across from you "
L0004: PRINT           "on the opposite platform, one of his great limbs
grasping a guy wire for balance"
L0005: PRINT           ". He is holding the limp form of a small girl under one
arm."
       RTRUE           

Routine R0408, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT           "One leg of the "
       CALL            R0004 (#85) -> -(SP)
       PRINT_RET       " is shorter than the other two."
L0001: JE              G7a,#8d,#1c [FALSE] L0002
       PRINT_RET       "It's too rickety to support your weight."
L0002: JE              G7a,#90 [FALSE] RFALSE
       CALL            R0011 (#28,#85) -> -(SP)
       RTRUE           

Routine R0409, 1 local (0000)

       JE              L00,#03 [FALSE] L0002
       CALL            R0412 -> -(SP)
       JZ              G93 [TRUE] L0001
       CALL            R0407 -> -(SP)
L0001: NEW_LINE        
       RTRUE           
L0002: JE              L00,#02 [FALSE] RFALSE
       JZ              G93 [TRUE] RFALSE
       INSERT_OBJ      "Mahler","Platform"
       RTRUE           

Routine R0410, 0 locals ()

       CALL            R0011 (#25,#dc) -> -(SP)
       RFALSE          

Routine R0411, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       CALL            R0412 -> -(SP)
       JZ              G93 [TRUE] L0001
       CALL            R0407 -> -(SP)
L0001: NEW_LINE        
       RTRUE           

Routine R0412, 0 locals ()

       PRINT           "You're standing on a small, unstable platform which is
suspended"
       PRINT_PADDR     G4d
       PRINT           " by guy wires converging on it from all directions. "
       JE              G00,#38 [FALSE] L0001
       PRINT           "A rope ladder dangles from the platform and t"
       JUMP            L0002
L0001: PRINT           "T"
L0002: PRINT           "he tightrope stretches "
       JE              G00,#38 [FALSE] L0003
       PRINT           "east"
       JUMP            L0004
L0003: PRINT           "west"
L0004: PRINT           " to the opposite platform"
       JE              Gce,#03 [FALSE] L0005
       PRINT           " where the attention of everyone in the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " is focused"
L0005: PRINT           "."
       RTRUE           

Routine R0413, 1 local (0000)

       JE              L00,#03 [FALSE] L0004
       PRINT           "You are standing, "
       CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "poised"
       JUMP            L0002
L0001: PRINT           "perched "
       CALL            R0003 (G2a) -> -(SP)
       PRINT_PADDR     (SP)+
L0002: PRINT_PADDR     G4d
       PRINT           ", "
       LOADW           G7d,G41 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " across the "
       CALL            R0004 (#48) -> -(SP)
       PRINT           "."
       JZ              G93 [TRUE] L0003
       CALL            R0407 -> -(SP)
L0003: NEW_LINE        
       RTRUE           
L0004: JE              L00,#01 [FALSE] L0007
       JE              G7a,#77,#53,#52 [TRUE] L0006
       JE              G7a,#a2 [FALSE] L0005
       JE              G29,#16 [TRUE] L0006
L0005: JE              G7a,#97,#3a [FALSE] RFALSE
       JE              G6a,#81 [FALSE] RFALSE
L0006: PRINT_PADDR     G25
       CALL            R0422 -> -(SP)
       PRINT           "And you fall ..."
       CALL            R0423 -> -(SP)
       RET_POPPED      
L0007: JE              L00,#02 [FALSE] RFALSE
       JZ              G93 [TRUE] RFALSE
       INSERT_OBJ      "Mahler","Walking a Tightrope"
       RTRUE           

Routine R0414, 0 locals ()

       JE              G00,#83 [FALSE] L0001
       CALL            R0339 (#48) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0346 (#48) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#75,#25 [FALSE] L0002
       PRINT_PADDR     G75
       NEW_LINE        
       RTRUE           
L0002: JE              G7a,#14,#1c,#2a [TRUE] L0003
       JE              G7a,#25 [FALSE] RFALSE
L0003: JE              G00,#38,#46,#3e [FALSE] RFALSE
       JE              G00,#38 [TRUE] L0004
       JZ              G19 [TRUE] L0005
L0004: CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#46 [TRUE] L0006
       JE              G00,#3e [FALSE] RFALSE
       JZ              G19 [FALSE] RFALSE
L0006: CALL            R0297 (#19) -> -(SP)
       RET_POPPED      

Routine R0415, 0 locals ()

       CALL            R0416 -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0347 (#00,S155) -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JE              G00,#38,#46 [TRUE] L0002
       CALL            R0339 (#dc) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0346 (#dc) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#83,#24,#26 [TRUE] L0003
       JE              G7a,#68,#25 [FALSE] RFALSE
L0003: JE              Gce,#02 [FALSE] L0005
       STORE           Gce,#03
       PRINT           "You're not very good at aping "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " in this respect, but the vibrations of your attempt
serve to flush him from his perch among the guy wires and onto the opposite
platform."
       CALL            R0290 (#30) -> -(SP)
       JE              (SP)+,#46 [FALSE] L0004
       PRINT           " "Crunch!""
L0004: NEW_LINE        
       RTRUE           
L0005: JE              G7a,#68,#83 [TRUE] RFALSE
       PRINT_PADDR     G75
       NEW_LINE        
       RTRUE           

Routine R0416, 0 locals ()

       JE              G00,#38,#46,#3e [TRUE] RTRUE
       JE              G00,#83 [FALSE] RFALSE
       RTRUE           

Routine R0417, 0 locals ()

       CALL            R0355 ("opposi") -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       JE              G7a,#2a,#14 [FALSE] L0003
       JZ              G19 [FALSE] L0001
       JE              G00,#38 [FALSE] L0002
L0001: CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0002: JE              G00,#46 [FALSE] RFALSE
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0003: CALL            R0339 (#91) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0346 (#91) -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#63 [FALSE] L0005
       JE              G00,#38,#46 [FALSE] L0005
       CALL            R0170 -> -(SP)
       RTRUE           
L0005: JE              G7a,#3c [FALSE] L0007
       JE              G00,#38,#46 [FALSE] L0006
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0006: CALL            R0346 (#91) -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#1c,#14,#2a [FALSE] L0011
       JE              G00,#38,#46 [FALSE] L0008
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0008: JE              G00,#3e [FALSE] L0010
       JZ              G19 [TRUE] L0009
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0009: CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0010: CALL            R0347 (#91) -> -(SP)
       RET_POPPED      
L0011: JE              G7a,#53,#52 [FALSE] RFALSE
       JE              G00,#3e [FALSE] L0012
       JE              G7a,#53 [FALSE] L0012
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0012: PRINT_PADDR     G25
       CALL            R0422 -> -(SP)
       PRINT           "And you fall ..."
       CALL            R0423 -> -(SP)
       RET_POPPED      

Routine R0418, 0 locals ()

       JE              Gce,#02 [FALSE] L0001
       CALL            R0004 (#09) -> -(SP)
       PRINT           ", perched above you, is restless enough to make the "
       CALL            R0004 (#48) -> -(SP)
       PRINT           " too herky-jerky to walk across."
       NEW_LINE        
       RFALSE          
L0001: TEST_ATTR       "gorilla suit",#14 [TRUE] L0002
       TEST_ATTR       "dress-suit combination",#14 [FALSE] L0003
L0002: PRINT           "You're not dressed for wire-walking."
       NEW_LINE        
       RFALSE          
L0003: CALL            R0292 (#81) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       JZ              G93 [FALSE] L0004
       RANDOM          #03 -> -(SP)
       ADD             #02,(SP)+ -> -(SP)
       CALL            R0013 (#7926,(SP)+) -> -(SP)
       STOREW          (SP)+,#00,#01
L0004: JE              G29,#1d [FALSE] L0005
       STORE           G19,#01
       JUMP            L0006
L0005: STORE           G19,#00
L0006: STORE           G41,#01
       CLEAR_ATTR      "Walking a Tightrope",#12
       RET             #3e

Routine R0419, 0 locals ()

       INC             G53
       CALL            R0013 (#7926,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       JE              G53,#04 [FALSE] L0001
       PRINT           "You're really fighting it now, the high wire starts
acting like a jump rope. "
       CALL            R0422 -> -(SP)
       NEW_LINE        
       CALL            R0003 (G7f) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " right before you plummet ..."
       CALL            R0423 -> -(SP)
       RET_POPPED      
L0001: JG              G53,#01 [FALSE] L0003
       JE              G7a,#58 [TRUE] L0003
       PRINT           "You're still out of balance, "
       CALL            R0003 (G3e) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " now, to the "
       JZ              G83 [TRUE] L0002
       PRINT_RET       "north."
L0002: PRINT_RET       "south."
L0003: JE              G53,#01 [FALSE] RFALSE
       PRINT           "You find "
       CALL            R0004 (#1d) -> -(SP)
       CALL            R0420 -> -(SP)
       RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0004
       CALL            R0421 (#01) -> -(SP)
       RET_POPPED      
L0004: CALL            R0421 -> -(SP)
       RET_POPPED      

Routine R0420, 0 locals ()

       PRINT           " leaning "
       CALL            R0003 (G3e) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " to the"
       RTRUE           

Routine R0421, 1 local (0000)

       JZ              L00 [TRUE] L0001
       PRINT           " north"
       STORE           G83,#01
       JUMP            L0002
L0001: PRINT           " south"
       STORE           G83,#00
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0422, 1 local (0000)

       GET_CHILD       "it" -> L00 [FALSE] RFALSE
       GET_SIBLING     L00 -> -(SP) [FALSE] L0001
       PRINT           "Everything you're holding"
       JUMP            L0002
L0001: PRINT           "Oops,"
       CALL            R0302 (L00,#01) -> -(SP)
L0002: PRINT           " goes flying. "
       RTRUE           

Routine R0423, 0 locals ()

       CALL            R0014 (#7926) -> -(SP)
       STOREW          (SP)+,#00,#00
       STORE           G53,#00
       STORE           G83,#00
       CLEAR_ATTR      "tightrope",#0c
       CLEAR_ATTR      "Walking a Tightrope",#12
       CALL            R0350 (#0e) -> -(SP)
       JIN             "safety net","Mr. Munrab" [FALSE] L0001
       CALL            R0285 (#01,S162) -> -(SP)
       RET_POPPED      
L0001: JIN             "safety net","Performance Ring" [TRUE] L0002
       CALL            R0285 (#01,S163) -> -(SP)
       RTRUE           
L0002: STORE           G00,#83
       CALL            R0299 (#d3,#83) -> -(SP)
       INSERT_OBJ      "it","safety net"
       PRINT           "... deeply into the "
       CALL            R0004 (#03) -> -(SP)
       PRINT_RET       ", which heaves you high into the air ... then  catches
you back down."

Routine R0424, 0 locals ()

       JE              G29,#19 [FALSE] L0001
       JZ              G19 [FALSE] L0002
L0001: JE              G29,#1d [FALSE] L0010
       JZ              G19 [FALSE] L0010
L0002: JZ              G93 [TRUE] L0009
       JE              G41,#01 [FALSE] L0003
       STORE           G41,#05
       JUMP            L0006
L0003: JE              G41,#02 [FALSE] L0004
       STORE           G41,#04
       JUMP            L0006
L0004: JE              G41,#04 [FALSE] L0005
       STORE           G41,#02
       JUMP            L0006
L0005: JE              G41,#05 [FALSE] L0006
       STORE           G41,#01
L0006: JZ              G19 [TRUE] L0007
       STORE           G19,#00
       JUMP            L0008
L0007: STORE           G19,#01
L0008: PRINT           "A daring turnaround on the tightrope! You regain your
balance."
       NEW_LINE        
       RFALSE          
L0009: PRINT           "A bold attempt to excite the arena seats! "
       CALL            R0422 -> -(SP)
       PRINT           "You sink ..."
       CALL            R0423 -> -(SP)
       RFALSE          
L0010: CALL            R0002 (#7926) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       JZ              G53 [FALSE] L0011
       PRINT           "A quiver shoots through your leading foot,"
       JUMP            L0013
L0011: JE              G53,#02,#03 [FALSE] L0012
       PRINT           "Your trailing foot begins to quake,"
       JUMP            L0013
L0012: PRINT           "You're too unstable."
       NEW_LINE        
       RFALSE          
L0013: PRINT           " stopping you dead on the wire."
       NEW_LINE        
       RFALSE          
L0014: JE              G41,#05 [TRUE] L0023
       INC             G41
       PRINT           "You take a couple of tentative steps across the wire"
       JE              G41,#03 [FALSE] L0015
       PRINT           ", reaching the halfway point"
L0015: JE              Gce,#03 [FALSE] L0022
       JZ              G19 [TRUE] L0022
       JE              G41,#02 [FALSE] L0016
       PRINT           ". "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " lets out an aggressive scream that echoes throughout
the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           "."
       JUMP            L0021
L0016: JE              G41,#03 [FALSE] L0017
       PRINT           ". The gorilla raps his knuckles against his mighty
chest. You can feel the vibration on your toes."
       JUMP            L0021
L0017: JE              G41,#04 [FALSE] L0019
       CALL            R0292 (#30) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       JE              Gd1,#0492 [FALSE] L0018
       TEST_ATTR       "transistor radio",#18 [FALSE] L0018
       JZ              G1a [TRUE] L0018
       PRINT           ". As the heavenly music drifts to within earshot of "
       CALL            R0004 (#09) -> -(SP)
       PRINT           ", the beast is becalmed, and he loosens his grip on the
girl."
       JUMP            L0021
L0018: PRINT           ". "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " appears determined to bring down the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " if you take one more step."
       JUMP            L0021
L0019: JE              G41,#05 [FALSE] RFALSE
       CALL            R0292 (#30) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
       JE              Gd1,#0492 [FALSE] L0020
       TEST_ATTR       "transistor radio",#18 [FALSE] L0020
       JZ              G1a [TRUE] L0020
       STORE           Gce,#04
       CALL            R0299 (#d3,#32) -> -(SP)
       CALL            R0300 (#83,#51) -> -(SP)
       CALL            R0299 (#83,#e1) -> -(SP)
       INSERT_OBJ      "Chelsea","Left Hanging"
       INSERT_OBJ      "Comrade Thumb","Left Hanging"
       INSERT_OBJ      "group","Left Hanging"
       INSERT_OBJ      "Mr. Munrab","Left Hanging"
       STORE           Gb7,#00
       INSERT_OBJ      "tightrope","Left Hanging"
       PRINT           ". You are now almost close enough to reach out and
touch "
       CALL            R0004 (#09) -> -(SP)
       PRINT           ", and the effect of the music is to utterly relax the
great ape. He lets loose the girl like a rag doll ... falling ... falling ...
falling ... deep into the safety of the net!

The cheers of joy and relief from the group encircling the net interrupt "
       CALL            R0004 (#09) -> -(SP)
       PRINT           "'s listening pleasure. With a stomp, he bounces you off
your perch and on your way down, you catch the wire with "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           ", thus saving two lives in the same move. You dangle
here as the crowd below continues their self-congratulation and rejoicing."
       NEW_LINE        
       NEW_LINE        
       SET_ATTR        "Mr. Munrab",#06
       SET_ATTR        "Comrade Thumb",#06
       STORE           G8f,#00
       ADD             G01,#0a -> G01
       CALL            R0284 (#e1) -> -(SP)
       RFALSE          
L0020: CALL            R0285 (#01,S164) -> -(SP)
L0021: NEW_LINE        
       RFALSE          
L0022: PRINT           " ..."
       NEW_LINE        
       RET             #3e
L0023: CALL            R0427 -> -(SP)
       RET_POPPED      

Routine R0425, 1 local (0000)

       JE              L00,#01 [FALSE] RFALSE
       JE              G7a,#0e,#ae,#16 [TRUE] L0001
       JE              G7a,#11,#4c,#93 [TRUE] L0001
       JE              G7a,#4d [FALSE] L0002
L0001: STORE           G34,#00
       PRINT_RET       "You can't be heard above the commotion below."
L0002: JE              G7a,#52,#3a,#a4 [TRUE] L0003
       JE              G7a,#7e,#13,#12 [TRUE] L0003
       JE              G7a,#2a,#53 [FALSE] L0004
L0003: STORE           Gb7,#03
       RTRUE           
L0004: JE              G7a,#5e [FALSE] L0005
       PRINT_RET       "Your neck aches as you attempt it."
L0005: JE              G7a,#a2 [FALSE] L0006
       JE              G29,#1d,#19 [TRUE] L0007
L0006: JE              G7a,#69 [FALSE] L0008
       JE              G6a,#1d [FALSE] L0008
L0007: PRINT_RET       "The strength is lacking."
L0008: CALL            R0340 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G6a,#1d,#0b,#48 [TRUE] RFALSE
       JE              Gc6,#1d,#0b,#48 [TRUE] RFALSE
       PRINT_RET       "That's unreachable."

Routine R0426, 0 locals ()

       CALL            R0011 (#52) -> -(SP)
       RFALSE          

Routine R0427, 1 local (0000)

       JZ              G19 [TRUE] L0001
       STORE           L00,#46
       JUMP            L0002
L0001: STORE           L00,#38
L0002: STORE           G41,#00
       CALL            R0014 (#7926) -> -(SP)
       STOREW          (SP)+,#00,#00
       STORE           G19,#00
       JE              L00,#46 [FALSE] L0003
       TEST_ATTR       "Platform",#12 [TRUE] L0003
       ADD             G01,#0a -> G01
       PRINT           ""Ta Daaaaaaaaaaa." Those familiar notes from tonight's
show reverberate through your body in triumph."
       NEW_LINE        
       NEW_LINE        
       RET             L00
L0003: RET             L00

Routine R0428, 1 local (0000)

       JE              L00,#03 [FALSE] L0005
       PRINT           "Here inside the round cage you stand in a dingy indoor
twilight, surrounded by a panorama of closely spaced bars. The "
       CALL            R0004 (#95) -> -(SP)
       PRINT           " that you're still keeping an eye on is to the east.

Built into the southern side of the round cage there is a square grate which "
       TEST_ATTR       "rusty grate",#0f [FALSE] L0001
       PRINT           "is raised, revealing"
       JUMP            L0002
L0001: PRINT           "is lowered, blocking"
L0002: PRINT           " some sort of passage."
       NEW_LINE        
       JIN             "lion stand","Lions' Den" [FALSE] RFALSE
       TEST_ATTR       "lion stand",#06 [FALSE] RFALSE
       NEW_LINE        
       TEST_ATTR       "lions' den",#0c [FALSE] L0003
       TEST_ATTR       "cigarette case",#12 [TRUE] L0003
       PRINT           "The "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " is"
       PRINT_PADDR     Gd6
       JUMP            L0004
L0003: PRINT           "A "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " sits here."
L0004: NEW_LINE        
       RTRUE           
L0005: JE              L00,#02 [FALSE] RFALSE
       JIN             "smooth-bodied lion","Performance Ring" [FALSE] L0007
       PRINT           "The big cats suddenly spring out of their slumber, and
begin moving stealthily around the den"
       TEST_ATTR       "corpuscular lump of meat",#0c [TRUE] L0006
       PRINT           ", as if in preparation for a feeding"
L0006: PRINT_PADDR     G5d
       NEW_LINE        
       CALL            R0432 (#aa) -> -(SP)
       CALL            R0013 (#7d8c,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
L0007: JIN             "lion stand","Performance Ring" [FALSE] RFALSE
       TEST_ATTR       "lion stand",#06 [FALSE] RFALSE
       CLEAR_ATTR      "lion stand",#06
       SET_ATTR        "lion stand",#1e
       INSERT_OBJ      "lion stand","Lions' Den"
       RTRUE           

Routine R0429, 0 locals ()

       TEST_ATTR       "rusty grate",#0f [TRUE] L0001
       PRINT           "The "
       CALL            R0004 (#26) -> -(SP)
       PRINT           " is lowered over the passage."
       NEW_LINE        
       RFALSE          
L0001: JIN             "shaggy lion",G00 [FALSE] L0002
       TEST_ATTR       "rusty grate",#0f [TRUE] L0002
       CALL            R0011 (#6c,#26) -> -(SP)
       RFALSE          
L0002: CALL            R0124 -> -(SP)
       RFALSE          

Routine R0430, 1 local (0000)

       JIN             "smooth-bodied lion","barred passage" [FALSE] L0004
       INC             Gab
       JG              Gab,#07 [FALSE] RFALSE
       INSERT_OBJ      "corpuscular lump of meat",#32
       CALL            R0014 (#7d8c) -> -(SP)
       STOREW          (SP)+,#00,#00
       TEST_ATTR       "rusty grate",#0f [FALSE] RFALSE
       STORE           Gab,#00
       JE              G00,#aa [FALSE] L0001
       CALL            R0432 (#aa) -> -(SP)
       JUMP            L0002
L0001: CALL            R0432 (#83) -> -(SP)
L0002: JE              G00,#e6,#aa [FALSE] L0003
       NEW_LINE        
       PRINT           "The lions slink back into their den."
       NEW_LINE        
L0003: JE              G00,#aa [FALSE] RFALSE
       CALL            R0013 (#7d8c,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RFALSE          
L0004: JE              G00,#aa [TRUE] L0005
       JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0005
       CALL            R0432 (#31) -> -(SP)
       CALL            R0013 (#7d8c,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       JE              G00,#e6 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "You see the pair of hungry cats slink into the chute
from the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " and pounce on the "
       CALL            R0004 (#66) -> -(SP)
       PRINT_RET       "."
L0005: JE              G00,#aa [FALSE] RFALSE
       CALL            R0013 (#7d8c,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       JIN             "corpuscular lump of meat","Lions' Den" [FALSE] L0008
       JZ              Gab [FALSE] L0006
       PRINT           "The lions continue mauling their"
       JUMP            L0007
L0006: PRINT           "The "
       CALL            R0004 (#1f) -> -(SP)
       PRINT           " keeps mauling his"
L0007: PRINT_RET       " dinner and watching you."
L0008: JZ              Gab [FALSE] L0009
       PRINT           "Both lions continue"
       JUMP            L0010
L0009: PRINT           "The "
       CALL            R0004 (#1f) -> -(SP)
       PRINT           " keeps"
       STORE           L00,#01
L0010: PRINT           " pacing nervously back and forth around the den, never
letting you out of "
       JZ              L00 [TRUE] L0011
       PRINT           "its"
       JUMP            L0012
L0011: PRINT           "their"
L0012: PRINT           " sight."
       JZ              L00 [TRUE] L0015
       JE              G7a,#5d [FALSE] L0015
       PRINT           " The "
       CALL            R0004 (#75) -> -(SP)
       PRINT           " remains bogged down "
       JL              Gab,#03 [FALSE] L0013
       PRINT           "in front of the grate"
       JUMP            L0014
L0013: PRINT           "off to one side of the "
       CALL            R0004 (#25) -> -(SP)
L0014: PRINT           "."
L0015: NEW_LINE        
       RTRUE           

Routine R0431, 0 locals ()

       JE              G7a,#6c,#5c,#9c [TRUE] L0001
       JE              G7a,#2c [FALSE] L0002
L0001: CALL            R0011 (G7a,#95,Gc6) -> -(SP)
       RTRUE           
L0002: JE              G7a,#44 [FALSE] L0009
       JE              G00,#aa [FALSE] L0003
       CALL            R0170 -> -(SP)
       RTRUE           
L0003: JIN             "smooth-bodied lion","Performance Ring" [FALSE] L0004
       PRINT_PADDR     G7c
       PRINT           " a pair of sleepyheaded lions resting on their haunches
in the sawdust."
       JUMP            L0005
L0004: PRINT           "The "
       CALL            R0004 (#25) -> -(SP)
       PRINT           " is still, and void of life."
L0005: TEST_ATTR       "lion stand",#06 [FALSE] L0008
       PRINT           " There is an enclosed "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " in the "
       CALL            R0004 (#25) -> -(SP)
       TEST_ATTR       "Midway Entrance",#12 [TRUE] L0006
       SET_ATTR        "lions' den",#0c
       CLEAR_ATTR      "Lions' Den",#12
L0006: TEST_ATTR       "Midway Entrance",#12 [FALSE] L0007
       TEST_ATTR       "lions' den",#0c [FALSE] L0007
       JIN             "smooth-bodied lion","barred passage" [TRUE] L0007
       PRINT           ","
       PRINT_PADDR     Gd6
       JUMP            L0008
L0007: PRINT           "."
L0008: NEW_LINE        
       RTRUE           
L0009: JE              G7a,#3b [FALSE] L0014
       JE              Gc6,#25 [FALSE] L0014
       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] L0014
       JE              G00,#aa [FALSE] L0010
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0010: JE              G6a,#66 [FALSE] L0011
       TEST_ATTR       "cage door",#0f [FALSE] L0011
       PRINT_RET       "This isn't feeding pigeons in the park here."
L0011: JE              G6a,#66 [TRUE] L0012
       GET_PROP        G6a,#0d -> -(SP)
       JG              (SP)+,#19 [FALSE] L0013
       JE              G6a,#81 [TRUE] L0013
L0012: STORE           Gc6,#0c
       CALL            R0345 -> -(SP)
       STORE           Gc6,#25
       RET             Gc6
L0013: CALL            R0124 -> -(SP)
       RET_POPPED      
L0014: JE              G7a,#79 [FALSE] L0017
       JE              G00,#aa [FALSE] L0015
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0015: JIN             "shaggy lion",G00 [FALSE] L0016
       PRINT_RET       "Very unwise."
L0016: CALL            R0343 -> -(SP)
       RET_POPPED      
L0017: JE              G7a,#26,#24,#25 [FALSE] L0018
       CALL            R0011 (#26,#0c) -> -(SP)
       RTRUE           
L0018: JE              G7a,#2a,#40,#1c [FALSE] L0020
       JE              G00,#83 [FALSE] L0019
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0019: PRINT_PADDR     Ga0
       RTRUE           
L0020: JE              G7a,#28,#41,#59 [FALSE] RFALSE
       JE              G00,#aa [FALSE] L0021
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0021: PRINT_PADDR     Ga0
       RTRUE           

Routine R0432, 1 local (0000)

       INSERT_OBJ      "smooth-bodied lion",L00
       INSERT_OBJ      "shaggy lion",L00
       INSERT_OBJ      "lion",L00
       JE              L00,#cc,#31 [TRUE] RFALSE
       JE              L00,#83 [FALSE] L0001
       SET_ATTR        "lion stand",#06
       CLEAR_ATTR      "lion stand",#1e
       JUMP            L0002
L0001: JE              L00,#aa [FALSE] L0002
       SET_ATTR        "lion stand",#1e
L0002: INSERT_OBJ      "lion stand",L00
       RTRUE           

Routine R0433, 1 local (0000)

       JE              L00,#01 [FALSE] L0002
       JE              G7a,#a2 [FALSE] L0002
       JE              G29,#17 [TRUE] L0002
       JE              G29,#16 [FALSE] L0001
       CALL            R0011 (#28,#60) -> -(SP)
       RTRUE           
L0001: CALL            R0351 (#60) -> -(SP)
       RET_POPPED      
L0002: JZ              L00 [FALSE] RFALSE
       JE              G7a,#2c,#6c [FALSE] L0003
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#42 [FALSE] L0005
       PRINT           "The "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " is a red three-foot-high, cylindrical pedestal. "
       GET_CHILD       "lion stand" -> -(SP) [FALSE] L0004
       CALL            R0011 (#63,#60) -> -(SP)
       RTRUE           
L0004: NEW_LINE        
       RTRUE           
L0005: JE              G7a,#63 [FALSE] L0008
       GET_CHILD       "lion stand" -> -(SP) [FALSE] L0006
       PRINT           "There's"
       CALL            R0280 (#60) -> -(SP)
       JUMP            L0007
L0006: PRINT           " nothing"
L0007: PRINT_RET       " on the stand."
L0008: JE              G00,#83 [FALSE] L0009
       TEST_ATTR       "lion stand",#06 [FALSE] L0009
       CALL            R0339 (#60) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       CALL            R0346 (#60) -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#24 [FALSE] L0010
       CALL            R0011 (#1c,#60) -> -(SP)
       RTRUE           
L0010: JIN             "shaggy lion",G00 [FALSE] L0012
       JE              G7a,#1c [TRUE] L0011
       JE              G7a,#3c,#3b [FALSE] L0012
L0011: CALL            R0011 (#69,#60) -> -(SP)
       RTRUE           
L0012: JE              G7a,#75,#69,#61 [TRUE] L0013
       JE              G7a,#44,#81,#68 [TRUE] L0013
       JE              G7a,#6a [FALSE] L0017
L0013: JE              G6a,#60 [FALSE] L0017
       JIN             "cigarette case",#32 [FALSE] L0017
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#60 [FALSE] L0014
       CALL            R0351 (#60) -> -(SP)
       RET_POPPED      
L0014: JIN             "shaggy lion",G00 [FALSE] L0015
       PRINT_RET       "Jealous of your attempt to assume its throne, the
shaggy king of beasts repels you with a volcanic roar."
L0015: JIN             "shaggy lion","barred passage" [FALSE] L0016
       TEST_ATTR       "rusty grate",#0f [FALSE] L0016
       CALL            R0440 -> -(SP)
       RET_POPPED      
L0016: SET_ATTR        "cigarette case",#12
       INSERT_OBJ      "cigarette case","it"
       ADD             G01,#0a -> G01
       PRINT           "You tilt up the "
       CALL            R0004 (#60) -> -(SP)
       PRINT           " and see a "
       CALL            R0004 (#d8) -> -(SP)
       PRINT_RET       ", which you pick up."
L0017: JE              G7a,#3b [FALSE] L0018
       JE              Gc6,#60 [FALSE] L0018
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0018: JE              G7a,#44 [FALSE] RFALSE
       PRINT_PADDR     G9b
       PRINT_PADDR     G5d
       RTRUE           

Routine R0434, 0 locals ()

       JIN             "rawhide bullwhip","it" [TRUE] RFALSE
       PRINT_PADDR     G90
       PRINT_RET       " a whip."

Routine R0435, 1 local (0000)

       JIN             "shaggy lion","Lions' Den" [TRUE] RFALSE
       CALL            R0339 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0346 (L00) -> -(SP)
       RTRUE           

Routine R0436, 0 locals ()

       JE              G7a,#47,#85 [TRUE] L0001
       CALL            R0435 (#1f) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0001: CALL            R0337 (#1f) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0438 -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#6a,#7a,#81 [FALSE] L0003
       PRINT           "As "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       " approaches, the lion backs you away with a
head-bobbing roar."
L0003: JE              G7a,#42 [FALSE] L0006
       JIN             "corpuscular lump of meat","Lions' Den" [TRUE] L0004
       JE              G00,#83 [TRUE] L0004
       JIN             "shaggy lion","barred passage" [FALSE] L0005
       JL              Gab,#07 [FALSE] L0005
L0004: PRINT_RET       "The lion appears savage and blond, like a Cosmo cover."
L0005: PRINT_RET       "The lion wags its salivating tongue in stride, at times
giving off a deep-throated purr."
L0006: JE              G7a,#97 [FALSE] L0007
       JE              Gc6,#1f [FALSE] L0007
       JE              G00,#83 [FALSE] L0007
       CALL            R0011 (#3b,G6a,#25) -> -(SP)
       RTRUE           
L0007: JE              G7a,#85,#47 [FALSE] L0011
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       JE              G00,#83 [FALSE] L0008
       CALL            R0011 (#3b,G6a,#25) -> -(SP)
       RTRUE           
L0008: JE              G6a,#66 [FALSE] L0009
       CALL            R0437 (#01) -> -(SP)
       RTRUE           
L0009: JE              G6a,#bb [FALSE] L0010
       CALL            R0344 -> -(SP)
       RET_POPPED      
L0010: JE              G6a,#c4 [TRUE] RFALSE
       INSERT_OBJ      G6a,G00
       PRINT           "As"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " falls to the sawdust, the shaggy beast lets out a
gaping yawn. With your open view of its choppers, this is only a little less
intimidating than a roar."
L0011: JE              G7a,#aa [FALSE] RFALSE
       JE              Gc6,#10 [FALSE] RFALSE
       CALL            R0434 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT           "Following the whip's backlash, the "
       CALL            R0004 (#1f) -> -(SP)
       CALL            R0285 (#05,S166) -> -(SP)
       RTRUE           

Routine R0437, 1 local (0000)

       INSERT_OBJ      "corpuscular lump of meat","Lions' Den"
       SET_ATTR        "corpuscular lump of meat",#06
       SET_ATTR        "corpuscular lump of meat",#0c
       STORE           Gab,#00
       PRINT           "The "
       JZ              L00 [TRUE] L0001
       CALL            R0004 (#1f) -> -(SP)
       JUMP            L0002
L0001: CALL            R0004 (#75) -> -(SP)
L0002: CALL            R0013 (#7d8c,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       " jaunts over to the meat and pounces on it, and now the
other beast joins in on the feast, each lion occasionally peering up at you."

Routine R0438, 0 locals ()

       PRINT_RET       "The big cat pays you no heed."

Routine R0439, 0 locals ()

       JE              G7a,#85,#47 [TRUE] L0001
       CALL            R0435 (#75) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0001: CALL            R0337 (#75) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0438 -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#6a,#81,#7a [FALSE] L0003
       PRINT           "An ominous, deep-sounding purr from the "
       CALL            R0004 (#75) -> -(SP)
       PRINT_RET       " keeps you away."
L0003: JE              G7a,#42 [FALSE] L0008
       JZ              Gab [TRUE] L0004
       JE              G00,#aa [TRUE] L0005
L0004: JE              G00,#83 [FALSE] L0006
L0005: PRINT_RET       "The big cat is stretched out lazily over the sawdust."
L0006: JIN             "corpuscular lump of meat","Lions' Den" [TRUE] RFALSE
       JE              G00,#83 [TRUE] RFALSE
       JIN             "smooth-bodied lion","barred passage" [TRUE] L0007
       JZ              Gab [FALSE] RFALSE
L0007: PRINT_RET       "With each stride the cat's muscle-laden shoulder bones
pivot up and down in tandem."
L0008: JE              G7a,#97 [FALSE] L0009
       JE              Gc6,#75 [FALSE] L0009
       JE              G00,#83 [FALSE] L0009
       CALL            R0011 (#3b,G6a,#25) -> -(SP)
       RTRUE           
L0009: JE              G7a,#85,#47 [FALSE] L0012
       CALL            R0292 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       JE              G00,#83 [FALSE] L0010
       CALL            R0011 (#3b,G6a,#25) -> -(SP)
       RTRUE           
L0010: JE              G6a,#c4 [TRUE] RFALSE
       JE              G6a,#66 [FALSE] L0011
       CALL            R0437 -> -(SP)
       RET_POPPED      
L0011: CALL            R0344 -> -(SP)
       RET_POPPED      
L0012: JE              G7a,#aa [FALSE] RFALSE
       JE              Gc6,#10 [FALSE] RFALSE
       CALL            R0434 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       INC             Gab
       JE              Gab,#01 [FALSE] L0013
       PRINT           "As the whip cracks just inches above the "
       CALL            R0004 (#75) -> -(SP)
       PRINT_RET       "'s hide, the puzzled animal scratches to a halt in
front of the grate. Leaning back on its haunches, the lion flexes its
forepaws."
L0013: JE              Gab,#02 [FALSE] L0014
       PRINT_RET       ""Snap!" The lion performs an obedient roll-over,
flecking its hide with sawdust."
L0014: JE              Gab,#03 [FALSE] L0015
       PRINT           "The "
       CALL            R0004 (#75) -> -(SP)
       PRINT           " cowers, does a couple of nervous pirouettes, then
jaunts off to the side of the "
       CALL            R0004 (#25) -> -(SP)
       PRINT_RET       " where it hunkers down and lets out a huge yawn."
L0015: CALL            R0440 -> -(SP)
       RET_POPPED      

Routine R0440, 0 locals ()

       CALL            R0285 (#02,S167) -> -(SP)
       RTRUE           

Routine R0441, 0 locals ()

       CALL            R0499 (#23) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G7a,#42 [FALSE] L0001
       PRINT           "You glance at each lion and realize that, b"
       JUMP            L0002
L0001: PRINT           "B"
L0002: PRINT           "ecause you were outside the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " stuck waiting in line when the lions were introduced,
you're not certain who is who. You'll have to refer to each as the "
       CALL            R0004 (#1f) -> -(SP)
       PRINT           " or the "
       CALL            R0004 (#75) -> -(SP)
       PRINT           "."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0442, 0 locals ()

       JE              G7a,#68,#75 [FALSE] L0001
       JIN             "corpuscular lump of meat","Lions' Den" [FALSE] L0001
       PRINT           "You'd"
       CALL            R0477 (#01) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#3e [FALSE] L0002
       PRINT           "Just looking at the "
       CALL            R0004 (#66) -> -(SP)
       PRINT_RET       " makes you lose your appetite, if not your lunch."
L0002: JE              G7a,#97,#3a [FALSE] RFALSE
       JE              G6a,#66 [FALSE] RFALSE
       JE              G00,#aa [FALSE] RFALSE
       JIN             "shaggy lion",G00 [FALSE] RFALSE
       JZ              Gc6 [TRUE] L0003
       PRINT_PADDR     G0a
       PRINT           ". "
L0003: CALL            R0437 (#01) -> -(SP)
       RTRUE           

Routine R0443, 2 locals (0000, 0000)

       STORE           Gbd,#41
       JIN             "water","bucket" [TRUE] L0001
       PUSH            #00
       JUMP            L0002
L0001: PUSH            #01
L0002: STORE           L00,(SP)+
       JE              G7a,#7b [FALSE] L0003
       JE              G6a,#bb,#0a [FALSE] L0003
       CALL            R0011 (#49,#41,#0a) -> -(SP)
       RTRUE           
L0003: JE              G7a,#2c,#6c [FALSE] L0004
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0004: JZ              L00 [TRUE] L0005
       JE              G7a,#97 [FALSE] L0005
       CALL            R0011 (#3a,#bb) -> -(SP)
       INSERT_OBJ      "bucket",G00
       RTRUE           
L0005: JE              G7a,#8d [FALSE] L0006
       PRINT_RET       "It wouldn't be a very elevating experience."
L0006: JE              G7a,#42 [FALSE] L0009
       PRINT           "It's made of galvanized steel and "
       GET_CHILD       "bucket" -> -(SP) [FALSE] L0007
       PRINT           "contains"
       CALL            R0280 (#41) -> -(SP)
       JUMP            L0008
L0007: PRINT           "there's nothing in it"
L0008: PRINT_PADDR     G5d
       RTRUE           
L0009: JE              G7a,#42,#81,#44 [FALSE] L0013
       PRINT           "The bucket "
       GET_CHILD       "bucket" -> -(SP) [TRUE] L0010
       PRINT           "is empty"
       JUMP            L0012
L0010: PRINT           "contains"
       JZ              L00 [TRUE] L0011
       PRINT           " a limpid pool of "
       CALL            R0004 (#bb) -> -(SP)
       JUMP            L0012
L0011: CALL            R0280 (#41) -> -(SP)
L0012: PRINT_PADDR     G5d
       RTRUE           
L0013: JE              G7a,#38,#37 [FALSE] L0015
       JZ              L00 [TRUE] L0014
       CALL            R0011 (#37,#bb) -> -(SP)
       RTRUE           
L0014: CALL            R0444 -> -(SP)
       RTRUE           
L0015: JE              G7a,#74,#72 [FALSE] L0017
       JZ              L00 [TRUE] L0016
       CALL            R0011 (#72,#bb) -> -(SP)
       RTRUE           
L0016: CALL            R0444 -> -(SP)
       RTRUE           
L0017: JE              G7a,#3b [FALSE] L0018
       JE              Gc6,#41 [FALSE] L0018
       JE              G6a,#bb [TRUE] L0018
       JZ              L00 [TRUE] L0018
       PRINT           "But"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " would get all wet."
L0018: JE              G7a,#3b [FALSE] L0019
       JE              Gc6,#41 [FALSE] L0019
       CALL            R0278 (Gc6) -> L01
       GET_PROP        G6a,#0d -> -(SP)
       ADD             L01,(SP)+ -> L01
       GET_PROP        Gc6,#0d -> -(SP)
       SUB             L01,(SP)+ -> L01
       GET_PROP        Gc6,#0b -> -(SP)
       JG              L01,(SP)+ [TRUE] RFALSE
L0019: JE              G7a,#3b [FALSE] RFALSE
       JE              G6a,#27 [FALSE] L0020
       JIN             #c4,"bucket" [TRUE] L0021
L0020: JE              G6a,#c4 [FALSE] RFALSE
       JIN             "cheese morsel","bucket" [FALSE] RFALSE
L0021: INSERT_OBJ      #c4,"bucket"
       PRINT           "Done. "
       CALL            R0535 -> -(SP)
       RTRUE           

Routine R0444, 1 local (0000)

       GET_CHILD       "bucket" -> L00 [FALSE] L0006
       JE              G7a,#38 [FALSE] L0001
       CALL            R0011 (#45f5,L00) -> -(SP)
       RTRUE           
L0001: GET_SIBLING     L00 -> -(SP) [FALSE] L0002
       PRINT           "The contents of the "
       CALL            R0004 (#41) -> -(SP)
       PRINT           " fall"
       JUMP            L0003
L0002: PRINT           "Okay,"
       CALL            R0302 (L00,#01) -> -(SP)
       PRINT           " falls"
L0003: PRINT           " out of it."
       NEW_LINE        
       JE              G00,#aa [FALSE] L0004
       JIN             "shaggy lion",G00 [FALSE] L0004
       JIN             "corpuscular lump of meat","bucket" [FALSE] L0004
       CALL            R0011 (#47,#66,#1f) -> -(SP)
       JUMP            L0005
L0004: JIN             #c4,"bucket" [FALSE] L0005
       INSERT_OBJ      #c4,#32
       CALL            R0537 -> -(SP)
L0005: CALL            R0299 (#41,G00) -> -(SP)
       RTRUE           
L0006: PRINT_PADDR     G9b
       PRINT_PADDR     G5d
       RTRUE           

Routine R0445, 0 locals ()

       JIN             "water","bucket" [TRUE] RFALSE
       PRINT_RET       "You're not carrying any water."

Routine R0446, 0 locals ()

       JE              G7a,#92,#38,#37 [FALSE] L0001
       CALL            R0445 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT_RET       "You take a sip of the cool water."
L0001: JE              G7a,#74,#3a,#97 [TRUE] L0002
       JE              G7a,#3b,#3c,#75 [TRUE] L0002
       JE              G7a,#72 [FALSE] L0006
L0002: JE              G6a,#bb [FALSE] L0006
       CALL            R0445 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       INSERT_OBJ      "water",#32
       JZ              Gc6 [TRUE] L0005
       JE              Gc6,#42 [TRUE] L0005
       TEST_ATTR       Gc6,#1f [FALSE] L0005
       JE              Gc6,#cd [FALSE] L0003
       PRINT_RET       "Tina stays mostly dry."
L0003: JZ              Gc6 [TRUE] L0004
       JZ              G93 [TRUE] L0004
       JE              Gc6,#09 [TRUE] L0005
L0004: PRINT           "Deftly,"
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT           " sidesteps your splashing. "
L0005: PRINT           "The "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " explodes into a zillion sparkling droplets that
immediately evaporate"
       PRINT_PADDR     G5d
       RTRUE           
L0006: JE              G7a,#3c,#3b [FALSE] L0007
       JE              Gc6,#bb [FALSE] L0007
       JIN             "water","bucket" [FALSE] L0007
       CALL            R0011 (#3b,G6a,#41) -> -(SP)
       RTRUE           
L0007: JE              G7a,#47,#46 [FALSE] RFALSE
       JE              G6a,#bb [FALSE] RFALSE
       TEST_ATTR       Gc6,#1f [FALSE] RFALSE
       CALL            R0011 (#72,#bb) -> -(SP)
       RTRUE           

Routine R0447, 0 locals ()

       JE              G7a,#aa [FALSE] RFALSE
       JE              Gc6,#10 [FALSE] RFALSE
       JE              G6a,#10 [FALSE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: JE              G6a,#bc [FALSE] RFALSE
       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0448, 0 locals ()

       JE              G7a,#3b [FALSE] RFALSE
       TEST_ATTR       "cage door",#0f [FALSE] RFALSE
       JE              G6a,#66 [FALSE] RFALSE
       CALL            R0011 (#3b,#66,#25) -> -(SP)
       RTRUE           

Routine R0449, 1 local (0000)

       JE              L00,#03 [FALSE] L0005
       PRINT           "This area of matted-down crabgrass lies between the
vaulted "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " entrance to the north and the enticements of the
midway to the east, where a "
       CALL            R0004 (#7d) -> -(SP)
       PRINT           " hangs crookedly above a "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           ". There is a "
       CALL            R0004 (#5a) -> -(SP)
       PRINT           " near the side wall of the tent. "
       JZ              G8c [FALSE] L0001
       PRINT           "You can enter the night to the west and south."
       JUMP            L0004
L0001: NEW_LINE        
       NEW_LINE        
       PRINT           "Stretching away from a small concession stand "
       JIN             "short line",G00 [FALSE] L0002
       PRINT           "are a "
       CALL            R0004 (#11) -> -(SP)
       PRINT           " and"
       JUMP            L0003
L0002: PRINT           "is"
L0003: PRINT           " a "
       CALL            R0004 (#50) -> -(SP)
       PRINT           " of suckers."
L0004: NEW_LINE        
       RTRUE           
L0005: JE              L00,#02 [FALSE] L0007
       JE              G29,#1b,#14 [FALSE] L0006
       JZ              G8c [FALSE] L0006
       PRINT           "You emerge into the warm night air of summer."
       NEW_LINE        
       NEW_LINE        
       TEST_ATTR       "Connection",#12 [TRUE] L0006
       INSERT_OBJ      "crowd","Connection"
       CALL            R0013 (#bcc9,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
L0006: CALL            R0649 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JZ              G8c [FALSE] RFALSE
       CALL            R0013 (#d5dc,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0007: JZ              G8c [TRUE] L0009
       JE              L00,#01 [FALSE] L0009
       JE              G7a,#a2 [FALSE] L0009
       JE              G29,#1f [TRUE] L0009
       CALL            R0292 (#7f) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       CALL            R0402 -> -(SP)
       RTRUE           
L0008: PRINT_RET       "That's not the way you remember it."
L0009: JE              L00,#01 [FALSE] L0010
       SET_ATTR        "long line",#1e
       SET_ATTR        "short line",#1e
       TEST_ATTR       "long line",#0c [TRUE] RFALSE
       JE              G7a,#1c [FALSE] RFALSE
       JE              G6a,#50 [FALSE] RFALSE
       JG              G2d,#03 [FALSE] RFALSE
       CALL            R0458 (#01) -> -(SP)
       RET_POPPED      
L0010: JE              L00,#06 [FALSE] RFALSE
       CALL            R0450 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       RTRUE           

Routine R0450, 0 locals ()

       JIN             "monkey","it" [FALSE] RFALSE
       RANDOM          #64 -> -(SP)
       JL              #3c,(SP)+ [TRUE] RFALSE
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#7f) -> -(SP)
       PRINT           " on "
       CALL            R0004 (#b3) -> -(SP)
       PRINT           " "
       CALL            R0003 (G39) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G5d
       RTRUE           

Routine R0451, 0 locals ()

       JE              G7a,#42,#7d [FALSE] L0004
       NEW_LINE        
       JE              G00,#39 [FALSE] L0001
       PRINT           ""TO SIDESHOWS"
       JUMP            L0003
L0001: JE              G00,#57 [FALSE] L0002
       PRINT           ""TO MENAGERIE"
       JUMP            L0003
L0002: PRINT           ""THIS WAY TO THE EGRESS"
L0003: PRINT_RET       """
L0004: CALL            R0339 (#7d) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0346 (#7d) -> -(SP)
       RET_POPPED      

Routine R0452, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       TEST_ATTR       "long line",#12 [TRUE] RFALSE
       SET_ATTR        "long line",#12
       CALL            R0013 (#867e,#05) -> -(SP)
       STOREW          (SP)+,#00,#01
       RFALSE          
L0001: JE              L00,#01 [FALSE] L0003
       CALL            R0455 (#50) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G7a,#a2 [FALSE] L0002
       CALL            R0351 (#50) -> -(SP)
       RET_POPPED      
L0002: JIN             "short line","Connection" [FALSE] RFALSE
       JIN             "group of ballplayers","Connection" [TRUE] RFALSE
       JE              G7a,#9e [FALSE] RFALSE
       PRINT           "Time itself, let alone the "
       CALL            R0004 (#50) -> -(SP)
       PRINT           ", has "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           " to an agonizing halt."
       NEW_LINE        
       STORE           G1f,#01
       RTRUE           
L0003: JZ              L00 [FALSE] RFALSE
       CALL            R0454 -> -(SP)
       RET_POPPED      

Routine R0453, 1 local (0000)

       JE              L00,#01 [FALSE] L0001
       CALL            R0455 (#11) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G7a,#a2 [FALSE] RFALSE
       CALL            R0351 (#11) -> -(SP)
       RET_POPPED      
L0001: JZ              L00 [FALSE] RFALSE
       CALL            R0454 -> -(SP)
       RET_POPPED      

Routine R0454, 0 locals ()

       JE              G00,#39 [FALSE] RFALSE
       JE              G7a,#14,#2a,#1c [FALSE] L0001
       JZ              G66 [FALSE] L0002
L0001: JE              G7b,"cut" [TRUE] L0002
       JE              G7a,#14,#2a,#1c [FALSE] RFALSE
       CALL            R0354 ("front") -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0002: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50,#11 [FALSE] L0003
       GET_PARENT      "it" -> -(SP)
       CALL            R0351 ((SP)+) -> -(SP)
       RTRUE           
L0003: CALL            R0011 (#14,#8e) -> -(SP)
       RTRUE           

Routine R0455, 1 local (0000)

       JE              G7a,#28 [FALSE] RFALSE
       JE              G7b,"get" [FALSE] RFALSE
       CALL            R0354 ("line") -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADW           G50,#00 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       TEST_ATTR       "short line",#0c [TRUE] RFALSE
       SET_ATTR        "short line",#0c
       PRINT           "You begin ranting and raving and throwing a tantrum and
all of those things attendant upon someone getting way out of line. You feel
better, but it doesn't advance the "
       CALL            R0004 (L00) -> -(SP)
       PRINT_RET       "."

Routine R0456, 1 local (0000)

       JE              G7a,#41,#28 [FALSE] L0001
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50,#11 [FALSE] L0001
       GET_PARENT      "it" -> -(SP)
       RET_POPPED      
L0001: JE              G23,"sucker" [FALSE] L0002
       RET             #1d
L0002: JE              G00,#39 [TRUE] L0003
       RET             #50
L0003: JE              G7a,#28 [FALSE] RFALSE
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50,#11 [TRUE] RFALSE
       RET             #50

Routine R0457, 0 locals ()

       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#11 [FALSE] L0001
       CLEAR_ATTR      "long line",#1e
       JUMP            L0002
L0001: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50 [FALSE] L0002
       CLEAR_ATTR      "short line",#1e
L0002: JZ              G2d [FALSE] L0003
       INSERT_OBJ      "short line","Connection"
       STORE           G2d,#01
       CALL            R0013 (#867e,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       PRINT           "Right next to the "
       CALL            R0004 (#50) -> -(SP)
       PRINT_RET       " a much shorter line begins to form."
L0003: JE              G2d,#01 [FALSE] L0004
       JIN             "it","short line" [FALSE] L0004
       STORE           G2d,#02
       RET             G2d
L0004: JE              G2d,#02 [FALSE] L0005
       JIN             "it","short line" [FALSE] L0005
       STORE           G2d,#03
       INSERT_OBJ      "group of ballplayers","Connection"
       INSERT_OBJ      "Jerry","Connection"
       NEW_LINE        
       PRINT_RET       "The face of the man ahead of you lights up as he spots
something. "Hey, guys! It's ME, Jerry," he yells to a sizable group nearby, and
they approach."
L0005: JE              G2d,#03 [FALSE] L0006
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#11 [FALSE] L0006
       STORE           G2d,#04
       SET_ATTR        "long line",#1e
       INSERT_OBJ      "it","long line"
       CLEAR_ATTR      "short line",#1e
       CALL            R0466 -> -(SP)
       NEW_LINE        
       PRINT           ""Haven't seen you turkeys in years. Howda hell are you
guys?" They all reintroduce themselves. "Hey -- you clowns thirsty? Get in
here, I'll buy y'all beer."

"You sure it's not a problem?" asks the "
       LOADW           G09,Ga9 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       ".

"Heck no, just scoot in right here."

With both your resolve and your heaving bosom firm against the crush of
interlopers, you are nevertheless forced to backpedal."
L0006: JE              G2d,#04 [FALSE] L0007
       JIN             "it","long line" [FALSE] L0007
       CALL            R0466 -> -(SP)
       NEW_LINE        
       PRINT           "Jerry continues "
       CALL            R0003 (Gc3) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " the "
       LOADW           G09,Ga9 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           "."
       NEW_LINE        
       JE              Ga9,#05 [FALSE] RTRUE
       TEST_ATTR       "concession stand",#0c [TRUE] RTRUE
       SET_ATTR        "concession stand",#0c
       NEW_LINE        
       PRINT           "Out of the "
       CALL            R0004 (#84) -> -(SP)
       PRINT_RET       " of your eye, you see the line you first entered
suddenly kicking into gear and really begin moving."
L0007: JIN             "it",G00 [FALSE] L0008
       JE              G2d,#04 [FALSE] L0008
       INSERT_OBJ      "group of ballplayers",#32
       INSERT_OBJ      "Jerry",#32
       STORE           G2d,#05
       RFALSE          
L0008: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50 [FALSE] L0009
       JE              G2d,#05 [FALSE] L0009
       STORE           G2d,#06
       NEW_LINE        
       PRINT_RET       "You notice the woman who had been next to you in the
line you first entered walk away from it with an overflowing tray of goodies."
L0009: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50 [FALSE] RFALSE
       JE              G2d,#06 [FALSE] RFALSE
       STORE           G2d,#07
       NEW_LINE        
       PRINT_RET       "A baby's cry suddenly pierces the air like a siren."

Routine R0458, 1 local (0000)

       PRINT           "A lot of other people must "
       JZ              L00 [TRUE] L0001
       PRINT           "not "
L0001: PRINT           "have had the same idea as you, as they "
       CALL            R0003 (Ga2) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " over to "
       JZ              L00 [TRUE] L0002
       CALL            R0014 (#867e) -> -(SP)
       STOREW          (SP)+,#00,#00
       SET_ATTR        "long line",#0c
       INSERT_OBJ      "it",G00
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana","it"
       SUB             G8f,#0177 -> G8f
       PRINT           "the "
       CALL            R0004 (#11) -> -(SP)
       PRINT           ". Steaming to the front of the line, you get a "
       CALL            R0004 (#d1) -> -(SP)
       PRINT           " pushed at you and are whisked to the side before you
can even count your change."
       JUMP            L0003
L0002: PRINT           "your chosen line, bunching in ahead of you and making
it the longer of the two."
L0003: NEW_LINE        
       RTRUE           

Routine R0459, 0 locals ()

       JE              G7a,#2c,#6c [FALSE] L0001
       PRINT_RET       "There's no wrapper."
L0001: JE              G7a,#1f [FALSE] L0003
       JE              G00,#b6 [FALSE] L0002
       JIN             "hawker",G00 [FALSE] L0002
       JE              G8f,#0731 [FALSE] L0002
       STORE           G5c,#01
L0002: CALL            R0011 (#1f,#45) -> -(SP)
       RTRUE           
L0003: JE              G7a,#3e [FALSE] RFALSE
       PRINT_RET       "You abstain, since health foods tend to make you sick."

Routine R0460, 0 locals ()

       RET             #a3

Routine R0461, 0 locals ()

       JE              G7a,#42 [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#d1) -> -(SP)
       PRINT           " is "
       TEST_ATTR       "two-dollar-and-25-cent frozen banana",#0c [TRUE] L0001
       PRINT           "entirely "
L0001: PRINT_RET       "coated with chocolate."
L0002: JE              G7a,#1f [FALSE] L0003
       JE              G00,#39 [FALSE] L0003
       JZ              G8c [TRUE] L0003
       CALL            R0011 (#1f,#45) -> -(SP)
       RTRUE           
L0003: JE              G7a,#92,#7e,#32 [TRUE] L0004
       JE              G7a,#75 [FALSE] L0005
       JZ              Gc6 [TRUE] L0005
L0004: SET_ATTR        "two-dollar-and-25-cent frozen banana",#0c
       PRINT           "As the "
       CALL            R0004 (#7f) -> -(SP)
       PRINT           " on "
       CALL            R0004 (#b3) -> -(SP)
       PRINT           " catches a whiff of the tangy fruit beneath the
chocolate, you feel its primal heart begin to race and, on the back of your
neck, its warm breath quicken."
       NEW_LINE        
       CALL            R0292 (#d1) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       NEW_LINE        
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana","it"
       CALL            R0011 (#3a,#d1) -> -(SP)
       RTRUE           
L0005: JE              G7a,#1b,#3e [FALSE] L0007
       TEST_ATTR       "two-dollar-and-25-cent frozen banana",#0c [FALSE] L0006
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana",#32
       PRINT_RET       "It gives you a brief, but intense, headache."
L0006: CALL            R0011 (#32,#d1) -> -(SP)
       RTRUE           
L0007: JE              G7a,#97,#3a [FALSE] RFALSE
       TEST_ATTR       "two-dollar-and-25-cent frozen banana",#0c [FALSE]
RFALSE
       INSERT_OBJ      "monkey",#32
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana",#32
       PRINT           "Following its jungle appetite, the "
       CALL            R0004 (#7f) -> -(SP)
       PRINT           " dismounts "
       CALL            R0004 (#b3) -> -(SP)
       PRINT_RET       ", pounces on the banana, and saunters away with it."

Routine R0462, 0 locals ()

       RET             #45

Routine R0463, 0 locals ()

       JE              #a2,Gaf [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#a2) -> -(SP)
       STORE           Gaf,#a2
       RTRUE           
L0001: CALL            R0337 (#a2) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "The team is far too deeply engaged in nostalgia to pay
any notice."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#2a,#1c [FALSE] L0003
       CALL            R0011 (#18,#a2) -> -(SP)
       RTRUE           
L0003: CALL            R0342 (#a2) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0465 -> -(SP)
       SET_ATTR        "Jerry",#0c
       RTRUE           

Routine R0464, 0 locals ()

       CALL            R0342 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0465 -> -(SP)
       SET_ATTR        "group of ballplayers",#0c
       RTRUE           
L0001: CALL            R0337 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#a2) -> -(SP)
       STORE           Gaf,#2a
       RTRUE           
L0002: JE              G7a,#2a,#1c [FALSE] L0003
       CALL            R0011 (#18,#2a) -> -(SP)
       RTRUE           
L0003: JE              G7a,#30 [FALSE] RFALSE
       PRINT_RET       "Nine players, altogether."

Routine R0465, 0 locals ()

       TEST_ATTR       "Jerry",#0c [FALSE] L0001
       TEST_ATTR       "group of ballplayers",#0c [FALSE] L0001
       CALL            R0285 (#05,S172) -> -(SP)
       RET_POPPED      
L0001: CALL            R0466 -> -(SP)
       PRINT           "The "
       LOADW           G09,Ga9 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " steps in between. "This "
       CALL            R0679 (S173,S174) -> -(SP)
       PRINT           " giving you trouble"
       JE              G6a,#a2 [FALSE] L0002
       PRINT           ", Jerry"
L0002: RANDOM          #08 -> Ga9
       PRINT           "?" Then the "
       LOADW           G09,Ga9 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_RET       " backs you off with a nasty stare."

Routine R0466, 0 locals ()

       CALL            R0354 ("fielde") -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0355 ("left") -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0355 ("center") -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0355 ("right") -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: RANDOM          #04 -> -(SP)
       ADD             #03,(SP)+ -> Ga9
       RET             Ga9
L0002: CALL            R0354 ("basema") -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0355 ("first") -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0355 ("second") -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0355 ("third") -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0003: RANDOM          #05 -> Ga9
       RET             Ga9
L0004: CALL            R0354 ("catche") -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       RANDOM          #03 -> Ga9
       RET             Ga9
L0005: CALL            R0354 ("shorts") -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       RANDOM          #03 -> -(SP)
       ADD             #04,(SP)+ -> Ga9
       RET             Ga9
L0006: RANDOM          #08 -> Ga9
       RET             Ga9

Routine R0467, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "It's just a ramshackle little stand, apparently staffed
by ramshackle little people from the looks of the service everyone is getting."
L0001: JE              G7a,#40,#2a,#14 [TRUE] L0002
       JE              G7a,#1c [FALSE] RFALSE
L0002: JE              G00,#39 [FALSE] RFALSE
       JZ              G8c [TRUE] RFALSE
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50,#11 [FALSE] L0003
       GET_PARENT      "it" -> -(SP)
       CALL            R0351 ((SP)+) -> -(SP)
       RET_POPPED      
L0003: PRINT_RET       "You pass through a gauntlet of angry side-glances,
outright dirty looks and verbal abuse. The concessionaire -- "Okay who's next?"
-- serves somebody else and you walk back against a stream of sadistic sneers."

Routine R0468, 0 locals ()

       CALL            R0337 (#b5) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G7a,#1f [FALSE] L0002
L0001: PRINT           "You're not close enough to the "
       CALL            R0004 (#b5) -> -(SP)
       PRINT           "."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#14 [FALSE] RFALSE
       JE              G00,#39 [FALSE] RFALSE
       JZ              G8c [TRUE] RFALSE
       CALL            R0011 (#14,#8e) -> -(SP)
       RTRUE           

Routine R0469, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT           "It's your standard "
       CALL            R0004 (#5a) -> -(SP)
       PRINT_RET       ", with a button next to the spout."
L0001: JE              G7a,#38 [FALSE] RFALSE
       CALL            R0011 (#6a,#16) -> -(SP)
       RTRUE           

Routine R0470, 0 locals ()

       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#50,#11 [FALSE] L0001
       CALL            R0339 (#16) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       GET_PARENT      "it" -> -(SP)
       CALL            R0351 ((SP)+) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#6a [FALSE] RFALSE
       CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JE              Gd0,#03 [FALSE] L0002
       STORE           G2b,#01
       CALL            R0586 -> -(SP)
       CALL            R0591 -> -(SP)
       RET_POPPED      
L0002: PRINT_RET       "Somebody else is ahead of you."
L0003: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0004
       PRINT_RET       "A jet of water hits you square in the eye."
L0004: PRINT_RET       "The sip of water is refreshing on this hot night."

Routine R0471, 0 locals ()

       JE              G00,#39 [FALSE] L0001
       JE              G7a,#92,#37,#75 [FALSE] RFALSE
       CALL            R0011 (#6a,#16) -> -(SP)
       RTRUE           
L0001: CALL            R0347 (#0a) -> -(SP)
       RET_POPPED      

Routine R0472, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "You're standing in front of the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT_RET       " entrance to a fenced-in area, which is south. To the
west stands a droopy tent, and the field continues north and east."
L0001: JE              L00,#02 [FALSE] L0002
       JZ              Gbf [FALSE] L0002
       CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       TEST_ATTR       "burned cage",#0c [TRUE] L0002
       SET_ATTR        "burned cage",#0c
       INSERT_OBJ      "Chuckles","Back Yard"
       INSERT_OBJ      "flower","Comrade Thumb"
       CALL            R0013 (#8c0d,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0002: JE              L00,#01 [FALSE] L0004
       CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0560 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0003: CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G7a,#a2 [FALSE] RFALSE
       CALL            R0292 (#db) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           Gbf,#07
       PRINT_RET       "The midget becomes restless in your arms, halting your
stroll."
L0004: JE              L00,#06 [FALSE] L0005
       JZ              G15 [TRUE] L0005
       TEST_ATTR       "burned cage",#12 [TRUE] L0005
       SET_ATTR        "burned cage",#12
       NEW_LINE        
       PRINT_PADDR     G8b
       PRINT_RET       ""You're still around kicking sawdust, huh? Let me give
a tip: Be careful, there's no telling what, or who, could be lurking around the
lot here at night.""
L0005: JE              L00,#06 [FALSE] RFALSE
       JIN             "Chelsea","it" [FALSE] RFALSE
       JZ              Gca [FALSE] RFALSE
       STORE           Gca,#01
       NEW_LINE        
       PRINT_PADDR     G8b
       PRINT           ""Nice going, towner. It just shows you what can be
accomplished when you start out the evening with a little "
       CALL            R0004 (#86) -> -(SP)
       PRINT_RET       ", eh?"

Routine R0473, 1 local (0000)

       CALL            R0292 (#db) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L00,#01
L0001: INC             Gbf
       JE              G00,#04 [TRUE] L0002
       STORE           Gbf,#08
L0002: JE              Gbf,#01 [FALSE] L0003
       INSERT_OBJ      "Comrade Thumb","Back Yard"
       RTRUE           
L0003: JE              Gbf,#02 [FALSE] L0005
       INSERT_OBJ      "Chuckles","Clown Alley"
       STORE           G4c,#02
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       JZ              G2b [FALSE] L0004
       STORE           Gbf,#07
L0004: NEW_LINE        
       PRINT           "The tall clown, whom you now recognize as Chuckles,
barks a hello into the cage. You hear an electronic buzz from the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " and Chuckles passes through."
       JUMP            L0014
L0005: JE              Gbf,#03 [FALSE] L0006
       JZ              L00 [TRUE] L0006
       NEW_LINE        
       CALL            R0004 (#db) -> -(SP)
       PRINT           " performs an impromptu handstand."
       JUMP            L0014
L0006: JE              Gbf,#04 [FALSE] L0007
       JZ              L00 [TRUE] L0007
       NEW_LINE        
       CALL            R0004 (#db) -> -(SP)
       PRINT           " belts out a few verses of a Russian folk song in his
high-pitched, squeaky voice while standing on his head."
       JUMP            L0014
L0007: JE              Gbf,#05 [FALSE] L0008
       JZ              L00 [TRUE] L0008
       NEW_LINE        
       PRINT           "The midget performer does several cartwheels in a
figure-eight pattern around the grass field."
       JUMP            L0014
L0008: JE              Gbf,#06 [FALSE] L0009
       JZ              L00 [TRUE] L0009
       NEW_LINE        
       PRINT           "In front of you, "
       CALL            R0004 (#db) -> -(SP)
       PRINT           " terminates his acrobatics on one knee with a grand
gesture of his small arms."
       JUMP            L0014
L0009: JE              Gbf,#07 [FALSE] L0010
       JZ              L00 [TRUE] L0010
       NEW_LINE        
       CALL            R0004 (#db) -> -(SP)
       PRINT           " is pausing to rest."
       JUMP            L0014
L0010: JE              Gbf,#08 [FALSE] RFALSE
       CALL            R0014 (#8c0d) -> -(SP)
       STOREW          (SP)+,#00,#00
       JE              G00,#04 [FALSE] L0013
       CALL            R0292 (#db) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       NEW_LINE        
       PRINT           "Wriggling out of your hold, "
       JUMP            L0012
L0011: NEW_LINE        
L0012: CALL            R0004 (#db) -> -(SP)
       PRINT           ", in his squeaky and high-pitched voice, says "Hello
Harry" toward the "
       CALL            R0004 (#c6) -> -(SP)
       PRINT           ". You hear a buzzing sound from the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " as the midget reaches up to its lowest rung and passes
through ..."
       NEW_LINE        
L0013: STORE           Gc9,#01
       CALL            R0014 (#9f7b) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "Comrade Thumb",#06
       CLEAR_ATTR      "Chuckles",#06
       STORE           G4c,#02
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "flower",#32
       INSERT_OBJ      "Comrade Thumb","Clown Alley"
       INSERT_OBJ      "Chuckles","Clown Alley"
       RTRUE           
L0014: NEW_LINE        
       RTRUE           

Routine R0474, 1 local (0000)

       PRINT           "About waist-high, a barred passage for wild animals
extends several yards out from the "
       CALL            R0004 (#9f) -> -(SP)
       JIN             "shaggy lion","barred passage" [FALSE] L0003
       JIN             "corpuscular lump of meat","barred passage" [TRUE] L0002
       PRINT           ". The "
       CALL            R0004 (#31) -> -(SP)
       PRINT           " is being patrolled by two large "
       TEST_ATTR       "rusty grate",#0f [TRUE] L0001
       PRINT           "and bewildered "
L0001: PRINT           "cats"
       JUMP            L0003
L0002: JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0003
       PRINT           ". Inside the chute, Nimrod and Elsie are loudly digging
their chops into the "
       CALL            R0004 (#66) -> -(SP)
L0003: PRINT           "."
       RTRUE           

Routine R0475, 1 local (0000)

       JE              G7a,#44,#42 [FALSE] L0008
       CALL            R0354 ("bar") -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0354 ("bars") -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: JE              G7a,#42 [TRUE] RFALSE
L0002: JIN             "smooth-bodied lion","barred passage" [FALSE] RFALSE
       PRINT           "Two lions are "
       JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0003
       PRINT           "chomping on some meat inside"
       JUMP            L0004
L0003: PRINT           "strolling the length of"
L0004: PRINT           " the "
       CALL            R0004 (#31) -> -(SP)
       CALL            R0432 (#cc) -> -(SP)
       JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0005
       INSERT_OBJ      "corpuscular lump of meat",#cc
L0005: GET_CHILD       "barred passage" -> -(SP) [FALSE] L0006
       PRINT           ", which also contains"
       CALL            R0280 (#31) -> -(SP)
L0006: CALL            R0432 (#31) -> -(SP)
       JIN             "corpuscular lump of meat",#cc [FALSE] L0007
       INSERT_OBJ      "corpuscular lump of meat","barred passage"
L0007: PRINT_PADDR     G5d
       RTRUE           
L0008: JE              G7a,#40,#2a,#1c [FALSE] L0009
       CALL            R0345 (#01) -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#4a [FALSE] L0010
       PRINT           "It leads right into the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT_RET       "."
L0010: JE              G7a,#2c,#6c [FALSE] L0011
       PRINT           "The rusty grate is inside the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT_RET       "."
L0011: JE              G7a,#67 [FALSE] L0012
       CALL            R0011 (#62,#31) -> -(SP)
       RTRUE           
L0012: JE              G7a,#3b [FALSE] L0015
       JE              Gc6,#31 [FALSE] L0015
       JE              G6a,#a5,#c4 [TRUE] RFALSE
       GET_PROP        G6a,#0d -> -(SP)
       JG              (SP)+,#14 [FALSE] L0013
       JE              G6a,#81 [TRUE] L0013
       CALL            R0345 -> -(SP)
       RET_POPPED      
L0013: JE              G6a,#66 [FALSE] L0014
       TEST_ATTR       "rusty grate",#0f [FALSE] L0014
       CALL            R0013 (#7d8c,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
L0014: INSERT_OBJ      G6a,"barred passage"
       PRINT           "You slip"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " into the "
       CALL            R0004 (#31) -> -(SP)
       PRINT_RET       "."
L0015: JE              G7a,#79 [FALSE] RFALSE
       JIN             "shaggy lion","barred passage" [FALSE] RFALSE
       PRINT           "You'd"
       CALL            R0477 -> -(SP)
       RET_POPPED      

Routine R0476, 0 locals ()

       JE              G7a,#7a,#68,#75 [FALSE] RFALSE
       JE              G00,#e6 [FALSE] RFALSE
       JIN             "smooth-bodied lion","barred passage" [FALSE] L0001
       PRINT           "If you reached into the "
       CALL            R0004 (#31) -> -(SP)
       PRINT           " you'd"
       CALL            R0477 (#01) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#75 [FALSE] L0002
       JE              G6a,#66 [FALSE] L0002
       TEST_ATTR       "rusty grate",#0f [FALSE] L0002
       CALL            R0346 (#66) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#75 [FALSE] RFALSE
       GET_PROP        G6a,#0d -> -(SP)
       JG              (SP)+,#14 [FALSE] RFALSE
       JE              G6a,#81 [TRUE] RFALSE
       CALL            R0345 -> -(SP)
       RET_POPPED      

Routine R0477, 1 local (0000)

       PRINT           " likely withdraw a stump instead of "
       CALL            R0004 (#0b) -> -(SP)
       JZ              L00 [TRUE] L0001
       PRINT           " or"
       CALL            R0302 (G6a,#01) -> -(SP)
L0001: PRINT_PADDR     G5d
       RTRUE           

Routine R0478, 0 locals ()

       JE              G7a,#3b [FALSE] L0004
       JE              Gc6,#26 [FALSE] L0004
       JE              G6a,#a5 [TRUE] RFALSE
       TEST_ATTR       "rusty grate",#0f [FALSE] L0003
       INSERT_OBJ      G6a,"barred passage"
       PRINT           "You fling"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " into the darkness of the passage. "
       JE              G6a,#c4 [FALSE] L0001
       INSERT_OBJ      #c4,#32
       JUMP            L0002
L0001: JIN             "shaggy lion","Lions' Den" [FALSE] L0002
       JE              G6a,#66 [FALSE] L0002
       PRINT_PADDR     G7e
L0002: NEW_LINE        
       RTRUE           
L0003: PRINT           "The "
       CALL            R0004 (#26) -> -(SP)
       PRINT_RET       " is closed."
L0004: TEST_ATTR       "rusty grate",#0f [TRUE] L0005
       JE              G7a,#6a,#69,#6c [TRUE] L0006
L0005: TEST_ATTR       "rusty grate",#0f [FALSE] L0014
       JE              G7a,#6a,#65,#2c [FALSE] L0014
L0006: JIN             "smooth-bodied lion","barred passage" [FALSE] L0008
       JE              G7a,#69,#6c [FALSE] L0007
       CALL            R0285 (#02,S188) -> -(SP)
       RET_POPPED      
L0007: CALL            R0479 -> -(SP)
       RET_POPPED      
L0008: JIN             "corpuscular lump of meat",G00 [FALSE] L0010
       TEST_ATTR       "rusty grate",#0c [FALSE] L0009
       CALL            R0479 -> -(SP)
       RET_POPPED      
L0009: SET_ATTR        "rusty grate",#0c
       CALL            R0479 (#01) -> -(SP)
       RET_POPPED      
L0010: JZ              Gab [FALSE] L0011
       PRINT_RET       "Like sentries on guard, the pacing lions prevent this."
L0011: JL              Gab,#03 [FALSE] L0012
       PRINT           "The "
       CALL            R0004 (#75) -> -(SP)
       PRINT           " is blocking access to the "
       CALL            R0004 (#26) -> -(SP)
       PRINT_RET       "."
L0012: CALL            R0292 (#85) -> -(SP)
       JZ              (SP)+ [FALSE] L0013
       PRINT           "You're unable to get close enough without the "
       CALL            R0004 (#1f) -> -(SP)
       PRINT_RET       " getting too close to you."
L0013: PRINT           "Using the stool as a barrier against the "
       CALL            R0004 (#1f) -> -(SP)
       PRINT           ", you're able to reach it. "
       CALL            R0479 -> -(SP)
       RET_POPPED      
L0014: JE              G7a,#42,#44 [FALSE] L0017
       PRINT           "The "
       TEST_ATTR       "rusty grate",#0f [FALSE] L0015
       PRINT           "open"
       JUMP            L0016
L0015: PRINT           "closed"
L0016: PRINT           " "
       CALL            R0004 (#26) -> -(SP)
       PRINT           " leads to a passage going away from the round cage. "
       PRINT_PADDR     G7c
       PRINT_RET       " that it is empty up to the point where it extends
outside of the big top."
L0017: CALL            R0339 (#26) -> -(SP)
       JZ              (SP)+ [FALSE] L0018
       JE              G7a,#2a,#1c,#14 [FALSE] L0019
L0018: JIN             "smooth-bodied lion",G00 [FALSE] L0019
       JE              Gab,#03 [TRUE] L0019
       JIN             "corpuscular lump of meat",G00 [TRUE] L0019
       PRINT_RET       "You can't get over to the grate."
L0019: JE              G7a,#40,#2a,#1c [FALSE] RFALSE
       TEST_ATTR       "rusty grate",#0f [FALSE] L0020
       PRINT_RET       "That's dangerous and foolhardy."
L0020: PRINT_RET       "The grate is closed."

Routine R0479, 1 local (0000)

       JZ              L00 [TRUE] L0003
       PRINT           "The "
       JZ              Gab [FALSE] L0001
       PRINT           "lions rotate"
       JUMP            L0002
L0001: CALL            R0004 (#1f) -> -(SP)
       PRINT           " rotates"
L0002: PRINT           " around the lump of meat, continuing to feed while
watching you. "
L0003: PRINT           "The "
       CALL            R0004 (#26) -> -(SP)
       PRINT           " slides "
       JE              G7a,#69,#6c [FALSE] L0005
       SET_ATTR        "rusty grate",#0f
       PRINT           "up, jamming into place. "
       JIN             "corpuscular lump of meat","barred passage" [FALSE]
L0004
       PRINT_PADDR     G7e
L0004: NEW_LINE        
       RTRUE           
L0005: CLEAR_ATTR      "rusty grate",#0f
       PRINT           "down to the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT_RET       "."

Routine R0480, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You're standing next to the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT_RET       ", which is gently flapping in the warm breeze."

Routine R0481, 1 local (0000)

       JE              L00,#03 [FALSE] L0004
       PRINT           "You are standing on a gentle upslope of the grassy
field, next to a rather imposing trailer whose door is "
       TEST_ATTR       "office door",#0f [FALSE] L0001
       PRINT           "open"
       JUMP            L0002
L0001: PRINT           "closed"
L0002: PRINT           " to the east"
       TEST_ATTR       "ladder",#0c [FALSE] L0003
       PRINT           ". Attached to the rear of the trailer is a step"
       CALL            R0004 (#65) -> -(SP)
L0003: PRINT           ". In dark panorama, the field continues north and west
-- and south, where a large banner has been erected."
       NEW_LINE        
       TEST_ATTR       "ladder",#0c [FALSE] RFALSE
       NEW_LINE        
       CALL            R0485 -> -(SP)
       RET_POPPED      
L0004: JE              L00,#02 [FALSE] L0006
       CALL            R0649 -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       CALL            R0013 (#d5dc,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
L0005: JIN             "elephant",#32 [FALSE] RFALSE
       TEST_ATTR       "ladder",#0c [TRUE] RFALSE
       PRINT           "Y"
       CALL            R0482 -> -(SP)
       RET_POPPED      
L0006: JE              L00,#01 [FALSE] RFALSE
       JIN             "Mr. Munrab","Menagerie" [FALSE] RFALSE
       JIN             "Chelsea","it" [FALSE] RFALSE
       JE              G7a,#a2 [FALSE] RFALSE
       JE              G29,#1e [TRUE] RFALSE
       CALL            R0561 (#54) -> -(SP)
       RET_POPPED      

Routine R0482, 0 locals ()

       SET_ATTR        "ladder",#0c
       PRINT           "ou come to the "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           " and notice a stepladder attached to its rear."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0483, 0 locals ()

       INC             G74
       JE              G74,#01 [FALSE] L0001
       STORE           Gbc,#0a
       CALL            R0013 (#9148,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Are you sure you're mentally and otherwise prepared to
meet up with an "
       CALL            R0004 (#78) -> -(SP)
       PRINT           "?"
       NEW_LINE        
       RFALSE          
L0001: JE              G74,#02 [FALSE] L0002
       STORE           Gbc,#0b
       CALL            R0013 (#9148,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Then you're fully aware of the ferociousness of this
rare mammalian species, right?"
       NEW_LINE        
       RFALSE          
L0002: JE              G74,#03 [FALSE] L0003
       CALL            R0014 (#9148) -> -(SP)
       STOREW          (SP)+,#00,#00
       STORE           Gbc,#0c
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Alright, so you know all about "
       CALL            R0004 (#78) -> -(SP)
       PRINT           "es. But do you really want to leave the circus in all
of its mystery and all of its pageantry behind?"
       NEW_LINE        
       RFALSE          
L0003: JG              G74,#03 [FALSE] RFALSE
       CALL            R0014 (#9148) -> -(SP)
       STOREW          (SP)+,#00,#00
       STORE           Gbc,#00
       CALL            R0088 -> -(SP)
       RET_POPPED      

Routine R0484, 0 locals ()

       JE              G29,#1b [TRUE] RTRUE
       JE              Gbc,#0a [FALSE] L0001
       JE              G7a,#33 [TRUE] RTRUE
L0001: JE              Gbc,#0b [FALSE] L0002
       JE              G7a,#34 [TRUE] RTRUE
L0002: STORE           Gbc,#00
       STORE           G74,#00
       RET             G74

Routine R0485, 0 locals ()

       PRINT           "There is an elephant-sized hole in the fence to the "
       JE              G00,#af [FALSE] L0001
       PRINT           "southwest"
       JUMP            L0002
L0001: PRINT           "northeast"
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0486, 1 local (0000)

       JE              L00,#03 [FALSE] L0002
       PRINT           "You are on the wagon, a condition in which you're not
likely to find the detective. The aluminum roofing gives way slightly
underfoot. You observe a "
       CALL            R0004 (#28) -> -(SP)
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0001
       PRINT           ", which is open"
L0001: PRINT_RET       ", and next to it, a kind of crank."
L0002: JE              L00,#02 [FALSE] L0003
       CLEAR_ATTR      "office door",#0c
       TEST_ATTR       "On the Wagon",#12 [TRUE] RFALSE
       CALL            R0013 (#9581,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0003: JE              L00,#01 [FALSE] RFALSE
       JIN             "Mr. Munrab",G00 [FALSE] RFALSE
       TEST_ATTR       "square aluminum panel",#0f [FALSE] RFALSE
       JE              G7a,#52 [FALSE] L0004
       JZ              G6a [TRUE] L0005
L0004: JE              G7a,#18,#55,#52 [FALSE] RFALSE
       JE              G6a,#6e [FALSE] RFALSE
L0005: CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " must have pretty bad hearing, since he doesn't seem to
notice the noise coming from the roof."

Routine R0487, 0 locals ()

       TEST_ATTR       "square aluminum panel",#0f [TRUE] L0001
       PRINT           "The "
       CALL            R0004 (#28) -> -(SP)
       PRINT           " is closed."
       NEW_LINE        
       RFALSE          
L0001: JIN             "Mr. Munrab","On the Wagon" [FALSE] L0002
       PRINT           "Aghast by your dropping in on him like this, "
       CALL            R0004 (#92) -> -(SP)
       CALL            R0285 (#03,S191) -> -(SP)
       RFALSE          
L0002: PRINT           "You wriggle through the panel opening."
       NEW_LINE        
       NEW_LINE        
       RET             #3b

Routine R0488, 0 locals ()

       JE              G7a,#7d,#42 [FALSE] L0003
       JE              G00,#94 [FALSE] L0003
       PRINT           "The familiar logo for "The Travelling Circus That Time
Forgot, Inc." is emblazoned across the long side of the "
       CALL            R0004 (#6e) -> -(SP)
       CALL            R0354 ("logo") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_PADDR     G5d
       RTRUE           
L0001: PRINT           ". The "
       CALL            R0358 (#64) -> -(SP)
       PRINT           " "
       CALL            R0004 (#64) -> -(SP)
       PRINT           " is at the east"
       TEST_ATTR       "ladder",#0c [FALSE] L0002
       PRINT           ", and there's"
       CALL            R0489 -> -(SP)
L0002: PRINT_PADDR     G5d
       RTRUE           
L0003: JE              G7a,#44 [FALSE] L0004
       JE              G00,#3f [FALSE] L0004
       CALL            R0011 (#44,#28) -> -(SP)
       RTRUE           
L0004: JE              G7a,#3b [FALSE] L0006
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0005
       JIN             "Mr. Munrab","On the Wagon" [FALSE] L0005
       CALL            R0511 -> -(SP)
       RET_POPPED      
L0005: CALL            R0124 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#3c [FALSE] L0008
       JE              G00,#3f [FALSE] L0007
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0007: CALL            R0124 -> -(SP)
       RET_POPPED      
L0008: JE              G7a,#62,#67 [FALSE] L0011
       TEST_ATTR       "ladder",#0c [FALSE] L0009
       PRINT           "You see"
       CALL            R0489 -> -(SP)
       JUMP            L0010
L0009: PRINT           "A "
       CALL            R0004 (#82) -> -(SP)
       PRINT           " prevents this"
L0010: PRINT_PADDR     G5d
       RTRUE           
L0011: JE              G7a,#57 [FALSE] L0012
       CALL            R0011 (#57,#64) -> -(SP)
       RTRUE           
L0012: JE              G7a,#40,#2a,#14 [TRUE] L0013
       JE              G7a,#1c [FALSE] L0015
L0013: JE              G00,#3f,#94 [FALSE] L0014
       CALL            R0297 (#15) -> -(SP)
       RET_POPPED      
L0014: JE              G00,#3b [FALSE] RFALSE
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0015: JE              G7a,#28 [FALSE] L0017
       JE              G00,#3f [FALSE] L0016
       CALL            R0011 (#27,#65) -> -(SP)
       RTRUE           
L0016: JE              G00,#3b [FALSE] RFALSE
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0017: JE              G7a,#25,#24,#26 [FALSE] L0018
       TEST_ATTR       "ladder",#0c [FALSE] L0018
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0018: JE              G7a,#61 [FALSE] RFALSE
       TEST_ATTR       "fiberglass pole",#12 [TRUE] RFALSE
       JIN             "fiberglass pole",G00 [FALSE] RFALSE
       GET_PROP        "fiberglass pole",#10 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0489, 0 locals ()

       PRINT           " a narrow ladder attached to the back of the wagon"
       RTRUE           

Routine R0490, 0 locals ()

       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0001
       PRINT           "[Do you want to climb down the ladder or climb in
through the opening? Type CLIMB DOWN LADDER or IN.]"
       NEW_LINE        
       STORE           G1f,#01
       RFALSE          
L0001: CALL            R0322 -> -(SP)
       RET_POPPED      

Routine R0491, 0 locals ()

       JE              G7a,#9a [FALSE] RFALSE
       JZ              Gc6 [FALSE] RFALSE
       PRINT           "The crank is rotated "
       TEST_ATTR       "square aluminum panel",#0c [FALSE] L0001
       PRINT           "but the "
       CALL            R0004 (#28) -> -(SP)
       PRINT           " doesn't open."
       JUMP            L0003
L0001: PRINT           "and the "
       CALL            R0004 (#28) -> -(SP)
       PRINT           " gradually slides "
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0002
       CLEAR_ATTR      "square aluminum panel",#0f
       PRINT           "closed."
       JUMP            L0003
L0002: SET_ATTR        "square aluminum panel",#0f
       PRINT           "open."
L0003: NEW_LINE        
       RTRUE           

Routine R0492, 0 locals ()

       JE              G7a,#1c,#2a,#27 [FALSE] L0001
       CALL            R0297 (#15) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#44 [FALSE] L0006
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0002
       JE              G00,#3b [FALSE] L0003
L0002: CALL            R0011 (#42,#28) -> -(SP)
       RTRUE           
L0003: PRINT_PADDR     G7c
       JIN             "Mr. Munrab","On the Wagon" [FALSE] L0004
       PRINT           " the top view of "
       CALL            R0004 (#92) -> -(SP)
       PRINT           "'s schlock of silvery blow-dried hair. He is busy at
his desk."
       JUMP            L0005
L0004: PRINT           " an unoccupied office."
L0005: NEW_LINE        
       RTRUE           
L0006: JE              G7a,#3c,#3b [FALSE] L0007
       JE              Gc6,#28 [FALSE] L0007
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#6c [FALSE] L0008
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0009
L0008: JE              G7a,#2c [FALSE] RFALSE
       TEST_ATTR       "square aluminum panel",#0f [FALSE] RFALSE
L0009: JE              G00,#3b [FALSE] L0010
       CALL            R0347 (#00,S192) -> -(SP)
       RET_POPPED      
L0010: CALL            R0011 (#9a,#ed) -> -(SP)
       RTRUE           

Routine R0493, 1 local (0000)

       JE              L00,#03 [FALSE] L0003
       PRINT           "This is "
       CALL            R0004 (#92) -> -(SP)
       PRINT           "'s plush inner sanctum, containing all the furnishings
of the well-appointed, modern office -- including a shiny, expansive "
       CALL            R0004 (#67) -> -(SP)
       PRINT           ". Along one "
       CALL            R0004 (#53) -> -(SP)
       PRINT           ", below some framed sheepskin, runs a "
       CALL            R0004 (#1a) -> -(SP)
       PRINT           ".

The "
       TEST_ATTR       "office door",#0f [FALSE] L0001
       PRINT           "open"
       JUMP            L0002
L0001: PRINT           "closed"
L0002: PRINT           " "
       CALL            R0004 (#64) -> -(SP)
       PRINT_RET       " on the west wall appears lockable without a key."
L0003: JE              L00,#02 [FALSE] RFALSE
       TEST_ATTR       "Office",#12 [TRUE] RFALSE
       ADD             G01,#0a -> G01
       RFALSE          

Routine R0494, 0 locals ()

       JE              G7a,#42,#7d [FALSE] RFALSE
       STORE           Gb0,#01
       PRINT_RET       "The spreadsheet shows lists of declining numbers which
appear to be the salary of one performer named Eddie Smaldone."

Routine R0495, 0 locals ()

       JE              G7a,#11 [FALSE] L0001
       PRINT_RET       "The ringing is only in your ears."
L0001: JE              G7a,#75 [FALSE] L0002
       PRINT_RET       "You hear a dial tone."
L0002: JE              G7a,#3a,#76 [FALSE] RFALSE
       PRINT_RET       "Slam!"

Routine R0496, 0 locals ()

       CALL            R0499 (#17) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0347 (#17) -> -(SP)
       RET_POPPED      

Routine R0497, 0 locals ()

       JIN             "elephant","Menagerie" [FALSE] L0001
       CALL            R0354 ("hole") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0347 (#00,S193) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#42 [FALSE] L0002
       JIN             "elephant","Menagerie" [TRUE] L0002
       JE              G00,#af,#94 [FALSE] L0002
       CALL            R0485 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#25,#24,#26 [TRUE] L0003
       JE              G7a,#29 [FALSE] L0004
L0003: PRINT           "Though hastily constructed, the "
       CALL            R0004 (#82) -> -(SP)
       PRINT_RET       " succeeds as a barrier."
L0004: JE              G7a,#40,#14,#2a [FALSE] RFALSE
       JE              G00,#af [FALSE] L0005
       CALL            R0297 (#1a) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#94 [FALSE] RFALSE
       CALL            R0297 (#1e) -> -(SP)
       RET_POPPED      

Routine R0498, 0 locals ()

       CALL            R0499 (#49) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G7a,#4a [FALSE] RFALSE
L0001: JE              G7a,#4a [FALSE] L0004
       JE              G4c,#02 [FALSE] L0002
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0002: JE              G4c,#03 [FALSE] L0003
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0003: JE              G4c,#04 [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       "Eddie Smaldone",#0c [TRUE] L0005
       PRINT           "You don't know anyone here by that name."
       NEW_LINE        
       RET             #02
L0005: JIN             "Chuckles",G00 [TRUE] L0006
       CALL            R0347 (#49) -> -(SP)
       RET_POPPED      
L0006: CALL            R0337 (#49) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       JZ              G10 [TRUE] L0008
       JZ              G45 [FALSE] L0007
       CALL            R0597 -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       RET             #02
L0007: PRINT           "To your words "
       CALL            R0004 (#71) -> -(SP)
       PRINT           " responds not."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0008: STORE           G10,#01
       INC             G97
       JZ              G45 [FALSE] L0009
       CALL            R0597 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       RET             #02
L0009: CALL            R0004 (#71) -> -(SP)
       PRINT           " snorts at the sound of the name and continues wiping
the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT           "."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0010: STORE           G10,#01
       JZ              G45 [FALSE] L0011
       CALL            R0597 -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       RET             #02
L0011: CALL            R0593 -> -(SP)
       RET_POPPED      

Routine R0499, 1 local (0000)

       JE              L00,G6a [FALSE] L0001
       JE              G7a,#a8,#4a,#45 [TRUE] RTRUE
       JE              G7a,#20,#14,#a9 [TRUE] RTRUE
       JE              G7a,#21,#6e [TRUE] RTRUE
L0001: JE              L00,Gc6 [FALSE] RFALSE
       JE              G7a,#17,#93,#16 [TRUE] RTRUE
       RFALSE          

Routine R0500, 0 locals ()

       JE              G7a,#61,#68,#81 [TRUE] L0001
       JE              G7a,#6a [FALSE] L0002
L0001: PRINT_RET       "This reveals nothing new."
L0002: JE              G7a,#42,#7d [FALSE] L0003
       PRINT           "The handwriting is frantic and mostly illegible. From
what you can make out, the memos, all dated before today, contain threats and
expressions of rage from "
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " toward most of his circus employees."
L0003: JE              G7a,#75 [FALSE] RFALSE
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           Gbc,#04
       PRINT_RET       "You? Take a memo?"

Routine R0501, 0 locals ()

       TEST_ATTR       "office door",#0c [FALSE] L0001
       CLEAR_ATTR      "office door",#0c
       RFALSE          
L0001: INC             G44
       JE              G44,#01 [FALSE] L0002
       NEW_LINE        
       PRINT           "Below you, the "
       CALL            R0004 (#64) -> -(SP)
       PRINT_RET       " swings open and then closed."
L0002: JE              G44,#04 [FALSE] L0006
       JE              G00,#3b [FALSE] L0005
       JE              G7a,#6c [FALSE] L0003
       JE              G6a,#64 [FALSE] L0003
       PRINT           "You hesitate as you "
       JUMP            L0004
L0003: NEW_LINE        
       PRINT           "You "
L0004: PRINT_RET       "hear footsteps and hushed voices approaching the
wagon."
L0005: CALL            R0502 -> -(SP)
       RET_POPPED      
L0006: JG              G44,#04 [FALSE] RFALSE
       JE              G00,#3b [FALSE] L0011
       JE              G44,#0c [TRUE] L0007
       TEST_ATTR       "office door",#0a [TRUE] L0008
L0007: CALL            R0503 -> -(SP)
       RTRUE           
L0008: JE              G44,#05,#07,#09 [TRUE] L0009
       JE              G44,#0b [FALSE] RFALSE
L0009: NEW_LINE        
       PRINT           "You can hear someone outside "
       JE              G44,#05 [TRUE] L0010
       PRINT           "still "
L0010: PRINT_RET       "trying to force open the door."
L0011: CALL            R0502 -> -(SP)
       RTRUE           

Routine R0502, 1 local (0000)

       CALL            R0014 (#9581) -> -(SP)
       STOREW          (SP)+,#00,#00
       INSERT_OBJ      "Mr. Munrab","Office"
       SET_ATTR        "office door",#0a
       CLEAR_ATTR      "cherry-hardwood desk",#0c
       SET_ATTR        "square aluminum panel",#0c
       JZ              L00 [TRUE] L0001
       CALL            R0004 (#92) -> -(SP)
       PRINT           " reappears out of the darkness and quickly enters the "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           " just as you scramble down the ladder."
       NEW_LINE        
       NEW_LINE        
       CLEAR_ATTR      "square aluminum panel",#0f
       RTRUE           
L0001: NEW_LINE        
       PRINT           "You can hear someone, presumably "
       CALL            R0004 (#92) -> -(SP)
       PRINT           ", barge into the office"
       TEST_ATTR       "square aluminum panel",#0f [FALSE] L0002
       PRINT           ". By remote control he slides the "
       CALL            R0004 (#28) -> -(SP)
       PRINT           " closed"
L0002: CLEAR_ATTR      "square aluminum panel",#0f
       PRINT_PADDR     G5d
       RTRUE           

Routine R0503, 0 locals ()

       NEW_LINE        
       CALL            R0004 (#92) -> -(SP)
       PRINT           " suddenly barges into the office; he's shakily gripping
a small caliber pistol. "
       CALL            R0285 (#05,S194) -> -(SP)
       RET_POPPED      

Routine R0504, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       JE              G00,#3b [FALSE] L0001
       PRINT_RET       "It is lockable from this side."
L0001: JE              G7a,#9c,#5c,#6c [FALSE] L0002
       JE              G00,#3f [FALSE] L0002
       CALL            R0630 -> -(SP)
       RTRUE           
L0002: JE              G7a,#6c [FALSE] L0003
       TEST_ATTR       "office door",#0a [TRUE] L0003
       JE              G00,#3b [FALSE] L0003
       CALL            R0002 (#9581) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JL              G44,#04 [FALSE] L0003
       STORE           G44,#03
       RTRUE           
L0003: JE              G7a,#57 [FALSE] RFALSE
       TEST_ATTR       "Office",#12 [TRUE] RFALSE
       JIN             "Mr. Munrab","On the Wagon" [FALSE] RFALSE
       JE              G00,#3f [FALSE] L0004
       CLEAR_ATTR      "office door",#0a
       INSERT_OBJ      "Mr. Munrab",#32
       CALL            R0013 (#9581,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Below you "
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " very cautiously steps outside and begins poking
around, closing the door behind him. He wanders into the darkness."
L0004: TEST_ATTR       "office door",#0c [TRUE] RFALSE
       SET_ATTR        "office door",#0c
       CALL            R0013 (#9581,#04) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " pops his head out of his office, scowls at you for a
moment, then withdraws, shutting the door."

Routine R0505, 0 locals ()

       PRINT           "You climb onto the desk, and hoist yourself through the
panel opening."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0506, 0 locals ()

       TEST_ATTR       "cherry-hardwood desk",#0c [FALSE] L0001
       STORE           G44,#05
       CALL            R0505 -> -(SP)
       RET             #3f
L0001: JZ              G93 [TRUE] L0002
       CALL            R0124 -> -(SP)
       RFALSE          
L0002: PRINT           "You're not"
       PRINT_PADDR     G33
       PRINT           "."
       NEW_LINE        
       RFALSE          

Routine R0507, 0 locals ()

       JE              G00,#3f [FALSE] L0001
       TEST_ATTR       "square aluminum panel",#0f [TRUE] L0001
       CALL            R0011 (#42,#28) -> -(SP)
       RTRUE           
L0001: JE              G7a,#6c,#9c,#5c [TRUE] L0002
       JE              G7a,#2c [FALSE] L0003
L0002: JE              G6a,#a7 [FALSE] L0003
       JE              G00,#3b [FALSE] L0003
       CALL            R0011 (G7a,#64,Gc6) -> -(SP)
       RTRUE           
L0003: JE              G7a,#44 [FALSE] L0004
       JE              G00,#3f [FALSE] L0004
       CALL            R0011 (#44,#28) -> -(SP)
       RTRUE           
L0004: JE              G00,#3b [FALSE] L0005
       JE              G7a,#28 [FALSE] L0005
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#3b [FALSE] RFALSE
       CALL            R0332 -> -(SP)
       RET_POPPED      

Routine R0508, 0 locals ()

       JE              G7a,#8d,#1c,#25 [FALSE] L0002
       TEST_ATTR       "cherry-hardwood desk",#0c [FALSE] L0001
       CALL            R0505 -> -(SP)
       CALL            R0284 (#3f) -> -(SP)
       RET_POPPED      
L0001: PRINT           "You would not be"
       PRINT_PADDR     G33
       PRINT_RET       " from where the desk is."
L0002: JE              G7a,#2c,#44,#6c [TRUE] L0003
       JE              G7a,#42 [FALSE] L0004
       CALL            R0354 ("drawer") -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0003: PRINT_RET       "The drawers are all locked up."
L0004: JE              G7a,#63,#42 [FALSE] L0006
       PRINT           "The desk is blanketed with a flurry of memos, on top of
which rest"
       CALL            R0277 (#67) -> -(SP)
       JE              (SP)+,#01 [FALSE] L0005
       PRINT           "s"
L0005: CALL            R0280 (#67) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0006: JE              G7a,#68,#6a [TRUE] L0007
       JE              G7a,#6b [FALSE] RFALSE
       JE              Gc6,#28 [FALSE] RFALSE
L0007: JZ              G93 [FALSE] L0008
       TEST_ATTR       "cherry-hardwood desk",#0c [FALSE] L0009
L0008: CALL            R0124 -> -(SP)
       RET_POPPED      
L0009: SET_ATTR        "cherry-hardwood desk",#0c
       PRINT           "With all your weight behind it, the desk screeches
across the floor to a position under the "
       CALL            R0004 (#28) -> -(SP)
       PRINT_RET       "."

Routine R0509, 1 local (0000)

       JZ              L00 [FALSE] RFALSE
       JE              G7a,#2c,#6c [FALSE] L0001
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#3c [FALSE] L0002
       JE              Gc6,#36 [FALSE] L0002
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0002: JE              G6a,#36 [FALSE] L0003
       JE              G7a,#6a,#68 [TRUE] L0004
L0003: JE              G7a,#6b [FALSE] RFALSE
       JE              Gc6,#28 [FALSE] RFALSE
L0004: PRINT           "You wouldn't be"
       PRINT_PADDR     G33
       PRINT           " from the "
       CALL            R0004 (#36) -> -(SP)
       PRINT_RET       "."

Routine R0510, 0 locals ()

       TEST_ATTR       "square aluminum panel",#0f [TRUE] L0001
       CALL            R0347 (#ea) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#97,#3b,#3c [FALSE] L0002
       JE              Gc6,#ea [FALSE] L0002
       CALL            R0511 -> -(SP)
       RET_POPPED      
L0002: CALL            R0339 (#ea) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0346 (#ea) -> -(SP)
       RET_POPPED      

Routine R0511, 0 locals ()

       PRINT           "You hesitate, fearful of startling a man who's
experiencing the kind of pressure that "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " is under. "
       TEST_ATTR       "desk",#0c [FALSE] L0001
       PRINT           "There must be another way of getting him out from
behind his desk and drawing him out of the "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           "."
L0001: NEW_LINE        
       SET_ATTR        "desk",#0c
       RTRUE           

Routine R0512, 0 locals ()

       JE              G7a,#7d,#42 [FALSE] RFALSE
       PRINT_RET       "It's an MBA from Harvard Business School."

Routine R0513, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "There are biographies on Walt Disney and Benito
Mussolini, a treatise by  Machiavelli, and a copy of "What They Don't Teach You
at Harvard Business School.""
L0001: JE              G7a,#75,#7d,#6c [FALSE] RFALSE
       CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0514, 0 locals ()

       JE              G7a,#44 [FALSE] L0001
       PRINT_PADDR     G7c
       PRINT_RET       " the silhouette of a man sitting quietly in
semidarkness."
L0001: JE              G7a,#3b [FALSE] L0002
       JE              Gc6,#c6 [FALSE] L0002
       PRINT           "The guard hands"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " back to you."
L0002: JE              G7a,#42 [FALSE] L0003
       PRINT_RET       "The fire-damaged cage, perhaps once the home of some
big jungle cat, has been converted into some kind of vertical booth."
L0003: JE              G7a,#1c,#40,#6c [TRUE] L0004
       JE              G7a,#2a [FALSE] RFALSE
L0004: PRINT           "Your attempt merely rattles the cage, and the "
       CALL            R0004 (#cf) -> -(SP)
       PRINT_RET       " growls at you to back off."

Routine R0515, 0 locals ()

       CALL            R0337 (#cf) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G7a,#a1,#a7 [TRUE] L0001
       CALL            R0001 (#72f0) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       ADD             G01,#0a -> G01
       STORE           Gd4,#01
       CALL            R0013 (#9f7b,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "The sound of your high-pitched, lighter-than-air voice
is startling to "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           ", but very familiar to the "
       CALL            R0004 (#cf) -> -(SP)
       PRINT           ". You can hear an electromechanical buzzing sound from
the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           "."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JE              #cf,Gaf [FALSE] L0009
       JE              G7a,#93 [FALSE] L0002
       JE              G6a,#1d [FALSE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#16,#cf,Gc6) -> -(SP)
       STORE           Gaf,#cf
       RTRUE           
L0002: JE              G7a,#a8,#ac [FALSE] L0003
       STORE           Gaf,#d3
       CALL            R0011 (#16,#cf,G6a) -> -(SP)
       STORE           Gaf,#cf
       RTRUE           
L0003: JE              G7a,#7a [FALSE] L0004
       CALL            R0292 (G6a,#d3) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       STORE           Gaf,#d3
       CALL            R0011 (#47,G6a,#cf) -> -(SP)
       STORE           Gaf,#cf
       RTRUE           
L0004: JE              G7a,#a9 [FALSE] L0005
       JE              G6a,#54 [FALSE] L0005
       STORE           Gaf,#d3
       CALL            R0011 (#16,#cf,G6a) -> -(SP)
       STORE           Gaf,#cf
       RTRUE           
L0005: JE              G7a,#96,#4c [FALSE] L0006
       STORE           Gaf,#d3
       CALL            R0011 (G7a,#cf) -> -(SP)
       STORE           Gaf,#cf
       RTRUE           
L0006: JE              G7a,#33 [FALSE] L0007
       JE              Gbc,#06 [FALSE] L0007
       CALL            R0273 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#34 [FALSE] L0008
       JE              Gbc,#06 [FALSE] L0008
       CALL            R0182 -> -(SP)
       RET_POPPED      
L0008: PRINT           "The guard just sits quietly in his cage."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#56 [FALSE] L0010
       TEST_ATTR       "pink dot",#0c [FALSE] L0010
       PRINT_RET       "Of course, he's your blind date."
L0010: CALL            R0342 (#cf) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       CALL            R0285 (#05,S196) -> -(SP)
       RET_POPPED      
L0011: JE              G7a,#42 [FALSE] L0012
       PRINT_PADDR     G7c
       PRINT           " the shadowy outline of a man who's wearing a dark "
       CALL            R0004 (#20) -> -(SP)
       PRINT_RET       "."
L0012: JE              G7a,#47 [FALSE] L0020
       JE              Gc6,#cf [FALSE] L0020
       JE              G6a,#10 [FALSE] L0013
       CALL            R0011 (#16,#cf,#10) -> -(SP)
       RTRUE           
L0013: JE              G6a,#db,#54 [FALSE] L0014
       PRINT           "The "
       CALL            R0004 (#cf) -> -(SP)
       PRINT           " refuses "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       "."
L0014: CALL            R0528 -> -(SP)
       JZ              (SP)+ [TRUE] L0015
       PRINT_RET       "Harry must've smelled a rat, since he rejects your
offer out of hand, thereby putting a damper on your sadistic glee."
L0015: PRINT           "While you're still holding"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           ", the guard moves his hands gently over it and says, "
       JE              G6a,#d8 [FALSE] L0016
       STORE           G73,#01
       PRINT           ""Oh, that's Andrew's "
       CALL            R0004 (#d8) -> -(SP)
       PRINT_RET       ". He's one to steal a smoke now and then; behind
Jenny's back, of course. She'd kill him if she ever found out.""
L0016: PRINT           ""Feels like"
       JE              G6a,#b0 [FALSE] L0017
       PRINT           " paper"
       JUMP            L0019
L0017: JE              G6a,#42 [FALSE] L0018
       PRINT           " cardboard"
       JUMP            L0019
L0018: CALL            R0302 (G6a) -> -(SP)
L0019: PRINT_RET       " to me.""
L0020: JE              G7a,#85 [FALSE] L0021
       JE              G6a,#37,#30,#24 [TRUE] L0021
       JE              Gc6,#cf [FALSE] L0021
       PRINT           "Not surprisingly, the "
       CALL            R0004 (#cf) -> -(SP)
       PRINT           " is oblivious to"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0021: JE              G7a,#96 [FALSE] L0022
       PRINT           "The "
       CALL            R0004 (#cf) -> -(SP)
       PRINT_RET       " nods slowly."
L0022: JE              G7a,#4c [FALSE] L0023
       PRINT_RET       ""Well, good evening to you.""
L0023: JE              G7a,#16 [FALSE] RFALSE
       JE              G6a,#cf [FALSE] RFALSE
       JE              Gc6,#54 [FALSE] L0025
       TEST_ATTR       "it",#0c [FALSE] L0024
       PRINT           "The "
       CALL            R0004 (#cf) -> -(SP)
       PRINT           " remains silent."
       NEW_LINE        
       JUMP            L0047
L0024: CALL            R0013 (#a5fc,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           Gbc,#06
       PRINT           ""But you already asked me about her, right?""
       NEW_LINE        
       JUMP            L0047
L0025: JE              Gc6,#cd [FALSE] L0026
       PRINT           ""Well, she's tried various diets, but then "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " orders our "
       CALL            R0004 (#62) -> -(SP)
       PRINT           " to increase the frequency of her feedings."
       NEW_LINE        
       JUMP            L0047
L0026: JE              Gc6,#02 [FALSE] L0027
       PRINT           """
       CALL            R0004 (#02) -> -(SP)
       PRINT           "? Harrumph. Don't waste your money.""
       NEW_LINE        
       JUMP            L0047
L0027: JE              Gc6,#db [FALSE] L0028
       PRINT           ""A very popular attraction, small but charismatic.""
       NEW_LINE        
       JUMP            L0047
L0028: JE              Gc6,#da [FALSE] L0029
       PRINT           ""Nothing but a glory hog, and always just one step
ahead of the ASPCA.""
       NEW_LINE        
       JUMP            L0047
L0029: JE              Gc6,#71 [FALSE] L0030
       TEST_ATTR       "Chuckles",#0c [TRUE] L0030
       SET_ATTR        "Chuckles",#0c
       PRINT           ""A very accomplished performer, takes a lot of pride in
his craft. Until..." The "
       CALL            R0004 (#cf) -> -(SP)
       PRINT           " stops himself."
       NEW_LINE        
       JUMP            L0047
L0030: JE              Gc6,#92,#56 [FALSE] L0032
       TEST_ATTR       "circus",#0c [FALSE] L0031
       PRINT           ""I've given my opinion.""
       NEW_LINE        
       JUMP            L0047
L0031: SET_ATTR        "circus",#0c
       PRINT           "He suddenly blurts out, "Well I can tell you this is
one circus that's headed for the barn. It's that doggone "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " and his vainglorious dreams. They're not panning out
for him, and the more he puts the squeeze on all of us, the more dangerous this
lot becomes.""
       NEW_LINE        
       JUMP            L0047
L0032: JE              Gc6,#05,#c8,#07 [FALSE] L0036
       TEST_ATTR       "Andrew Jenny",#0c [TRUE] L0035
       SET_ATTR        "Andrew Jenny",#0c
       JE              Gc6,#05 [FALSE] L0033
       PRINT           ""She"
       JUMP            L0034
L0033: PRINT           ""He"
L0034: PRINT           " ... er, they ... uh, whatever it is -- bizarre is all
I can say. You'd swear they were two different people.""
       NEW_LINE        
       JUMP            L0047
L0035: PRINT           """
       CALL            R0004 (#c8) -> -(SP)
       PRINT           "'s always considered "
       CALL            R0004 (#05) -> -(SP)
       PRINT           " a thorn in his side. Of course, "
       CALL            R0004 (#05) -> -(SP)
       PRINT           "'s always trying to keep him on the straight and
narrow. Which is cherry pie, considering this is the circus life and all.""
       NEW_LINE        
       JUMP            L0047
L0036: JE              Gc6,#be,#62 [FALSE] L0037
       PRINT           ""Yea, sad story. Just another guy who fell out the
social safety net, if you will, and landed in the circus. And not on his feet
either. So "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " overworks him, has him living in a cage. That's the
life here, that's the circus life for the most.""
       NEW_LINE        
       JUMP            L0047
L0037: JE              Gc6,#c6 [FALSE] L0038
       PRINT           ""It's home.""
       NEW_LINE        
       JUMP            L0047
L0038: JE              Gc6,#49 [FALSE] L0040
       JZ              Gb0 [FALSE] L0039
       PRINT           "You don't know anyone by that name."
       NEW_LINE        
       JUMP            L0047
L0039: SET_ATTR        "Eddie Smaldone",#0c
       PRINT           ""That's "
       CALL            R0004 (#71) -> -(SP)
       PRINT           "'s real name.""
       NEW_LINE        
       JUMP            L0047
L0040: JE              Gc6,#8d [FALSE] L0041
       PRINT           ""Very funny. Asking someone in my condition to describe
an "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           ".""
       NEW_LINE        
       JUMP            L0047
L0041: JE              Gc6,#09 [FALSE] L0042
       PRINT           """
       CALL            R0004 (#09) -> -(SP)
       PRINT           "? I used to work with him. You know you could
practically put him to sleep with soft music. That's how he got his name. Along
with his mean streak too, of course. In fact I used to play the violin for him
at night after all the towners would go home. That was the old days.""
       NEW_LINE        
       JUMP            L0047
L0042: JE              Gc6,#e0 [FALSE] L0043
       PRINT           ""He used to sell Amway. Then he joined on here as a
Monday Man, which is where he got his name. All that was before Munrab, of
course.""
       NEW_LINE        
       JUMP            L0047
L0043: JE              Gc6,#1f,#75,#23 [TRUE] L0044
       JE              Gc6,#20,#cf,#10 [FALSE] L0046
L0044: TEST_ATTR       "lion",#0c [FALSE] L0045
       PRINT           ""I would rather not talk any further about my past life
with the lions.""
       NEW_LINE        
       JUMP            L0047
L0045: SET_ATTR        "lion",#0c
       PRINT           "After a moment of tense silence, the guard impulsively
tears off his sunglasses and thrusts his head forward into the light. You
flinch at the sight of a slashing scar which engulfs both eye sockets.
  
The guard calms back down. "Nimrod did this to me. He refuses the whip, unlike
Elsie, who is controlled only by the whip.""
       NEW_LINE        
       JUMP            L0047
L0046: PRINT_RET       ""I really can't say.""
L0047: INC             G87
       TEST_ATTR       "guard",#0c [TRUE] RTRUE
       JG              G87,#02 [FALSE] RTRUE
       CALL            R0001 (#a5fc) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              Gc6,#75,#1f,#23 [TRUE] RTRUE
       SET_ATTR        "guard",#0c
       NEW_LINE        
       PRINT_RET       "The guard breathes a sigh, and continues, "I don't need
eyeballs to size up a First of May like you. Listen to me, if you think you're
going to sport around the lot asking a bunch of questions and expect answers,
forget it. These people are in no mood for lot loafers.""

Routine R0516, 0 locals ()

       JE              G7a,#75 [FALSE] RFALSE
       PRINT_RET       "You can't, since that would be blind theft."

Routine R0517, 0 locals ()

       JE              G7a,#42 [FALSE] L0002
       PRINT           "It's the fish skeleton type, with three sets of
horizontal ribs extending from a vertical spine."
       JE              G00,#39 [FALSE] L0001
       PRINT           " Built into the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " is a "
       CALL            R0004 (#a0) -> -(SP)
       PRINT           "."
L0001: NEW_LINE        
       RTRUE           
L0002: JE              G7a,#3b [FALSE] L0004
       JE              G6a,#7a [FALSE] L0004
       JE              G00,#39 [FALSE] L0003
       CALL            R0011 (#3b,#7a,#a0) -> -(SP)
       RTRUE           
L0003: CALL            R0347 (#00,S197) -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#26,#25,#29 [TRUE] L0005
       JE              G7a,#52,#24 [FALSE] L0006
L0005: PRINT           "You cannot scale the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT_RET       "."
L0006: JE              G7a,#6a,#9a,#6c [TRUE] L0007
       JE              G7a,#68,#14,#2a [FALSE] RFALSE
L0007: JE              G00,#c9 [FALSE] L0008
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#04 [FALSE] L0009
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0009: JE              G00,#39 [FALSE] L0010
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0010: JE              G00,#57 [FALSE] RFALSE
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      

Routine R0518, 1 local (0000)

       PRINT           "Adjacent to the turnstile to your south is a vertical
cage."
       RTRUE           

Routine R0519, 0 locals ()

       JE              G00,#57 [FALSE] L0001
       PRINT           "The slot's on the other side of the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT_RET       "."
L0001: JE              G7a,#3b [FALSE] L0005
       JE              Gc6,#a0 [FALSE] L0005
       JE              G6a,#47,#e7 [TRUE] RFALSE
       JE              G6a,#7a [FALSE] L0004
       PRINT           "You feed "
       CALL            R0004 (#7a) -> -(SP)
       PRINT           " into the slot "
       TEST_ATTR       "blue dot",#0c [TRUE] L0002
       TEST_ATTR       "pink dot",#0c [FALSE] L0003
L0002: CALL            R0013 (#9f7b,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "and hear all kinds of internal computations being made,
then the ticket rolls out into "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       "."
L0003: PRINT_RET       "but it's immediately rejected. Perhaps you didn't
follow the directions on the ticket."
L0004: PRINT           "The slot is not configured to accept"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_PADDR     G5d
       RTRUE           
L0005: JE              G7a,#42 [FALSE] L0006
       PRINT           "The "
       CALL            R0004 (#a0) -> -(SP)
       PRINT_RET       " is a few inches long."
L0006: JE              G7a,#44 [FALSE] L0007
       PRINT_RET       "It's dark."
L0007: JE              G7a,#2c,#6c [FALSE] RFALSE
       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0520, 0 locals ()

       CALL            R0014 (#9f7b) -> -(SP)
       STOREW          (SP)+,#00,#00
       JE              G00,#04,#39 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " goes "click.""
       NEW_LINE        
       RFALSE          

Routine R0521, 0 locals ()

       CALL            R0001 (#9f7b) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G00,#c9,#57 [FALSE] L0006
L0001: TEST_ATTR       "canvas wall",#0c [TRUE] L0002
       JE              G00,#c9 [FALSE] L0002
       TEST_ATTR       "turnstile",#0c [TRUE] L0002
       SET_ATTR        "turnstile",#0c
       PRINT           "The image of a burning bridge suddenly pops into your
mind as you veer away from the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           "."
       NEW_LINE        
       RFALSE          
L0002: CALL            R0522 -> -(SP)
       JE              G00,#04 [FALSE] L0003
       RET             #c9
L0003: JE              G00,#c9 [FALSE] L0004
       RET             #04
L0004: JE              G00,#57 [FALSE] L0005
       RET             #39
L0005: RET             #57
L0006: PRINT           "The "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " won't budge."
       NEW_LINE        
       RFALSE          

Routine R0522, 0 locals ()

       PRINT           "You pass through the creaky "
       CALL            R0004 (#eb) -> -(SP)
       CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JIN             "Comrade Thumb","Clown Alley" [TRUE] L0001
       STORE           Gbf,#07
       PRINT           " right behind a scrambling "
       CALL            R0004 (#db) -> -(SP)
L0001: PRINT           "."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0523, 1 local (0000)

       JE              L00,#02 [FALSE] L0007
       JZ              Gb4 [FALSE] L0001
       CALL            R0013 (#a6b4,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
L0001: TEST_ATTR       #c4,#12 [TRUE] L0002
       TEST_ATTR       #9a,#12 [FALSE] L0002
       JIN             "cheese morsel","Inside Prop Tent" [FALSE] L0002
       INSERT_OBJ      "cheese morsel",#32
       PRINT           "You immediately notice that the "
       CALL            R0004 (#27) -> -(SP)
       PRINT           " you left here is gone."
       NEW_LINE        
       NEW_LINE        
       RFALSE          
L0002: JIN             #9a,"Inside Prop Tent" [FALSE] RFALSE
       TEST_ATTR       #9a,#12 [FALSE] RFALSE
       TEST_ATTR       #c4,#12 [TRUE] RFALSE
       INSERT_OBJ      #c4,"Inside Prop Tent"
       JIN             "cheese morsel",#9a [TRUE] L0003
       INSERT_OBJ      #c4,#32
       RFALSE          
L0003: TEST_ATTR       #9a,#0c [FALSE] L0005
       TEST_ATTR       "cheese morsel",#0c [FALSE] L0004
       SET_ATTR        #9a,#06
       RTRUE           
L0004: SET_ATTR        "cheese morsel",#0c
       RTRUE           
L0005: TEST_ATTR       "cheese morsel",#0c [FALSE] L0006
       SET_ATTR        #9a,#0c
       CLEAR_ATTR      #9a,#06
       INSERT_OBJ      "cheese morsel",#32
       INSERT_OBJ      #c4,#32
       INSERT_OBJ      "dead mouse",#9a
       PRINT           "You hear a loud "SNAP!" as you enter."
       NEW_LINE        
       NEW_LINE        
       RTRUE           
L0006: SET_ATTR        "cheese morsel",#0c
       RTRUE           
L0007: JE              L00,#03 [FALSE] L0009
       PRINT           "This dimly lighted tent houses a ragtag collection of
outrageous props and wacky devices, including a midget automobile that's
garaged in here."
       TEST_ATTR       "canvas wall",#0c [FALSE] L0008
       PRINT           " To the shadowy south is where you passed through the
pleats of the "
       CALL            R0004 (#d2) -> -(SP)
       PRINT           "."
L0008: NEW_LINE        
       RTRUE           
L0009: JE              L00,#01 [FALSE] RFALSE
       JZ              G91 [TRUE] L0011
       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       JG              Gb4,#01 [FALSE] L0011
       CALL            R0341 (#92) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       CALL            R0341 (#99) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       JE              G7a,#28,#8c,#a2 [TRUE] L0010
       JE              G7a,#75 [FALSE] L0011
L0010: CALL            R0547 -> -(SP)
       RET_POPPED      
L0011: JIN             "Mr. Munrab",G00 [FALSE] RFALSE
       JE              G7a,#42 [FALSE] RFALSE
       JE              G6a,#92,#99 [FALSE] RFALSE
       PRINT           "You take a peek ... "
       NEW_LINE        
       NEW_LINE        
       RFALSE          

Routine R0524, 0 locals ()

       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0526 -> -(SP)
       RFALSE          
L0001: TEST_ATTR       "canvas wall",#0c [FALSE] L0003
       CALL            R0525 -> -(SP)
       JE              G00,#5e [FALSE] L0002
       RET             #01
L0002: RET             #5e
L0003: JE              G00,#5e [FALSE] L0004
       STORE           Gbd,#d2
       PRINT           "You encounter a pleated wall of canvas."
       JUMP            L0005
L0004: PRINT_PADDR     G40
L0005: NEW_LINE        
       RFALSE          

Routine R0525, 0 locals ()

       JE              Gb4,#0a [FALSE] L0001
       JIN             #9a,#32 [FALSE] L0001
       INSERT_OBJ      #9a,"Inside Prop Tent"
       CALL            R0013 (#e1bc,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "You make your way through the pleats, and just inside
the tent you notice a small "
       CALL            R0004 (#9a) -> -(SP)
       PRINT           " on the "
       CALL            R0004 (#bc) -> -(SP)
       JUMP            L0002
L0001: PRINT           "The rough-hewn canvas is abrasive as you pass through"
L0002: PRINT           " ..."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0526, 0 locals ()

       JL              Gb4,#07 [FALSE] L0004
       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              Gb4,#00,#01 [FALSE] RFALSE
L0001: JE              Gb4,#00,#01 [FALSE] L0002
       PRINT           "Taft's eyes follow your movement, halting you
unsettlingly."
       JUMP            L0003
L0002: PRINT           "Realizing you could be facing trespassing charges, you
hesitate."
L0003: NEW_LINE        
       RFALSE          
L0004: RET             #04

Routine R0527, 0 locals ()

       JE              G7a,#44,#42 [FALSE] L0004
       TEST_ATTR       #9a,#12 [FALSE] L0004
       PRINT           "The "
       CALL            R0004 (#9a) -> -(SP)
       PRINT           " is"
       TEST_ATTR       #9a,#0c [FALSE] L0001
       PRINT           " not"
L0001: PRINT           " set"
       JIN             "cheese morsel",#9a [FALSE] L0002
       PRINT           "; there is a bit of cheese in the trap"
       JUMP            L0003
L0002: JIN             #c4,#9a [FALSE] L0003
       PRINT           ". A "
       CALL            R0004 (#3c) -> -(SP)
       PRINT           " rests under the bar"
L0003: PRINT_PADDR     G5d
       RTRUE           
L0004: JE              G7a,#3c [FALSE] L0006
       JE              G6a,#41 [FALSE] L0006
       TEST_ATTR       #9a,#06 [FALSE] L0005
       JIN             #c4,G00 [FALSE] L0005
       CALL            R0011 (#7b,#c4,#41) -> -(SP)
       RTRUE           
L0005: CALL            R0124 -> -(SP)
       RET_POPPED      
L0006: CALL            R0339 (#9a) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       TEST_ATTR       #9a,#06 [FALSE] L0007
       PRINT           "Blunder of blunders! "
       CALL            R0011 (#7a,#c4) -> -(SP)
       RTRUE           
L0007: JE              G7a,#6c [FALSE] L0008
       JZ              Gc6 [TRUE] L0009
L0008: JE              G7a,#9a [FALSE] L0012
       JZ              Gc6 [FALSE] L0012
L0009: JIN             #c4,#9a [FALSE] L0010
       PRINT           "A "
       CALL            R0004 (#3c) -> -(SP)
       PRINT_RET       " is in it!"
L0010: TEST_ATTR       #9a,#0c [FALSE] L0011
       CLEAR_ATTR      #9a,#0c
       PRINT_RET       "Painstakingly, you set the trap."
L0011: CALL            R0530 (#01) -> -(SP)
       RET_POPPED      
L0012: JE              G7a,#3c,#3b [FALSE] L0014
       JE              G6a,#27 [FALSE] L0014
       TEST_ATTR       #9a,#0c [FALSE] L0013
       INSERT_OBJ      "cheese morsel",#9a
       PRINT           "The "
       CALL            R0004 (#27) -> -(SP)
       PRINT_RET       " is now clamped into the trap."
L0013: CALL            R0530 -> -(SP)
       RTRUE           
L0014: JE              G7a,#2c [FALSE] L0016
       TEST_ATTR       #9a,#0c [FALSE] L0015
       PRINT_RET       "It is."
L0015: CALL            R0529 -> -(SP)
       RTRUE           
L0016: JE              G7a,#75 [FALSE] L0017
       TEST_ATTR       #9a,#12 [FALSE] L0017
       TEST_ATTR       #9a,#0c [TRUE] L0017
       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] RTRUE
       PRINT           "With great care you pick up the loaded "
       CALL            R0004 (#9a) -> -(SP)
       PRINT_RET       "."
L0017: CALL            R0339 (#9a) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       TEST_ATTR       #9a,#0c [TRUE] RFALSE
       JE              G7a,#3c [TRUE] RFALSE
       PUT_PROP        #9a,#08,S199
       JE              G7a,#aa [TRUE] L0020
       JZ              Gc6 [TRUE] L0018
       JE              Gc6,#0b [FALSE] L0020
L0018: TEST_ATTR       #9a,#12 [FALSE] L0019
       CALL            R0530 -> -(SP)
       RTRUE           
L0019: SET_ATTR        #9a,#0c
       CALL            R0013 (#a2cf,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       SET_ATTR        #9a,#12
       CLEAR_ATTR      #9a,#06
       INSERT_OBJ      #9a,"it"
       INSERT_OBJ      "cheese morsel",#9a
       PRINT_PADDR     G8d
       PRINT           "between the realization that you've caused "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " excruciating Pain and the actual onslaught of such
Pain, during which time most people speak with exclamation points and ... well,
say things like ..."
       NEW_LINE        
       RET             #02
L0020: CALL            R0529 -> -(SP)
       RET_POPPED      

Routine R0528, 0 locals ()

       JE              G6a,#9a [FALSE] RFALSE
       TEST_ATTR       #9a,#0c [TRUE] RFALSE
       RTRUE           

Routine R0529, 0 locals ()

       TEST_ATTR       #9a,#12 [TRUE] L0001
       INSERT_OBJ      "cheese morsel",#9a
L0001: SET_ATTR        #9a,#12
       SET_ATTR        #9a,#0c
       PRINT           ""Snap!" The "
       JE              G6a,#9a [FALSE] L0002
       CALL            R0004 (G6a) -> -(SP)
       JE              G7a,#3b [FALSE] L0003
       PRINT           " touches the side of the "
       CALL            R0004 (Gc6) -> -(SP)
       PRINT           " and"
       JUMP            L0003
L0002: CALL            R0004 (Gc6) -> -(SP)
L0003: PRINT           " does a backflip "
       CALL            R0292 (#9a) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       PRINT           "out of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           "s and "
L0004: PRINT           "into the air."
       NEW_LINE        
       INSERT_OBJ      #9a,G00
       RTRUE           

Routine R0530, 1 local (0000)

       PRINT           "A rash act, considering the trap is "
       JZ              L00 [TRUE] L0001
       PRINT           "already "
L0001: PRINT_RET       "loaded."

Routine R0531, 0 locals ()

       RFALSE          

Routine R0532, 0 locals ()

       CALL            R0339 (#27) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       TEST_ATTR       #9a,#06 [FALSE] L0001
       CALL            R0011 (#7a,#c4) -> -(SP)
       RTRUE           
L0001: JE              G7a,#75 [FALSE] L0002
       JIN             "cheese morsel",#9a [FALSE] L0002
       TEST_ATTR       #9a,#0c [TRUE] L0002
       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0002
       PRINT_RET       "With great care, you take the cheese."
L0002: JE              G7a,#3e [FALSE] L0003
       INSERT_OBJ      "cheese morsel",#32
       PRINT           "Your nose twitches as you nibble away the "
       CALL            R0004 (#27) -> -(SP)
       PRINT_RET       "."
L0003: JE              G7a,#89 [FALSE] RFALSE
       PRINT_RET       "Camembert, 1979."

Routine R0533, 1 local (0000)

       TEST_ATTR       #9a,#06 [FALSE] L0001
       PRINT           "Over in the "
       CALL            R0004 (#84) -> -(SP)
       PRINT           ", a "
       CALL            R0004 (#c4) -> -(SP)
       PRINT           " gnaws timidly at the "
       CALL            R0004 (#9a) -> -(SP)
       PRINT           "."
       RTRUE           
L0001: PRINT           "You can hear the faint scurryings of a rodent somewhere
in the tent."
       RTRUE           

Routine R0534, 1 local (0000)

       CALL            R0292 (#c4) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JIN             #c4,"bucket" [TRUE] L0001
       JE              G7a,#4b [TRUE] L0001
       TEST_ATTR       #9a,#06 [TRUE] L0001
       CALL            R0347 (#c4) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#42 [FALSE] L0003
       JIN             #c4,"it" [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#c4) -> -(SP)
       PRINT_RET       " calms for a moment, twitches its bewhiskered snout at
you, then continues swimming its forepaws silently into the air."
L0002: JIN             #c4,"bucket" [FALSE] RFALSE
       JZ              G46 [TRUE] RFALSE
       PRINT           "It keeps"
       PRINT_PADDR     G30
       PRINT_RET       ". That noise is getting to you."
L0003: JE              G7a,#47 [FALSE] L0005
       JE              G6a,#27 [FALSE] L0005
       JIN             #c4,"it" [FALSE] L0004
       PRINT_RET       "It's in no position for a feeding."
L0004: CALL            R0535 -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#75 [FALSE] L0006
       JIN             #c4,"bucket" [FALSE] L0006
       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] RTRUE
       STORE           G46,#01
       PRINT_RET       "You grasp the slick, narrow tail and lift, feeling the
rodent's buzzing metabolism vibrate at your fingertips."
L0006: TEST_ATTR       #c4,#12 [TRUE] L0012
       JE              G7a,#3c [FALSE] L0007
       JE              G6a,#41 [TRUE] L0008
L0007: JE              G7a,#75,#7b [FALSE] L0012
       JE              Gc6,#41 [FALSE] L0012
L0008: JIN             "water","bucket" [FALSE] L0009
       CALL            R0011 (#3a,#bb) -> -(SP)
       NEW_LINE        
       CALL            R0011 (#7a,#c4) -> -(SP)
       RTRUE           
L0009: GET_CHILD       "bucket" -> L00 [FALSE] L0011
       PRINT           "Tumbling out of your "
       CALL            R0004 (#41) -> -(SP)
       PRINT           " come"
       GET_SIBLING     L00 -> -(SP) [TRUE] L0010
       PRINT           "s"
L0010: CALL            R0280 (#41,#01) -> -(SP)
       PRINT_PADDR     G5d
       CALL            R0299 (#41,G00) -> -(SP)
       NEW_LINE        
       CALL            R0011 (#7a,#c4) -> -(SP)
       RTRUE           
L0011: CLEAR_ATTR      #9a,#06
       SET_ATTR        #c4,#12
       ADD             G01,#0a -> G01
       INSERT_OBJ      #c4,"bucket"
       PRINT           "You can almost hear the tramplings of the world beating
a path to your door as, with a deft swoop of the "
       CALL            R0004 (#41) -> -(SP)
       PRINT           ", you capture the "
       CALL            R0004 (#c4) -> -(SP)
       PRINT           ". It immediately begins"
       PRINT_PADDR     G30
       PRINT_RET       "."
L0012: TEST_ATTR       #9a,#06 [FALSE] L0014
       CALL            R0341 (#c4) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       CALL            R0292 (#c4) -> -(SP)
       JZ              (SP)+ [FALSE] L0014
       CLEAR_ATTR      #9a,#06
       INSERT_OBJ      #c4,#32
       PRINT           "By fits and starts the mouse "
       JE              G7a,#75 [FALSE] L0013
       PRINT           "eludes "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           " and "
L0013: PRINT_RET       "makes an exit."
L0014: JE              G7a,#3b,#97,#3a [TRUE] L0015
       JE              G7a,#47,#3c [FALSE] L0016
L0015: JE              G6a,#c4 [FALSE] L0016
       JE              Gc6,#41 [TRUE] L0016
       INSERT_OBJ      #c4,#32
       CALL            R0537 (#01) -> -(SP)
       RET_POPPED      
L0016: JE              G7a,#7a [FALSE] RFALSE
       PRINT           "It nips at "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       "."

Routine R0535, 0 locals ()

       INSERT_OBJ      "cheese morsel",#32
       STORE           G46,#00
       PRINT_RET       "The mouse gnaws away at the cheese and peeps softly
upon finishing it."

Routine R0536, 0 locals ()

       RET             #c4

Routine R0537, 1 local (0000)

       PRINT           "The mouse "
       JZ              L00 [TRUE] L0001
       PRINT           "scampers out of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           ", "
L0001: PRINT           "hits the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT_RET       " running and darts out of sight."

Routine R0538, 0 locals ()

       STORE           Gbd,#5d
       JE              G7a,#42 [FALSE] L0001
       TEST_ATTR       "clown mask",#14 [FALSE] L0001
       PRINT_RET       "You're wearing it!"
L0001: JE              G7a,#77 [FALSE] L0003
       TEST_ATTR       "veil",#14 [FALSE] L0002
       CALL            R0637 (#de) -> -(SP)
       RTRUE           
L0002: PUT_PROP        "it",#09,#6408
       SET_ATTR        "clown mask",#14
       PRINT           "You put on the "
       CALL            R0004 (#5d) -> -(SP)
       PRINT_RET       "."
L0003: JE              G7a,#44 [FALSE] RFALSE
       TEST_ATTR       "clown mask",#14 [FALSE] RFALSE
       PRINT_PADDR     G82
       NEW_LINE        
       RTRUE           

Routine R0539, 0 locals ()

       JE              G7a,#44 [FALSE] L0001
       TEST_ATTR       "gorilla suit",#14 [FALSE] L0001
       CALL            R0011 (#61,#d0) -> -(SP)
       RTRUE           
L0001: JE              G7a,#44 [FALSE] L0002
       PRINT_RET       "There's nothing in it."
L0002: JE              G7a,#3b [FALSE] L0003
       JE              Gc6,#d0 [FALSE] L0003
       CALL            R0003 (Gd7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           
L0003: TEST_ATTR       "dress-suit combination",#14 [FALSE] L0004
       JE              G7a,#1c,#77 [FALSE] L0004
       CALL            R0637 (#6a) -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       "shawl-jacket combo",#14 [FALSE] L0005
       JE              G7a,#1c,#77 [FALSE] L0005
       CALL            R0637 (#68) -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#7e,#1c,#77 [TRUE] L0006
       JE              G7a,#28,#90 [FALSE] L0009
L0006: TEST_ATTR       "gorilla suit",#14 [FALSE] L0009
       PRINT           "You laboriously climb "
       JE              G7a,#1c,#77 [FALSE] L0007
       INSERT_OBJ      "gorilla suit","it"
       SET_ATTR        "gorilla suit",#14
       PRINT           "into"
       JUMP            L0008
L0007: CLEAR_ATTR      "gorilla suit",#14
       PRINT           "out of"
L0008: PRINT           " the heavy, itchy "
       CALL            R0004 (#d0) -> -(SP)
       PRINT_RET       "."
L0009: JE              G7a,#42 [FALSE] RFALSE
       PRINT           "It's a 3-H "
       CALL            R0004 (#d0) -> -(SP)
       PRINT_RET       " -- heavy, hairy and headless."

Routine R0540, 0 locals ()

       JE              G7a,#2c,#6c [FALSE] L0001
       CALL            R0121 -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#89,#42 [FALSE] L0003
       JE              G7b,"smell" [TRUE] L0002
       PRINT           "The tiny car, just a slice of lemon, is in pretty bad
shape. "
L0002: PRINT_RET       "It smells of gasoline and burnt oil."
L0003: JE              Gc6,#ad [FALSE] L0004
       JE              G7a,#3c,#3b [FALSE] L0004
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#44 [FALSE] L0005
       PRINT_RET       "It's a one-seater, sporting only an ignition switch on
the dash board."
L0005: JE              G7a,#40,#2a,#1c [TRUE] L0006
       JE              G7a,#39,#25 [FALSE] L0008
L0006: TEST_ATTR       "midget car",#0c [FALSE] L0007
       PRINT_PADDR     G56
       NEW_LINE        
       RTRUE           
L0007: SET_ATTR        "midget car",#0c
       PRINT_RET       "Only a basket case or a child would fit in there."
L0008: JE              G7a,#5b [FALSE] RFALSE
       CALL            R0011 (G7a,#76) -> -(SP)
       RTRUE           

Routine R0541, 0 locals ()

       JE              G7a,#6a,#9a,#5b [TRUE] L0001
       JE              G7a,#97 [FALSE] RFALSE
L0001: JIN             "Mr. Munrab",G00 [FALSE] L0002
       PRINT_RET       "That surely will get you caught."
L0002: TEST_ATTR       "ignition switch",#0c [TRUE] L0003
       SET_ATTR        "ignition switch",#0c
       PRINT           "The "
       CALL            R0004 (#ad) -> -(SP)
       PRINT_RET       " chugs violently for a couple of seconds, lets out a
big bang, then dies."
L0003: RANDOM          #64 -> -(SP)
       JL              #23,(SP)+ [TRUE] L0004
       PRINT           "The "
       CALL            R0004 (#ad) -> -(SP)
       PRINT_RET       " backfires loudly and comically."
L0004: PRINT_RET       "Nothing happens."

Routine R0542, 0 locals ()

       CALL            R0013 (#a5fc,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INC             G2e
       JE              G7a,#34,#33 [TRUE] RFALSE
       CLEAR_ATTR      "it",#0c
       STORE           G2e,#00
       STORE           Gbc,#00
       CALL            R0014 (#a5fc) -> -(SP)
       STOREW          (SP)+,#00,#00
       RTRUE           

Routine R0543, 1 local (0000)

       PRINT           "President William Howard Taft is here."
       RTRUE           

Routine R0544, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       CALL            R0292 (#42) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       PRINT           "The imposing "
       CALL            R0004 (#42) -> -(SP)
       PRINT_RET       " stands quite still."
L0001: CALL            R0337 (#42) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       JE              G7a,#aa [FALSE] L0003
L0002: PRINT           "He remains silent, unimpeachably frozen."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: CALL            R0339 (#42) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       JE              G7a,#62,#67 [FALSE] L0005
L0004: TEST_ATTR       "figure of President Taft",#0c [TRUE] RFALSE
       SET_ATTR        "figure of President Taft",#0c
       PRINT_RET       "Taft wobbles slightly, revealing himself to be nothing
but a cardboard character, a mere prop."
L0005: JE              G7a,#50 [FALSE] RFALSE
       JZ              G91 [FALSE] RFALSE
       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0545 -> -(SP)
       RET_POPPED      

Routine R0545, 1 local (0000)

       JZ              L00 [TRUE] L0001
       PRINT           "Fear motivates you to"
       STORE           Gb4,#07
       JUMP            L0002
L0001: PRINT           "You"
       STORE           Gb4,#06
L0002: CALL            R0292 (#42) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       INSERT_OBJ      "figure of President Taft",G00
       PRINT           " set Taft down then"
L0003: STORE           G91,#01
       SET_ATTR        "figure of President Taft",#06
       PRINT_RET       " crouch behind the cardboard character."

Routine R0546, 0 locals ()

       CALL            R0013 (#a6b4,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       CLEAR_ATTR      "conversation",#13
       INC             Gb4
       JE              Gb4,#01,#03 [TRUE] L0001
       JE              Gb4,#06 [FALSE] L0005
L0001: NEW_LINE        
       PRINT           "You can hear muffled voices coming from outside"
       JE              Gb4,#01 [TRUE] L0002
       PRINT           ", getting louder and nearer"
L0002: JE              Gb4,#01 [FALSE] L0003
       PRINT           " and see two ominous shadows cast against the side wall
of the tent"
L0003: PRINT           "."
       JE              Gb4,#03 [FALSE] L0004
       PRINT           " You feel the childish embarrassment of being trapped."
L0004: NEW_LINE        
       RTRUE           
L0005: JE              Gb4,#05 [FALSE] L0006
       NEW_LINE        
       PRINT_RET       "You hear one voice say, "Let's duck in here.""
L0006: JE              Gb4,#07 [FALSE] L0008
       INSERT_OBJ      "Mr. Munrab","Inside Prop Tent"
       INSERT_OBJ      "detective","Inside Prop Tent"
       JZ              G91 [FALSE] L0007
       NEW_LINE        
       CALL            R0545 (#01) -> -(SP)
L0007: NEW_LINE        
       PRINT           "From behind the "
       CALL            R0004 (#42) -> -(SP)
       PRINT_RET       " you hear footsteps enter the tent, a pause, then
hushed conversation."
L0008: JE              Gb4,#08 [FALSE] L0011
       JE              G7a,#4b [FALSE] L0009
       JE              G6a,#18 [TRUE] L0010
L0009: NEW_LINE        
L0010: PRINT           ""So, Munrab, what is it? Why have you called me here?"
  
"Listen, Detective, I've had a terrible day in your lousy little town, so let
me be brief. Receipts have been down all month, tonight's "
       CALL            R0004 (#8e) -> -(SP)
       PRINT           " sales were especially small, the towners were
tightfisted, they nearly leveled my grandstand, and on top of that somebody's
kidnapped my daughter, Chelsea. That's where you come in. Here's the most
recent picture of her -- a pretty good likeness in my opinion."

""
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       ", why are we whispering?""
L0011: JE              Gb4,#09 [FALSE] RFALSE
       CALL            R0547 -> -(SP)
       RET_POPPED      

Routine R0547, 0 locals ()

       CALL            R0014 (#a6b4) -> -(SP)
       STOREW          (SP)+,#00,#00
       SET_ATTR        "conversation",#13
       CLEAR_ATTR      "In the Wings",#12
       CLEAR_ATTR      "figure of President Taft",#06
       JE              Gb4,#09 [FALSE] L0003
       JE              G7a,#4b [FALSE] L0001
       JE              G6a,#18 [TRUE] L0002
L0001: NEW_LINE        
L0002: PRINT           ""I don't know, because it's a mystery I guess. Anyhow,
it's not because I suspect any of my own people here on the lot." There's a
pause. "I've got a pretty loyal crew here. Sure, I work the guys a fair amount,
but hey, no one joins the circus expecting a holiday."

Lacking all passion and professionalism, the detective replies, "I'll suspect
who you want me to suspect. You're paying the bill."

"Here, see, the language of this ransom note clearly shows that it's not an
inside job. Detective, I don't know what kind of crazies are running loose in
this town, but I'm afraid harm might come to my daughter if the police were to
show up. God knows this circus doesn't need that kind of publicity, anyway. So
I'm relying on you and you alone."

"I'd better hold on to that note, Munrab."

"Alright, then get going."

You can hear "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " and the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " "
       JUMP            L0004
L0003: CALL            R0004 (#92) -> -(SP)
       PRINT           " and the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " notice you and they "
L0004: PRINT           "hustle out of the tent"
       INSERT_OBJ      "Mr. Munrab","On the Wagon"
       INSERT_OBJ      "detective","Midway Entrance"
       INSERT_OBJ      "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","detective"
       INSERT_OBJ      "trade card",#32
       JZ              G91 [TRUE] L0005
       JE              G7a,#8c [TRUE] L0005
       PRINT           ". You stand up."
       JUMP            L0006
L0005: PRINT           "."
L0006: STORE           Gbd,#92
       STORE           G91,#00
       STORE           Gb4,#0a
       STORE           G4c,#0d
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0548, 0 locals ()

       JE              G00,#3f,#3b [FALSE] L0005
       TEST_ATTR       "square aluminum panel",#0f [TRUE] L0001
       CALL            R0337 (#92) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
L0001: TEST_ATTR       "square aluminum panel",#0f [TRUE] L0003
L0002: CALL            R0347 (#92) -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: CALL            R0341 (#92) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       JE              G7a,#13 [FALSE] RFALSE
L0004: CALL            R0511 -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0005: JE              G00,#01 [FALSE] L0006
       CALL            R0339 (#92) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0346 (#92) -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#4b [FALSE] L0007
       JE              G00,#01 [FALSE] L0007
       CALL            R0011 (#4b,#18) -> -(SP)
       RTRUE           
L0007: JE              G7a,#42 [FALSE] L0008
       PRINT_RET       "He gives off the dual expressions of indigestion and
indignation."
L0008: JZ              G93 [TRUE] L0011
       CALL            R0337 (#92) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       TEST_ATTR       "Mr. Munrab",#0c [FALSE] L0009
       PRINT           "Completely distraught, "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " is now incommunicado."
       NEW_LINE        
       JUMP            L0010
L0009: SET_ATTR        "Mr. Munrab",#0c
       PRINT           ""Hey you, you're gonna pay for this! And do you know
the replacement cost of a tightrope apparatus!""
       NEW_LINE        
L0010: CALL            R0298 -> -(SP)
       RET_POPPED      
L0011: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#08 [FALSE] L0012
       CALL            R0297 (#1e) -> -(SP)
       RET_POPPED      
L0012: JE              G4c,#09 [FALSE] L0013
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0013: JE              G4c,#0d [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      

Routine R0549, 1 local (0000)

       JIN             "safety net","Mr. Munrab" [FALSE] L0002
       JE              G00,#83 [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#03) -> -(SP)
       PRINT           " is being held by the motley circle of "
       CALL            R0004 (#92) -> -(SP)
       PRINT           ", the "
       CALL            R0004 (#62) -> -(SP)
       PRINT           ", "
       JZ              G84 [TRUE] L0001
       CALL            R0550 -> -(SP)
L0001: PRINT           "and "
       CALL            R0004 (#db) -> -(SP)
       JUMP            L0003
L0002: CALL            R0004 (#92) -> -(SP)
       PRINT           ", pacing pitifully back and forth across the ring, is a
complete wreck"
L0003: PRINT           "."
       RTRUE           

Routine R0550, 0 locals ()

       CALL            R0004 (#07) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#71) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#02) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#e0) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#da) -> -(SP)
       PRINT           " "
       RTRUE           

Routine R0551, 0 locals ()

       CALL            R0337 (#97) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0011 (#0e,#e0) -> -(SP)
       RTRUE           
L0001: JE              G7a,#42 [FALSE] RFALSE
       PRINT           "There's "
       CALL            R0004 (#92) -> -(SP)
       PRINT           ", the "
       CALL            R0004 (#62) -> -(SP)
       PRINT           ", "
       CALL            R0550 -> -(SP)
       PRINT           "and "
       CALL            R0004 (#db) -> -(SP)
       PRINT_RET       "."

Routine R0552, 0 locals ()

       JZ              Gc4 [FALSE] L0003
       CALL            R0337 (#99) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JE              G00,#57 [FALSE] L0003
       PRINT           "He just gives you a "
       JG              G78,#02 [FALSE] L0001
       PRINT           "glassy-eyed"
       JUMP            L0002
L0001: PRINT           "stern"
L0002: PRINT           " look and ignores you."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: JE              Gaf,#99 [FALSE] L0012
       TEST_ATTR       "detective",#0c [TRUE] L0008
       JIN             "ransom note",#4c [FALSE] L0008
       JE              G7a,#47 [FALSE] L0004
       JE              G6a,#b8,#9e [FALSE] L0004
       JE              Gc6,#1d [FALSE] L0004
       CALL            R0553 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#48 [FALSE] L0005
       JE              G6a,#1d [FALSE] L0005
       JE              Gc6,#b8,#9e [FALSE] L0005
       CALL            R0553 -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#a9,#45 [FALSE] L0006
       JE              G6a,#b8,#9e [FALSE] L0006
       CALL            R0553 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#93 [FALSE] L0007
       JE              G6a,#1d [FALSE] L0007
       JE              Gc6,#b8,#9e [FALSE] L0007
       CALL            R0553 -> -(SP)
       RET_POPPED      
L0007: STORE           Gaf,#d3
       CALL            R0011 (#4c,#99) -> -(SP)
       STORE           Gaf,#99
       RTRUE           
L0008: JE              G7a,#a9 [FALSE] L0009
       CALL            R0011 (#16,#99,G6a) -> -(SP)
       RTRUE           
L0009: JE              G7a,#4c [TRUE] L0010
       JE              G7a,#93 [FALSE] L0011
       JE              G6a,#1d [FALSE] L0011
L0010: STORE           Gaf,#d3
       CALL            R0011 (#16,#99,#09) -> -(SP)
       STORE           Gaf,#99
       RTRUE           
L0011: PRINT           "The "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       " appears unable to respond."
L0012: JE              G00,#01 [FALSE] L0013
       CALL            R0339 (#99) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       CALL            R0346 (#99) -> -(SP)
       RET_POPPED      
L0013: JZ              G68 [FALSE] L0014
       TEST_ATTR       "detective",#0c [FALSE] L0015
L0014: JE              G7a,#85,#47 [FALSE] L0015
       JE              Gc6,#99 [FALSE] L0015
       CALL            R0011 (#16,#99,#9b) -> -(SP)
       RTRUE           
L0015: JE              G7a,#47,#85 [FALSE] L0016
       JE              G6a,#d8,#1b,#55 [FALSE] L0016
       PRINT           "Not surprisingly, the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           " doesn't ring a bell for the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       "."
L0016: JZ              Gc4 [TRUE] L0017
       CALL            R0342 (#99) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       PRINT_RET       "You're beating a dead-drunk horse."
L0017: JE              G7a,#93,#17,#16 [TRUE] L0018
       JE              G7a,#4c [FALSE] L0023
L0018: JE              G6a,#99 [FALSE] L0023
       TEST_ATTR       "detective",#0c [FALSE] L0019
       PRINT           "You're having about as much luck as Rimshaw trying to
communicate with the dead, even though the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       " still lives on."
L0019: JE              Gc6,#54,#9e,#b8 [TRUE] L0020
       JE              Gc6,#e0,#92 [FALSE] L0021
L0020: JIN             "ransom note",#4c [FALSE] L0021
       CALL            R0553 -> -(SP)
       RET_POPPED      
L0021: JZ              G68 [TRUE] L0022
       PRINT           "Just his attempting to think or speak or move is
obviously causing the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       " great pain."
L0022: STORE           G68,#01
       PRINT           "As his jawbone pivots open for speech, some monstrous
pain seems to ricochet off the plates of the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           "'s skull. He settles back into the "
       CALL            R0004 (#d7) -> -(SP)
       PRINT_RET       "."
L0023: JE              G7a,#4b [FALSE] L0024
       JE              G00,#57 [FALSE] L0024
       JZ              Gc4 [FALSE] L0024
       CALL            R0011 (#4b,#18) -> -(SP)
       RTRUE           
L0024: JE              G7a,#81 [FALSE] L0025
       CALL            R0011 (#81,#9b) -> -(SP)
       RTRUE           
L0025: JE              G7a,#82 [FALSE] L0026
       CALL            R0011 (#82,#9b,Gc6) -> -(SP)
       RTRUE           
L0026: JE              G7a,#3c,#72,#97 [FALSE] L0028
       JE              G6a,#bb [FALSE] L0028
       TEST_ATTR       "detective",#0c [FALSE] L0027
       CLEAR_ATTR      "detective",#0c
       INSERT_OBJ      "water",#32
       INSERT_OBJ      "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract",#32
       PRINT           "The cool wave of water breaks upon the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       "'s face with a "whooosh." He comes up for air,
wide-eyed and woken-up.

Glancing down at the flask of Dr. Nostrum's, he heaves it against the
turnstile, and it explodes into a cloud of acrid smoke surrounded by twinkling
flying shards of glass. Lucky no one got hurt."
L0027: JZ              Gc4 [TRUE] RFALSE
       PRINT_RET       "He's already soaked."
L0028: JE              G7a,#69,#83,#a1 [FALSE] L0030
       JZ              Gc4 [TRUE] L0030
       PRINT           "Making fists around the coat's lapel, you give a yank,
but the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           "'s "
       TEST_ATTR       "detective",#0c [FALSE] L0029
       PRINT           "overheated "
L0029: PRINT_RET       "skull merely falls to his opposite shoulder."
L0030: JE              G7a,#42 [FALSE] L0037
       PRINT           "Wearing a "
       CALL            R0004 (#9b) -> -(SP)
       PRINT           " and "
       JZ              Gc4 [FALSE] L0031
       JE              G00,#57 [FALSE] L0031
       PRINT           "cradling a flask of Dr. Nostrum's in his hands,"
       JUMP            L0032
L0031: JE              G00,#01 [FALSE] L0032
       PRINT           "looking otherwise disheveled,"
L0032: JE              G00,#57 [FALSE] L0035
       JZ              Gc4 [TRUE] L0035
       JIN             "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","detective" [FALSE] L0033
       PRINT           "still clutching the flask"
       JUMP            L0034
L0033: PRINT           "looking downtrodden"
L0034: PRINT           ", the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " continues to breathe, but that's about all."
       TEST_ATTR       "detective",#0c [FALSE] L0036
       PRINT           " His face is damp with fever."
       JUMP            L0036
L0035: PRINT           " he appears to have some kind of "
       CALL            R0004 (#7f) -> -(SP)
       PRINT           " on his back."
L0036: NEW_LINE        
       RTRUE           
L0037: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#09 [FALSE] L0038
       CALL            R0297 (#1a) -> -(SP)
       RET_POPPED      
L0038: JE              G4c,#0b [FALSE] L0039
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0039: JE              G4c,#0d [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      

Routine R0553, 0 locals ()

       INSERT_OBJ      "trade card",G00
       INSERT_OBJ      "ransom note",G00
       STORE           Gbd,#b8
       PRINT           "With much pain, slowness, and remorse, the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " retrieves what looks to be a "
       CALL            R0004 (#9e) -> -(SP)
       PRINT           " and a "
       CALL            R0004 (#b8) -> -(SP)
       PRINT           " out of the inner lining of his "
       CALL            R0004 (#9b) -> -(SP)
       PRINT           " and lays them on the "
       CALL            R0004 (#d7) -> -(SP)
       PRINT_RET       "."

Routine R0554, 1 local (0000)

       JZ              Gc4 [TRUE] L0001
       PRINT           "Over next to the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           ", you can see the rumpled form of the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " lying in the "
       CALL            R0004 (#d7) -> -(SP)
       PRINT           "."
       RTRUE           
L0001: PRINT           "The "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " is here."
       RTRUE           

Routine R0555, 0 locals ()

       JE              G7a,#82,#81,#44 [TRUE] L0001
       JE              G7a,#6c [FALSE] L0002
L0001: JE              G00,#57 [FALSE] L0002
       JZ              Gc4 [TRUE] L0002
       PRINT           "You're unable to search the coat thoroughly, since the
"
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       " is wearing it."
L0002: JE              G00,#01 [FALSE] L0004
       CALL            R0339 (#9b) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       JE              G7a,#44 [FALSE] L0004
L0003: CALL            R0346 (#99) -> -(SP)
       RET_POPPED      
L0004: JE              G00,#57 [FALSE] L0006
       JZ              Gc4 [FALSE] L0006
       JE              G7a,#2c,#6c,#44 [TRUE] L0005
       JE              G7a,#6f,#81 [FALSE] L0006
L0005: CALL            R0011 (#75,#2e) -> -(SP)
       RTRUE           
L0006: JE              G7a,#2c [FALSE] L0007
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#3b [FALSE] L0008
       JE              Gc6,#9b [FALSE] L0008
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0008: JE              G7a,#6c,#7e,#75 [FALSE] RFALSE
       JZ              Gc4 [TRUE] L0009
       PRINT_RET       "It's harder than trying to husk an ear of corn; you
finally give up."
L0009: CALL            R0003 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0556, 0 locals ()

       CALL            R0499 (#b8) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             "trade card",#4c [FALSE] L0001
       CALL            R0347 (#b8) -> -(SP)
       RET_POPPED      
L0001: JE              G00,#01 [FALSE] L0002
       JIN             "trade card","detective" [FALSE] L0002
       PRINT_RET       "It's out of your sight."
L0002: JE              G7a,#2e [FALSE] L0003
       JE              #54,G6a,Gc6 [FALSE] L0003
       PRINT           "The girl depicted on the "
       CALL            R0004 (#b8) -> -(SP)
       PRINT           " indeed appears as an idealized portrait of "
       CALL            R0004 (#54) -> -(SP)
       PRINT_RET       "."
L0003: JE              G7a,#2e [FALSE] L0004
       JE              #55,G6a,Gc6 [FALSE] L0004
       PRINT           "It looks like the same "
       CALL            R0004 (#55) -> -(SP)
       PRINT_RET       "."
L0004: JE              G7a,#42 [FALSE] RFALSE
       CALL            R0557 (#b8) -> -(SP)
       RET_POPPED      

Routine R0557, 1 local (0000)

       PRINT           "[A replica of"
       CALL            R0302 (L00,#01) -> -(SP)
       PRINT_RET       " is included in your Ballyhoo package.]"

Routine R0558, 0 locals ()

       CALL            R0499 (#9e) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             "ransom note",#4c [FALSE] L0001
       CALL            R0347 (#9e) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#42,#7d [FALSE] RFALSE
       CALL            R0008 -> -(SP)
       PRINT           "The note is made from letters clipped out of a
newspaper. It reads:"
       NEW_LINE        
       NEW_LINE        
       PRINT           "        thE kId iS sAFe aND sOUnD.

        FOr nOw. DoNT leaVe TowN

        WItHOut HeR -

        staY tuNeD foR deTaILs"
       NEW_LINE        
       CALL            R0009 -> -(SP)
       RET_POPPED      

Routine R0559, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       CALL            R0583 -> -(SP)
       NEW_LINE        
       PRINT_RET       "At the northern border of the camp there is a pleated
canvas wall, on either side of which runs the fence that was meant to keep you
out. To the south, you see the long side of a dilapidated trailer, which sits
off-kilter."
L0001: JE              L00,#01 [FALSE] RFALSE
       CALL            R0560 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0560, 0 locals ()

       JE              G7a,#a2 [FALSE] RFALSE
       JIN             "Comrade Thumb","it" [FALSE] L0001
       JE              G00,#5e,#c9 [FALSE] L0001
       JE              G29,#1f [FALSE] L0001
       CALL            R0561 (#db) -> -(SP)
       RET_POPPED      
L0001: JIN             "Chelsea","it" [FALSE] RFALSE
       JE              G00,#c9 [FALSE] L0002
       JE              G29,#19,#1d [TRUE] L0004
L0002: JE              G00,#04 [FALSE] L0003
       JE              G29,#1d [FALSE] L0004
L0003: JE              G00,#94 [FALSE] RFALSE
       JE              G29,#1b [TRUE] RFALSE
L0004: CALL            R0561 (#54) -> -(SP)
       RET_POPPED      

Routine R0561, 1 local (0000)

       JE              L00,#db [FALSE] L0001
       CALL            R0004 (#db) -> -(SP)
       PRINT           " gets restless in your arms"
       JUMP            L0002
L0001: CALL            R0004 (#54) -> -(SP)
       PRINT           " looks afraid"
L0002: PRINT_RET       " when you start that way so you stop."

Routine R0562, 0 locals ()

       JE              G7a,#42 [FALSE] L0003
       CALL            R0002 (#a6b4) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0355 ("shadow") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_RET       "Very ominous."
L0001: TEST_ATTR       "canvas wall",#0c [TRUE] L0002
       JE              G00,#01 [TRUE] RFALSE
L0002: PRINT           "The "
       CALL            R0004 (#d2) -> -(SP)
       PRINT_RET       " is deeply shadowed by its many pleats."
L0003: JE              G00,#5e [FALSE] L0005
       JE              G7a,#69,#7a,#6c [TRUE] L0004
       JE              G7a,#68,#44,#61 [FALSE] L0005
L0004: PRINT_RET       "One pleat opens up to reveal more darkly shadowed
pleats."
L0005: JE              G7a,#2a,#1c,#14 [TRUE] L0006
       JE              G7a,#2b [FALSE] RFALSE
L0006: JE              G00,#5e,#01 [FALSE] RFALSE
       JE              G00,#5e [TRUE] L0007
       TEST_ATTR       "canvas wall",#0c [FALSE] L0010
L0007: TEST_ATTR       "canvas wall",#0c [TRUE] L0008
       ADD             G01,#0a -> G01
L0008: CALL            R0525 -> -(SP)
       SET_ATTR        "canvas wall",#0c
       JE              G00,#5e [FALSE] L0009
       CALL            R0284 (#01) -> -(SP)
       RET_POPPED      
L0009: CALL            R0284 (#5e) -> -(SP)
       RET_POPPED      
L0010: PRINT           "This side of the tent is too dark and shadowy to make
out the confines of the "
       CALL            R0004 (#d2) -> -(SP)
       PRINT_RET       "."

Routine R0563, 0 locals ()

       RET             #34

Routine R0564, 0 locals ()

       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " appears securely bound here."

Routine R0565, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       CALL            R0583 -> -(SP)
       NEW_LINE        
       PRINT           "At the eastern end of the camp sits one lone "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       "."
L0001: JE              L00,#01 [FALSE] L0002
       CALL            R0560 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G7a,#9e [FALSE] RFALSE
       JE              G80,#64 [FALSE] RFALSE
       JIN             "Jenny",#32 [FALSE] RFALSE
       PRINT_RET       "It doesn't appear the meeting is about to start soon."
L0002: JE              L00,#02 [FALSE] RFALSE
       TEST_ATTR       "cigarette case",#12 [FALSE] RFALSE
       TEST_ATTR       "ribbon",#12 [FALSE] RFALSE
       TEST_ATTR       "spreadsheet",#12 [FALSE] RFALSE
       JZ              G45 [FALSE] RFALSE
       JZ              Gc1 [TRUE] RFALSE
       JZ              G15 [TRUE] RFALSE
       STORE           G80,#00
       INSERT_OBJ      "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","Chuckles"
       INSERT_OBJ      "dirty rag","Chuckles"
       CALL            R0013 (#bff5,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "Chuckles","Camp, East"
       RTRUE           

Routine R0566, 0 locals ()

       CALL            R0337 (#da) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           ""Was ist das!""
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#10 [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      

Routine R0567, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       CALL            R0568 -> -(SP)
       CALL            R0002 (#b5a8) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       INSERT_OBJ      "Gottfried Wilhelm von Katzenjammer",#32
       CALL            R0013 (#b5a8,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0001: JE              L00,#03 [FALSE] RFALSE
       PRINT           "These quarters are furnished in a foreigner's vision of
American Rugged Individualism. "
       TEST_ATTR       "moose head",#06 [FALSE] L0002
       PRINT           "The head of a moose, for example, hangs as a trophy
against"
       JUMP            L0003
L0002: PRINT           "There's an opening to a "
       CALL            R0004 (#7b) -> -(SP)
       PRINT           " in"
L0003: PRINT           " one wall. Against the west wall the door stands "
       CALL            R0358 (#ef) -> -(SP)
       PRINT           " and a gaily decorated "
       CALL            R0004 (#52) -> -(SP)
       TEST_ATTR       "curtain",#0f [FALSE] L0004
       PRINT           " is open at"
       JUMP            L0005
L0004: PRINT           " covers"
L0005: PRINT           " the "
       CALL            R0004 (#13) -> -(SP)
       PRINT_RET       "."

Routine R0568, 0 locals ()

       PRINT           "You step up into the trailer."
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0569, 0 locals ()

       JE              G7a,#75,#6a,#68 [TRUE] L0001
       JE              G7a,#62 [FALSE] L0002
L0001: TEST_ATTR       "moose head",#06 [FALSE] L0002
       CLEAR_ATTR      "moose head",#06
       CLEAR_ATTR      "crawl space",#13
       PRINT           "The "
       CALL            R0004 (#63) -> -(SP)
       PRINT           " drops to the floor with a loud thud, revealing an
opening, about one foot square, to a "
       CALL            R0004 (#7b) -> -(SP)
       PRINT_RET       "."
L0002: JE              G7a,#3c,#3b [FALSE] L0003
       JE              Gc6,#53 [FALSE] L0003
       JE              G00,#e2 [FALSE] L0003
       PRINT           "It won't reattach to the "
       CALL            R0004 (#53) -> -(SP)
       PRINT_RET       "."
L0003: JE              G7a,#37 [FALSE] RFALSE
       PRINT_RET       "It's very very dry, undrinkably so."

Routine R0570, 0 locals ()

       JE              G7a,#44 [FALSE] L0001
       PRINT_RET       "It is completely dark inside the opening."
L0001: JE              G7a,#79 [FALSE] L0003
       JIN             "Chelsea",G00 [FALSE] L0002
       CALL            R0011 (#75,#54) -> -(SP)
       RTRUE           
L0002: CALL            R0343 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#42 [FALSE] L0004
       PRINT_RET       "The square hole is about a foot wide."
L0004: JE              G7a,#3c [FALSE] L0005
       JE              G6a,#63 [FALSE] L0005
       CALL            R0011 (#3c,#63,#53) -> -(SP)
       RTRUE           
L0005: JE              G7a,#3b [FALSE] L0010
       JE              G6a,#54 [TRUE] RFALSE
       GET_PROP        G6a,#0d -> -(SP)
       JL              (SP)+,#4b [FALSE] L0009
       SET_ATTR        G6a,#13
       INSERT_OBJ      G6a,"crawl space"
       JE              G6a,#db [FALSE] L0006
       CALL            R0013 (#b5a8,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "A wide-eyed "
       CALL            R0004 (#db) -> -(SP)
       PRINT           " goes easily through the opening and"
       JUMP            L0007
L0006: PRINT           "As you release"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " it"
L0007: PRINT           " drops to the floor on the other side of the wall. "
       JIN             "Chelsea",#32 [FALSE] L0008
       JZ              Gb1 [FALSE] L0008
       CALL            R0314 -> -(SP)
       RTRUE           
L0008: NEW_LINE        
       RTRUE           
L0009: PRINT           "It doesn't fit."
       NEW_LINE        
       RTRUE           
L0010: JE              G7a,#2a,#40,#1c [FALSE] RFALSE
       PRINT_RET       "Despite your writhing and squirming at the opening, it
would seem only a contortionist or a Houdini would fit through it."

Routine R0571, 0 locals ()

       JE              G7a,#1c,#2c,#6c [TRUE] L0001
       JE              G7a,#2a [FALSE] L0002
L0001: PRINT_RET       "It refuses to budge."
L0002: JE              G7a,#44 [FALSE] RFALSE
       TEST_ATTR       "curtain",#0f [FALSE] L0004
       PRINT_PADDR     G7c
       JE              G00,#c9 [FALSE] L0003
       PRINT           " the inside of the trailer."
       JUMP            L0005
L0003: PRINT           " the performers' camp."
       JUMP            L0005
L0004: PRINT           "The "
       CALL            R0004 (#52) -> -(SP)
       PRINT           "s are drawn over the "
       CALL            R0004 (#13) -> -(SP)
       PRINT           "."
L0005: NEW_LINE        
       RTRUE           

Routine R0572, 0 locals ()

       CALL            R0339 (#52) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G00,#c9 [FALSE] L0001
       PRINT           "The "
       CALL            R0004 (#52) -> -(SP)
       PRINT_RET       "s are inside the trailer, hence unreachable."
L0001: JE              G7a,#42 [FALSE] RFALSE
       PRINT           "The "
       TEST_ATTR       "curtain",#0f [FALSE] L0002
       PRINT           "open "
       JUMP            L0003
L0002: PRINT           "closed "
L0003: CALL            R0004 (#52) -> -(SP)
       PRINT_RET       " is decorated with little Wild West scenes: cowboys
mowing down buffalo, gunfights, and the like."

Routine R0573, 0 locals ()

       JE              G7a,#42 [FALSE] L0006
       JE              G00,#c9 [FALSE] L0005
       PRINT           "The "
       CALL            R0004 (#ab) -> -(SP)
       PRINT           " with its chalky aluminum siding has all the charm of a
generic beer can. In contrast, a garishly painted sign hangs over both the
door, which is"
       TEST_ATTR       "trailer door",#0f [FALSE] L0001
       PRINT           " open"
       JUMP            L0002
L0001: PRINT           " closed"
L0002: PRINT           ", and a window. Built into the side of the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT           " is "
       TEST_ATTR       "compartment",#0f [FALSE] L0003
       PRINT           "an open "
       JUMP            L0004
L0003: PRINT           "some kind of baggage "
L0004: CALL            R0004 (#d5) -> -(SP)
       PRINT_RET       "."
L0005: CALL            R0170 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#2a,#1c,#40 [FALSE] L0008
       JE              G00,#e2 [FALSE] L0007
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0007: CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0008: JE              G7a,#44 [FALSE] L0010
       JE              G00,#e2 [FALSE] L0009
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0009: CALL            R0011 (#44,#13) -> -(SP)
       RTRUE           
L0010: CALL            R0339 (#ab) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       JIN             "Chuckles",G00 [FALSE] L0011
       CALL            R0011 (#57,#ef) -> -(SP)
       RTRUE           
L0011: JE              G7a,#9c,#2c,#6c [TRUE] L0012
       JE              G7a,#5c [FALSE] RFALSE
L0012: CALL            R0011 (G7a,#ef,Gc6) -> -(SP)
       RTRUE           

Routine R0574, 0 locals ()

       JE              G7a,#42,#7d [FALSE] RFALSE
       CALL            R0008 -> -(SP)
       PRINT           "               Home Of
  "
       CALL            R0004 (#da) -> -(SP)
       PRINT           "

     KATZENJAMMER OF THE BIG CATS
"
       CALL            R0009 -> -(SP)
       RET_POPPED      

Routine R0575, 0 locals ()

       CALL            R0339 (#ef) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JIN             "Chuckles",G00 [FALSE] L0001
       CALL            R0004 (#71) -> -(SP)
       PRINT           " shields the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       " from you. "Keep away. The liquid hasn't dried yet.""
L0001: JE              G7a,#62,#2c [FALSE] L0002
       JE              G00,#e2 [FALSE] L0002
       JIN             "crowbar",#32 [FALSE] L0002
       CLEAR_ATTR      "trailer door",#0f
       INSERT_OBJ      "crowbar",G00
       STORE           Gbd,#93
       PRINT           "As the "
       CALL            R0004 (#ef) -> -(SP)
       PRINT           " is closed, you notice a "
       CALL            R0004 (#93) -> -(SP)
       PRINT_RET       " leaning against the wall, where it looks more like a
weapon than a tool."
L0002: JE              G7a,#57 [FALSE] RFALSE
       JIN             "Gottfried Wilhelm von Katzenjammer","Inside Trailer"
[FALSE] RFALSE
       JZ              G45 [TRUE] RFALSE
       PRINT_PADDR     G7c
       PRINT           " the "
       CALL            R0004 (#52) -> -(SP)
       PRINT           "s part slightly and then "
       TEST_ATTR       "veil",#14 [FALSE] L0003
       TEST_ATTR       "dress-suit combination",#14 [FALSE] L0003
       TEST_ATTR       "shawl-jacket combo",#14 [FALSE] L0003
       SET_ATTR        "curtain",#0f
       SET_ATTR        "trailer door",#0f
       CLEAR_ATTR      "trailer door",#0a
       CLEAR_ATTR      "trailer door",#0c
       SET_ATTR        "Gottfried Wilhelm von Katzenjammer",#06
       INSERT_OBJ      "Gottfried Wilhelm von Katzenjammer",G00
       CALL            R0013 (#b5a8,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "you hear through the window a hushed voice with a thick
German accent.
  
"Andrew, where is Eddie?! And Willie! We must talk over what to do. I go now
and bring back them, and the "
       CALL            R0004 (#62) -> -(SP)
       PRINT           " too. You be guarding in here, when I will come back."

The "
       CALL            R0004 (#ef) -> -(SP)
       PRINT           " swings inward, and out of the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT           " steps the robust personage of the "
       CALL            R0004 (#da) -> -(SP)
       PRINT_RET       "."
L0003: SET_ATTR        "trailer door",#0c
       CALL            R0013 (#b5a8,#0a) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "draw closed."

Routine R0576, 0 locals ()

       INC             Gb7
       JE              G00,#e1 [FALSE] L0003
       JE              Gb7,#02 [FALSE] L0001
       NEW_LINE        
       PRINT           "Down below, oblivious of your plight, all of the circus
folk are making noises of mutual forgiveness and reconciliation in the new
spirit of togetherness brought on by the dramatic, emotionally charged rescue
of "
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       "'s daughter."
L0001: JE              Gb7,#03 [FALSE] L0002
       NEW_LINE        
       PRINT_RET       "You can feel your grip loosen as the crowd below
continues its orgy of feeling."
L0002: JE              Gb7,#04 [FALSE] RFALSE
       PRINT           "Your sweaty hands slip off the wire."
       CALL            R0350 (#0e) -> -(SP)
       PRINT           "The story of your evening's heroic deeds must have just
been passed among the circus people below, because you feel the sudden pressure
of your shoulders sinking deeply into the "
       CALL            R0004 (#03) -> -(SP)
       PRINT           " and with a rousing chorus of "Hip hip hooray!" you are
flung back high into the air, where you view the smiling upturned faces of your
circle of boosters.

You float back down and on the second blast-off -- "Hip hip hooray!" -- you
pass out, not so much from the acceleration as from the sheer exhilaration of
having saved The Traveling Circus That Time Forgot, Inc."
       NEW_LINE        
       CALL            R0088 -> -(SP)
       RET_POPPED      
L0003: JIN             "roustabout",#32 [FALSE] L0004
       CALL            R0013 (#b37f,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "roustabout","Performance Ring"
       INSERT_OBJ      "safety net","Mr. Munrab"
       INSERT_OBJ      "Comrade Thumb","Performance Ring"
       SET_ATTR        "Comrade Thumb",#06
       SET_ATTR        "roustabout",#06
       JE              G00,#83 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#62) -> -(SP)
       PRINT           " comes sprinting through the wings with the "
       CALL            R0004 (#03) -> -(SP)
       PRINT           " slung over his shoulder and the midget "
       CALL            R0004 (#db) -> -(SP)
       PRINT           " in tow. "
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " and his two employees each grab part of the net, and
they try to position it directly under the imperiled little girl."
L0004: JE              G00,#83 [FALSE] L0005
       TEST_ATTR       "radio dial",#0c [FALSE] L0005
       JZ              G84 [FALSE] L0005
       INSERT_OBJ      "Gottfried Wilhelm von Katzenjammer",G00
       INSERT_OBJ      "Andrew",G00
       INSERT_OBJ      "Jenny",G00
       INSERT_OBJ      "Andrew Jenny",G00
       INSERT_OBJ      "Chuckles",G00
       INSERT_OBJ      "Rimshaw the Incomparable",G00
       INSERT_OBJ      "Billy Monday",G00
       INSERT_OBJ      "group",G00
       STORE           G84,#01
       SET_ATTR        "Andrew Jenny",#06
       SET_ATTR        "Billy Monday",#06
       SET_ATTR        "Rimshaw the Incomparable",#06
       SET_ATTR        "Chuckles",#06
       NEW_LINE        
       PRINT           "Just now a gaggle of circus performers -- "
       CALL            R0550 -> -(SP)
       PRINT_RET       "-- appear through the wings. Quickly assessing the
situation, the group seems to suddenly, gut-wrenchingly accept the burden of
responsibility for the calamity that has occurred. Their immediate reaction is
the instinct to help, and each grabs part of the net."
L0005: JIN             "safety net","Mr. Munrab" [FALSE] RFALSE
       JE              G00,#83 [FALSE] RFALSE
       CALL            R0013 (#b37f,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       PRINT           "Munrab & Company, their faces anxiously upturned, are
pulling the "
       CALL            R0004 (#03) -> -(SP)
       PRINT_RET       "  every which way, kicking sawdust from one end of the
ring to the other."

Routine R0577, 0 locals ()

       TEST_ATTR       "trailer door",#0c [FALSE] L0001
       CLEAR_ATTR      "trailer door",#0c
       RFALSE          
L0001: JE              G00,#e2 [FALSE] L0002
       JIN             "Comrade Thumb","crawl space" [FALSE] L0002
       JIN             "Chelsea",#32 [FALSE] L0002
       CALL            R0013 (#b5a8,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G6b,#00
       SET_ATTR        "Chelsea",#0c
       NEW_LINE        
       PRINT           "Coming from the other side of the wall is a scurrying
noise. Then "
       CALL            R0578 -> -(SP)
       RTRUE           
L0002: CALL            R0013 (#b5a8,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INC             G6b
       JIN             "Chelsea",#32 [TRUE] L0005
       TEST_ATTR       "Chelsea",#0c [FALSE] L0005
       JE              G00,#e2 [FALSE] L0005
       JE              G6b,#01,#03 [FALSE] L0004
       INSERT_OBJ      "Chelsea","crawl space"
       NEW_LINE        
       PRINT           "The girl drops out of view"
       JE              G6b,#03 [FALSE] L0003
       PRINT           "; you hear foot-stomping from inside the "
       CALL            R0004 (#7b) -> -(SP)
       PRINT           " and then a long silence"
L0003: PRINT_PADDR     G5d
       RTRUE           
L0004: JE              G6b,#02 [FALSE] RTRUE
       CALL            R0578 (#01) -> -(SP)
       RTRUE           
L0005: JE              G6b,#02 [FALSE] RFALSE
       JIN             "Chelsea",#32 [FALSE] RFALSE
       INSERT_OBJ      "Gottfried Wilhelm von Katzenjammer",#32
       JE              G00,#c9 [FALSE] RFALSE
       CLEAR_ATTR      "trailer door",#0f
       SET_ATTR        "trailer door",#0a
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4c,#10
       CLEAR_ATTR      "curtain",#0f
       NEW_LINE        
       CALL            R0004 (#da) -> -(SP)
       PRINT           ", with a confused look on his face, stares at you as if
he'd never seen a sideshow freak in his life."
       TEST_ATTR       "veil",#14 [FALSE] L0006
       PRINT           " He peels back your veil,"
       JUMP            L0007
L0006: PRINT           " He"
L0007: PRINT           " shoves you to the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           ", and steps up into the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT           ". You bring "
       CALL            R0004 (#1d) -> -(SP)
       PRINT_RET       " to your feet."

Routine R0578, 1 local (0000)

       INSERT_OBJ      "Chelsea",G00
       JZ              L00 [TRUE] L0001
       NEW_LINE        
       PRINT           "Once again "
L0001: PRINT           "you can hear the strained voice of "
       CALL            R0004 (#db) -> -(SP)
       PRINT           " cursing in Russian as he gives a boost to his human
cargo. "
       JZ              L00 [TRUE] L0002
       NEW_LINE        
       PRINT_RET       "The girl is held precariously up to the opening."
L0002: NEW_LINE        
       NEW_LINE        
       PRINT_RET       "Slowly rising into view through the opening comes the
expressionless face of the missing girl, framed by her tousled and ribbonless
hair, seeming too tired to be frightened.

She pauses there for an instant, a portrait of innocence within a jagged
plywood frame."

Routine R0579, 0 locals ()

       JE              G7a,#4b [FALSE] L0001
       JIN             "Chelsea",#32 [FALSE] L0001
       JZ              Gb1 [TRUE] L0001
       PRINT           "You don't hear the "
       CALL            R0004 (#7e) -> -(SP)
       PRINT_RET       " now."
L0001: JE              G7a,#42 [FALSE] L0002
       PRINT_RET       "She looks exhausted, but also somehow strengthened by
her travails this evening."
L0002: CALL            R0337 (#54) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       JIN             "Chelsea","Mahler" [FALSE] L0003
       STORE           Gaf,#d3
       CALL            R0011 (#0e,#09) -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: PRINT           "The girl merely looks at you with frightened eyes. She
has learned her lesson about not talking to strangers."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#75 [FALSE] L0005
       TEST_ATTR       "Chelsea",#0c [FALSE] L0005
       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0005
       CALL            R0014 (#b5a8) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0013 (#b819,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "Comrade Thumb",#32
       ADD             G01,#0a -> G01
       STORE           G4c,#0a
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CLEAR_ATTR      "Comrade Thumb",#13
       CLEAR_ATTR      "Chelsea",#0c
       CLEAR_ATTR      "cage door",#0f
       SET_ATTR        "cage door",#0a
       PRINT           "You hoist the girl from out of the "
       CALL            R0004 (#7b) -> -(SP)
       PRINT           ". "
       CALL            R0004 (#db) -> -(SP)
       PRINT           ", exhilarated by the rescue, climbs out of the opening
unassisted, and then exits the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       "."
L0005: JE              G7a,#85,#47 [FALSE] L0006
       JE              G6a,#b8 [FALSE] L0006
       PRINT_RET       ""That's me," she says."
L0006: JE              G7a,#97,#3b,#3a [TRUE] L0007
       JE              G7a,#47 [FALSE] L0010
L0007: JE              G6a,#54 [FALSE] L0010
       JZ              Gc6 [TRUE] L0008
       TEST_ATTR       Gc6,#16 [FALSE] L0008
       PRINT           "She resists"
       JUMP            L0009
L0008: PRINT           "With fear in her eyes, she resists your abandonment"
L0009: PRINT_PADDR     G5d
       RTRUE           
L0010: JE              G7a,#3c,#47 [FALSE] L0011
       JE              Gc6,#54 [TRUE] L0012
L0011: JE              G7a,#99 [FALSE] L0014
       JE              G6a,#55 [FALSE] L0014
L0012: PRINT           "Understandably, "
       CALL            R0004 (#54) -> -(SP)
       PRINT           " is reluctant to accept gifts from strangers"
       JE              G6a,#55 [FALSE] L0013
       PRINT           ", even her own "
       CALL            R0004 (#55) -> -(SP)
L0013: PRINT_PADDR     G5d
       RTRUE           
L0014: CALL            R0339 (#54) -> -(SP)
       JZ              (SP)+ [TRUE] L0015
       JIN             "Chelsea","Mahler" [FALSE] L0015
       CALL            R0346 (#54) -> -(SP)
       RET_POPPED      
L0015: JE              G7a,#4e [FALSE] L0016
       PRINT_PADDR     G0b
       NEW_LINE        
       RTRUE           
L0016: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#09 [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      

Routine R0580, 0 locals ()

       JE              G00,#94 [FALSE] L0001
       JIN             "Mr. Munrab","Office" [FALSE] L0001
       JIN             "Chelsea","it" [FALSE] L0001
       CLEAR_ATTR      "office door",#0a
       SET_ATTR        "office door",#0f
       INSERT_OBJ      "Mr. Munrab","Menagerie"
       SET_ATTR        "Mr. Munrab",#06
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           Gbd,#92
       STORE           G4c,#08
       NEW_LINE        
       PRINT           "As you approach the "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#92) -> -(SP)
       PRINT           " steps down from inside his office and, as his eyes
fall upon the figure of you carrying the only bit of preciousness in his life,
it's as if he were jolted by an "
       CALL            R0004 (#61) -> -(SP)
       PRINT_RET       ". For an instant, his confused mind appears to be
sending him strong fight-or-flight messages, for suddenly he dashes off through
the hole in the fence."
L0001: JIN             "Mr. Munrab","Menagerie" [FALSE] RFALSE
       JE              G00,#94 [FALSE] L0002
       NEW_LINE        
       PRINT           "The little girl begins whining at you to follow her
father, and off you go."
       NEW_LINE        
       NEW_LINE        
       CALL            R0284 (#af) -> -(SP)
L0002: CALL            R0014 (#b819) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0013 (#b37f,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4c,#09
       STORE           G93,#01
       STORE           Gce,#01
       INSERT_OBJ      "roustabout","Performance Ring"
       INSERT_OBJ      "Mr. Munrab","Performance Ring"
       INSERT_OBJ      "Chelsea","Mahler"
       INSERT_OBJ      "detective",#32
       INSERT_OBJ      "Mahler",#32
       CLEAR_ATTR      "Mr. Munrab",#06
       CLEAR_ATTR      "Performance Ring",#12
       CLEAR_ATTR      "Clown Alley",#12
       SET_ATTR        "Chelsea",#06
       SET_ATTR        "Mahler",#06
       NEW_LINE        
       CALL            R0004 (#92) -> -(SP)
       PRINT           ", standing here desperate and alone in the middle of
the menagerie, is calling out in every direction for the detective.

The sotted sleuth comes staggering in from the midway, and "
       CALL            R0004 (#92) -> -(SP)
       PRINT           ", pointing confidently at you, delivers the order,
"There is the perpetrator. Shoot "
       CALL            R0679 (S212,S213) -> -(SP)
       PRINT           "." As the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " stumbles toward you, your ears are pierced by "
       CALL            R0004 (#54) -> -(SP)
       PRINT           " screaming at the top of her lungs, and then by the
screech of bending metal. Suddenly, you're blindsided by a wall of bristly
animal fur which knocks you to the ground. You get up dazed, and see "
       CALL            R0004 (#92) -> -(SP)
       PRINT_RET       " chasing a giant ape to the north while the detective
slinks away through the hole in the fence."

Routine R0581, 0 locals ()

       JE              G7a,#45,#4a,#4b [FALSE] L0001
       JZ              Gb1 [TRUE] L0001
       CALL            R0011 (#4b,#54) -> -(SP)
       RTRUE           
L0001: CALL            R0347 (#7e) -> -(SP)
       RET_POPPED      

Routine R0582, 0 locals ()

       CALL            R0339 (#d5) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JIN             "Chuckles",G00 [FALSE] RFALSE
       CALL            R0011 (#57,#ef) -> -(SP)
       RET_POPPED      

Routine R0583, 0 locals ()

       PRINT           "You're in the "
       JE              G00,#5e [FALSE] L0001
       PRINT           "west"
       JUMP            L0002
L0001: PRINT           "east"
L0002: PRINT_RET       " end of the performers' camp. It is unevenly lighted by
a number of glaring spotlights which ring the camp, creating a stage-like
patchwork of light and dark."

Routine R0584, 0 locals ()

       JE              #db,Gaf [FALSE] L0002
       JE              G7a,#4c [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#db) -> -(SP)
       STORE           Gaf,#db
       RTRUE           
L0001: JE              G7a,#93 [FALSE] RFALSE
       JE              G6a,#1d [FALSE] RFALSE
       STORE           Gaf,#d3
       CALL            R0011 (#16,#db,#1d) -> -(SP)
       STORE           Gaf,#db
       RTRUE           
L0002: JE              G7a,#a7,#4c [FALSE] L0003
       PRINT_RET       "He gives you a slow and dramatic wave, as if to a great
audience."
L0003: CALL            R0337 (#db) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       CALL            R0002 (#9d) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0011 (#7a,#71) -> -(SP)
       RTRUE           
L0004: PRINT           "Unable to comprehend what you're saying, he shrugs his
shoulders."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#42 [FALSE] L0006
       CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT_RET       "He rolls his eyes back in a theatrical way."
L0006: JE              G7a,#4b [FALSE] L0007
       JE              Gbf,#04 [FALSE] L0007
       CALL            R0292 (#db) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       PRINT_RET       "It's certainly not the hit parade."
L0007: JE              G7a,#97,#47,#3a [TRUE] L0008
       JE              G7a,#3b [FALSE] L0012
L0008: JE              G6a,#db [FALSE] L0012
       JE              Gc6,#7b [TRUE] L0012
       PRINT           "He squirms out of your hold"
       JE              G00,#e2 [FALSE] L0009
       TEST_ATTR       "trailer door",#0f [TRUE] L0009
       SET_ATTR        "trailer door",#0f
       PRINT           ", opens the door,"
L0009: CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       PRINT           " and flees into the night"
       INSERT_OBJ      "Comrade Thumb",#32
       JUMP            L0011
L0010: STORE           Gbf,#07
       INSERT_OBJ      "Comrade Thumb",G00
L0011: PRINT_PADDR     G5d
       RTRUE           
L0012: JE              G7a,#70,#69 [FALSE] L0013
       JZ              Gc6 [TRUE] L0014
L0013: JE              G7a,#69 [FALSE] L0016
       JE              Gc6,#5a,#16 [FALSE] L0016
L0014: CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [TRUE] L0015
       STORE           G2b,#01
       PRINT           "Once elevated, "
       CALL            R0586 -> -(SP)
       CALL            R0591 -> -(SP)
       RET_POPPED      
L0015: CALL            R0011 (#75,#db) -> -(SP)
       RTRUE           
L0016: JE              G00,#e8 [FALSE] L0020
       CALL            R0341 (#db) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       PRINT           "Curious, the "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " peeks under the "
       CALL            R0004 (#5f) -> -(SP)
       PRINT           " and flushes "
       CALL            R0004 (#db) -> -(SP)
       PRINT           ", who sprints through the "
       CALL            R0004 (#d4) -> -(SP)
       PRINT           ". "
       CALL            R0728 -> -(SP)
       RET_POPPED      
L0017: JE              G7a,#42 [FALSE] RFALSE
       TEST_ATTR       "blackjack table",#0c [FALSE] L0018
       JE              G00,#e8 [FALSE] L0018
       CALL            R0011 (#7a,#db) -> -(SP)
       RTRUE           
L0018: CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       JE              G00,#9d [FALSE] L0019
       JZ              G2b [TRUE] L0019
       PRINT_RET       "He winks at you and flashes a smile."
L0019: SET_ATTR        "blackjack table",#0c
       PRINT_PADDR     G7c
       PRINT_RET       " a trembling midget hand pull the tablecloth back
down."
L0020: JE              G7a,#75 [FALSE] L0033
       JE              G6a,#db [FALSE] L0033
       JE              G00,#83 [TRUE] L0021
       CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0025
L0021: PRINT           "He"
       JZ              G2b [TRUE] L0022
       PRINT           "'s had it with the upsy-daisy stuff and"
L0022: JE              G00,#83 [FALSE] L0023
       PRINT           " resists furiously"
       JUMP            L0024
L0023: PRINT           " leans back out of reach"
L0024: PRINT_PADDR     G5d
       RTRUE           
L0025: CALL            R0002 (#bcc9) -> -(SP)
       JZ              (SP)+ [TRUE] L0026
       CALL            R0011 (#69,#db) -> -(SP)
       RTRUE           
L0026: CALL            R0002 (#d5dc) -> -(SP)
       JZ              (SP)+ [FALSE] L0027
       CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0030
       JZ              G2b [FALSE] L0030
L0027: PRINT           "As you reach down, he scampers between your legs"
       CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0028
       CALL            R0002 (#d5dc) -> -(SP)
       JZ              (SP)+ [TRUE] L0029
L0028: PRINT           ", giggling in his strangely high-pitched, compressed
voice"
L0029: PRINT_PADDR     G5d
       RTRUE           
L0030: CALL            R0002 (#8c0d) -> -(SP)
       JZ              (SP)+ [TRUE] L0032
       CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0032
       JG              Gbf,#03 [FALSE] L0031
       STORE           Gbf,#03
L0031: INSERT_OBJ      "flower","Comrade Thumb"
       PRINT_RET       "As you put your hands on the midget, for an instant he
squirms, then, deciding you mean no harm, relaxes in your grip and you're able
to lift him.

You notice him wearing a daisy in the lapel of his uniform."
L0032: CALL            R0274 -> -(SP)
       JE              (SP)+,#01 [FALSE] RTRUE
       PRINT_RET       "You cradle the little performer in your arms and he
allows you to lift him."
L0033: JE              G7a,#68 [FALSE] L0034
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0034: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#01,#0a [FALSE] L0035
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0035: JE              G4c,#02 [FALSE] RFALSE
       JE              G00,#04 [FALSE] L0036
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0036: CALL            R0297 (#19) -> -(SP)
       RET_POPPED      

Routine R0585, 1 local (0000)

       JE              G00,#9d [FALSE] L0001
       CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "Sitting on an upper bunk, with his arms folded and legs
swinging, is Comrade Thumb."
       RTRUE           
L0001: TEST_ATTR       "crowbar",#12 [FALSE] L0002
       PRINT           "Lying perfectly still in the "
       CALL            R0004 (#b9) -> -(SP)
       PRINT           ", yet with his eyes wide open, is "
       CALL            R0004 (#db) -> -(SP)
       PRINT           "."
       RTRUE           
L0002: PRINT           "Comrade Thumb is here."
       RTRUE           

Routine R0586, 0 locals ()

       CALL            R0004 (#db) -> -(SP)
       PRINT           " slurps his fill of "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           ". He then plops down, gives you a quick salute,"
       RTRUE           

Routine R0587, 0 locals ()

       JIN             "uniform","Comrade Thumb" [FALSE] RFALSE
       JE              G7a,#7e,#75 [FALSE] RFALSE
       CALL            R0588 (#db) -> -(SP)
       RET_POPPED      

Routine R0588, 1 local (0000)

       JZ              L00 [TRUE] L0001
       CALL            R0004 (L00) -> -(SP)
       JUMP            L0002
L0001: PRINT           "Tina"
L0002: PRINT_RET       " is not that kind of performer."

Routine R0589, 0 locals ()

       JE              G7a,#6f,#75,#42 [TRUE] L0001
       JE              G7a,#89,#7a [FALSE] RFALSE
L0001: TEST_ATTR       "flower",#0c [FALSE] L0002
       PRINT_RET       "You're not going to fall for that trick twice."
L0002: JE              G7a,#89 [TRUE] L0003
       PRINT           "As you reach for it, t"
       JUMP            L0004
L0003: PRINT           "T"
L0004: SET_ATTR        "flower",#0c
       PRINT           "he daisy spritzes some water in your face, and "
       CALL            R0004 (#db) -> -(SP)
       PRINT_RET       "'s cherubic face lets out a squeal of delight."

Routine R0590, 0 locals ()

       INC             Gd0
       JE              Gd0,#07 [FALSE] L0001
       CALL            R0591 -> -(SP)
       RET_POPPED      
L0001: JE              G00,#39 [FALSE] RFALSE
       NEW_LINE        
       JE              Gd0,#01 [FALSE] L0002
       PRINT           "The last of the crowd just now trickles eastward
through the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           ".

A midget decked out in a Russian general's uniform is standing before"
       JUMP            L0007
L0002: JE              Gd0,#02 [FALSE] L0003
       PRINT           "The little general gets up on his tiptoes in front of"
       JUMP            L0007
L0003: JE              Gd0,#03 [FALSE] L0004
       PRINT           "Attempting to do a pull-up, Comrade Thumb manages to
sprawl himself onto"
       JUMP            L0007
L0004: JE              Gd0,#04 [FALSE] L0005
       PRINT           "Straining his neck to reach the spout, the midget
gropes for the button, loses his grip and plops to the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           " before"
       JUMP            L0007
L0005: JE              Gd0,#05 [FALSE] L0006
       PRINT           "The midget looks up at you sadly, then at"
       JUMP            L0007
L0006: JE              Gd0,#06 [FALSE] L0007
       PRINT           "Comrade Thumb flaps his little arms once in
frustration,"
       CALL            R0591 -> -(SP)
       RFALSE          
L0007: PRINT           " the "
       CALL            R0004 (#5a) -> -(SP)
       PRINT_RET       "."

Routine R0591, 0 locals ()

       INSERT_OBJ      "Comrade Thumb",#32
       CALL            R0014 (#bcc9) -> -(SP)
       STOREW          (SP)+,#00,#00
       INSERT_OBJ      "crowd","Standing Room Only"
       JE              G00,#39 [FALSE] RTRUE
       JL              Gd0,#07 [FALSE] RTRUE
       PRINT           " and waddles off into the darkness."
       NEW_LINE        
       STORE           G4c,#01
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           

Routine R0592, 1 local (0000)

       CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "Chuckles the clown is leaning in front of a mirror,
removing his makeup."
       RTRUE           
L0001: JE              G00,#04 [FALSE] L0004
       PRINT           "A tall and lanky clown in baggy pants trudges out of
the "
       JE              G29,#1d [FALSE] L0002
       CALL            R0004 (#43) -> -(SP)
       JUMP            L0003
L0002: PRINT           "tent"
L0003: PRINT           " and toward the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           ". "
       CALL            R0004 (#db) -> -(SP)
       PRINT           " follows behind."
       RTRUE           
L0004: JE              G00,#c9 [FALSE] RFALSE
       PRINT           "Chuckles is standing, out of costume, in front of the
aluminum trailer."
       JZ              G80 [FALSE] RFALSE
       PRINT           " As you approach, "
       CALL            R0729 (Ga4) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           Ga4,#01
       PRINT           "he glances at you and says, "Pick up an application at
the "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           ", not here.""
       RTRUE           
L0005: PRINT           "he begins polishing away at it."
       RTRUE           

Routine R0593, 0 locals ()

       JE              Gaf,#71 [FALSE] L0004
       JE              G7a,#93 [FALSE] L0001
       JE              G6a,#1d [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#16,#71,Gc6) -> -(SP)
       STORE           Gaf,#71
       RTRUE           
L0001: JE              G7a,#4c [FALSE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#71) -> -(SP)
       STORE           Gaf,#71
       RTRUE           
L0002: JE              G7a,#af [FALSE] L0003
       JE              G6a,#49 [FALSE] L0003
       STORE           Gaf,#d3
       CALL            R0011 (#0e,#49) -> -(SP)
       STORE           Gaf,#71
       RTRUE           
L0003: PRINT_PADDR     G6d
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#93,#16 [FALSE] L0005
       JE              Gc6,#49 [FALSE] L0005
       TEST_ATTR       "Eddie Smaldone",#0c [FALSE] L0005
       CALL            R0011 (#4c,#49) -> -(SP)
       RTRUE           
L0005: CALL            R0337 (#71) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0011 (#7a,#71) -> -(SP)
       RTRUE           
L0006: CALL            R0337 (#71) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       JE              G7a,#0e [TRUE] L0007
       PRINT_PADDR     G6d
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#4a [FALSE] L0010
       JE              G4c,#02 [FALSE] L0008
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0008: JE              G4c,#03 [FALSE] L0009
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0009: JE              G4c,#04 [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0010: JE              G7a,#85,#47 [FALSE] RFALSE
       JE              Gc6,#49,#71 [FALSE] RFALSE
       STORE           Gbd,#71
       JE              G6a,#55 [FALSE] L0013
       TEST_ATTR       "ribbon",#0c [TRUE] L0013
       INC             G97
       SET_ATTR        "ribbon",#0c
       CALL            R0597 -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       RET             #02
L0011: TEST_ATTR       "trade card",#0c [FALSE] L0012
       CALL            R0594 -> -(SP)
       CALL            R0596 -> -(SP)
       RET_POPPED      
L0012: PRINT_RET       ""Never saw it before in my life.""
L0013: JE              G6a,#b8 [FALSE] L0016
       TEST_ATTR       "trade card",#0c [TRUE] L0016
       INC             G97
       SET_ATTR        "trade card",#0c
       CALL            R0597 -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       RET             #02
L0014: TEST_ATTR       "ribbon",#0c [FALSE] L0015
       PRINT           ""That ribbon in her hair looks like yours." He pauses.
"
       CALL            R0594 -> -(SP)
       CALL            R0596 -> -(SP)
       RTRUE           
L0015: PRINT_RET       ""Good product. I'd highly recommend it.""
L0016: JE              G6a,#1b [FALSE] L0019
       TEST_ATTR       "scrap of newsprint",#0c [TRUE] L0019
       SET_ATTR        "scrap of newsprint",#0c
       INC             G97
       CALL            R0004 (#71) -> -(SP)
       PRINT           " looks skeptically at the "
       CALL            R0004 (#1b) -> -(SP)
       PRINT           " while listening to you tell where you found it. "
       CALL            R0597 (#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       RET             #02
L0017: TEST_ATTR       "ransom note",#0c [FALSE] L0018
       CALL            R0599 -> -(SP)
       CALL            R0596 -> -(SP)
       RTRUE           
L0018: NEW_LINE        
       NEW_LINE        
       PRINT_RET       ""Yea, I make paper dolls for the local kids. It's part
of my act. So what?""
L0019: JE              G6a,#9e [FALSE] L0022
       TEST_ATTR       "ransom note",#0c [TRUE] L0022
       SET_ATTR        "ransom note",#0c
       INC             G97
       PRINT           "He reads the "
       CALL            R0004 (#9e) -> -(SP)
       PRINT           ", silently mouthing the words. "
       CALL            R0597 (#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
       RET             #02
L0020: TEST_ATTR       "scrap of newsprint",#0c [FALSE] L0021
       CALL            R0599 -> -(SP)
       CALL            R0596 -> -(SP)
       RTRUE           
L0021: PRINT           "He deadpans, "Fascinating. Don't let the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       " find you with that.""
L0022: JE              G6a,#b0 [FALSE] L0025
       TEST_ATTR       "spreadsheet",#0c [TRUE] L0025
       SET_ATTR        "spreadsheet",#0c
       INC             G97
       PRINT           "Chuckles's eyes dart between the various numbers in the
multiple columns on the "
       CALL            R0004 (#b0) -> -(SP)
       PRINT           ". "
       CALL            R0597 (#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0023
       RET             #02
L0023: JZ              G10 [TRUE] L0024
       PRINT           ""So what? It's tough all over. I don't hold any grudge
against "
       CALL            R0004 (#92) -> -(SP)
       PRINT           ". Hell, I'm just a clown, a happy clown." "
       CALL            R0596 -> -(SP)
       RET_POPPED      
L0024: PRINT_RET       ""I don't know anyone by that name.""
L0025: JE              G6a,#1b,#9e,#b0 [TRUE] L0026
       JE              G6a,#b8,#55 [FALSE] RFALSE
L0026: PRINT_RET       "He ignores it this time."

Routine R0594, 0 locals ()

       PRINT           ""I'd hate to be caught red-handed holding that "
       CALL            R0004 (#55) -> -(SP)
       PRINT           " if I were you." "
       RTRUE           

Routine R0595, 0 locals ()

       INC             G80
       JE              G80,#08 [FALSE] L0001
       INSERT_OBJ      "Chuckles",#32
       JE              G00,#c9 [FALSE] RFALSE
       CALL            R0598 (S214) -> -(SP)
       STORE           G4c,#04
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           " the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       "."
L0001: JE              G00,#c9 [FALSE] RFALSE
       JE              G80,#02,#04,#06 [FALSE] RFALSE
       JE              G7a,#47,#85 [FALSE] L0002
       JE              Gc6,#71 [TRUE] RFALSE
L0002: NEW_LINE        
       CALL            R0004 (#71) -> -(SP)
       PRINT           " dribbles a little Dr. Nostrum's onto his rag and
continues wiping away at the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       "."

Routine R0596, 0 locals ()

       CALL            R0004 (#71) -> -(SP)
       JE              G97,#02 [FALSE] L0001
       PRINT           ", unable to mask his concern,"
       JUMP            L0003
L0001: JE              G97,#03 [FALSE] L0002
       PRINT           ", looking unclownly and perturbed,"
       JUMP            L0003
L0002: JE              G97,#04 [FALSE] L0003
       PRINT           " does a slow burn as he continues cleaning the "
       CALL            R0004 (#ab) -> -(SP)
       PRINT_RET       "."
L0003: PRINT_RET       " applies extra elbow grease to his cleaning."

Routine R0597, 1 local (0000)

       JZ              G10 [TRUE] RFALSE
       TEST_ATTR       "ransom note",#0c [FALSE] RFALSE
       TEST_ATTR       "spreadsheet",#0c [FALSE] RFALSE
       TEST_ATTR       "scrap of newsprint",#0c [FALSE] RFALSE
       TEST_ATTR       "trade card",#0c [FALSE] RFALSE
       TEST_ATTR       "ribbon",#0c [FALSE] RFALSE
       STORE           G45,#01
       CALL            R0014 (#bff5) -> -(SP)
       STOREW          (SP)+,#00,#00
       INSERT_OBJ      "Chuckles",#32
       ADD             G01,#0a -> G01
       JZ              L00 [TRUE] L0001
       NEW_LINE        
       NEW_LINE        
L0001: CALL            R0598 (S215) -> -(SP)
       STORE           G4c,#03
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_PADDR     G5d
       RTRUE           

Routine R0598, 1 local (0000)

       JZ              G45 [TRUE] L0001
       PRINT           "Looking like a clown with a hotfoot, "
L0001: CALL            R0004 (#71) -> -(SP)
       PRINT           " suddenly screws the cap onto the flask of Dr.
Nostrum's and "
       PRINT_PADDR     L00
       RTRUE           

Routine R0599, 0 locals ()

       NEW_LINE        
       NEW_LINE        
       PRINT           ""So you think you've fingered me for this note. Pretty
thin stuff, if you ask me. Besides, I've got no gripes against the bossman.
Why, here I am doing cherry pie in the middle of the night." "
       RTRUE           

Routine R0600, 1 local (0000)

       JE              L00,#03 [FALSE] L0004
       PRINT           "The gut of the trailer exposes the underside of circus
life -- grungy costumes strewn about, crooked and cracked mirrors, the musty
odor of fresh makeup mingled with clown sweat infusing the air.

Against the wall is a row of cramped-looking bunks, and running from the floor
to one "
       CALL            R0004 (#b9) -> -(SP)
       PRINT           " is a small ladder. "
       GET_CHILD       "upper bunk" -> -(SP) [TRUE] L0001
       GET_CHILD       "lower bunk" -> -(SP) [FALSE] L0003
L0001: PRINT_PADDR     G7c
       GET_CHILD       "lower bunk" -> -(SP) [FALSE] L0002
       CALL            R0601 (#6d,#b9) -> -(SP)
       JUMP            L0003
L0002: CALL            R0601 (#b9,#6d) -> -(SP)
L0003: NEW_LINE        
       RTRUE           
L0004: JE              L00,#02 [FALSE] L0005
       CALL            R0568 -> -(SP)
       JZ              G15 [FALSE] RFALSE
       STORE           G15,#01
       STORE           G1d,#00
       CALL            R0013 (#c249,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0005: JE              L00,#01 [FALSE] RFALSE
       CALL            R0001 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G7a,#90,#7e [FALSE] L0006
       JE              G6a,#5d [TRUE] L0007
L0006: TEST_ATTR       "clown mask",#14 [TRUE] L0008
L0007: CLEAR_ATTR      "clown mask",#14
       PRINT           "Y"
       CALL            R0605 -> -(SP)
       RET_POPPED      
L0008: CALL            R0341 (#71) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G4c,#63 [FALSE] L0009
       NEW_LINE        
L0009: PRINT           "Chuckles whirls around, strips you of your disguise and
y"
       CALL            R0605 -> -(SP)
       RET_POPPED      

Routine R0601, 2 locals (0000, 0000)

       CALL            R0280 (L00) -> -(SP)
       PRINT           " sitting on the "
       CALL            R0004 (L00) -> -(SP)
       GET_CHILD       L01 -> -(SP) [FALSE] L0001
       PRINT           ", and"
       CALL            R0280 (L01) -> -(SP)
       PRINT           " on the "
       CALL            R0004 (L01) -> -(SP)
L0001: PRINT           "."
       RTRUE           

Routine R0602, 0 locals ()

       TEST_ATTR       "trailer door",#0f [TRUE] L0001
       PRINT           "The "
       CALL            R0004 (#2c) -> -(SP)
       PRINT           " is closed."
       NEW_LINE        
       RFALSE          
L0001: CALL            R0002 (#c249) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0292 (#d6) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       INSERT_OBJ      "ash tray",#32
       CALL            R0004 (#71) -> -(SP)
       PRINT           " notices a little squirreliness on your part, confronts
you, grabs the "
       CALL            R0004 (#d6) -> -(SP)
       PRINT           ", and throws you out."
       NEW_LINE        
       NEW_LINE        
       RET             #5e
L0002: RET             #5e

Routine R0603, 0 locals ()

       JE              G7a,#42 [FALSE] L0004
       JE              G00,#5e [FALSE] L0003
       PRINT           "It's a vintage model that's seen plenty of bad road.
The door, which is "
       TEST_ATTR       "trailer door",#0f [FALSE] L0001
       PRINT           "open"
       JUMP            L0002
L0001: PRINT           "closed"
L0002: PRINT_RET       ", appears warped."
L0003: CALL            R0170 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#89 [FALSE] L0005
       JE              G00,#9d [FALSE] L0005
       CALL            R0011 (#89) -> -(SP)
       RTRUE           
L0005: JE              G7a,#9c,#2c,#6c [TRUE] L0006
       JE              G7a,#5c [FALSE] L0007
L0006: CALL            R0011 (G7a,#2c,Gc6) -> -(SP)
       RTRUE           
L0007: JE              G7a,#40,#2a,#14 [FALSE] RFALSE
       JE              G00,#5e [FALSE] L0008
       CALL            R0297 (#15) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#9d [FALSE] RFALSE
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           

Routine R0604, 0 locals ()

       TEST_ATTR       "trailer door",#0c [FALSE] L0001
       CLEAR_ATTR      "trailer door",#0c
       RFALSE          
L0001: INC             G1d
       JE              G00,#9d [TRUE] L0002
       TEST_ATTR       "trailer door",#0f [FALSE] L0002
       CALL            R0014 (#c249) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "trailer door",#0f
       SET_ATTR        "trailer door",#0a
       JE              G00,#5e [FALSE] RFALSE
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#2c) -> -(SP)
       PRINT_RET       " is slammed shut."
L0002: JE              G1d,#02 [FALSE] L0004
       STORE           Gbd,#2c
       NEW_LINE        
       PRINT           "Chuckles speaks, "Sorry about the door, Malcom, but
Johnny Tin Plate's out there nosing around."
       TEST_ATTR       "trailer door",#0f [FALSE] L0003
       PRINT           " Close it, will you?"
L0003: PRINT           """
       JUMP            L0009
L0004: JE              G1d,#03 [FALSE] L0005
       JZ              G2b [FALSE] L0005
       NEW_LINE        
       CALL            R0004 (#db) -> -(SP)
       PRINT           " mutters something in Russian to Chuckles."
       NEW_LINE        
       NEW_LINE        
       CALL            R0011 (#7a,#71) -> -(SP)
       RTRUE           
L0005: JE              G1d,#04 [FALSE] L0007
       NEW_LINE        
       PRINT           ""Let's just hope he doesn't find the grift."
       TEST_ATTR       "trailer door",#0f [FALSE] L0006
       PRINT           " Close the door, huh?"
L0006: PRINT           """
       JUMP            L0009
L0007: JE              G1d,#06 [FALSE] RFALSE
       TEST_ATTR       "trailer door",#0f [FALSE] L0008
       STORE           G4c,#63
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0011 (#7a,#71) -> -(SP)
       RTRUE           
L0008: STORE           G1d,#07
       NEW_LINE        
       PRINT           ""It'll be okay unless somebody tips him off about
shoving Annie Oakley under the old front by the elephant tent --""
       NEW_LINE        
       NEW_LINE        
       PRINT           "His voice suddenly halts. "
       CALL            R0011 (#7a,#71) -> -(SP)
       RTRUE           
L0009: NEW_LINE        
       RTRUE           

Routine R0605, 0 locals ()

       STORE           G37,#01
       CALL            R0014 (#c249) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "trailer door",#0f
       SET_ATTR        "trailer door",#0a
       PRINT           "ou're suddenly eye-to-eye with a very unhappy clown
whose greasepaint red horseshoe smile practically melts off his face. "
       NEW_LINE        
       NEW_LINE        
       TEST_ATTR       "clown mask",#14 [FALSE] L0001
       CALL            R0292 (#d6) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0001: PRINT           "Snatching away the "
       TEST_ATTR       "clown mask",#14 [TRUE] L0002
       CALL            R0292 (#d6) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0004 (#5d) -> -(SP)
       PRINT           " and the "
       CALL            R0004 (#d6) -> -(SP)
       PRINT           ", "
       JUMP            L0004
L0002: CALL            R0292 (#d6) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0004 (#d6) -> -(SP)
       PRINT           ", "
       JUMP            L0004
L0003: CALL            R0004 (#5d) -> -(SP)
       PRINT           ", "
L0004: INSERT_OBJ      "ash tray",#32
       PRINT           "Chuckles seizes you by the scruff of your neck, and the
irate clown hustles you out of the "
       CALL            R0004 (#a6) -> -(SP)
       PRINT           "."
       NEW_LINE        
       NEW_LINE        
       CLEAR_ATTR      "clown mask",#14
       INSERT_OBJ      "clown mask",#32
       CALL            R0284 (#5e) -> -(SP)
       RET_POPPED      

Routine R0606, 0 locals ()

       JE              G7a,#81,#74 [FALSE] L0001
       JIN             "heap of black ash","ash tray" [FALSE] L0001
       CALL            R0011 (#68,#c7) -> -(SP)
       RTRUE           
L0001: JE              G7a,#2c,#6c [FALSE] RFALSE
       CALL            R0121 -> -(SP)
       RET_POPPED      

Routine R0607, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "The ash, by its jet blackness, does not appear to be
the remnant of tobacco."
L0001: JE              G7a,#7a,#81,#75 [TRUE] L0002
       JE              G7a,#68,#61,#44 [FALSE] L0004
L0002: TEST_ATTR       "heap of black ash",#0c [FALSE] L0003
       PRINT_RET       "The ashes sift through your fingers."
L0003: SET_ATTR        "heap of black ash",#0c
       INSERT_OBJ      "scrap of newsprint","ash tray"
       PRINT           "In disturbing the "
       CALL            R0004 (#c7) -> -(SP)
       PRINT           ", a "
       CALL            R0004 (#1b) -> -(SP)
       PRINT_RET       " is revealed."
L0004: JE              G7a,#72,#3a,#74 [FALSE] RFALSE
       INSERT_OBJ      "heap of black ash",#32
       PRINT           "The ashes swirl through the air and disappear"
       TEST_ATTR       "heap of black ash",#0c [FALSE] L0005
       JIN             "scrap of newsprint","ash tray" [TRUE] L0006
L0005: TEST_ATTR       "heap of black ash",#0c [TRUE] L0007
L0006: INSERT_OBJ      "scrap of newsprint",G00
       PRINT           " as a tiny "
       CALL            R0004 (#1b) -> -(SP)
       PRINT           " floats down"
L0007: PRINT_PADDR     G5d
       RTRUE           

Routine R0608, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT           "The "
       CALL            R0004 (#1b) -> -(SP)
       PRINT_RET       " is about an inch square."
L0001: JE              G7a,#2e [FALSE] L0002
       JE              #9e,G6a,Gc6 [FALSE] L0002
       PRINT           "The "M" on the "
       CALL            R0004 (#1b) -> -(SP)
       PRINT           " looks like it was cut from the the same newspaper as
the letters on the "
       CALL            R0004 (#9e) -> -(SP)
       PRINT_RET       "."
L0002: JE              G7a,#7d [FALSE] RFALSE
       PRINT_RET       "There's a paragraph of yak trivia on one side, and the
letter "M" in 48-point type on the other."

Routine R0609, 0 locals ()

       JE              G7a,#75 [FALSE] RFALSE
       PRINT_RET       "Nope, too repulsive."

Routine R0610, 0 locals ()

       JE              G7a,#44 [FALSE] RFALSE
       TEST_ATTR       "clown mask",#14 [FALSE] L0001
       PRINT_PADDR     G7c
       PRINT           " your beady eyes through the "
       CALL            R0004 (#5d) -> -(SP)
       PRINT_RET       "."
L0001: CALL            R0011 (#42,#1d) -> -(SP)
       RTRUE           

Routine R0611, 0 locals ()

       JE              G7a,#44,#42 [FALSE] L0001
       JE              G6a,#b9 [FALSE] L0001
       JIN             "Comrade Thumb",G00 [FALSE] L0001
       CALL            R0004 (#db) -> -(SP)
       PRINT           " is there. "
       GET_CHILD       "upper bunk" -> -(SP) [TRUE] RFALSE
       NEW_LINE        
       RTRUE           
L0001: JE              G7a,#24,#25,#1c [TRUE] L0002
       JE              G7a,#2a [FALSE] RFALSE
L0002: JE              G6a,#b9 [FALSE] L0003
       STORE           G6a,#ca
       SET_ATTR        "upper bunk",#0c
       JUMP            L0004
L0003: STORE           G6a,#b9
       SET_ATTR        "lower bunk",#0c
L0004: STORE           G1f,#01
       CALL            R0353 -> -(SP)
       TEST_ATTR       "upper bunk",#0c [FALSE] RTRUE
       TEST_ATTR       "lower bunk",#0c [FALSE] RTRUE
       PRINT           "Hadn't you really ought to stop trying to sleep around
like this?"
       NEW_LINE        
       STORE           Gbc,#02
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G1f,#01
       RTRUE           

Routine R0612, 0 locals ()

       JE              G7a,#6f,#6c [FALSE] L0002
       TEST_ATTR       "trailer door",#0f [TRUE] L0002
       JZ              Gc6 [TRUE] L0002
       JE              Gc6,#93 [FALSE] L0001
       STORE           G69,#01
       SET_ATTR        "trailer door",#0f
       CLEAR_ATTR      "trailer door",#0a
       CLEAR_ATTR      "Clown Alley",#12
       PRINT           "You wedge the "
       CALL            R0004 (#93) -> -(SP)
       PRINT           " between the frame and the door then give it a yank.
The "
       CALL            R0004 (#2c) -> -(SP)
       PRINT_RET       " pops open."
L0001: PRINT_PADDR     G60
       CALL            R0302 (Gc6,#01) -> -(SP)
       PRINT_RET       " is unequal to the task."
L0002: JE              G7a,#6f,#6c [FALSE] L0003
       JZ              G69 [FALSE] L0003
       JZ              Gc6 [FALSE] L0003
       CALL            R0292 (#93) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       PRINT           "(with the "
       CALL            R0004 (#93) -> -(SP)
       PRINT           ")"
       NEW_LINE        
       CALL            R0011 (#6c,#2c,#93) -> -(SP)
       RTRUE           
L0003: JE              G7a,#2c [FALSE] L0004
       JZ              G69 [TRUE] L0004
       PRINT_RET       "The damaged door creaks back open."
L0004: JE              G7a,#2c [FALSE] L0005
       JE              G00,#5e [FALSE] L0005
       JIN             "Chuckles","Clown Alley" [FALSE] L0005
       TEST_ATTR       "Clown Alley",#12 [TRUE] L0005
       SET_ATTR        "trailer door",#0a
       RFALSE          
L0005: JE              G7a,#42 [FALSE] L0006
       PRINT_PADDR     G7c
       PRINT_RET       " that the door is warped slightly along its edge."
L0006: JE              G7a,#57 [FALSE] RFALSE
       JZ              G37 [FALSE] RFALSE
       TEST_ATTR       "trailer door",#0c [TRUE] RFALSE
       JE              G00,#9d [TRUE] RFALSE
       JE              G1d,#19 [FALSE] RFALSE
       PRINT           "Chuckles pops his head out from behind the "
       CALL            R0004 (#2c) -> -(SP)
       PRINT           " and "
       TEST_ATTR       "clown mask",#14 [FALSE] L0007
       TEST_ATTR       "shawl-jacket combo",#14 [TRUE] L0007
       TEST_ATTR       "dress-suit combination",#14 [TRUE] L0007
       ADD             G01,#0a -> G01
       STORE           G1d,#00
       CALL            R0013 (#c249,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       SET_ATTR        "trailer door",#0f
       CLEAR_ATTR      "trailer door",#0a
       PRINT_RET       "squints at you through a layer of cold cream, then
flings the door open. He withdraws into the trailer."
L0007: SET_ATTR        "trailer door",#0c
       CALL            R0013 (#c249,#05) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "shades his eyes to look at you. "Beat it, lotlice," he
says, withdrawing into the trailer and closing the door."

Routine R0613, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "To the west is the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           " exit from the midway, which continues east. The side
of the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           " borders on the north. "
       CALL            R0615 -> -(SP)
       RET_POPPED      
L0001: JE              L00,#02 [FALSE] RFALSE
       TEST_ATTR       "Midway Entrance",#12 [TRUE] L0002
       CALL            R0013 (#ee2d,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0002: JIN             "detective","Midway Entrance" [FALSE] RFALSE
       TEST_ATTR       "detective",#0c [FALSE] RFALSE
       INSERT_OBJ      "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","detective"
       RTRUE           

Routine R0614, 1 local (0000)

       PRINT           "Your eyes soak in the lavishly painted sideshow fronts
"
       JZ              L00 [TRUE] L0001
       PRINT           "-- "
       CALL            R0004 (#c8) -> -(SP)
       PRINT           " "
       CALL            R0004 (#05) -> -(SP)
       PRINT           "'s to the south and Rimshaw's to"
       JUMP            L0002
L0001: PRINT           "which line the midway along"
L0002: PRINT_RET       " the north. "

Routine R0615, 1 local (0000)

       PRINT           "A soiled, "
       CALL            R0004 (#7d) -> -(SP)
       PRINT           " beckons "
       JZ              L00 [TRUE] L0001
       PRINT           "north"
       JUMP            L0002
L0001: PRINT           "south"
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0616, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "This scrawny patch of dirt offers a square cage on its
west side; an open tent giving off a dank, earthy smell on its east side; and a
well-worn path along the tent to the southeast. "
       CALL            R0615 (#01) -> -(SP)
       JIN             "elephant","Menagerie" [TRUE] RFALSE
       NEW_LINE        
       CALL            R0485 -> -(SP)
       RET_POPPED      
L0001: JE              L00,#02 [FALSE] L0002
       JE              G29,#1d,#14 [FALSE] RFALSE
       JZ              G93 [FALSE] RFALSE
       INSERT_OBJ      "Mahler","Menagerie"
       RTRUE           
L0002: JE              L00,#06 [FALSE] RFALSE
       JIN             "elephant","Menagerie" [FALSE] RFALSE
       CALL            R0001 (#d53b) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G7a,#4b [TRUE] RFALSE
       RANDOM          #64 -> -(SP)
       JL              #14,(SP)+ [TRUE] RFALSE
       CALL            R0013 (#c69d,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           

Routine R0617, 0 locals ()

       NEW_LINE        
       PRINT           "The slow-moving sound of "
       CALL            R0004 (#40) -> -(SP)
       PRINT           "s from inside the tent is heard."
       NEW_LINE        
       RFALSE          

Routine R0618, 0 locals ()

       JZ              G93 [FALSE] L0001
       TEST_ATTR       "cage door",#0f [FALSE] L0003
L0001: JE              G00,#0d [FALSE] L0002
       RET             #af
L0002: RET             #0d
L0003: PRINT           "The "
       CALL            R0004 (#44) -> -(SP)
       PRINT           " is "
       CALL            R0358 (#44) -> -(SP)
       PRINT_PADDR     G5d
       RFALSE          

Routine R0619, 1 local (00af)

       JE              G00,#af [FALSE] L0001
       JIN             "elephant",G00 [FALSE] L0001
       PRINT           "With upraised tusks and flailing trunk, the "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           " backs you off."
       NEW_LINE        
       RFALSE          
L0001: PRINT           "Mindful of where you step, you walk "
       JE              G00,#af [FALSE] L0002
       STORE           L00,#70
       PRINT           "in"
       JUMP            L0003
L0002: PRINT           "out"
L0003: PRINT           "side the tent."
       NEW_LINE        
       NEW_LINE        
       RET             L00

Routine R0620, 0 locals ()

       JIN             "elephant","Menagerie" [TRUE] L0003
       JE              G00,#94 [FALSE] L0001
       RET             #af
L0001: TEST_ATTR       "ladder",#0c [TRUE] L0002
       PRINT           "Walking through the damaged fence, y"
       CALL            R0482 -> -(SP)
       RET             #94
L0002: RET             #94
L0003: PRINT           "A "
       CALL            R0004 (#82) -> -(SP)
       PRINT           " stops you."
       NEW_LINE        
       RFALSE          

Routine R0621, 0 locals ()

       TEST_ATTR       "Mahler",#0c [FALSE] L0002
       JE              G7a,#42 [TRUE] L0001
       CALL            R0337 (#09) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: PRINT           "He seems off in another world with his music."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#42 [FALSE] L0005
       CALL            R0004 (#09) -> -(SP)
       PRINT           " appears as a huge ball of dark fur with a thumping
breastplate and a crinkled mug, both high-gloss black. "
       JE              G00,#0d [FALSE] L0003
       PRINT           "He's looking down at you quizzically."
       JUMP            L0004
L0003: JIN             "Chelsea","Mahler" [FALSE] L0004
       PRINT           "The girl dangles from the ape's grip."
L0004: NEW_LINE        
       RTRUE           
L0005: CALL            R0337 (#09) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       JE              G00,#af [FALSE] L0006
       PRINT           "The ape seems wearied by the familiar attention you're
paying him."
       NEW_LINE        
       JUMP            L0008
L0006: JZ              G93 [FALSE] L0007
       CALL            R0004 (#09) -> -(SP)
       PRINT           " stares at you through his deep-set jaundiced eyes."
       NEW_LINE        
       JUMP            L0008
L0007: PRINT           "You're not close enough for meaningful communication."
       NEW_LINE        
L0008: CALL            R0298 -> -(SP)
       RET_POPPED      
L0009: JE              G00,#0d [TRUE] L0010
       CALL            R0339 (#09) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       CALL            R0346 (#09) -> -(SP)
       RET_POPPED      
L0010: JE              G7a,#7a [FALSE] L0011
       JZ              Gc6 [FALSE] L0011
       PRINT           "The hair is coarse and bristly against the palm of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       ". The gorilla is too puzzled by your intrusion,
however, to enjoy such a creature comfort."
L0011: JE              G7a,#3c [FALSE] L0012
       JE              G6a,#24 [FALSE] L0012
       CALL            R0011 (#47,#24,#09) -> -(SP)
       RTRUE           
L0012: JE              G7a,#85,#47 [FALSE] L0020
       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G6a,#bb,#c4 [TRUE] RFALSE
       CALL            R0528 -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       CALL            R0013 (#a2cf,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_PADDR     G8d
       PRINT_RET       "in many a beast's life between his recognition that
someone has caused him great harm and his moment of striking back, during which
time his imminent victim usually says ... well, go ahead ..."
L0013: JE              G6a,#30 [FALSE] L0014
       TEST_ATTR       "transistor radio",#18 [FALSE] L0014
       STORE           Gbb,#04
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       " looks expectantly at the device, but as it rests in
his hairy clutches the static-emission from the radio quickly grates on his
sensitive nerves. He shoves it back to you, then really begins to give you
static."
L0014: JE              G6a,#24 [FALSE] L0017
       CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       JE              G4b,#71 [FALSE] L0017
       LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02 [FALSE] L0015
       ADD             G01,#0a -> G01
       INSERT_OBJ      "pair of headphones","Mahler"
       SET_ATTR        "Mahler",#0c
       CALL            R0013 (#d278,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "From the looks of him -- an undeniable lowbrow. But now
"
       CALL            R0004 (#09) -> -(SP)
       PRINT           ", true to his name, displays a quite highbrow taste in
music. He ushers the headphones over to the "
       CALL            R0004 (#84) -> -(SP)
       PRINT           " of his "
       CALL            R0004 (#0c) -> -(SP)
       PRINT           ", his savage breast to soothe."
       JUMP            L0016
L0015: CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       CALL            R0004 (#09) -> -(SP)
       PRINT           " refuses to have anything to do with the headphones."
L0016: NEW_LINE        
       RTRUE           
L0017: JE              G6a,#a5 [FALSE] L0018
       CALL            R0393 -> -(SP)
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       " just scratches his head."
L0018: INSERT_OBJ      G6a,G00
       CALL            R0004 (#09) -> -(SP)
       PRINT           " holds"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           " limply in his massive hand for a moment then lets it
drop"
       JE              G6a,#66 [FALSE] L0019
       PRINT           ". It doesn't look like part of his normal diet"
L0019: PRINT_PADDR     G5d
       RTRUE           
L0020: CALL            R0342 (#09) -> -(SP)
       JZ              (SP)+ [TRUE] L0021
       PRINT           "In the face of your attack, "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " simply scrunches his nose in curiosity. This has the
effect of withering the fierce expression on your face and botching your
follow-through. With the playfulness that is characteristic of the great apes,
"
       CALL            R0004 (#09) -> -(SP)
       CALL            R0624 -> -(SP)
       RTRUE           
L0021: JE              G4c,#09 [FALSE] RFALSE
       JE              G7a,#4a [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RTRUE           

Routine R0622, 0 locals ()

       JE              G00,#0d [TRUE] L0001
       TEST_ATTR       "Mahler",#0c [FALSE] L0002
L0001: CALL            R0002 (#a2cf) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
L0002: CALL            R0014 (#c9a3) -> -(SP)
       STOREW          (SP)+,#00,#00
       STORE           Gbb,#00
       RFALSE          
L0003: TEST_ATTR       "Mahler",#0c [FALSE] L0006
       LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02 [FALSE] L0004
       CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
L0004: CLEAR_ATTR      "Mahler",#0c
       STORE           Gbb,#00
       SET_ATTR        "pair of headphones",#13
       CALL            R0014 (#dc17) -> -(SP)
       STOREW          (SP)+,#00,#00
       JE              G00,#0d,#af [FALSE] RFALSE
       NEW_LINE        
       CALL            R0004 (#09) -> -(SP)
       PRINT           " suddenly lets out a primal, deafening scream that
rattles the bars of his cage. You can hear the "
       CALL            R0004 (#24) -> -(SP)
       PRINT           " being reduced to dust in the ape's tense grip. "
       JE              G00,#0d [FALSE] L0005
       CALL            R0623 -> -(SP)
       RET_POPPED      
L0005: PRINT           "With that volcanic emotional response to the end of his
listening pleasure, "
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       " settles back down onto the straw."
L0006: INC             Gbb
       JE              G4c,#63 [TRUE] L0007
       NEW_LINE        
L0007: JE              Gbb,#01 [FALSE] L0010
       INSERT_OBJ      "Mahler",G00
       CALL            R0004 (#09) -> -(SP)
       PRINT           " gets up from his doldrums and stares down at you"
       TEST_ATTR       "gorilla suit",#14 [FALSE] L0008
       PRINT           ". If apes could laugh, this one would -- at the sight
of you standing there expectantly in your hairy suit. Instead the gorilla is
bewildered, and starts"
       JUMP            L0009
L0008: PRINT           ","
L0009: PRINT           " tilting his head slowly to one side."
       JUMP            L0014
L0010: JE              Gbb,#02,#03,#04 [FALSE] L0011
       CALL            R0003 (G63) -> -(SP)
       PRINT_PADDR     (SP)+
       JUMP            L0014
L0011: JE              Gbb,#05 [FALSE] L0012
       CALL            R0004 (#09) -> -(SP)
       PRINT           " bellows out a roar that backs you toward the cage
door."
       JUMP            L0014
L0012: JE              Gbb,#06 [FALSE] L0013
       PRINT           "Agitated by your presence, "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " appears on the verge of attack."
       JUMP            L0014
L0013: JE              Gbb,#07 [FALSE] L0014
       CALL            R0623 -> -(SP)
L0014: NEW_LINE        
       RTRUE           

Routine R0623, 0 locals ()

       CALL            R0285 (#04,S115) -> -(SP)
       RTRUE           

Routine R0624, 0 locals ()

       CALL            R0285 (#01,S116) -> -(SP)
       RTRUE           

Routine R0625, 1 local (0000)

       JE              L00,#03 [FALSE] L0006
       PRINT           "You stand on the straw-covered cage floor, surrounded
on four sides by closely spaced iron bars. The "
       TEST_ATTR       "cage door",#0f [FALSE] L0001
       PRINT           "open"
       JUMP            L0002
L0001: PRINT           "closed"
L0002: PRINT           " "
       CALL            R0004 (#44) -> -(SP)
       PRINT           " is east"
       TEST_ATTR       "trap door",#13 [TRUE] L0003
       PRINT           " and a "
       CALL            R0004 (#e9) -> -(SP)
       PRINT           " here is "
       CALL            R0358 (#e9) -> -(SP)
L0003: PRINT           "."
       JIN             "Mahler",G00 [FALSE] L0005
       JE              G29,#15,#19 [TRUE] L0005
       NEW_LINE        
       NEW_LINE        
       CALL            R0004 (#09) -> -(SP)
       PRINT           " is "
       TEST_ATTR       "Mahler",#0c [FALSE] L0004
       PRINT           "slumped over in the "
       CALL            R0004 (#84) -> -(SP)
       PRINT           " of his cage listening to the "
       CALL            R0004 (#24) -> -(SP)
       PRINT           "."
       JUMP            L0005
L0004: PRINT           "staring at you with deep-set, jaundiced eyes."
L0005: NEW_LINE        
       RTRUE           
L0006: JE              L00,#02 [FALSE] L0007
       JZ              G93 [FALSE] L0007
       INSERT_OBJ      "Mahler","Inside Mahler's Cage"
       CALL            R0013 (#c9a3,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0007: JE              L00,#06 [FALSE] RFALSE
       LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02 [FALSE] RFALSE
       CALL            R0292 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G4b,#71 [FALSE] RFALSE
       NEW_LINE        
       PRINT           "Mahler snatches away the "
       CALL            R0004 (#24) -> -(SP)
       PRINT           "."
       NEW_LINE        
       NEW_LINE        
       CALL            R0011 (#47,#24,#09) -> -(SP)
       RTRUE           

Routine R0626, 0 locals ()

       JE              G00,#0d [FALSE] L0006
       TEST_ATTR       "trap door",#0f [TRUE] L0001
       CALL            R0347 (#88) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#2c,#6c [FALSE] L0002
       CALL            R0011 (G7a,#e9) -> -(SP)
       RTRUE           
L0002: JE              G7a,#81,#44 [FALSE] L0004
       PRINT           "There is"
       TEST_ATTR       "ribbon",#12 [TRUE] L0003
       INSERT_OBJ      "ribbon","compartment"
L0003: CALL            R0280 (#88) -> -(SP)
       PRINT           " in the "
       CALL            R0004 (#88) -> -(SP)
       PRINT           "."
       NEW_LINE        
       TEST_ATTR       "ribbon",#12 [TRUE] RTRUE
       INSERT_OBJ      "ribbon",G00
       RTRUE           
L0004: JE              G7a,#1c,#40,#2a [FALSE] L0005
       PRINT_RET       "It's too small for you."
L0005: JE              G7a,#3b [FALSE] RFALSE
       CALL            R0124 -> -(SP)
       RET_POPPED      
L0006: JE              G00,#af [FALSE] L0009
       JE              G7a,#2c,#6c,#44 [TRUE] L0007
       JE              G7a,#1c,#2a,#3b [TRUE] L0007
       JE              G7a,#40 [FALSE] L0008
L0007: PRINT_PADDR     G7c
       PRINT           " no openings to the "
       CALL            R0004 (#88) -> -(SP)
       PRINT_RET       "."
L0008: JE              G7a,#57 [FALSE] RFALSE
       TEST_ATTR       "trap door",#0c [TRUE] RFALSE
       PRINT           "You detect a brief sound of movement in return, but
can't tell if it's coming from "
       CALL            R0004 (#09) -> -(SP)
       PRINT           " or from inside the "
       CALL            R0004 (#88) -> -(SP)
       PRINT_RET       "."
L0009: JE              G00,#0d [FALSE] RFALSE
       JE              G7a,#2c,#6c [FALSE] RFALSE
       CALL            R0011 (G7a,#e9) -> -(SP)
       RET_POPPED      

Routine R0627, 0 locals ()

       JE              G7a,#6c,#69 [FALSE] L0004
       TEST_ATTR       "trap door",#0f [TRUE] L0004
       TEST_ATTR       "Mahler",#0c [TRUE] L0001
       JIN             "Mahler",G00 [TRUE] L0003
L0001: SET_ATTR        "trap door",#0f
       SET_ATTR        "trap door",#0c
       PRINT           "As the "
       CALL            R0004 (#e9) -> -(SP)
       PRINT           " hinges upward, you can see a "
       CALL            R0004 (#88) -> -(SP)
       PRINT           " that is empty"
       TEST_ATTR       "ribbon",#13 [FALSE] L0002
       TEST_ATTR       "ribbon",#12 [TRUE] L0002
       CLEAR_ATTR      "ribbon",#13
       PRINT           " but for a small red ribbon"
L0002: PRINT_PADDR     G5d
       RTRUE           
L0003: PRINT           "Bulky and difficult to grip, the "
       CALL            R0004 (#e9) -> -(SP)
       PRINT           " resists the labored attempt of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           "s which are especially sweat-drenched with "
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       " hovering over you."
L0004: JE              G7a,#65,#2c [FALSE] L0006
       TEST_ATTR       "trap door",#0f [FALSE] L0006
       TEST_ATTR       "ribbon",#12 [TRUE] L0005
       SET_ATTR        "ribbon",#13
L0005: CLEAR_ATTR      "trap door",#0f
       PRINT           "It lowers over the "
       CALL            R0004 (#88) -> -(SP)
       PRINT_RET       "."
L0006: JE              G7a,#44 [FALSE] RFALSE
       TEST_ATTR       "trap door",#0f [FALSE] RFALSE
       CALL            R0011 (#44,#88) -> -(SP)
       RTRUE           

Routine R0628, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "Though cut from ordinary cloth, the ribbon is a
stunning bright red."
L0001: JE              G7a,#99 [FALSE] L0002
       JE              Gc6,#1d [FALSE] L0002
       CALL            R0011 (#77,#55) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       "ribbon",#14 [FALSE] RFALSE
       JE              G7a,#9d [FALSE] RFALSE
       CALL            R0011 (#7e,#55) -> -(SP)
       RTRUE           

Routine R0629, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       JE              G00,#af,#0d [FALSE] L0001
       JZ              G93 [TRUE] L0001
       PRINT_RET       "Several of the vertical bars are bent to either side."
L0001: JE              G7a,#42 [FALSE] L0002
       JE              G00,#79 [FALSE] L0002
       PRINT           "It's not as high as "
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       "'s cage."
L0002: JE              G7a,#3c [FALSE] L0004
       JE              Gc6,#0c [FALSE] L0004
       JE              G00,#1e [FALSE] L0003
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0003: JE              G00,#79 [FALSE] RFALSE
       INSERT_OBJ      G6a,"Top of Cage"
       PRINT_RET       "Done."
L0004: JE              G7a,#63 [FALSE] L0006
       JE              G00,#1e [FALSE] L0005
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0005: JE              G00,#79 [FALSE] RFALSE
       PRINT_RET       "It's too high."
L0006: JE              G7a,#6c,#5c,#9c [TRUE] L0007
       JE              G7a,#2c [FALSE] L0009
L0007: JE              G00,#79,#c0 [FALSE] L0008
       CALL            R0011 (G7a,#a4,Gc6) -> -(SP)
       RTRUE           
L0008: CALL            R0011 (G7a,#44,Gc6) -> -(SP)
       RTRUE           
L0009: JE              G7a,#44 [FALSE] L0016
       JE              G00,#c0,#0d [FALSE] L0010
       CALL            R0170 -> -(SP)
       RTRUE           
L0010: JE              G00,#1e [FALSE] L0011
       CALL            R0630 -> -(SP)
       RET_POPPED      
L0011: JE              G00,#af [FALSE] L0014
       PRINT           "Peering into the cage, you observe "
       TEST_ATTR       "Mahler",#0c [FALSE] L0012
       CALL            R0004 (#09) -> -(SP)
       PRINT           " hunched in the "
       CALL            R0004 (#84) -> -(SP)
       PRINT           " listening to the "
       CALL            R0004 (#24) -> -(SP)
       JUMP            L0015
L0012: JIN             "Mahler",G00 [FALSE] L0013
       PRINT           "a gargantuan and thoroughly bored gorilla sitting on a
helter-skelter bed of straw"
       JUMP            L0015
L0013: PRINT           "nothing but straw"
       JUMP            L0015
L0014: PRINT           "The confines of the cage are so darkly shaded that you
cannot distinguish anything inside"
       TEST_ATTR       "skeleton key",#10 [FALSE] L0015
       PRINT           ", except for a hoop key ring hanging against the far "
       CALL            R0004 (#53) -> -(SP)
       PRINT           " which happens to be illuminated by a spot of soft
light"
L0015: PRINT_PADDR     G5d
       RTRUE           
L0016: JE              G7a,#3b [FALSE] L0021
       JE              Gc6,#0c [FALSE] L0021
       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       JE              G00,#c0,#0d [FALSE] L0017
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0017: TEST_ATTR       "skeleton key",#10 [FALSE] L0018
       JE              G6a,#81 [FALSE] L0018
       CALL            R0011 (#7b,#0e,#81) -> -(SP)
       RTRUE           
L0018: GET_PROP        G6a,#0d -> -(SP)
       JG              (SP)+,#19 [FALSE] L0019
       JE              G6a,#81 [TRUE] L0019
       CALL            R0345 -> -(SP)
       RET_POPPED      
L0019: JE              G00,#af [FALSE] L0020
       JIN             "Mahler","Menagerie" [FALSE] L0020
       CALL            R0004 (#09) -> -(SP)
       PRINT           " completely ignores"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       ", as he would anything from this distance, so you
withdraw it."
L0020: CALL            R0124 -> -(SP)
       RET_POPPED      
L0021: JE              G7a,#2a,#1c,#40 [FALSE] L0024
       JE              G00,#0d,#c0,#1e [FALSE] L0022
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0022: JE              G00,#af [FALSE] L0023
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0023: JE              G00,#79 [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0024: JE              G7a,#28 [FALSE] L0025
       JE              G00,#0d,#c0 [FALSE] L0025
       CALL            R0297 (#14) -> -(SP)
       RTRUE           
L0025: JE              G7a,#61 [FALSE] L0028
       JE              G00,#af [TRUE] L0026
       JE              G00,#0d [FALSE] L0027
       TEST_ATTR       "cage door",#0f [FALSE] L0027
L0026: PRINT           "Below the surface of the cage floor there appears to be
a rectangular "
       CALL            R0004 (#88) -> -(SP)
       PRINT_RET       " of sorts."
L0027: JE              G00,#0d [FALSE] RFALSE
       CALL            R0011 (#42,#44) -> -(SP)
       RTRUE           
L0028: JE              G7a,#79 [FALSE] L0033
       JE              G00,#0d,#c0 [FALSE] L0029
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0029: JE              G00,#79 [FALSE] L0032
       TEST_ATTR       "pair of headphones",#10 [FALSE] L0030
       CALL            R0011 (#75,#24) -> -(SP)
       RTRUE           
L0030: TEST_ATTR       "skeleton key",#10 [FALSE] L0031
       CALL            R0011 (#75,#0e) -> -(SP)
       RTRUE           
L0031: CALL            R0343 -> -(SP)
       RET_POPPED      
L0032: JE              G00,#af [FALSE] RFALSE
       JIN             "Mahler",G00 [FALSE] RFALSE
       CALL            R0011 (#7a,#09) -> -(SP)
       RTRUE           
L0033: JE              G7a,#24,#26,#25 [FALSE] L0036
       JE              G00,#1e,#c0 [FALSE] L0034
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0034: JE              G00,#79 [FALSE] L0035
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      
L0035: PRINT_RET       "Grabbing hold of the rusted iron bars, you hike one leg
up into the air, and then, as would a prisoner, hang your head in despair."
L0036: JE              G7a,#27 [FALSE] RFALSE
       JE              G00,#1e [FALSE] L0037
       CALL            R0297 (#16) -> -(SP)
       RET_POPPED      
L0037: PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           

Routine R0630, 0 locals ()

       PRINT_RET       "You're in no position to do that."

Routine R0631, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You're standing in semidarkness on top of a cage next
to the elephant tent which rises above. "
       PRINT_PADDR     G7c
       PRINT_RET       ", faintly, a rope ladder hanging from the top edge of
the tent."

Routine R0632, 0 locals ()

       CALL            R0320 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "Your arms are too full."
       NEW_LINE        
       RFALSE          
L0001: PRINT           "You "
       JE              G00,#79 [FALSE] L0002
       PRINT           "hoist "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " up and onto the "
       CALL            R0004 (#0c) -> -(SP)
       PRINT           "."
       NEW_LINE        
       NEW_LINE        
       RET             #1e
L0002: JZ              G92 [FALSE] L0003
       PRINT           "fall awkwardly"
       JUMP            L0004
L0003: PRINT           "clamber"
L0004: PRINT           " down from the "
       CALL            R0004 (#0c) -> -(SP)
       PRINT           "."
       NEW_LINE        
       JZ              G92 [FALSE] L0005
       CALL            R0013 (#5d6c,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G92,#01
       CALL            R0286 -> -(SP)
       INSERT_OBJ      "it","Menagerie Nook"
       STORE           G00,#79
       RFALSE          
L0005: NEW_LINE        
       RET             #79

Routine R0633, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "The "
       CALL            R0004 (#bc) -> -(SP)
       PRINT_RET       " here is covered with matted-down sawdust that emits a
strong earthy smell. By all evidence, this tent used to house an elephant."

Routine R0634, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You are standing amid a kaleidoscope of his-and-her
garments, a view as if from inside a clothes drier in mid-cycle"
       TEST_ATTR       "dress-suit combination",#06 [TRUE] L0001
       TEST_ATTR       "shawl-jacket combo",#06 [FALSE] L0004
L0001: PRINT           ". Among the mentionables "
       TEST_ATTR       "dress-suit combination",#06 [FALSE] L0002
       TEST_ATTR       "shawl-jacket combo",#06 [FALSE] L0002
       PRINT           "are a sequin-dress/safari-suit combination, and a
knitted-shawl/leather-jacket combo"
       JUMP            L0004
L0002: PRINT           "is"
       TEST_ATTR       "dress-suit combination",#06 [FALSE] L0003
       PRINT           " a "
       CALL            R0004 (#6a) -> -(SP)
       JUMP            L0004
L0003: PRINT           " a "
       CALL            R0004 (#68) -> -(SP)
L0004: PRINT           "."
       NEW_LINE        
       NEW_LINE        
       PRINT_RET       "Stairs against the wall lead upward."

Routine R0635, 0 locals ()

       JE              G7a,#42 [FALSE] L0002
       PRINT           "The sequins glimmer in the "
       TEST_ATTR       G00,#0b [TRUE] L0001
       PRINT           "moon"
L0001: PRINT_RET       "light. There's a small slit of a pocket on the hip of
the dress."
L0002: JE              G7a,#81,#44,#6c [TRUE] L0003
       JE              G7a,#79 [FALSE] L0005
L0003: JIN             "veil",#32 [FALSE] L0004
       INSERT_OBJ      "veil","dress-suit combination"
L0004: PRINT_PADDR     G7c
       CALL            R0280 (#6a) -> -(SP)
       PRINT_RET       " in the pocket."
L0005: JE              G7a,#2c [FALSE] L0006
       PRINT_RET       "It's only a slit of a pocket."
L0006: JE              G7a,#77 [FALSE] L0007
       TEST_ATTR       "gorilla suit",#14 [FALSE] L0007
       CALL            R0637 (#d0) -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#77 [FALSE] L0008
       TEST_ATTR       "shawl-jacket combo",#14 [FALSE] L0008
       CALL            R0637 (#68) -> -(SP)
       RET_POPPED      
L0008: JE              G7a,#7e,#90,#77 [FALSE] RFALSE
       TEST_ATTR       "dress-suit combination",#14 [FALSE] RFALSE
       TEST_ATTR       "shawl-jacket combo",#14 [FALSE] L0009
       CALL            R0276 (#68) -> -(SP)
       RTRUE           
L0009: PRINT           "You wriggle "
       JE              G7a,#77 [FALSE] L0010
       PRINT           "into"
       INSERT_OBJ      "dress-suit combination","it"
       SET_ATTR        "dress-suit combination",#14
       JUMP            L0011
L0010: PRINT           "out of"
       CLEAR_ATTR      "dress-suit combination",#14
L0011: PRINT           " the "
       CALL            R0004 (#6a) -> -(SP)
       PRINT_RET       "."

Routine R0636, 0 locals ()

       JE              G7a,#44 [FALSE] L0002
       TEST_ATTR       "veil",#14 [FALSE] L0001
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0001: CALL            R0011 (#42,#de) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       "clown mask",#14 [FALSE] RFALSE
       CALL            R0637 (#de) -> -(SP)
       RTRUE           

Routine R0637, 1 local (0000)

       PRINT           "It won't fit over the "
       CALL            R0004 (L00) -> -(SP)
       PRINT_RET       "."

Routine R0638, 0 locals ()

       JE              G7a,#77 [FALSE] RFALSE
       TEST_ATTR       "gorilla suit",#14 [FALSE] RFALSE
       CALL            R0637 (#d0) -> -(SP)
       RET_POPPED      

Routine R0639, 1 local (0000)

       JE              L00,#03 [FALSE] L0002
       PRINT           "You are standing unsteadily on top of a gabled tent. "
       CALL            R0002 (#d097) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       PRINT           "On one edge of the tent a rope "
       CALL            R0004 (#65) -> -(SP)
       PRINT           " drops down."
L0001: NEW_LINE        
       RTRUE           
L0002: JE              L00,#01 [FALSE] L0004
       JE              G7a,#a2 [FALSE] L0003
       JE              G29,#16 [TRUE] L0003
       CALL            R0011 (#67) -> -(SP)
       RTRUE           
L0003: JE              G7a,#67 [FALSE] RFALSE
       PRINT           "With lousy footing and a lousy sense of "
       CALL            R0004 (#29) -> -(SP)
       PRINT           " up here, you take a few wobbly steps."
       NEW_LINE        
       STORE           Gd3,#00
       RTRUE           
L0004: JE              L00,#02 [FALSE] RFALSE
       CALL            R0002 (#f188) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0014 (#f188) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0013 (#d097,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           

Routine R0640, 0 locals ()

       CALL            R0002 (#d097) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "You can't seem to locate the rope ladder."
       NEW_LINE        
       RFALSE          
L0001: CALL            R0322 -> -(SP)
       RET_POPPED      

Routine R0641, 0 locals ()

       INC             Gd3
       INC             G0e
       NEW_LINE        
       JE              G0e,#02,#04,#07 [TRUE] L0001
       JE              G0e,#09,#0c [FALSE] L0005
L0001: CLEAR_ATTR      "burn hole",#13
       PRINT           "Suddenly, and with a muffled "pop," a sleek metal shaft
is thrust upward through the canvas. "
       JG              Gd3,#03 [TRUE] L0002
       JE              G0e,#0c [FALSE] L0003
L0002: CALL            R0285 (#03,S117) -> -(SP)
       RTRUE           
L0003: JE              G0e,#04,#09 [FALSE] L0004
       INSERT_OBJ      "elephant prod",G00
       PRINT           "It lingers momentarily, its business end sending a wisp
of smoke into the night air."
       JUMP            L0011
L0004: CALL            R0642 -> -(SP)
       JUMP            L0011
L0005: JE              G0e,#05,#0a [FALSE] L0006
       INSERT_OBJ      "elephant prod",#32
       CALL            R0642 -> -(SP)
       JUMP            L0011
L0006: JE              G0e,#01,#03,#06 [TRUE] L0007
       JE              G0e,#08,#0b [FALSE] L0008
L0007: PRINT           "You can hear, from inside the tent, what sounds like a
ladder being moved across the "
       CALL            R0004 (#bc) -> -(SP)
       PRINT           ", then the plod of footsteps coming nearer and louder."
       JUMP            L0011
L0008: JE              G0e,#11 [FALSE] L0009
       PRINT           "Still in your death-grip, the prod pivots dangerously
close to your forearm, and you feel its electronic heat."
       JUMP            L0011
L0009: JE              G0e,#12 [FALSE] L0010
       PRINT           "The "
       CALL            R0004 (#61) -> -(SP)
       PRINT           " slips a bit in your sweaty grip."
       JUMP            L0011
L0010: JE              G0e,#13 [FALSE] RFALSE
       CALL            R0285 (#03,S118) -> -(SP)
       RTRUE           
L0011: NEW_LINE        
       RTRUE           

Routine R0642, 0 locals ()

       PRINT           "The prod, finding no contact, is withdrawn through its
burn hole."
       RTRUE           

Routine R0643, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "The metal shaft is rigged with a crude electronic
stunner at its end."
L0001: JE              G7a,#75 [FALSE] L0002
       STORE           G0e,#0f
       INSERT_OBJ      "elephant prod","it"
       PRINT           "You grip the shaft tightly as its owner begins jostling
it dangerously."
       RTRUE           
L0002: JE              G7a,#97,#68,#6a [TRUE] L0003
       JE              G7a,#83,#69 [FALSE] L0004
L0003: ADD             G01,#0a -> G01
       INSERT_OBJ      "elephant prod",#32
       STORE           Gc1,#01
       CALL            R0014 (#d097) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0013 (#d278,#0a) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Sounds of awkward footwork and cursing come from inside
the tent as your opponent struggles with you and finally gets the shaft. There
is a shriek of bloodcurdling terror as he takes the "
       CALL            R0004 (#61) -> -(SP)
       PRINT           ", which sears loudly through the "
       CALL            R0004 (#d2) -> -(SP)
       PRINT           ", down with him.

Moments later, you hear someone helping the victim, who is groaning in pain,
out of the tent. The "
       CALL            R0004 (#65) -> -(SP)
       PRINT_RET       " is also dragged out."
L0004: JE              G7a,#3b,#47,#3a [TRUE] L0005
       JE              G7a,#98,#97,#3c [TRUE] L0005
       CALL            R0339 (#61) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0354 ("stunne") -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0005: STORE           G0e,#12
       PRINT_RET       "Blunder!"

Routine R0644, 0 locals ()

       JE              G7a,#44 [FALSE] L0003
       PRINT           "You "
       CALL            R0002 (#d097) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "glimpse some movement below but are too disoriented to
make it out"
       JUMP            L0002
L0001: PRINT           "can't make anything out"
L0002: PRINT_PADDR     G5d
       RTRUE           
L0003: JE              G7a,#1c,#2a,#40 [FALSE] RFALSE
       PRINT_RET       "It's too small."

Routine R0645, 0 locals ()

       CALL            R0013 (#d278,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       JE              G00,#57 [TRUE] RFALSE
       TEST_ATTR       "Clown Alley",#12 [FALSE] RFALSE
       JIN             "detective","Midway Entrance" [TRUE] RFALSE
       STORE           Gc4,#01
       INSERT_OBJ      "detective","Midway Entrance"
       SET_ATTR        "detective",#0c
       INSERT_OBJ      "trade card",#4c
       INSERT_OBJ      "ransom note",#4c
       CLEAR_ATTR      "detective",#06
       CALL            R0014 (#d278) -> -(SP)
       STOREW          (SP)+,#00,#00
       RTRUE           

Routine R0646, 0 locals ()

       JE              G7a,#24,#26,#25 [FALSE] L0001
       JE              G00,#1e [FALSE] RFALSE
       CALL            R0011 (#26,#65) -> -(SP)
       RTRUE           
L0001: JE              G7a,#14,#2a,#40 [TRUE] L0002
       JE              G7a,#1c [FALSE] L0007
L0002: JE              G00,#af [FALSE] L0003
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0003: JE              G00,#04 [FALSE] L0004
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0004: JE              G00,#5e [FALSE] L0005
       CALL            R0011 (#2a,#d2) -> -(SP)
       RTRUE           
L0005: JE              G00,#01,#70 [FALSE] L0006
       PRINT_PADDR     Ga0
       NEW_LINE        
       RTRUE           
L0006: CALL            R0255 -> -(SP)
       RET_POPPED      
L0007: JE              G7a,#2b [FALSE] L0010
       JE              G00,#01 [FALSE] L0008
       TEST_ATTR       "canvas wall",#0c [FALSE] L0008
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#5e [FALSE] L0009
       CALL            R0011 (#2a,#d2) -> -(SP)
       RTRUE           
L0009: CALL            R0564 -> -(SP)
       RET_POPPED      
L0010: JE              G7a,#44 [FALSE] L0015
       JE              G00,#70,#01 [FALSE] L0011
       CALL            R0170 -> -(SP)
       RET_POPPED      
L0011: JE              G00,#af [FALSE] L0013
       JIN             "elephant",G00 [FALSE] L0012
       CALL            R0011 (#42,#8d) -> -(SP)
       RET_POPPED      
L0012: CALL            R0011 (#44,#1d) -> -(SP)
       RET_POPPED      
L0013: JE              G00,#04 [FALSE] L0014
       PRINT_RET       "You can't see anything past the shadowy entrance."
L0014: JE              G00,#5e [FALSE] RFALSE
       CALL            R0011 (#42,#d2) -> -(SP)
       RTRUE           
L0015: JE              G7a,#62 [FALSE] RFALSE
       JE              G00,#79 [FALSE] RFALSE
       CALL            R0011 (#42,#df) -> -(SP)
       RTRUE           

Routine R0647, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "Behind two soulful eyes, gleaming white tusks, and lush
palm-like ears stands the huge gray elephantine bulk that is Hannibal of the
Jungle."
L0001: CALL            R0337 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "The "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           " merely eyes you passively."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#9c [FALSE] L0003
       CALL            R0346 (#40) -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#6b,#97 [FALSE] L0004
       JE              G6a,#3c,#c4 [FALSE] L0004
       CALL            R0011 (#47,G6a,#8d) -> -(SP)
       RTRUE           
L0004: JE              G7a,#2b [FALSE] L0005
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0005: JE              G7a,#3b [FALSE] L0006
       JE              Gc6,#8d [TRUE] L0007
L0006: JE              G7a,#85,#47 [FALSE] L0021
       JE              Gc6,#8d [FALSE] L0021
L0007: CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G6a,#a5 [FALSE] L0008
       CALL            R0393 -> -(SP)
       NEW_LINE        
       RTRUE           
L0008: JE              G6a,#3c [FALSE] L0009
       TEST_ATTR       "dead mouse",#0c [TRUE] L0009
       SET_ATTR        "dead mouse",#0c
       PRINT           "The old bromide about "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           "s being afraid of mice is in fact, you suddenly recall,
based on the big pachyderms' fear of losing their balance by stepping on little
squishy things like people or scampering rodents. (Hence Gloria Golotov's
fearlessness tonight while lying under Hannibal's mighty hoof.)

Glumly, you poke the "
       CALL            R0004 (#3c) -> -(SP)
       PRINT_RET       "'s cold, soft belly and realize it lacks the pizzazz to
get Hannibal to dancing."
L0009: JE              G6a,#c4 [FALSE] L0012
       JIN             #c4,"it" [TRUE] L0010
       PRINT_PADDR     G90
       PRINT           " the "
       CALL            R0004 (#c4) -> -(SP)
       PRINT_RET       "."
L0010: TEST_ATTR       "elephant",#0c [FALSE] L0011
       INSERT_OBJ      #c4,#32
       CALL            R0013 (#d53b,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "A humid stream of air from the "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           "'s trunk blasts your face. The "
       CALL            R0004 (#c4) -> -(SP)
       PRINT           " wriggles from your grip and scurries across the "
       CALL            R0004 (#d7) -> -(SP)
       PRINT_RET       " under Hannibal."
L0011: SET_ATTR        "elephant",#0c
       PRINT           "The mouse itself is in a fright. It squirms across the
back of "
       CALL            R0004 (#0b) -> -(SP)
       PRINT           ", and then dangles once again from your grip.

Wide-eyed, the bull "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           " takes one giant lumbering step backward. Its "
       CALL            R0004 (#40) -> -(SP)
       PRINT_RET       "s jingle as the bull begins rocking with slow-motion
nervousness from side to side."
L0012: JE              G6a,#bb [TRUE] L0013
       JE              G6a,#41 [FALSE] L0015
       JIN             "water","bucket" [FALSE] L0015
L0013: TEST_ATTR       "elephant",#0c [FALSE] L0014
       CALL            R0011 (#4c,#8d) -> -(SP)
       RTRUE           
L0014: INSERT_OBJ      "water",#32
       CALL            R0013 (#d53b,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "Hannibal eagerly snakes his thick trunk over to the "
       CALL            R0004 (#41) -> -(SP)
       PRINT           " and with a quick snort siphons out all of the "
       CALL            R0004 (#bb) -> -(SP)
       PRINT_RET       "."
L0015: PRINT           "With its lazy trunk, the bull grasps the "
       CALL            R0004 (G6a) -> -(SP)
       CALL            R0528 -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       SET_ATTR        #9a,#0c
       PRINT           " which snaps down hard, barely tickling the thick skin
of the pachyderm, who"
       JUMP            L0017
L0016: PRINT           " and"
L0017: PRINT           " flings it "
       RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [FALSE] L0018
       JE              G6a,#9a [FALSE] L0019
L0018: INSERT_OBJ      G6a,G00
       PRINT           "in your "
       CALL            R0004 (#29) -> -(SP)
       JUMP            L0020
L0019: INSERT_OBJ      G6a,"Elephant Tent"
       PRINT           "behind itself"
L0020: PRINT_PADDR     G5d
       RTRUE           
L0021: JE              G7a,#7a [FALSE] L0022
       PRINT           "You can feel the warm, slobbery end of the "
       CALL            R0004 (#8d) -> -(SP)
       PRINT_RET       "'s trunk against your cheek."
L0022: JE              G7a,#62 [FALSE] L0023
       CALL            R0297 (#1d) -> -(SP)
       RTRUE           
L0023: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#0c [FALSE] RFALSE
       CALL            R0297 (#1a) -> -(SP)
       RTRUE           

Routine R0648, 0 locals ()

       TEST_ATTR       "elephant",#0c [FALSE] L0002
       ADD             G01,#0a -> G01
       INSERT_OBJ      "elephant",#32
       JE              G00,#af,#0d [FALSE] RTRUE
       CLEAR_ATTR      "Menagerie",#12
       CLEAR_ATTR      "Near White Wagon",#12
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4c,#0c
       NEW_LINE        
       PRINT           "Loudly trumpeting its frustration, Hannibal of the
Jungle thunders out of the tent, shearing its "
       CALL            R0004 (#40) -> -(SP)
       PRINT           " with a dull thud. The raging bull stampedes "
       JE              G00,#0d [FALSE] L0001
       PRINT           "past you and "
L0001: PRINT_RET       "through a fence to the southwest."
L0002: JE              G00,#af [FALSE] RFALSE
       RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0003
       NEW_LINE        
       PRINT           "Spouting point-blank from the "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           "'s trunk, a blast of warm "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " sprays you in the face."
       JUMP            L0004
L0003: NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#8d) -> -(SP)
       PRINT           " lazily draws its trunk upward, ejecting the "
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " across its broad back."
L0004: NEW_LINE        
       RTRUE           

Routine R0649, 0 locals ()

       JZ              G06 [TRUE] RFALSE
       JZ              G96 [TRUE] RFALSE
       JIN             "elephant","Menagerie" [TRUE] RFALSE
       RTRUE           

Routine R0650, 0 locals ()

       CALL            R0013 (#d5dc,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       TEST_ATTR       "Comrade Thumb",#0c [FALSE] L0001
       JIN             "Comrade Thumb",G00 [FALSE] L0002
L0001: JZ              G2b [FALSE] L0004
L0002: JZ              G69 [FALSE] L0003
       INSERT_OBJ      "Comrade Thumb","Clown Alley"
L0003: CALL            R0014 (#d5dc) -> -(SP)
       STOREW          (SP)+,#00,#00
       RFALSE          
L0004: CLEAR_ATTR      "Comrade Thumb",#06
       CLEAR_ATTR      "secret panel",#0c
       SET_ATTR        "dealer",#0c
       TEST_ATTR       "Comrade Thumb",#0c [TRUE] L0005
       INSERT_OBJ      "Comrade Thumb",G00
       SET_ATTR        "Comrade Thumb",#0c
       NEW_LINE        
       PRINT           "For an instant you can hear the treading of light feet
on the ground. The figure of "
       CALL            R0004 (#db) -> -(SP)
       PRINT_RET       " appears out of the darkness, flailing his small arms
and babbling up at you in his native tongue. He then pauses a moment to think."
L0005: CALL            R0014 (#d5dc) -> -(SP)
       STOREW          (SP)+,#00,#00
       NEW_LINE        
       PRINT           "Suddenly animated again by an idea, the little comrade
taps on your foot and points stridently in the direction of the Blue Room. He
then looks around with an air of suspicion, backing cautiously away into the
night."
       NEW_LINE        
       CALL            R0299 (#b9,#5d) -> -(SP)
       CALL            R0299 (#6d,#5d) -> -(SP)
       INSERT_OBJ      "Comrade Thumb","Clown Alley"
       STORE           G4c,#01
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           

Routine R0651, 0 locals ()

       CALL            R0354 ("menage") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           G6a,#3d
       CALL            R0332 -> -(SP)
       RET_POPPED      
L0001: CALL            R0339 (#40) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JIN             "elephant",G00 [FALSE] L0002
       CALL            R0346 (#40) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#99,#75 [FALSE] RFALSE
       PRINT           "You barely manage to budge the "
       CALL            R0004 (#40) -> -(SP)
       PRINT_RET       "."

Routine R0652, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "You are standing outside of the elephant "
       CALL            R0004 (#34) -> -(SP)
       PRINT           ". Along its side wall to the north sits a "
       CALL            R0004 (#0c) -> -(SP)
       PRINT           " with "
       CALL            R0004 (#bf) -> -(SP)
       PRINT_RET       " poking out of it. The menagerie is northwest of here.

Facing you on the east side there is a big old plywood sideshow front, faded
beyond recognition. It serves as the barrier wall of an enclosed structure
behind the elephant tent."
L0001: JE              L00,#01 [FALSE] RFALSE
       CALL            R0001 (#5d6c) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G7a,#06,#05,#07 [FALSE] RFALSE
       PRINT_RET       "Not so fast."

Routine R0653, 0 locals ()

       TEST_ATTR       "secret panel",#0f [FALSE] L0001
       RET             #e8
L0001: TEST_ATTR       "cage door",#0f [FALSE] L0002
       RET             #c0
L0002: CALL            R0255 -> -(SP)
       RFALSE          

Routine R0654, 0 locals ()

       TEST_ATTR       "secret panel",#13 [FALSE] L0001
       PRINT_PADDR     G40
       NEW_LINE        
       RFALSE          
L0001: TEST_ATTR       "secret panel",#0f [TRUE] L0002
       PRINT           "The "
       CALL            R0004 (#d4) -> -(SP)
       PRINT           " is closed."
       NEW_LINE        
       RFALSE          
L0002: RET             #e8

Routine R0655, 0 locals ()

       JE              Gb4,#0a [FALSE] L0001
       JZ              G8c [TRUE] L0002
L0001: CALL            R0347 (#e5) -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#14,#75,#4a [TRUE] L0003
       JE              G7a,#2a,#1c [FALSE] RFALSE
L0003: JE              G00,#af [FALSE] L0004
       CALL            R0297 (#1c) -> -(SP)
       RET_POPPED      
L0004: JE              G00,#79 [FALSE] L0005
       CALL            R0297 (#18) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#51 [FALSE] L0006
       CALL            R0297 (#1e) -> -(SP)
       RET_POPPED      
L0006: JE              G00,#ce [FALSE] RFALSE
       CALL            R0297 (#1a) -> -(SP)
       RET_POPPED      

Routine R0656, 0 locals ()

       JE              G7a,#81,#69,#68 [TRUE] L0001
       JE              G7a,#35,#44 [TRUE] L0001
       JE              G00,#0d [FALSE] L0002
       JE              G7a,#75 [FALSE] L0002
L0001: CALL            R0011 (#61,#bf) -> -(SP)
       RTRUE           
L0002: JE              G7a,#75 [FALSE] RFALSE
       STORE           Gbc,#05
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "So you're taking up basket-weaving now?"

Routine R0657, 0 locals ()

       CALL            R0499 (#d7) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G00,#83 [TRUE] RFALSE
       CALL            R0347 (#00,S119) -> -(SP)
       RET_POPPED      

Routine R0658, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "This barred rectangular hovel is blanketed with straw
and has the look, if not the smell, of a human dwelling. Its southside door "
       TEST_ATTR       "cage door",#0f [FALSE] L0001
       PRINT           "stands open"
       JUMP            L0002
L0001: PRINT           "is closed"
L0002: PRINT_PADDR     G5d
       RTRUE           

Routine R0659, 0 locals ()

       CALL            R0354 ("keys") -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       TEST_ATTR       "skeleton key",#10 [TRUE] L0001
       PRINT           "(It's just one key.)"
       NEW_LINE        
       NEW_LINE        
L0001: CALL            R0660 -> -(SP)
       RET_POPPED      

Routine R0660, 0 locals ()

       CALL            R0661 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0339 (G6a) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G7a,#3b [TRUE] L0001
       TEST_ATTR       "skeleton key",#10 [FALSE] L0001
       JE              Gc6,#81 [TRUE] RFALSE
       CALL            R0346 (#0e) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#42 [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#0e) -> -(SP)
       PRINT_RET       " is attached to a hoop ring."
L0002: JE              G7a,#3b [FALSE] L0003
       CALL            R0275 -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       JE              G6a,#81 [FALSE] RFALSE
       TEST_ATTR       "skeleton key",#10 [FALSE] RFALSE
       CALL            R0011 (#7b,#0e,#81) -> -(SP)
       RTRUE           
L0003: JE              G7a,#6c,#7e [FALSE] L0004
       JE              G6a,#0e [TRUE] L0005
L0004: JE              G7a,#75 [FALSE] RFALSE
       JE              Gc6,#0e [FALSE] RFALSE
       JE              G6a,#0e [FALSE] RFALSE
L0005: PRINT_RET       "The key ring is welded shut."

Routine R0661, 0 locals ()

       TEST_ATTR       G6a,#10 [FALSE] RFALSE
       JE              G7a,#18,#68,#7b [FALSE] RFALSE
       JE              Gc6,#81 [FALSE] RFALSE
       INSERT_OBJ      G6a,"it"
       CLEAR_ATTR      G6a,#10
       CLEAR_ATTR      G6a,#06
       JE              G6a,#0e [FALSE] L0001
       TEST_ATTR       "skeleton key",#12 [TRUE] L0001
       ADD             G01,#0a -> G01
L0001: SET_ATTR        G6a,#12
       PRINT           "Using the "
       CALL            R0004 (#81) -> -(SP)
       PRINT           ", you fish the hoop ring off the "
       CALL            R0004 (#53) -> -(SP)
       PRINT           ". It slides down the raised pole and jingles into "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       "."

Routine R0662, 0 locals ()

       JE              #62,Gaf [FALSE] L0006
       TEST_ATTR       "roustabout",#0c [FALSE] L0005
       JE              G7a,#4c [TRUE] L0005
       PRINT           "The "
       CALL            R0004 (#62) -> -(SP)
       JE              G7a,#a9,#75,#45 [FALSE] L0001
       JE              G6a,#03 [TRUE] L0002
L0001: JE              G7a,#6b [FALSE] L0003
       JE              G6a,#03 [FALSE] L0003
       JE              Gc6,#48 [FALSE] L0003
L0002: STORE           G4c,#05
       ADD             G01,#0a -> G01
       STORE           Gbd,#be
       CALL            R0013 (#4836,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "roustabout",#32
       CALL            R0013 (#b37f,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           " goes tearing out through the wings."
       JUMP            L0004
L0003: PRINT           ", though he possesses a vocabulary of over 800 words
and can comprehend something a bit more complex than a simple two-word command,
seems unable to act upon your words, perhaps because this is not one of his
usual duties."
L0004: NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0005: STORE           Gaf,#d3
       CALL            R0011 (#16,#62,#92) -> -(SP)
       STORE           Gaf,#62
       RTRUE           
L0006: JE              G7a,#16 [FALSE] L0007
       JE              G6a,#62 [FALSE] L0007
       PRINT           "The "
       CALL            R0004 (#62) -> -(SP)
       PRINT_RET       ", alas, doesn't relate well to strangers. He ignores
you."
L0007: JE              G7a,#42 [FALSE] L0010
       TEST_ATTR       "roustabout",#0c [FALSE] L0008
       PRINT           "He's standing at attention"
       JUMP            L0009
L0008: PRINT           "He looks flea-bitten, slack-jawed and hangdog"
L0009: PRINT_PADDR     G5d
       RTRUE           
L0010: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#0e,#05 [FALSE] RFALSE
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      

Routine R0663, 1 local (0000)

       PRINT           "A "
       CALL            R0004 (#62) -> -(SP)
       PRINT           " stands nearby."
       RTRUE           

Routine R0664, 0 locals ()

       JE              G7a,#4a [FALSE] L0001
       JE              G4c,#0e,#05 [FALSE] L0001
       CALL            R0297 (#1b) -> -(SP)
       RET_POPPED      
L0001: CALL            R0499 (#be) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             "pair of headphones",G00 [FALSE] L0002
       CALL            R0337 (#be) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JE              G7a,#a1,#a7 [TRUE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#80,#24) -> -(SP)
       RTRUE           
L0002: CALL            R0347 (#be) -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      

Routine R0665, 0 locals ()

       JE              Gc6,#a1 [FALSE] L0001
       JE              G7a,#17,#93,#16 [TRUE] RFALSE
L0001: PRINT_RET       "This isn't his usual beat."

Routine R0666, 1 local (0000)

       JIN             "pair of headphones","Mahler" [FALSE] L0002
       JE              G7a,#75 [TRUE] L0002
       JE              G7a,#71,#7f,#42 [TRUE] L0001
       JE              G7a,#7c,#2d,#0f [TRUE] L0001
       JE              G7a,#5b [TRUE] L0001
       CALL            R0339 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: CALL            R0004 (#09) -> -(SP)
       PRINT           " has the "
       CALL            R0004 (#24) -> -(SP)
       PRINT_RET       "."
L0002: JE              G7a,#71,#3f,#2d [TRUE] L0003
       JE              G7a,#0f,#7f [FALSE] L0004
L0003: JE              G4b,#7c [FALSE] L0004
       CALL            R0667 (#01) -> -(SP)
L0004: JE              G7a,#7d,#42 [FALSE] L0010
       MUL             G35,#3e -> L00
       PRINT           "It's a nice "
       CALL            R0004 (#24) -> -(SP)
       PRINT           " with a built-in cassette player which contains a tape,
which is now "
       JE              G4b,#71 [FALSE] L0005
       PRINT           "playing"
       JUMP            L0009
L0005: JE              G4b,#0f [FALSE] L0006
       PRINT           "advancing"
       JUMP            L0009
L0006: JE              G4b,#7f [FALSE] L0007
       PRINT           "rewinding"
       JUMP            L0009
L0007: JE              G4b,#7c [FALSE] L0008
       PRINT           "recording"
       JUMP            L0009
L0008: PRINT           "not spinning"
L0009: PRINT           ". The controls allow you to either play, record,
advance, rewind or eject the tape. A counter on the player reads ["
       PRINT_NUM       L00
       PRINT_RET       "]."
L0010: JE              G7a,G4b [FALSE] L0012
       JE              G7a,#71,#5b [FALSE] L0011
       PRINT_RET       "It's already playing."
L0011: PRINT_RET       "That's what the tape is already doing."
L0012: JE              G7a,#7c,#0f,#71 [FALSE] L0013
       JE              G35,#0f [TRUE] L0014
L0013: JE              G7a,#7f [FALSE] L0017
       JZ              G35 [FALSE] L0017
L0014: PRINT           "You're at the very "
       JE              G35,#0f [FALSE] L0015
       PRINT           "end"
       JUMP            L0016
L0015: PRINT           "beginning"
L0016: PRINT_RET       " of the tape."
L0017: JE              G7a,#7c,#0f,#71 [TRUE] L0018
       JE              G7a,#7f [FALSE] L0020
L0018: CALL            R0013 (#dc17,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4b,G7a
       JE              G7a,#7c [FALSE] L0019
       PRINT_RET       "The small mike crackles open."
L0019: CALL            R0668 (#01) -> -(SP)
       RTRUE           
L0020: JE              G7a,#5b [FALSE] L0021
       CALL            R0011 (#71,#24) -> -(SP)
       RTRUE           
L0021: JE              G7a,#3f,#2d [FALSE] L0026
       STORE           G4b,#00
       PRINT           "The tape "
       CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] L0022
       PRINT           "stops spinning"
       JUMP            L0023
L0022: JE              G7a,#2d [FALSE] L0023
       PRINT_RET       "isn't even running."
L0023: JE              G7a,#3f [FALSE] L0024
       CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] L0024
       PRINT           " but "
L0024: JE              G7a,#3f [FALSE] L0025
       PRINT           "simply will not eject"
L0025: CALL            R0014 (#dc17) -> -(SP)
       STOREW          (SP)+,#00,#00
       PRINT_PADDR     G5d
       RTRUE           
L0026: JE              G7a,#6c [FALSE] L0027
       PRINT_RET       "The headphones won't open up."
L0027: JE              G7a,#77 [FALSE] L0028
       PRINT_RET       "The headphones, seemingly tailored for a pinhead, fit
you like a vise. And since they can listened to without being worn, you remove
them."
L0028: JE              G7a,#75 [FALSE] L0029
       JIN             "pair of headphones","Mahler" [FALSE] L0029
       TEST_ATTR       "Mahler",#0c [FALSE] L0029
       CALL            R0004 (#09) -> -(SP)
       PRINT           " has a fit as you snatch away the source of his
listening pleasure. "
       CALL            R0623 -> -(SP)
       RET_POPPED      
L0029: JE              G7a,#4b [FALSE] L0032
       JIN             "pair of headphones","Mahler" [FALSE] L0030
       PRINT           "It's "
       PRINT_PADDR     G70
       RTRUE           
L0030: JE              G4b,#71 [FALSE] L0031
       LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02,#00 [FALSE] L0031
       CALL            R0011 (#4b,#37) -> -(SP)
       RTRUE           
L0031: JE              G4b,#71,#7f,#0f [FALSE] RFALSE
       STORE           G4c,#63
       CALL            R0013 (#4836,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       RTRUE           
L0032: JE              G7a,#80,#0e [FALSE] RFALSE
       PRINT           "It would only fall on deaf ears."
       NEW_LINE        
       STORE           G1f,#01
       RTRUE           

Routine R0667, 2 locals (0000, 0000)

       JE              G7a,#80 [FALSE] L0001
       JE              G6a,#24 [FALSE] L0001
       STOREW          G9f,G35,#03
       JUMP            L0004
L0001: CALL            R0674 -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STOREW          G9f,G35,#02
       JUMP            L0004
L0002: CALL            R0290 (#30) -> -(SP)
       GET_PROP        (SP)+,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0290 (#30) -> L01
       CALL            R0290 (#24) -> -(SP)
       JE              L01,(SP)+ [FALSE] L0003
       TEST_ATTR       "transistor radio",#18 [FALSE] L0003
       STOREW          G9f,G35,#04
       JUMP            L0004
L0003: STOREW          G9f,G35,#01
L0004: JZ              L00 [FALSE] RTRUE
       INC             G35
       RTRUE           

Routine R0668, 3 locals (0000, 0000, 0001)

       JE              G4c,#63 [FALSE] L0001
       STORE           L02,#00
L0001: CALL            R0289 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G4b,#0f,#7f [FALSE] L0009
       JE              G4b,#0f [FALSE] L0002
       STORE           L01,#01
L0002: JZ              L00 [TRUE] L0005
       CALL            R0669 -> -(SP)
       PRINT           "the cassette tape begins to "
       JZ              L01 [TRUE] L0003
       PRINT           "advance"
       JUMP            L0004
L0003: PRINT           "rewind"
L0004: PRINT           " rapidly"
       JUMP            L0008
L0005: JZ              L02 [TRUE] L0006
       NEW_LINE        
L0006: PRINT           "The tape continues whirring "
       JZ              L01 [TRUE] L0007
       PRINT           "forward"
       JUMP            L0008
L0007: PRINT           "backward"
L0008: PRINT_PADDR     G5d
       JUMP            L0019
L0009: JE              G4b,#71 [FALSE] L0019
       JZ              L00 [TRUE] L0010
       CALL            R0669 -> -(SP)
       PRINT           "you hear from the headphones "
       JUMP            L0012
L0010: JZ              L02 [TRUE] L0011
       NEW_LINE        
L0011: PRINT           "The tape continues to play, emitting "
L0012: LOADW           G9f,G35 -> -(SP)
       JZ              (SP)+ [FALSE] L0015
       PRINT           "the blare of a Jimi Hendrix guitar solo"
       JE              G35,#03,#04 [FALSE] L0018
       PRINT           ". You can also hear, in the background, the subliminal
low tones of a "
       TEST_ATTR       "Rimshaw the Incomparable",#0c [FALSE] L0013
       PRINT           "voice you recognize as Rimshaw's."
       JUMP            L0014
L0013: PRINT           "hypnotic voice."
L0014: PRINT_RET       " He repeats these words over and over again: "At the
clap of my hands you shall obey my every command.""
L0015: LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02 [FALSE] L0016
       PRINT           "the sounds of classical music"
       JUMP            L0018
L0016: LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#04 [FALSE] L0017
       PRINT           "the noise of AM radio"
       JUMP            L0018
L0017: PRINT           "background hiss"
L0018: PRINT_PADDR     G5d
L0019: JZ              L00 [TRUE] RTRUE
       JL              G35,#10 [FALSE] RTRUE
       CALL            R0671 (#01) -> -(SP)
       RTRUE           

Routine R0669, 0 locals ()

       PRINT           "You adjust the controls and "
       RTRUE           

Routine R0670, 1 local (0000)

       JE              G4b,#71 [FALSE] L0001
       INC             G35
       JUMP            L0003
L0001: JE              G4b,#0f [FALSE] L0002
       ADD             G35,#05 -> G35
       JUMP            L0003
L0002: JE              G4b,#7f [FALSE] L0003
       SUB             G35,#05 -> G35
L0003: JIN             "pair of headphones","Mahler" [TRUE] RFALSE
       JE              G4b,#7c [FALSE] L0004
       CALL            R0667 -> -(SP)
       JUMP            L0007
L0004: JE              G35,#10 [TRUE] L0007
       CALL            R0290 (#24) -> -(SP)
       JE              (SP)+,G00 [FALSE] L0007
       JE              G4b,#71,#0f,#7f [FALSE] L0007
       CALL            R0001 (#5d6c) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       JE              G7a,#5b,#71 [TRUE] L0005
       JE              G7a,#0f,#7f [FALSE] L0006
L0005: JE              G6a,#24 [TRUE] L0007
L0006: CALL            R0668 -> -(SP)
L0007: JG              G35,#0f [TRUE] L0008
       JL              G35,#01 [FALSE] L0010
L0008: JE              G4b,#7c [FALSE] L0009
       JE              G35,#0f [FALSE] L0009
       CALL            R0667 (#01) -> -(SP)
L0009: CALL            R0672 -> -(SP)
L0010: JE              G7a,#42 [FALSE] L0011
       JE              G6a,#24 [TRUE] RTRUE
L0011: JE              G7a,#71,#7f [TRUE] RTRUE
       JE              G7a,#0f,#5b [TRUE] RTRUE
       CALL            R0289 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       CALL            R0671 -> -(SP)
       RTRUE           

Routine R0671, 2 locals (0000, 0000)

       STORE           L01,G35
       JZ              L00 [TRUE] L0003
       JE              G4b,#7f [FALSE] L0001
       SUB             G35,#05 -> L01
       JUMP            L0003
L0001: JE              G4b,#71 [FALSE] L0002
       ADD             G35,#01 -> L01
       JUMP            L0003
L0002: JE              G4b,#0f [FALSE] L0003
       ADD             G35,#05 -> L01
L0003: MUL             L01,#3e -> L01
       JG              L01,#00 [FALSE] RTRUE
       JL              L01,#03a3 [FALSE] RTRUE
       PRINT           "The counter reads ["
       PRINT_NUM       L01
       PRINT_RET       "]."

Routine R0672, 0 locals ()

       STORE           G4b,#00
       CALL            R0014 (#dc17) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0289 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "The tape suddenly halts."
       NEW_LINE        
L0001: JG              G35,#0f [FALSE] L0002
       STORE           G35,#0f
       RTRUE           
L0002: STORE           G35,#00
       RTRUE           

Routine R0673, 0 locals ()

       CALL            R0674 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0289 (#30) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
L0001: CALL            R0002 (#dc17) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       JE              G4b,#71 [FALSE] L0007
       LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02,#00 [FALSE] L0007
L0002: JE              G7a,#4b [FALSE] L0006
       CALL            R0674 -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0289 (#30) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
L0003: LOADW           G9f,G35 -> -(SP)
       JE              (SP)+,#02 [FALSE] L0005
L0004: PRINT_RET       "It has a calming effect on you."
L0005: PRINT_RET       "It's pretty irritating."
L0006: JE              G7a,#7c [FALSE] RFALSE
       CALL            R0289 (#24) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0011 (#7c,#24) -> -(SP)
       RTRUE           
L0007: CALL            R0347 (#37) -> -(SP)
       RET_POPPED      

Routine R0674, 1 local (0000)

       CALL            R0290 (#30) -> -(SP)
       GET_PROP        (SP)+,#06 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0290 (#30) -> L00
       CALL            R0290 (#24) -> -(SP)
       JE              L00,(SP)+ [FALSE] RFALSE
       TEST_ATTR       "transistor radio",#18 [FALSE] RFALSE
       JE              Gd1,#0492 [FALSE] RFALSE
       RTRUE           

Routine R0675, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT_RET       "The parlor, with its tufted black leather sofa, softly
lighted chandelier and darkly varnished paneling strives for a subdued
turn-of-the-century motif and is purposefully dimmed -- thus setting the mood
for conveyance, for squinting."
L0001: JE              L00,#01 [FALSE] RFALSE
       JIN             "Rimshaw the Incomparable",G00 [FALSE] RFALSE
       JE              G7a,#42 [FALSE] L0002
       JE              G6a,#4a,#14 [FALSE] L0002
       TEST_ATTR       G6a,#0c [TRUE] L0002
       SET_ATTR        G6a,#0c
       PRINT           "Before you can fix your gaze upon the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           ", "
       CALL            R0004 (#02) -> -(SP)
       PRINT           " speaks, "You are wondering about the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT           ". But I can assure you, there is nothing at all "
       CALL            R0003 (G03) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           " about it. Observe for "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           "." Rimshaw gestures in a grand manner toward"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       ". Amazing."
L0002: JE              G7a,#97,#3a [FALSE] RFALSE
       TEST_ATTR       G6a,#16 [FALSE] RFALSE
       TEST_ATTR       G6a,#14 [TRUE] RFALSE
       JE              G6a,#c4,#a5,#7a [TRUE] RFALSE
       CALL            R0676 -> -(SP)
       RET_POPPED      

Routine R0676, 0 locals ()

       CALL            R0004 (#02) -> -(SP)
       PRINT           " is also Rimshaw the Immaculate. He hands"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT_RET       " back to you."

Routine R0677, 0 locals ()

       JE              G7a,#31,#73,#6a [FALSE] L0001
       PRINT_PADDR     G05
       RTRUE           
L0001: JE              G7a,#7d,#42,#44 [FALSE] L0002
       CALL            R0011 (#42,#e7) -> -(SP)
       STORE           Gbd,#7a
       RTRUE           
L0002: JE              G7a,#6b [FALSE] L0003
       JE              Gc6,#df [FALSE] L0003
       JE              G00,#79 [FALSE] L0003
       CALL            R0011 (#6b,G6a,#d4) -> -(SP)
       RTRUE           
L0003: JE              G7a,#75 [FALSE] RFALSE
       JIN             "your ticket","dealer" [FALSE] RFALSE
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT_RET       " yanks it back."

Routine R0678, 0 locals ()

       JE              G7a,#31,#73,#6a [TRUE] L0001
       JE              G7b,"poke" [FALSE] L0007
L0001: JIN             "your ticket","it" [TRUE] L0002
       STORE           Gbd,#7a
       PRINT_PADDR     G90
       PRINT_RET       " the ticket."
L0002: TEST_ATTR       G6a,#0c [FALSE] L0003
       PRINT_RET       "It already is."
L0003: JE              G6a,#47 [FALSE] L0004
       TEST_ATTR       "pink dot",#0c [TRUE] L0005
L0004: JE              G6a,#e7 [FALSE] L0006
       TEST_ATTR       "blue dot",#0c [FALSE] L0006
L0005: STORE           Gbc,#03
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT_RET       "Were you ever considering a career with the circus?"
L0006: SET_ATTR        G6a,#0c
       PRINT           "You perforate the "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       "."
L0007: JE              G7a,#3b,#97,#3a [TRUE] L0008
       JE              G7a,#47 [FALSE] L0009
L0008: JE              G6a,#e7,#47 [FALSE] L0009
       CALL            R0011 (G7a,#7a,Gc6) -> -(SP)
       RTRUE           
L0009: JE              G7a,#42 [FALSE] RFALSE
       CALL            R0557 (#7a) -> -(SP)
       RET_POPPED      

Routine R0679, 2 locals (0000, 0000)

       TEST_ATTR       "blue dot",#0c [FALSE] L0001
       PRINT_PADDR     L00
       RTRUE           
L0001: PRINT_PADDR     L01
       RTRUE           

Routine R0680, 0 locals ()

       TEST_ATTR       "Rimshaw the Incomparable",#0c [TRUE] L0001
       JE              G7a,#0e [TRUE] RFALSE
L0001: TEST_ATTR       "Rimshaw the Incomparable",#0c [TRUE] L0005
       JE              G7a,#16 [TRUE] L0005
       CALL            R0337 (#02) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       JE              G7a,#97,#85,#47 [FALSE] L0005
       JE              G6a,#7a [FALSE] L0005
L0002: SET_ATTR        "Rimshaw the Incomparable",#0c
       PRINT           "Rimshaw steps nearer, speaking in a very spiritual
tone, "I can tell immediately that you "
       CALL            R0004 (#1d) -> -(SP)
       PRINT           " possess great powers of transcendence. It is your eyes
which bespeak your affinity with those mysterious energies that choose to
remain unseen."
       JE              G7a,#97,#85,#47 [FALSE] L0003
       JE              G6a,#7a [FALSE] L0003
       PRINT           """
       NEW_LINE        
       NEW_LINE        
       CALL            R0683 -> -(SP)
       RET_POPPED      
L0003: JE              Gaf,#02 [FALSE] L0004
       JE              G7a,#51 [FALSE] L0004
       JE              G6a,#1d [FALSE] L0004
       CALL            R0292 (#7a) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       NEW_LINE        
       NEW_LINE        
       CALL            R0683 (#00,#01) -> -(SP)
       NEW_LINE        
       NEW_LINE        
       CALL            R0011 (#51,#1d) -> -(SP)
       RTRUE           
L0004: STORE           Gbd,#02
       PRINT           " Ticket, please.""
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0005: JE              Gaf,#02 [FALSE] L0019
       JE              G7a,#93 [FALSE] L0006
       JE              G6a,#1d [FALSE] L0006
       STORE           Gaf,#d3
       CALL            R0011 (#16,#02,Gc6) -> -(SP)
       STORE           Gaf,#02
       RTRUE           
L0006: JE              G7a,#4c [FALSE] L0007
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#02) -> -(SP)
       STORE           Gaf,#02
       RTRUE           
L0007: JE              G7a,#51 [FALSE] L0009
       JE              G6a,#1d [FALSE] L0009
       CALL            R0682 (#0f) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#14 [TRUE] L0008
       PRINT           "You settle into the tufted "
       CALL            R0004 (#14) -> -(SP)
       PRINT           " and "
L0008: CALL            R0004 (#02) -> -(SP)
       PRINT           " approaches you purposefully. Poised in front of you,
the hypnotist points both of his hands' tension-filled fingers at you and
commands, "RE-LAX!!! Now count backward slowly from 100.""
       NEW_LINE        
       NEW_LINE        
       STORE           G34,#00
       PRINT           "With transcendental calm you begin mouthing the words
one hundred, ninety-nine, ninety-eight ..."
       CALL            R0685 -> -(SP)
       RET_POPPED      
L0009: JE              G7a,#42,#7d,#7a [FALSE] L0010
       JE              G6a,#33 [TRUE] L0011
L0010: JE              G7a,#93 [FALSE] L0014
       JE              G6a,#1d [FALSE] L0014
       JE              Gc6,#33 [FALSE] L0014
L0011: CALL            R0682 (#33) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       INC             G57
       SET_ATTR        "your head",#0c
       CALL            R0004 (#02) -> -(SP)
       PRINT           " places his fingertips on top of your skull and begins
going carefully over its hills and valleys, pausing occasionally for comment.
"Intelligence: I ascertain you play Infocom games. Personally I enjoyed
"Enchanter" ... Romance: A "
       TEST_ATTR       "pink dot",#0c [FALSE] L0012
       PRINT           "tall handsome stranger"
       JUMP            L0013
L0012: PRINT           "woman of mysterious beauty"
L0013: PRINT_RET       " will soon come into your life ... Travel: You will
visit the Grand Canyon before the year is out."

With this, Rimshaw gives a perfunctory slap up the side of your head and says,
"End of Session.""
L0014: JE              G7a,#42,#7a,#7d [FALSE] L0015
       JE              G6a,#0b [TRUE] L0017
L0015: JE              G7a,#42,#7d,#0e [FALSE] L0016
       JE              G6a,#6b [TRUE] L0017
L0016: JE              G7a,#93 [FALSE] L0018
       JE              G6a,#1d [FALSE] L0018
       JE              Gc6,#0b,#6b [FALSE] L0018
L0017: CALL            R0682 (#0b) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       SET_ATTR        "your hand",#0c
       INC             G57
       CALL            R0004 (#02) -> -(SP)
       PRINT           " takes "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       " and studies the palm lines with the intensity of a
cartographer, finally saying in a dramatic whisper, "Tonight you have an
appointment with destiny.""
L0018: PRINT           "Rimshaw remains aloof."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0019: JE              G7a,#97,#85,#47 [FALSE] L0026
       JE              G6a,#7a [FALSE] L0023
       JZ              G96 [TRUE] L0022
       JZ              G72 [TRUE] L0020
       JL              G57,#04 [FALSE] L0021
L0020: CALL            R0683 (#01) -> -(SP)
       RET_POPPED      
L0021: PRINT_RET       ""I have done all that I can do. No more.""
L0022: CALL            R0683 -> -(SP)
       RET_POPPED      
L0023: JE              G6a,#0b [FALSE] L0024
       STORE           Gaf,#02
       CALL            R0011 (#7d,#0b) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           
L0024: JE              G6a,#24 [FALSE] L0025
       JZ              Gcb [FALSE] L0025
       STORE           Gcb,#01
       CALL            R0004 (#02) -> -(SP)
       PRINT           " begins to lose his composure, regains it again
quickly, does a slow burn, stomps around the "
       CALL            R0004 (#2d) -> -(SP)
       PRINT_RET       " a bit, then reassumes his previous lordly manner."
L0025: TEST_ATTR       "clown mask",#14 [TRUE] RFALSE
       CALL            R0011 (#16,#02,G6a) -> -(SP)
       RTRUE           
L0026: JE              G7a,#16 [FALSE] L0027
       JE              Gc6,#6b,#0b,#33 [FALSE] L0027
       STORE           Gaf,#02
       CALL            R0011 (#7d,Gc6) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           
L0027: JE              G7a,#16 [FALSE] RFALSE
       JE              G6a,#02 [FALSE] RFALSE
       CALL            R0004 (#02) -> -(SP)
       PRINT           " draws his hand to his forehead, closes his eyes,
meditates a moment, then offers, "About"
       JIN             Gc6,#2b [TRUE] L0028
       JE              Gc6,#02 [FALSE] L0029
L0028: PRINT           " that"
       JUMP            L0030
L0029: CALL            R0302 (Gc6,#01) -> -(SP)
L0030: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0031
       PRINT           " I am unable"
       JUMP            L0032
L0031: PRINT           " it is impossible for me"
L0032: PRINT_RET       " to soothsay.""

Routine R0681, 1 local (0000)

       STORE           Gbd,#02
       PRINT           "Standing here, attired in an immaculate black tuxedo,
is none other than Rimshaw himself."
       RTRUE           

Routine R0682, 1 local (0000)

       JZ              G96 [FALSE] L0001
       PRINT_RET       ""Ticket, please.""
L0001: TEST_ATTR       L00,#0c [TRUE] L0002
       JE              G7a,#51 [FALSE] RFALSE
       JG              G57,#03 [TRUE] L0002
       JZ              G72 [TRUE] RFALSE
L0002: PRINT_RET       "With the arrogant self-satisfaction common to members
of his profession, he responds, "It's been done.""

Routine R0683, 2 locals (0000, 0000)

       STORE           G96,#01
       CALL            R0013 (#e1bc,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "He "
       JZ              L00 [TRUE] L0001
       PRINT           "glances at"
       JUMP            L0002
L0001: PRINT           "punches"
L0002: PRINT           " your ticket and hands it back."
       STORE           Gbd,#02
       JZ              L01 [FALSE] RTRUE
       PRINT_RET       " "Whadda you want?""

Routine R0684, 0 locals ()

       CALL            R0014 (#e1bc) -> -(SP)
       STOREW          (SP)+,#00,#00
       TEST_ATTR       "canvas wall",#0c [FALSE] RFALSE
       CLEAR_ATTR      #9a,#06
       RFALSE          

Routine R0685, 0 locals ()

       CALL            R0299 (#d3,#9f) -> -(SP)
       CALL            R0300 (#51,#7d) -> -(SP)
       CALL            R0300 (#39,#16) -> -(SP)
       INSERT_OBJ      "long line","Connection"
       INSERT_OBJ      "concessionaire","Connection"
       INSERT_OBJ      "concession stand","Connection"
       INSERT_OBJ      "roar","Standing Room Only"
       INSERT_OBJ      "uniform","hawker"
       STORE           G95,#01
       STORE           G58,G8f
       STORE           G8f,#0731
       STORE           G8c,#01
       STORE           Gcd,#00
       STORE           Gc8,#01
       CLEAR_ATTR      "Connection",#12
       CLEAR_ATTR      "Standing Room Only",#12
       CALL            R0013 (#6caa,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       NEW_LINE        
       PRINT           "Your mind begins to drift back, back, back into the
most recently forgotten past ..."
       NEW_LINE        
       NEW_LINE        
       CALL            R0284 (#b6) -> -(SP)
       RET_POPPED      

Routine R0686, 1 local (0000)

       CALL            R0299 (#9f,#d3) -> -(SP)
       CALL            R0299 (#7d,#51) -> -(SP)
       CALL            R0299 (#16,#39) -> -(SP)
       CLEAR_ATTR      "long line",#12
       CLEAR_ATTR      "In the Wings",#12
       CLEAR_ATTR      "hawker",#0c
       CLEAR_ATTR      "monkey",#0c
       CLEAR_ATTR      "long line",#0c
       CLEAR_ATTR      "Jerry",#0c
       CLEAR_ATTR      "group of ballplayers",#0c
       CLEAR_ATTR      "two-dollar-and-25-cent frozen banana",#0c
       INSERT_OBJ      "concessionaire",#32
       INSERT_OBJ      "two-dollar-and-25-cent frozen banana",#32
       INSERT_OBJ      "uniform","Comrade Thumb"
       INSERT_OBJ      "monkey","detective"
       INSERT_OBJ      "long line",#32
       INSERT_OBJ      "short line",#32
       INSERT_OBJ      "hawker",#32
       INSERT_OBJ      "concession stand",#32
       STORE           G5c,#00
       STORE           G8f,G58
       STORE           G00,#0f
       STORE           G8c,#00
       STORE           G2d,#00
       STORE           Ga9,#01
       CALL            R0014 (#867e) -> -(SP)
       STOREW          (SP)+,#00,#00
       CALL            R0014 (#6caa) -> -(SP)
       STOREW          (SP)+,#00,#00
       INSERT_OBJ      "it","leather sofa"
       JE              G7a,#a1 [FALSE] L0001
       PRINT           "You suddenly drift back to reality ..."
       JZ              G72 [FALSE] L0002
       PRINT           " "
       CALL            R0004 (#02) -> -(SP)
       PRINT           " looks disappointed at your limited progress under
hypnosis"
       JL              G57,#04 [FALSE] L0002
       PRINT           " but he seems willing to try again"
       JUMP            L0002
L0001: PRINT           "wake up ..."
L0002: PRINT           "."
       NEW_LINE        
       NEW_LINE        
       CALL            R0170 -> -(SP)
       RET_POPPED      

Routine R0687, 1 local (0000)

       JE              L00,#01 [FALSE] L0001
       JE              G7a,#a2 [FALSE] L0001
       CALL            R0351 (#14) -> -(SP)
       RET_POPPED      
L0001: JE              L00,#01 [FALSE] L0002
       JE              G7a,#97,#3a [FALSE] L0002
       CALL            R0676 -> -(SP)
       RET_POPPED      
L0002: JZ              L00 [FALSE] RFALSE
       JE              G7a,#5a [FALSE] L0003
       PRINT_RET       "This is hypnotism, not psychoanalysis."
L0003: JE              G7a,#2c,#6c [FALSE] L0004
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0004: JE              G7a,#3c [FALSE] RFALSE
       JE              Gc6,#14 [FALSE] RFALSE
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           

Routine R0688, 0 locals ()

       JE              G7a,#75,#7e [FALSE] RFALSE
       CALL            R0588 (#02) -> -(SP)
       RET_POPPED      

Routine R0689, 0 locals ()

       JE              G7a,#0e [FALSE] RFALSE
       CALL            R0001 (#e1bc) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           Gaf,#02
       CALL            R0011 (G7a,G6a) -> -(SP)
       STORE           Gaf,#d3
       RTRUE           

Routine R0690, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "This is about midway along the midway. "
       CALL            R0614 (#01) -> -(SP)
       JIN             "crowd",G00 [FALSE] RFALSE
       NEW_LINE        
       PRINT_RET       "On the north side of the midway, a crowd is drawn
tightly around a sideshow entrance."

Routine R0691, 0 locals ()

       JE              G7a,#7d,#42 [FALSE] L0007
       PRINT           "The "
       CALL            R0004 (#df) -> -(SP)
       JE              G00,#57 [FALSE] L0001
       PRINT           " heralding the charms of Tina is"
       JUMP            L0003
L0001: JE              G00,#79,#c2 [FALSE] L0002
       PRINT           " is"
       JUMP            L0003
L0002: PRINT           "s are"
L0003: JE              G00,#79 [FALSE] L0004
       PRINT_RET       " warped and faded beyond recognition."
L0004: PRINT           " an eyeful of dazzling, flamboyant artwork similar to
that represented in the circus program along with glowing introductions of the
performers. "
       JE              G00,#69 [FALSE] L0005
       PRINT           "Each "
       JUMP            L0006
L0005: PRINT           "The "
L0006: PRINT_RET       "front has a small entrance."
L0007: JE              G7a,#62 [FALSE] L0008
       JE              G00,#79 [FALSE] L0008
       PRINT           "You can't. The "
       CALL            R0004 (#df) -> -(SP)
       PRINT_RET       " serves as a barrier to an enclosed area."
L0008: JE              G7a,#14,#40,#2a [FALSE] L0011
       JE              G00,#69 [FALSE] L0009
       PRINT_RET       "North or south?"
L0009: JE              G00,#c2 [FALSE] L0010
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      
L0010: JE              G00,#79 [FALSE] RFALSE
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0011: JE              G7a,#6b [FALSE] RFALSE
       JE              G6a,#7a [FALSE] RFALSE
       JE              G00,#79 [FALSE] RFALSE
       JE              G1d,#07 [TRUE] L0012
       PRINT_PADDR     Gba
       RTRUE           
L0012: CLEAR_ATTR      "secret panel",#13
       JZ              G18 [FALSE] L0013
       TEST_ATTR       "Blue Room",#12 [TRUE] L0013
       ADD             G01,#0a -> G01
L0013: PRINT           "The ticket disappears under the plywood"
       JE              Gb5,#02 [FALSE] L0016
       TEST_ATTR       "dealer",#0c [TRUE] L0016
       TEST_ATTR       "secret panel",#0c [FALSE] L0014
       INSERT_OBJ      "your ticket",#32
       PRINT_PADDR     G5d
       RTRUE           
L0014: SET_ATTR        "secret panel",#0c
       PRINT           " and then "
       JE              Gb5,#02 [FALSE] L0015
       TEST_ATTR       "dealer",#0c [TRUE] L0015
       INSERT_OBJ      "your ticket",G00
       PRINT_RET       "reappears."
L0015: CLEAR_ATTR      "secret panel",#0c
       CALL            R0695 -> -(SP)
       RET_POPPED      
L0016: CALL            R0695 (#01) -> -(SP)
       RET_POPPED      

Routine R0692, 0 locals ()

       CLEAR_ATTR      "secret panel",#0f
       JE              G00,#e8,#79 [FALSE] RFALSE
       JE              G7a,#2c [FALSE] L0001
       JE              G6a,#d4 [TRUE] L0002
L0001: NEW_LINE        
L0002: PRINT           "The spring-loaded "
       CALL            R0004 (#d4) -> -(SP)
       PRINT_RET       " slides shut."

Routine R0693, 0 locals ()

       JE              G7a,#6b [FALSE] L0001
       JE              G6a,#7a [FALSE] L0001
       CALL            R0011 (#6b,#7a,#df) -> -(SP)
       RTRUE           
L0001: JE              G7a,#1c,#2a,#14 [FALSE] L0003
       JE              G00,#79 [FALSE] L0002
       CALL            R0297 (#1d) -> -(SP)
       RET_POPPED      
L0002: JE              G00,#e8 [FALSE] RFALSE
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#6c [FALSE] L0008
       JE              G00,#e8 [FALSE] L0007
       JE              Gb5,#01 [FALSE] L0006
       STORE           Gb5,#02
       STORE           G6c,#01
       PRINT           "You decide instead to make "
       JZ              G0f [TRUE] L0004
       PRINT           "one last"
       JUMP            L0005
L0004: PRINT           "a"
L0005: PRINT           " bet, and plunk 1 dollar down on the table."
       NEW_LINE        
       NEW_LINE        
       STORE           G47,#01
       STORE           G13,#64
       CALL            R0011 (#1a,#c1) -> -(SP)
       RTRUE           
L0006: CALL            R0013 (#e3c4,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       RFALSE          
L0007: PRINT_RET       "There's no handle."
L0008: JE              G7a,#2c [FALSE] RFALSE
       TEST_ATTR       "secret panel",#0f [TRUE] RTRUE
       RFALSE          

Routine R0694, 0 locals ()

       JE              G7a,#6b [FALSE] RFALSE
       RET             #d4

Routine R0695, 1 local (0000)

       SET_ATTR        "secret panel",#0f
       INSERT_OBJ      "your ticket","Blue Room"
       CALL            R0013 (#e3c4,#03) -> -(SP)
       STOREW          (SP)+,#00,#01
       JZ              L00 [TRUE] L0001
       PRINT           " and "
L0001: PRINT           "moments later a "
       CALL            R0004 (#d4) -> -(SP)
       PRINT_RET       " in the old sideshow front slides open."

Routine R0696, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       JE              G00,#96 [FALSE] L0001
       PRINT           "Dominating this once spacious room, geographic in her
enormity, mountainous in her irreducibility, t"
       JUMP            L0002
L0001: PRINT           "T"
L0002: PRINT           "he "
       CALL            R0004 (#cd) -> -(SP)
       PRINT           " sits (though no chair is visible) breathtakingly to
the "
       JE              G00,#96 [FALSE] L0003
       PRINT           "east"
       JUMP            L0004
L0003: PRINT           "west"
L0004: PRINT           ". "
       PRINT           "Paths around the attraction lead "
       JE              G00,#96 [FALSE] L0005
       PRINT_RET       "northeast and southeast. The exit is south."
L0005: PRINT_RET       "northwest and southwest."

Routine R0697, 0 locals ()

       STORE           G17,#00
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "Not while you're holding the "
       CALL            R0004 (#8c) -> -(SP)
       PRINT           "!"
       NEW_LINE        
       RFALSE          
L0001: JE              G29,#1b,#14 [FALSE] L0002
       RET             #c2
L0002: JE              G29,#1d [FALSE] L0003
       JE              G00,#96 [TRUE] L0004
L0003: JE              G29,#19 [FALSE] L0005
       JE              G00,#5b [FALSE] L0005
L0004: PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT           "'s in the way."
       NEW_LINE        
       RFALSE          
L0005: PRINT           "It's a long haul, the scenery changing little.
Eventually you arrive at ..."
       NEW_LINE        
       NEW_LINE        
       JE              G00,#5b [FALSE] L0006
       CALL            R0698 (#96) -> -(SP)
       RET_POPPED      
L0006: CALL            R0698 (#5b) -> -(SP)
       RET_POPPED      

Routine R0698, 1 local (0000)

       JIN             "transistor radio","fat lady" [FALSE] L0002
       TEST_ATTR       "transistor radio",#06 [FALSE] L0001
       CLEAR_ATTR      "transistor radio",#06
       JUMP            L0002
L0001: SET_ATTR        "transistor radio",#06
L0002: INSERT_OBJ      "fat lady",L00
       INSERT_OBJ      "fat lady's hand",L00
       RET             L00

Routine R0699, 0 locals ()

       CALL            R0337 (#cd) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G7a,#85,#47 [FALSE] L0007
       JE              Gc6,#cd [FALSE] L0007
       TEST_ATTR       G6a,#19 [TRUE] L0007
L0001: JIN             "transistor radio","fat lady" [FALSE] L0002
       TEST_ATTR       "transistor radio",#06 [TRUE] L0002
       PRINT           "She doesn't seem to notice you with that radio in her
ear."
       NEW_LINE        
       JUMP            L0006
L0002: TEST_ATTR       "one-dollar-and-85-cent granola bar",#0c [FALSE] L0004
       JIN             "transistor radio","fat lady" [FALSE] L0004
       PRINT           "She merely sighs wistfully, which creates a gale-force
gust"
       JZ              G17 [FALSE] L0003
       STORE           G17,#01
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       PRINT           ", and cranes her wrecking-ball-sized hand over to you"
L0003: PRINT_PADDR     G5d
       JUMP            L0006
L0004: PRINT           "She appears oblivious"
       TEST_ATTR       "one-dollar-and-85-cent granola bar",#0c [FALSE] L0005
       PRINT           ", once again,"
L0005: PRINT           " to both sight and sound."
       NEW_LINE        
L0006: CALL            R0298 -> -(SP)
       RET_POPPED      
L0007: CALL            R0342 (#cd) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT_RET       " is unaffected by your malice."
L0008: JE              G7a,#26,#25,#1c [TRUE] L0009
       JE              G7a,#24 [FALSE] L0010
L0009: PRINT_RET       "The slope is too steep."
L0010: JE              G7a,#89 [FALSE] L0011
       PRINT_RET       "There's no smell."
L0011: JE              G7a,#42 [FALSE] L0014
       PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT           " is wearing a "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           ", and the expression on her face is sad and distant,
almost Rushmorean. "
       TEST_ATTR       "transistor radio",#06 [TRUE] L0012
       JIN             "transistor radio","fat lady" [FALSE] L0012
       PRINT           "She appears to be holding a small radio up to her ear."
       JUMP            L0013
L0012: JZ              G17 [TRUE] L0013
       PRINT           "The "
       CALL            R0004 (#8c) -> -(SP)
       PRINT           " is reached out."
L0013: NEW_LINE        
       RTRUE           
L0014: JE              G7a,#85,#47 [FALSE] L0017
       JE              Gc6,#cd [FALSE] L0017
       JIN             "transistor radio","fat lady" [FALSE] L0015
       TEST_ATTR       "transistor radio",#06 [TRUE] L0015
       CALL            R0011 (#4c,#cd) -> -(SP)
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0015: JE              G6a,#a3 [FALSE] L0016
       INSERT_OBJ      "one-dollar-and-85-cent granola bar",#32
       SET_ATTR        "one-dollar-and-85-cent granola bar",#0c
       PRINT           "Tina is quick to confiscate the "
       CALL            R0004 (#a3) -> -(SP)
       PRINT           " from "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       " and grinds it up without hesitation. Turning her
far-away gaze slowly in your direction, she seems to notice you for the first
time this evening."
L0016: TEST_ATTR       G6a,#19 [FALSE] RFALSE
       PRINT           "The "
       CALL            R0004 (G6a) -> -(SP)
       PRINT_RET       " is obviously not part of her usual diet, since she
ignores it."
L0017: JE              G7a,#56 [FALSE] L0019
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       CALL            R0011 (#56,#8c) -> -(SP)
       RTRUE           
L0018: TEST_ATTR       "blue dot",#0c [FALSE] RFALSE
       PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT_RET       " is far too distant for your affection."
L0019: JE              G7a,#84 [FALSE] L0020
       JE              G6a,#0b [FALSE] L0020
       CALL            R0011 (#75,#8c) -> -(SP)
       RTRUE           
L0020: JE              G7a,#67 [FALSE] RFALSE
       JE              G00,#96 [FALSE] L0021
       CALL            R0297 (#1e) -> -(SP)
       RTRUE           
L0021: CALL            R0297 (#18) -> -(SP)
       RTRUE           

Routine R0700, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "It looks like an enormously over-inflated rubber
glove."
L0001: JE              G7a,#75 [FALSE] L0003
       JZ              G17 [TRUE] L0002
       INSERT_OBJ      "fat lady's hand","it"
       CLEAR_ATTR      "fat lady's hand",#06
       STORE           G17,#00
       PRINT           "As you take hold, the "
       CALL            R0004 (#8c) -> -(SP)
       PRINT_RET       " becomes relaxed, its full weight now residing in your
arms like a sandbag and making your knees buckle."
L0002: CALL            R0346 (#8c) -> -(SP)
       PRINT_RET       ". It's too far ... "inland" if you will."
L0003: JE              G7a,#3a [FALSE] L0004
       INSERT_OBJ      "fat lady's hand",G00
       SET_ATTR        "fat lady's hand",#06
       STORE           G17,#00
       PRINT_RET       "The hand is craned away from you."
L0004: JE              G7a,#3b [FALSE] L0005
       JE              Gc6,#8c [FALSE] L0005
       CALL            R0011 (#47,G6a,#cd) -> -(SP)
       RTRUE           
L0005: JE              G7a,#3b,#47,#97 [TRUE] L0006
       JE              G7a,#3c [FALSE] L0007
L0006: JE              G6a,#8c [FALSE] L0007
       PRINT_RET       "It's too unwieldy."
L0007: JE              G7a,#83 [FALSE] L0010
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       PRINT           "Though unable to budge the "
       CALL            R0004 (#8c) -> -(SP)
       PRINT           ", your friendly intentions are nevertheless understood.
"
       CALL            R0701 -> -(SP)
       RTRUE           
L0008: JZ              G17 [TRUE] L0009
       CALL            R0011 (#75,#8c) -> -(SP)
       JIN             "fat lady's hand","it" [FALSE] RFALSE
       NEW_LINE        
       CALL            R0701 -> -(SP)
       RTRUE           
L0009: PRINT_PADDR     G90
       PRINT           " "
       CALL            R0004 (#8c) -> -(SP)
       PRINT_RET       "."
L0010: JE              G7a,#56 [FALSE] L0012
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       CALL            R0011 (#3a,G6a) -> -(SP)
       RTRUE           
L0011: CALL            R0701 -> -(SP)
       RET_POPPED      
L0012: JE              G7a,#7a [FALSE] RFALSE
       CALL            R0292 (#8c) -> -(SP)
       JZ              (SP)+ [FALSE] L0013
       JZ              G17 [TRUE] L0014
L0013: CALL            R0701 -> -(SP)
       RTRUE           
L0014: CALL            R0011 (#75,#8c) -> -(SP)
       RTRUE           

Routine R0701, 0 locals ()

       JE              G00,#5b [FALSE] L0001
       INSERT_OBJ      "transistor radio","West Half of Fat Lady"
       JUMP            L0002
L0001: INSERT_OBJ      "transistor radio","East Half of Fat Lady"
L0002: STORE           G17,#00
       SET_ATTR        "transistor radio",#18
       CLEAR_ATTR      "transistor radio",#06
       SET_ATTR        "fat lady's hand",#06
       CALL            R0013 (#e84f,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       INSERT_OBJ      "fat lady's hand",G00
       PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT_RET       " appears quite taken by your kindnesses. She clasps
both her hands up to her chins, and stares ahead in teary silence."

Routine R0702, 0 locals ()

       CALL            R0499 (#30) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             "transistor radio","fat lady" [FALSE] L0001
       TEST_ATTR       "transistor radio",#06 [FALSE] L0001
       CALL            R0347 (#30) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#2c,#6c [FALSE] L0002
       PRINT_RET       "It's one of those non-opening models."
L0002: JE              G7a,#7c [FALSE] L0003
       CALL            R0011 (#7c) -> -(SP)
       RTRUE           
L0003: CALL            R0339 (#30) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       JIN             "transistor radio","fat lady" [FALSE] L0004
       SET_ATTR        "transistor radio",#06
       PRINT           "The "
       CALL            R0004 (#cd) -> -(SP)
       PRINT           " casually passes the "
       CALL            R0004 (#30) -> -(SP)
       PRINT_RET       " over to her opposite hand."
L0004: JE              G7a,#42 [FALSE] L0006
       JIN             "transistor radio","fat lady" [TRUE] L0006
       PRINT           "The AM dial is "
       TEST_ATTR       "transistor radio",#18 [FALSE] L0005
       PRINT           "illuminated and set to "
       PRINT_NUM       Gd1
       PRINT_RET       "."
L0005: PRINT_RET       "darkened."
L0006: JE              G7a,#4b [FALSE] L0008
       JIN             "transistor radio","fat lady" [FALSE] L0007
       PRINT_RET       "You're not close enough."
L0007: TEST_ATTR       "transistor radio",#18 [FALSE] RFALSE
       CALL            R0289 (#30) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           
L0008: JE              G7a,#9a [FALSE] L0009
       CALL            R0011 (#9a,#12,Gc6) -> -(SP)
       RTRUE           
L0009: JE              G7a,#5b [FALSE] L0011
       TEST_ATTR       "transistor radio",#18 [TRUE] L0010
       SET_ATTR        "transistor radio",#18
       CALL            R0013 (#e84f,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "The "
       CALL            R0004 (#12) -> -(SP)
       PRINT_RET       " bursts forth in a circle of light."
L0010: PRINT_RET       "It is."
L0011: JE              G7a,#2d [FALSE] RFALSE
       TEST_ATTR       "transistor radio",#18 [FALSE] L0012
       CALL            R0014 (#e84f) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "transistor radio",#18
       PRINT           "The "
       CALL            R0004 (#12) -> -(SP)
       PRINT_RET       " flickers and grows dark."
L0012: PRINT_RET       "It's already off."

Routine R0703, 0 locals ()

       CALL            R0289 (#30) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       TEST_ATTR       "transistor radio",#18 [FALSE] RFALSE
       CALL            R0001 (#5d6c) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G7a,#4b [FALSE] L0001
       JE              G6a,#30 [TRUE] L0002
L0001: NEW_LINE        
L0002: PRINT           "Drifting out from the radio is "
       GET_PROP        G00,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       JE              Gd1,#0492 [FALSE] L0003
       TEST_ATTR       "radio dial",#0c [FALSE] L0003
       JZ              G1a [FALSE] L0003
       PRINT_RET       "an appeal for cash: The announcer repeats that she will
not play a certain piece by Vivaldi until just one more caller phones in a
pledge."
L0003: JE              Gd1,#0492 [FALSE] L0004
       PRINT_PADDR     G70
       JE              G41,#03,#04 [FALSE] RTRUE
       JE              Gce,#03 [FALSE] RTRUE
       TEST_ATTR       "radio dial",#0c [TRUE] RTRUE
       SET_ATTR        "radio dial",#0c
       NEW_LINE        
       PRINT_RET       "There is a sudden break in the music. A female
announcer comes on the air and, after reminding her audience that this is
Pledge Week for WPDL, in a honeyed voice begins making an appeal for cash."
L0004: PRINT_RET       "the typical noisy hubbub of AM radio."
L0005: PRINT_RET       "a jumble of static."

Routine R0704, 0 locals ()

       CALL            R0499 (#c5) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0289 (#30) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G00,#3b [TRUE] L0001
       CALL            R0347 (#00,S122) -> -(SP)
       RET_POPPED      
L0001: JE              G7a,#9a [FALSE] L0002
       JE              G6a,#12 [TRUE] L0003
L0002: JE              G7a,#5b [FALSE] RFALSE
       JE              G6a,#c5 [FALSE] RFALSE
L0003: STORE           Gac,#0492
       CALL            R0011 (#9a,#12,#c1) -> -(SP)
       RTRUE           

Routine R0705, 0 locals ()

       JE              G7a,#7d,#42 [FALSE] L0001
       CALL            R0011 (#42,#30) -> -(SP)
       RTRUE           
L0001: JE              G7a,#5b,#9b,#9a [TRUE] L0002
       JE              G7a,#2d [FALSE] L0003
L0002: JIN             "transistor radio","fat lady" [FALSE] L0003
       CALL            R0011 (#75,#30) -> -(SP)
       RTRUE           
L0003: JE              G7a,#9a [FALSE] RFALSE
       JE              Gc6,#c1 [FALSE] RFALSE
       TEST_ATTR       "transistor radio",#18 [TRUE] L0004
       PRINT_RET       "The dial is darkened and the numbers invisible."
L0004: JE              Gac,Gd1 [FALSE] L0005
       PRINT_RET       "That's where it's tuned to now!"
L0005: JG              Gac,#0640 [TRUE] L0006
       JL              Gac,#0226 [FALSE] L0007
L0006: PRINT_RET       "That's off the AM scale."
L0007: STORE           Gd1,Gac
       GET_PROP        G00,#06 -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       JE              Gac,#0492 [FALSE] L0009
       PRINT           "You "
       TEST_ATTR       "radio dial",#0c [FALSE] L0008
       JZ              G1a [FALSE] L0008
       PRINT           "should "
L0008: PRINT_RET       "have found an oasis of nice, soothing music."
L0009: PRINT           "The very erratic signal is carrying, for the moment, "
       RANDOM          #64 -> -(SP)
       JL              #23,(SP)+ [TRUE] L0010
       PRINT           "the latest in post-punk."
       JUMP            L0012
L0010: RANDOM          #64 -> -(SP)
       JL              #20,(SP)+ [TRUE] L0011
       PRINT           "an advertising pitch."
       JUMP            L0012
L0011: PRINT           "a radio call-in debate."
L0012: NEW_LINE        
       RTRUE           
L0013: CALL            R0706 (#01) -> -(SP)
       RET_POPPED      

Routine R0706, 1 local (0000)

       PRINT           "You pick up a faint signal at "
       PRINT_NUM       Gac
       PRINT           " ... then it drifts into static."
       JZ              L00 [TRUE] L0001
       PRINT           " The reception here is horrible."
L0001: NEW_LINE        
       RTRUE           

Routine R0707, 0 locals ()

       JE              G7a,#24,#26 [FALSE] RFALSE
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      

Routine R0708, 0 locals ()

       JIN             "Andrew",G00 [FALSE] L0003
       CALL            R0004 (#c8) -> -(SP)
       TEST_ATTR       "spiral staircase",#0c [TRUE] L0001
       PRINT           " goose-steps to a position in front of the "
       CALL            R0004 (#b1) -> -(SP)
       PRINT           ", dragging Jenny's high heel across the ground. There "
       CALL            R0004 (#c8) -> -(SP)
       JUMP            L0002
L0001: SET_ATTR        "spiral staircase",#0c
L0002: PRINT           " stands blocking your way up. Stiffly, he pats his
holster a couple of times and you hear its leather crinkle."
       NEW_LINE        
       RFALSE          
L0003: TEST_ATTR       "Wardrobe Closet",#12 [FALSE] L0004
       JE              G00,#b2 [FALSE] L0004
       PRINT           "You come out of the closet"
       JUMP            L0005
L0004: PRINT           "With a bizarre twist, the "
       CALL            R0004 (#b1) -> -(SP)
       PRINT           " leads up over the "
       CALL            R0004 (#53) -> -(SP)
       PRINT           " and then down"
L0005: PRINT_PADDR     G5d
       NEW_LINE        
       JE              G00,#b2 [FALSE] L0006
       RET             #6c
L0006: RET             #b2

Routine R0709, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "This is a cozy little drawing room where guests are
received. On the gloomy west side of the room, a "
       CALL            R0004 (#b1) -> -(SP)
       PRINT_RET       " leads upward."

Routine R0710, 0 locals ()

       CALL            R0337 (#07) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              #07,Gaf [TRUE] L0001
       JE              G7a,#85,#47 [FALSE] L0002
L0001: PRINT           "As two distinct personalities, the pair must be
addressed individually."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0002: JE              G7a,#42 [FALSE] L0004
       PRINT           "[You can't use the verb ""
       PRINT_ADDR      G7b
       JE              G7b,"examin" [FALSE] L0003
       PRINT           "e"
L0003: PRINT_RET       "" with multiple personalities. Each must be observed
individually.]"
L0004: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#06 [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      

Routine R0711, 1 local (0000)

       STORE           Gbd,#c8
       PRINT           "Andrew Jenny is the attraction of this sideshow. He
appears standoffish, she's looking bored."
       RTRUE           

Routine R0712, 0 locals ()

       JE              #c8,Gaf [FALSE] L0003
       JE              G7a,#93 [FALSE] L0001
       JE              G6a,#1d [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#16,#c8,Gc6) -> -(SP)
       STORE           Gaf,#c8
       RTRUE           
L0001: JE              G7a,#4c [FALSE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#c8) -> -(SP)
       STORE           Gaf,#c8
       RTRUE           
L0002: PRINT           "Andrew displays a tight-lipped military reserve, and
says nothing."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#42 [FALSE] L0004
       CALL            R0013 (#9f7b,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0004 (#c8) -> -(SP)
       PRINT_RET       "'s wearing an army boot, combat fatigues with a black
leather shoulder holster, and a pith helmet. He sneers at you, his handlebar
mustache nearly poking his eye. "What are you staring at!""
L0004: CALL            R0718 -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       RET             #02
L0005: JE              G7a,#16 [FALSE] L0006
       JE              G6a,#c8 [FALSE] L0006
       JE              Gc6,#05 [FALSE] RFALSE
       CALL            R0004 (#c8) -> -(SP)
       PRINT_RET       " turns sarcastic. "My 'better' half -- ugh! Well ...
can't live with 'er, can't live without 'er.""
L0006: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#06 [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      

Routine R0713, 0 locals ()

       JE              G7a,#7a,#69,#75 [TRUE] L0001
       JE              G7a,#7e,#81,#6a [TRUE] L0001
       JE              G7a,#44 [FALSE] L0003
L0001: JZ              G93 [TRUE] L0002
       CALL            R0124 -> -(SP)
       RTRUE           
L0002: CALL            R0004 (#c8) -> -(SP)
       PRINT_RET       " snaps his half body into a martial arts fighting pose,
which puts you off."
L0003: JE              G7a,#42 [FALSE] RFALSE
       PRINT           "The overall effect of "
       CALL            R0004 (#72) -> -(SP)
       PRINT_RET       " is unmistakable: He's dressed to kill."

Routine R0714, 0 locals ()

       RET             #05

Routine R0715, 0 locals ()

       JE              #05,Gaf [FALSE] L0003
       JE              G7a,#93 [FALSE] L0001
       JE              G6a,#1d [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#16,#05,Gc6) -> -(SP)
       STORE           Gaf,#05
       RTRUE           
L0001: JE              G7a,#4c [FALSE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#05) -> -(SP)
       STORE           Gaf,#05
       RTRUE           
L0002: PRINT           "Jenny remains aloof."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#42 [FALSE] L0004
       PRINT_RET       "She has on a svelte calf-length black evening dress and
a pink feather boa draped over her shoulder."
L0004: CALL            R0718 -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       RET             #02
L0005: JE              G7a,#16 [FALSE] L0006
       JE              G6a,#05 [FALSE] L0006
       JE              Gc6,#c8 [FALSE] RFALSE
       PRINT_RET       "She sighs. "Mr. Tough Guy, huh? Deep down he's not
really this mean. Just don't get on his bad side, honey.""
L0006: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#06 [FALSE] RFALSE
       CALL            R0297 (#1f) -> -(SP)
       RET_POPPED      

Routine R0716, 0 locals ()

       JE              G7a,#7e,#7a,#75 [TRUE] L0001
       JE              G7a,#6f,#81,#44 [FALSE] L0003
L0001: JZ              G93 [TRUE] L0002
       CALL            R0124 -> -(SP)
       RTRUE           
L0002: CALL            R0004 (#05) -> -(SP)
       PRINT_RET       " flicks her feather boa into your face, tickling your
nose. "Quit that, honey.""
L0003: JE              G7a,#61,#69 [FALSE] RFALSE
       CALL            R0717 -> -(SP)
       RET_POPPED      

Routine R0717, 0 locals ()

       PRINT_RET       "This is a sideshow, not a peep show."

Routine R0718, 0 locals ()

       JE              G7a,#47,#85 [FALSE] L0001
       JE              G6a,#d8 [FALSE] L0001
       TEST_ATTR       "cigarette case",#0c [FALSE] L0001
       JZ              G73 [FALSE] L0004
L0001: JE              Gc6,#25,#23,#60 [TRUE] L0002
       JE              Gc6,#d8,#1f,#54 [FALSE] RFALSE
L0002: JE              G7a,#93,#16 [FALSE] L0003
       JE              G6a,#07,#05,#c8 [FALSE] L0003
       TEST_ATTR       "cigarette case",#0c [TRUE] L0004
L0003: JE              G7a,#93 [FALSE] RFALSE
       JZ              G73 [TRUE] RFALSE
L0004: INSERT_OBJ      "Andrew",#32
       INSERT_OBJ      "Jenny",#32
       INSERT_OBJ      "Andrew Jenny",#32
       STORE           G4c,#06
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       ADD             G01,#0a -> G01
       PRINT           "Jenny looks very pensive for a few moments. As the
memory of events in which she unknowingly took part slowly dawns upon the
hemisphere of her mind, a tear starts to well up in her eye, loads up with
mascara, and spills down her cheek. "
       CALL            R0292 (#d8) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       INSERT_OBJ      "cigarette case","Andrew"
       SET_ATTR        "cigarette case",#13
       PRINT           "Andrew impulsively snatches the "
       CALL            R0004 (#d8) -> -(SP)
       PRINT           " from you. "
       NEW_LINE        
       NEW_LINE        
L0005: PRINT_RET       ""Aha!" squeals Jenny, as she seems to recollect more
details of Andrew's dirty dealings. "And you're supposed to meet later on with
your fellow thugs at Katz's trailer, the big brute. Well you can just forget
about it, Andrew!"

There ensues a hurly-burly struggle between the opposing personalities trapped
within the one body. Jenny chases Andrew out of the sideshow amid shrieks of
rage which echo down the midway."

Routine R0719, 0 locals ()

       JE              G7a,#42 [FALSE] L0001
       PRINT_RET       "It is gilded with gold leaf and shows intricate design
work on its face."
L0001: JZ              G73 [TRUE] RFALSE
       JIN             "Andrew",G00 [FALSE] RFALSE
       TEST_ATTR       "cigarette case",#0c [TRUE] RFALSE
       JE              G7a,#47,#85 [FALSE] L0002
       JE              Gc6,#c8,#05,#07 [TRUE] L0003
L0002: JE              G7a,#16,#93 [FALSE] RFALSE
       JE              Gc6,#d8 [FALSE] RFALSE
       JE              G6a,#c8,#05,#07 [FALSE] RFALSE
L0003: SET_ATTR        "cigarette case",#0c
       PRINT           "As "
       CALL            R0004 (#c8) -> -(SP)
       PRINT           " realizes you know him to be the owner of the "
       CALL            R0004 (#d8) -> -(SP)
       PRINT_RET       ", his eye gets wide, and then, behind his distinguished
exterior, he begins to turn shades of purple."

Routine R0720, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT_RET       "You've reached the far end of the midway. A sideshow
front to the north advertises the "827 Pounds of Feminine Charm" that is Tina."

Routine R0721, 0 locals ()

       INC             G78
       CLEAR_ATTR      "conversation",#13
       JE              G78,#03 [FALSE] L0001
       JE              G00,#57 [FALSE] L0001
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " examines the label of the flask that he's holding then
takes a slug."
       NEW_LINE        
       JUMP            L0002
L0001: JE              G78,#05 [FALSE] L0002
       JE              G00,#57 [FALSE] L0002
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       STORE           G4c,#0b
       NEW_LINE        
       PRINT           "The pitchman gives the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " a final slap on the back and leads him through the "
       CALL            R0004 (#eb) -> -(SP)
       PRINT           "."
       NEW_LINE        
L0002: JE              G00,#57 [FALSE] L0003
       JE              G4c,#0b [FALSE] RFALSE
L0003: INSERT_OBJ      "Billy Monday",#32
       INSERT_OBJ      "detective",#32
       INSERT_OBJ      "keister",#32
       SET_ATTR        "conversation",#13
       CALL            R0014 (#ee2d) -> -(SP)
       STOREW          (SP)+,#00,#00
       RTRUE           

Routine R0722, 0 locals ()

       JE              #e0,Gaf [FALSE] L0005
       JE              G7a,#93 [FALSE] L0001
       JE              G6a,#1d [FALSE] L0001
       STORE           Gaf,#d3
       CALL            R0011 (#16,#e0,Gc6) -> -(SP)
       STORE           Gaf,#e0
       RTRUE           
L0001: JE              G7a,#4c [FALSE] L0002
       STORE           Gaf,#d3
       CALL            R0011 (#4c,#e0) -> -(SP)
       STORE           Gaf,#e0
       RTRUE           
L0002: JE              G7a,#33 [FALSE] L0003
       JE              Gbc,#08 [FALSE] L0003
       CALL            R0273 -> -(SP)
       RET_POPPED      
L0003: JE              G7a,#34 [FALSE] L0004
       JE              Gbc,#08 [FALSE] L0004
       CALL            R0182 -> -(SP)
       RET_POPPED      
L0004: PRINT_RET       "He just grins, revealing a gold tooth."
L0005: JE              G7a,#4b [FALSE] L0006
       JE              G00,#57 [FALSE] L0006
       CALL            R0011 (#4b,#18) -> -(SP)
       RTRUE           
L0006: JE              G7a,#42 [FALSE] L0007
       JE              G00,#57 [FALSE] RFALSE
       PRINT           "He's all smiles and solicitude toward the "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       "."
L0007: JE              G7a,#16 [FALSE] L0011
       JE              G6a,#e0 [FALSE] L0011
       JE              Gc6,#2e [FALSE] L0008
       PRINT           "He takes a deep breath. "Well, "
       CALL            R0679 (S123,S124) -> -(SP)
       PRINT_RET       ", step right up -- I don't care what's your sickness, I
don't care what's draggin' you down, don't tell me 'cause I don't want to know
whether it's pyorrhea, anorexia nervosa, sick headache, goiter, varicose veins,
bilious derangements, nervous debility ..." The pitchman realizes he's getting
nowhere with you and turns his attention back to the detective."
L0008: PRINT           ""I don't know much about that," he "
       JE              Gc6,#54 [FALSE] L0009
       CALL            R0724 -> -(SP)
       JUMP            L0010
L0009: PRINT           "says."
L0010: STORE           Gbc,#08
       CALL            R0013 (#5823,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           " "But have you asked me about "
       CALL            R0004 (#2e) -> -(SP)
       PRINT_RET       "?""
L0011: JE              G7a,#4a [FALSE] RFALSE
       JE              G4c,#07,#0b [FALSE] L0012
       CALL            R0297 (#19) -> -(SP)
       RET_POPPED      
L0012: JE              G4c,#0f [FALSE] RFALSE
       CALL            R0297 (#17) -> -(SP)
       RET_POPPED      

Routine R0723, 1 local (0000)

       JE              G00,#57 [FALSE] L0001
       PRINT           "Next to the "
       CALL            R0004 (#9f) -> -(SP)
       PRINT           ", the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           " is talking to a pitchman who's carrying an open trunk
that's strapped to his upper body."
       RTRUE           
L0001: CALL            R0004 (#e0) -> -(SP)
       PRINT           " is here."
       RTRUE           

Routine R0724, 0 locals ()

       PRINT           "grins, revealing a gold tooth."
       RTRUE           

Routine R0725, 0 locals ()

       JE              G7a,#14,#2a [FALSE] RFALSE
       CALL            R0011 (#14,#19) -> -(SP)
       RTRUE           

Routine R0726, 1 local (0000)

       JE              L00,#02 [FALSE] L0002
       INC             Gb5
       TEST_ATTR       "dealer",#0c [FALSE] L0001
       INSERT_OBJ      "your ticket","dealer"
       CALL            R0013 (#f188,#ffff) -> -(SP)
       STOREW          (SP)+,#00,#01
L0001: CALL            R0013 (#e3c4,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       PRINT           "As you enter, a blue haze of smoke stings your
eyeballs."
       NEW_LINE        
       NEW_LINE        
       RTRUE           
L0002: JE              L00,#03 [FALSE] L0003
       PRINT           "In the far "
       CALL            R0004 (#84) -> -(SP)
       PRINT           " of this tented enclosure a thick, undulating cloud of
smoke hovers over a "
       CALL            R0004 (#19) -> -(SP)
       PRINT           ". Straight across from you a tight-jawed dealer stands
over a "
       CALL            R0004 (#5f) -> -(SP)
       PRINT_RET       " covered with a green floor-length tablecloth."
L0003: JE              L00,#01 [FALSE] RFALSE
       JE              Gb5,#01 [TRUE] L0005
       TEST_ATTR       "dealer",#0c [TRUE] L0005
       INC             G18
       JE              G18,#01 [FALSE] L0004
       JZ              G2b [TRUE] L0004
       SET_ATTR        "Comrade Thumb",#06
       INSERT_OBJ      "Comrade Thumb",G00
       JUMP            L0007
L0004: JG              G18,#14 [FALSE] L0007
       JE              Gb5,#02 [FALSE] L0007
       CALL            R0013 (#f134,#01) -> -(SP)
       STOREW          (SP)+,#00,#01
       JUMP            L0007
L0005: JG              G65,#02 [FALSE] L0007
       CALL            R0337 (#74) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       CALL            R0337 (#e0) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       JE              G7a,#85,#47 [FALSE] L0007
       JE              Gc6,#e0,#74 [FALSE] L0007
L0006: PRINT           "You get no response from him."
       NEW_LINE        
       STORE           G34,#00
       RTRUE           
L0007: JE              G7a,#1a [FALSE] RFALSE
       TEST_ATTR       "dealer",#0c [FALSE] L0009
       JIN             "dealer",G00 [FALSE] L0008
       PRINT           "He's refuses to deal with you."
       NEW_LINE        
       STORE           Gbd,#74
       RTRUE           
L0008: PRINT_RET       "All bets are off."
L0009: JE              G6a,#98 [TRUE] L0010
       JZ              G13 [TRUE] L0010
       JZ              G13 [FALSE] L0011
L0010: CALL            R0356 (#01) -> -(SP)
       RET             #02
L0011: JE              G6a,#c1 [FALSE] L0012
       JZ              G47 [FALSE] L0012
       CALL            R0356 (#01) -> -(SP)
       RET             #02
L0012: JE              G6a,#c1,#ba [TRUE] L0013
       PRINT_RET       "You can only bet money."
L0013: JL              G8f,G13 [FALSE] L0014
       PRINT           "You can't bet more than you have."
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RTRUE           
L0014: JG              G8f,#7676 [FALSE] L0015
       JE              Gb5,#02 [FALSE] L0015
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " examines your winnings."
       CALL            R0728 -> -(SP)
       RTRUE           
L0015: JG              #19,G13 [FALSE] L0016
       PRINT           ""The minimum bet is 25 cents.""
       NEW_LINE        
       CALL            R0298 -> -(SP)
       RTRUE           
L0016: JL              #c8,G13 [FALSE] L0017
       PRINT_RET       ""No bets over 2 dollars. House rules.""
L0017: JZ              G0f [FALSE] L0018
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " shuffles the four decks and breathes a sigh."
       NEW_LINE        
L0018: STORE           G0f,#01
       JE              Gb5,#02 [TRUE] L0019
       JZ              G2b [TRUE] L0020
       JG              G8f,#59d8 [TRUE] L0019
       JL              G8f,#0191 [FALSE] L0020
L0019: STORE           Gb5,#02
       STORE           G6c,#01
       SET_ATTR        "Comrade Thumb",#06
       INSERT_OBJ      "Comrade Thumb",G00
L0020: JE              G6a,#ba [FALSE] L0023
       CALL            R0355 (#f2) -> -(SP)
       JZ              (SP)+ [TRUE] L0021
       STORE           G13,#c8
       JUMP            L0022
L0021: STORE           G13,#64
L0022: STORE           G47,#01
L0023: CALL            R0364 (G13) -> -(SP)
       ADD             G8f,(SP)+ -> G8f
       RTRUE           

Routine R0727, 0 locals ()

       JE              G00,#e8 [FALSE] RFALSE
       NEW_LINE        
       CALL            R0004 (#e0) -> -(SP)
       PRINT           " suddenly emerges from the cloud of smoke in the "
       CALL            R0004 (#84) -> -(SP)
       PRINT           " and whispers something to the "
       CALL            R0004 (#74) -> -(SP)
       PRINT           ". "
       CALL            R0728 -> -(SP)
       RET_POPPED      

Routine R0728, 0 locals ()

       STORE           G18,#19
       CALL            R0014 (#f188) -> -(SP)
       STOREW          (SP)+,#00,#00
       CLEAR_ATTR      "secret panel",#0f
       CALL            R0014 (#e3c4) -> -(SP)
       STOREW          (SP)+,#00,#00
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " summarily eighty-sixes you from the room."
       NEW_LINE        
       NEW_LINE        
       CALL            R0284 (#79) -> -(SP)
       RET_POPPED      

Routine R0729, 1 local (0000)

       JZ              L00 [FALSE] RFALSE
       TEST_ATTR       "shawl-jacket combo",#14 [TRUE] RTRUE
       TEST_ATTR       "dress-suit combination",#14 [FALSE] RFALSE
       RTRUE           

Routine R0730, 0 locals ()

       JL              G65,#04 [FALSE] L0001
       JE              G00,#e8 [TRUE] L0001
       CALL            R0014 (#f188) -> -(SP)
       STOREW          (SP)+,#00,#00
       RFALSE          
L0001: INC             G65
       JE              G65,#01 [FALSE] L0003
       PRINT           "You notice a different dealer standing behind the "
       CALL            R0004 (#5f) -> -(SP)
       PRINT           ". He is scrutinizing "
       CALL            R0004 (#7a) -> -(SP)
       PRINT           "."
       CALL            R0729 (G36) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       STORE           G36,#01
       PRINT           " He glances at you and gives off a look that says,
"I've just about seen it all now.""
L0002: NEW_LINE        
       RTRUE           
L0003: JE              G65,#02 [FALSE] L0004
       INSERT_OBJ      "deck of cards",#32
       INSERT_OBJ      "dealer",#32
       NEW_LINE        
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " gathers up the cards and disappears into the "
       CALL            R0004 (#58) -> -(SP)
       PRINT_RET       "."
L0004: JE              G65,#03 [FALSE] L0005
       INSERT_OBJ      "Billy Monday",G00
       INSERT_OBJ      "dealer",G00
       NEW_LINE        
       PRINT           "You see the dealer approaching with "
       CALL            R0004 (#e0) -> -(SP)
       PRINT_RET       "."
L0005: JE              G65,#04 [FALSE] L0013
       INSERT_OBJ      "Billy Monday",#32
       STORE           G4c,#07
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       CALL            R0013 (#e3c4,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       PRINT           "The pair of thugs hurry up to confront you. "
       JIN             "keister",#32 [FALSE] L0006
       CALL            R0728 -> -(SP)
       RFALSE          
L0006: CALL            R0292 (#e3) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       INSERT_OBJ      "keister",#32
       PRINT           "Scuffling with you over the "
       CALL            R0004 (#e3) -> -(SP)
       PRINT           ", they manage to wrestle it away. "
       CALL            R0004 (#e0) -> -(SP)
       PRINT           " shouts "Hey Rube!" then"
       JUMP            L0008
L0007: CALL            R0004 (#e0) -> -(SP)
       PRINT           " grabs the "
       CALL            R0004 (#e3) -> -(SP)
       PRINT           ","
       INSERT_OBJ      "keister",#32
L0008: TEST_ATTR       "secret panel",#0f [FALSE] L0009
       PRINT           " sights the open"
       JUMP            L0010
L0009: PRINT           " throws open the"
       SET_ATTR        "secret panel",#0f
       CALL            R0013 (#e3c4,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
L0010: PRINT           " panel and bolts through the opening as the dealer "
       TEST_ATTR       "pink dot",#0c [FALSE] L0011
       PRINT           "shoves you away"
       JUMP            L0012
L0011: PRINT           "doubles you over with a punch to your midsection"
L0012: PRINT_PADDR     G5d
       RTRUE           
L0013: JL              G65,#08 [FALSE] L0014
       JE              G00,#79 [FALSE] L0014
       STORE           G65,#07
       STORE           G4c,#0f
       CALL            R0013 (#4836,#02) -> -(SP)
       STOREW          (SP)+,#00,#01
       NEW_LINE        
       PRINT_RET       "You see the silhouette of a man on top of the cage. He
throws something bulky onto the tent, then climbs up after it."
L0014: JG              G65,#0c [FALSE] RFALSE
       CALL            R0014 (#f188) -> -(SP)
       STOREW          (SP)+,#00,#00
       RTRUE           

Routine R0731, 0 locals ()

       CALL            R0337 (#74) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G7a,#47,#85 [FALSE] L0006
       JE              Gc6,#74 [FALSE] L0006
L0001: TEST_ATTR       "dealer",#0c [FALSE] L0002
       PRINT           "This dealer is even less friendly than the first. He
plain ignores you."
       NEW_LINE        
       JUMP            L0005
L0002: PRINT           "Poker-faced and eagle-eyed, he doesn't "
       JE              G7a,#4c [FALSE] L0003
       PRINT           "acknowledge"
       JUMP            L0004
L0003: PRINT           "respond"
L0004: PRINT           ", but merely gestures for you to bet."
       NEW_LINE        
L0005: CALL            R0298 -> -(SP)
       RET_POPPED      
L0006: JE              G7a,#1a [FALSE] L0007
       CALL            R0356 (#01) -> -(SP)
       RET_POPPED      
L0007: CALL            R0342 (#74) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       PRINT_RET       "He's bigger than you."
L0008: JE              G7a,#14,#4a [FALSE] RFALSE
       JIN             "dealer",G00 [TRUE] RFALSE
       JE              G00,#e8 [FALSE] RFALSE
       CALL            R0011 (#14,#19) -> -(SP)
       RTRUE           

Routine R0732, 0 locals ()

       PRINT           "As you approach, "
       CALL            R0004 (#e0) -> -(SP)
       JIN             "Billy Monday",G00 [TRUE] L0001
       PRINT           " appears and"
L0001: PRINT           " intercepts you"
       CALL            R0292 (#e3) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       INSERT_OBJ      "keister",#32
       PRINT           ", snatching away the "
       CALL            R0004 (#e3) -> -(SP)
L0002: PRINT           ". "
       RTRUE           

Routine R0733, 0 locals ()

       JE              G7a,#69,#68,#61 [FALSE] L0001
       JIN             "Comrade Thumb",G00 [FALSE] L0001
       CALL            R0011 (#42,#db) -> -(SP)
       RTRUE           
L0001: JE              G7a,#69,#68,#61 [FALSE] L0003
       TEST_ATTR       "dealer",#0c [FALSE] L0002
       TEST_ATTR       "keister",#10 [FALSE] L0002
       INSERT_OBJ      "keister",G00
       CLEAR_ATTR      "keister",#0f
       SET_ATTR        "keister",#0a
       PRINT_PADDR     G7c
       PRINT           " what appears to be a suitcase under the "
       CALL            R0004 (#5f) -> -(SP)
       PRINT_RET       "."
L0002: CALL            R0176 -> -(SP)
       RTRUE           
L0003: JE              G7a,#3c [FALSE] RFALSE
       JE              Gc6,#5f [FALSE] RFALSE
       JE              G6a,#c1 [FALSE] L0004
       JZ              G47 [FALSE] L0005
L0004: JE              G6a,#98 [FALSE] L0006
L0005: CALL            R0011 (#1a,G6a) -> -(SP)
       RTRUE           
L0006: JIN             "dealer",G00 [FALSE] L0007
       CALL            R0011 (#75,#08) -> -(SP)
       RTRUE           
L0007: CALL            R0124 -> -(SP)
       RET_POPPED      

Routine R0734, 0 locals ()

       RET             #08

Routine R0735, 0 locals ()

       JE              G7a,#71 [FALSE] L0001
       CALL            R0011 (#3c,#98,#5f) -> -(SP)
       RTRUE           
L0001: JE              G7a,#30,#42 [FALSE] L0002
       PRINT_RET       "Four decks are being used. They look clean."
L0002: JE              G7a,#75 [FALSE] RFALSE
       PRINT           "The dealer stays "
       CALL            R0004 (#0b) -> -(SP)
       PRINT_RET       "."

Routine R0736, 0 locals ()

       JE              G7a,#2a,#71,#14 [FALSE] RFALSE
       JE              G00,#e8 [FALSE] RFALSE
       JIN             "dealer",G00 [FALSE] L0001
       PRINT           "The "
       CALL            R0004 (#74) -> -(SP)
       PRINT           " bars your way, indicating the "
       CALL            R0004 (#19) -> -(SP)
       PRINT           "'s private. Considering the lack of oxygen at the table
and the probability of marked cards, you wouldn't have survived long in the "
       CALL            R0004 (#19) -> -(SP)
       PRINT_RET       " anyway."
L0001: CALL            R0732 -> -(SP)
       CALL            R0728 -> -(SP)
       RET_POPPED      

Routine R0737, 0 locals ()

       JE              G7a,#2c,#6c,#75 [TRUE] L0001
       JE              G7a,#3b [FALSE] RFALSE
L0001: JIN             "keister","Billy Monday" [FALSE] L0002
       PRINT           "The "
       CALL            R0004 (#4b) -> -(SP)
       PRINT_RET       " klinks together as Billy nonchalantly pushes you
away."
L0002: TEST_ATTR       "keister",#12 [TRUE] RFALSE
       JE              G7a,#75 [FALSE] RFALSE
       CLEAR_ATTR      "keister",#10
       SET_ATTR        "keister",#12
       INSERT_OBJ      "keister","it"
       PRINT_RET       "As you lift it, you can hear a muffled scream from
inside."

Routine R0738, 0 locals ()

       JE              G00,#57 [FALSE] RFALSE
       JE              G7a,#75,#1f [FALSE] RFALSE
       CALL            R0011 (G7a,#2e) -> -(SP)
       RTRUE           

Routine R0739, 0 locals ()

       JE              G7a,#2c,#6c [FALSE] L0001
       PRINT_RET       "There's no cap."
L0001: JE              G7a,#42,#44 [FALSE] L0002
       PRINT_RET       "It looks like pretty potent stuff."
L0002: JIN             "detective","Midway Entrance" [FALSE] L0005
       JZ              Gc4 [FALSE] L0005
       JE              G7a,#75,#37,#38 [TRUE] L0003
       JE              G7a,#68,#7d [FALSE] L0004
L0003: PRINT           "You're interfering with the hospitality that "
       CALL            R0004 (#e0) -> -(SP)
       PRINT           " is paying the "
       CALL            R0004 (#99) -> -(SP)
       PRINT           ". Billy shoves you away, and his "
       CALL            R0004 (#4b) -> -(SP)
       PRINT           " clinks together in his "
       CALL            R0004 (#e3) -> -(SP)
       PRINT_RET       "."
L0004: JE              G7a,#1f [FALSE] RFALSE
       PRINT           ""I'm sorry, we're fresh out," the pitchman "
       CALL            R0724 -> -(SP)
       NEW_LINE        
       RTRUE           
L0005: JE              G7a,#7d [FALSE] L0006
       PRINT           "It's the usual ballyhoo for "
       CALL            R0004 (#2e) -> -(SP)
       PRINT_RET       "."
L0006: JE              G7a,#75,#37,#38 [TRUE] L0007
       JE              G7a,#68,#7d [FALSE] RFALSE
L0007: JIN             "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","Chuckles" [FALSE] L0008
       CALL            R0741 -> -(SP)
       RTRUE           
L0008: JIN             "Dr. Nostrum's Prehydrogenated Genuine Preparation of
Naturally Nitrated Compound Herbified Extract","detective" [FALSE] RFALSE
       PRINT           "The "
       CALL            R0004 (#99) -> -(SP)
       PRINT_RET       ", being dead drunk, has a rigor mortis grip on it."

Routine R0740, 0 locals ()

       JE              G7a,#75 [FALSE] RFALSE
       CALL            R0741 -> -(SP)
       RTRUE           

Routine R0741, 0 locals ()

       PRINT           "Chuckles pulls back"
       CALL            R0302 (G6a,#01) -> -(SP)
       PRINT           ". "
       TEST_ATTR       "dirty rag",#0c [TRUE] L0001
       SET_ATTR        "dirty rag",#0c
       PRINT           ""Why do all the towners think they can get away with
harassing us poor innocent clowns?""
L0001: NEW_LINE        
       RTRUE           

[End of code]

[Start of text]

S001: "Not Here"
S002: "Actor"
S003: "M-Beg"
S004: "Preaction"
S005: "PRSI"
S006: "Cont"
S007: "PRSO"
S008: "OOPS"
S009: "AGAIN"
S010: "money"
S011: "number"
S012: "[There seems to be a noun missing in that sentence.]"
S013: "that"
S014: "begins"
S015: "ends"
S016: "Biting"
S017: "Flailing your leg at"
S018: "Knocking on"
S019: "Trying to break"
S020: "the phone"
S021: "Pulling"
S022: "Pushing"
S023: "Playing in this way with"
S024: "Fiddling with"
S025: "she"
S026: "he"
S027: "it"
S028: "Turning"
S029: "Shaking"
S030: "adjusting"
S031: "Platypus"
S032: "Eelworm"
S033: "Croissant"
S034: "Corkscrew"
S035: "Armadillo"
S036: "flock in droves"
S037: "defect nearly en masse"
S038: "virtually hemorrhage"
S039: " doesn't do anything."
S040: " accomplishes nothing."
S041: " has no desirable effect."
S042: "What a concept."
S043: "Nice try."
S044: "You can't be serious."
S045: "Not bloody likely."
S046: "Fiddle-de-dee! Rot! Rubbish! Figs!"
S047: "Absolutely insane."
S048: "There you go again ..."
S049: "Humbug."
S050: "Complete waste of time."
S051: "Useless. Utterly useless."
S052: "Not in the least bit helpful."
S053: "F"
S054: "the midget"
S055: "'re not close enough to"
S056: " can't reach"
S057: "Look around you."
S058: "unusual"
S059: "interesting"
S060: "extraordinary"
S061: "special"
S062: "It's already open."
S063: "It's already closed."
S064: "It's too dark to see."
S065: "You can't go that way."
S066: "It looks like"
S067: "You're not holding"
S068: "Confirmed. You are a completely unbalanced person. "
S069: " high above the arena floor"
S070: "You can see"
S071: "standing at the tail end of"
S072: "You already are."
S073: "[It's unclear what you're referring to.]"
S074: " treadmilling its tiny front foreclaws against the steely inside of the
bucket"
S075: "You have just encountered that brief instant of time "
S076: "You're not a basket case. Yet."
S077: ".
"
S078: " has been moved back to its original position"
S079: "How do you intend this?"
S080: "You get a constant busy signal.
"
S081: "soothing classical music.
"
S082: "As you exit the den, the lion"
S083: "From inside his cage, Harry calls out, "
S084: "You haven't been tipped off about that yet.
"
S085: "This bit of gymnastics is beyond your talent."
S086: "You'll have to be more specific.
"
S087: "[That sentence isn't one I recognize.]"
S088: "You don't have that much.
"
S089: "The lions seem eager to go after the meat, but your presence here is
making them hesitate."
S090: "Your aim is way off"
S091: ""Show's over. Beat it, sucker."
"
S092: " sitting a few yards away from where you first saw it."
S093: "It's empty"
S094: "You're all wet.
"
S095: "ace"
S096: "two"
S097: "three"
S098: "four"
S099: "five"
S100: "six"
S101: "seven"
S102: "eight"
S103: "nine"
S104: "ten"
S105: "jack"
S106: "queen"
S107: "king"
S108: "clubs"
S109: "diamonds"
S110: "hearts"
S111: "spades"
S112: "The gorilla picks his nose impassively."
S113: "The ape begins mouthing some straw with his pliable lips."
S114: "Excitedly, Mahler bounces up and down while baring his massive yellow
teeth at you."
S115: "Like an eclipse the gorilla hovers over you then everything becomes
dark."
S116: " treats you like a piece of luggage for about 30 minutes."
S117: "Its business end makes electrifying contact with your skin."
S118: "The prod is violently thrust into your stomach!"
S119: "any sawdust"
S120: "In contrast with the seedy surroundings, an expensive-looking pair of
headphones lies on the straw."
S121: "Your ticket lies here."
S122: "the radio"
S123: "brother"
S124: "sister"
S125: "tofu"
S126: "popcorn"
S127: "peanuts"
S128: "cotton candy"
S129: "granola bars"
S130: "yogurt"
S131: "New Coke"
S132: "Old Coke"
S133: "One lone hawker stands waiting in the wings, taking his break."
S134: "down and east"
S135: "up and east"
S136: "up, down and west"
S137: "up and west"
S138: "down and west"
S139: "up, down and east"
S140: "Down in front"
S141: "Move it"
S142: "We can't see"
S143: "Hey, park it"
S144: "Part of a narrow pole is sticking out from under the wagon."
S145: "Floating against the ceiling of the big top is a helium balloon."
S146: "perilously"
S147: "nakedly"
S148: "precariously"
S149: "dubiously"
S150: "a couple of baby steps"
S151: "just part of the way"
S152: "about midway"
S153: "most of the way"
S154: "nearly all the way"
S155: "the guy wires"
S156: "almost imperceptibly"
S157: "just a hair"
S158: "quite noticeably"
S159: "radically"
S160: "You're doing a pretty good Elvis"
S161: "Flailing away to regain some balance, you nearly slip a disk"
S162: "... and the group below zigs instead of zags."
S163: "... to an inglorious circus death."
S164: ". With a stomp of its big foot, the ape bounces you off the wire and
sends you into a swan dive. You miss the net, which is properly positioned
under Chelsea."
S165: "You're hanging from the high wire."
S166: " makes a powerful leap toward you, its full weight bowling you over."
S167: "You are suddenly blindsided in a lightning attack lead by claws which
sink deep into your jugular."
S168: "nervously bounces its weight up and down"
S169: "idly grooms areas of your scalp"
S170: "vocalizes excitedly in your ear"
S171: "breathes its jungle breath down your neck"
S172: "With the ensuing rhubarb, you end up on the permanently disabled list."
S173: "clown"
S174: "chick"
S175: "left fielder"
S176: "right fielder"
S177: "center fielder"
S178: "shortstop"
S179: "catcher"
S180: "second baseman"
S181: "first baseman"
S182: "third baseman"
S183: "glad-handing"
S184: "reminiscing with"
S185: "ribbing"
S186: "backslapping"
S187: "jiving with"
S188: "With the force and brightness of a supernova, Nimrod's mane suddenly
bursts from the dark passage."
S189: "You bump into the side wall of the big top."
S190: "It's too dark and unfamiliar out there."
S191: " grabs the nearest weapon-like object, which happens to be a gold-plated
letter opener, and goes for the throat."
S192: "the crank"
S193: "the hole"
S194: "A shot rings out."
S195: " able to reach the opening"
S196: "You are suddenly skewered by a white cane honed to needle-sharpness."
S197: "the slot"
S198: "piece of wood"
S199: "mousetrap"
S200: "Come on, you can do better than that."
S201: "No no no -- you must FEEL the role."
S202: "Come on, your grandmother gets angrier than that."
S203: "You're just prolonging the agony."
S204: "Keep in mind this is family entertainment."
S205: "Easy there! You're jeopardizing our "G" rating."
S206: "This is a circus, not an Eddie Murphy concert!"
S207: "Stick to the script -- no more improvising."
S208: "field mouse"
S209: "A cheap plastic clown mask, having been carelessly dropped here, is
lying face-up on the ground."
S210: "Lying here in a heap is a gorilla suit."
S211: "A fence blocks your way."
S212: "him"
S213: "her"
S214: "enters"
S215: "hustles off to the west"

[End of text]

[End of file]
