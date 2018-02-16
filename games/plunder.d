Resident data ends at 4e00, program starts at 4eba, file ends at 1f7c2

Starting analysis pass at address 4e00

End of analysis pass, low address = 4e00, high address = 1cd86

[Start of code]

Routine R0001, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           L00,#00 -> L01
       LOADW           L00,#01 -> L02
       DEC             L01
       ADD             L00,#02 -> L00
       MUL             L02,#02 -> -(SP)
       ADD             L00,(SP)+ -> L05
       SUB             L01,L02 -> -(SP)
       RANDOM          (SP)+ -> L03
       LOADW           L05,L03 -> L04
       LOADW           L05,#01 -> -(SP)
       STOREW          L05,L03,(SP)+
       STOREW          L05,#01,L04
       INC             L02
       JE              L02,L01 [FALSE] L0001
       STORE           L02,#00
L0001: STOREW          L00,#00,L02
       RET             L04

Routine R0002, 1 local (0000)

       TEST_ATTR       L00,#04 [TRUE] L0001
       JE              L00,#c2,#8c,#0b [FALSE] L0002
L0001: PRINT_CHAR      ' '
       JUMP            L0004
L0002: TEST_ATTR       L00,#0b [FALSE] L0003
       PRINT           " an "
       JUMP            L0004
L0003: PRINT           " a "
L0004: PRINT_OBJ       L00
       RTRUE           

Routine R0003, 1 local (0000)

       TEST_ATTR       L00,#04 [FALSE] L0001
       PRINT_CHAR      ' '
       JUMP            L0002
L0001: PRINT           " the "
L0002: PRINT_OBJ       L00
       RTRUE           

Routine R0004, 1 local (0000)

       PRINT           "The "
       PRINT_OBJ       L00
       RTRUE           

Routine R0005, 0 locals ()

       CALL            R0003 (G6e) -> -(SP)
       RET_POPPED      

Routine R0006, 0 locals ()

       CALL            R0003 (Gcf) -> -(SP)
       RET_POPPED      

Routine R0007, 1 local (0000)

       CALL            R0002 (L00) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           

Routine R0008, 1 local (0000)

       CALL            R0003 (L00) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           

Main routine R0009, 0 locals ()

L0001: PRINT           ">SHOOT THE PIRATE
Trembling, you fire the heavy arquebus. You hear its loud report over the
roaring wind, yet the dark figure still approaches. The gun falls from your
nerveless hands.
   "You won't kill me," he says, stepping over the weapon. "Not when I am the
only protection you have from Jean Lafond."
   "
       PRINT_PADDR     G28
       PRINT           "Lips curving,"
       PRINT_PADDR     G09
       PRINT           ". You are intensely aware of the strength of his hard
seaworn body, of the deep sea blue of his eyes. And then his mouth is on yours,
lips parted, demanding, and you arch into his kiss...
   He presses you against him, head bent. "But who, my dear," he whispers into
your hair, "will protect you from me?"
"
       NEW_LINE        
       PRINT_PADDR     Gc2
       PRINT           "begin.]"
       NEW_LINE        
       READ            G92,G61
       SHOW_STATUS     
       CALL            R0010 (#0b) -> -(SP)
       STORE           G00,#50
       SHOW_STATUS     
       CALL            R0092 -> -(SP)
       NEW_LINE        
       PRINT           "LATE ONE SPRING NIGHT IN THE WEST INDIES...

   A crash overhead! Pirates are boarding the Lafond Deux! The first mate
hurries you into Captain Davis's cabin.
   "Good, you brought the girl," Davis smirks. "She'll keep the pirates busy.
She was only a tool of Lafond's, anyway. Let me just find that cof--" A man on
deck screams in agony and Davis starts. "Let's go." The captain thrusts you on
the bed and walks out, locking the door.
   His laugh echoes. "Best get comfortable, girl. You're likely to be there for
the rest of your life.""
       NEW_LINE        
       NEW_LINE        
       CALL            R0169 -> -(SP)
       CALL            R0011 -> -(SP)
       JUMP            L0001

Routine R0010, 1 local (0018)

L0001: NEW_LINE        
       DEC             L00
       JZ              L00 [FALSE] L0001
       RTRUE           

Routine R0011, 1 local (0000)

L0001: CALL            R0012 -> L00
       JUMP            L0001

Routine R0012, 12 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0001, 0000,
                          0000, 0000, 0000)

       CALL            R0027 -> G9c
       JZ              G9c [TRUE] L0043
       LOADB           G3e,G20 -> L00
       LOADB           G87,G20 -> L01
       JZ              Gca [TRUE] L0005
       CALL            R0290 (Gca) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           L09,#00
L0001: INC_CHK         L03,L00 [TRUE] L0002
       LOADB           G3e,L03 -> -(SP)
       JE              (SP)+,#3f [FALSE] L0001
       CALL            R0013 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       STOREB          G3e,L03,Gca
       STORE           L09,#01
L0002: JZ              L09 [FALSE] L0004
       STORE           L03,#00
L0003: INC_CHK         L03,L01 [TRUE] L0004
       LOADB           G87,L03 -> -(SP)
       JE              (SP)+,#3f [FALSE] L0003
       CALL            R0013 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       STOREB          G87,L03,Gca
L0004: STORE           L03,#00
L0005: LOADB           G7a,#00 -> -(SP)
       AND             (SP)+,#03 -> L0a
       JZ              L01 [TRUE] L0006
       JZ              L00 [FALSE] L0007
       JE              L0a,#02 [FALSE] L0007
L0006: STORE           L02,#00
       JUMP            L0012
L0007: JG              L01,#01 [FALSE] L0010
       STORE           L05,G87
       JZ              L00 [FALSE] L0008
       STORE           L04,#00
       JUMP            L0009
L0008: LOADB           G3e,#01 -> L04
L0009: STORE           L02,L01
       JUMP            L0012
L0010: JG              L00,#01 [FALSE] L0011
       STORE           L07,#00
       STORE           L05,G3e
       LOADB           G87,#01 -> L04
       STORE           L02,L00
       JUMP            L0012
L0011: STORE           L02,#01
L0012: JZ              L04 [FALSE] L0013
       JE              L00,#01 [FALSE] L0013
       LOADB           G3e,#01 -> L04
L0013: JE              G80,#42 [FALSE] L0014
       CALL            R0017 (G6e) -> L06
       JUMP            L0041
L0014: JZ              L02 [FALSE] L0020
       LOADB           G7a,#00 -> -(SP)
       AND             (SP)+,#03 -> -(SP)
       JZ              (SP)+ [FALSE] L0015
       CALL            R0017 -> L06
       STORE           G6e,#00
       JUMP            L0041
L0015: PRINT           "There isn't anything to "
       LOADW           Ga6,#01 -> L09
       JE              G80,#98 [FALSE] L0016
       PRINT           "talk to"
       JUMP            L0019
L0016: JZ              Gb8 [FALSE] L0017
       JZ              G71 [TRUE] L0018
L0017: LOADW           L09,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0019
L0018: LOADB           L09,#02 -> L0b
       LOADB           L09,#03 -> -(SP)
       CALL            R0039 (L0b,(SP)+) -> -(SP)
L0019: PRINT_CHAR      '!'
       NEW_LINE        
       STORE           L06,#00
       CALL            R0301 -> -(SP)
       JUMP            L0041
L0020: STORE           Gdc,#00
       STORE           G22,#00
       JG              L02,#01 [FALSE] L0021
       STORE           G22,#01
L0021: STORE           L09,#00
L0022: INC_CHK         L03,L02 [FALSE] L0028
       JG              Gdc,#00 [FALSE] L0027
       PRINT           "[The "
       JE              Gdc,L02 [TRUE] L0023
       PRINT           "other "
L0023: PRINT           "object"
       JE              Gdc,#01 [TRUE] L0024
       PRINT_CHAR      's'
L0024: PRINT           " that you mentioned "
       JE              Gdc,#01 [TRUE] L0025
       PRINT           "are"
       JUMP            L0026
L0025: PRINT           "is"
L0026: PRINT           "n't here.]"
       NEW_LINE        
       JUMP            L0041
L0027: JZ              L09 [FALSE] L0041
       CALL            R0363 -> -(SP)
       JUMP            L0041
L0028: JZ              L07 [TRUE] L0029
       LOADB           G87,L03 -> L08
       JUMP            L0030
L0029: LOADB           G3e,L03 -> L08
L0030: JZ              L07 [TRUE] L0031
       STORE           G6e,L08
       JUMP            L0032
L0031: STORE           G6e,L04
L0032: JZ              L07 [TRUE] L0033
       STORE           Gcf,L04
       JUMP            L0034
L0033: STORE           Gcf,L08
L0034: JG              L02,#01 [TRUE] L0035
       LOADW           Ga6,#06 -> -(SP)
       LOADW           (SP)+,#00 -> -(SP)
       JE              (SP)+,"all","everyt" [FALSE] L0040
L0035: CALL            R0014 (L08) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       JE              L08,#3f [FALSE] L0036
       PRINT_OBJ       Gca
       JUMP            L0039
L0036: JE              L08,#7a [FALSE] L0037
       PRINT_OBJ       G13
       JUMP            L0039
L0037: JE              L08,#29 [FALSE] L0038
       PRINT_OBJ       Ge4
       JUMP            L0039
L0038: PRINT_OBJ       L08
L0039: PRINT           ": "
L0040: STORE           L09,#01
       CALL            R0017 (G6e,Gcf) -> L06
       JE              L06,#08 [FALSE] L0022
L0041: JE              L06,#08 [FALSE] L0042
       STORE           G3d,#00
L0042: CALL            R0015 -> -(SP)
       JZ              (SP)+ [TRUE] L0044
       JE              G80,#98 [TRUE] L0044
       JZ              G9c [TRUE] L0044
       GET_PROP        G00,#11 -> -(SP)
       CALL            (SP)+ (#06) -> L06
       JUMP            L0044
L0043: STORE           G3d,#00
L0044: JZ              G9c [TRUE] RFALSE
       CALL            R0015 -> -(SP)
       JZ              (SP)+ [TRUE] L0045
       CALL            R0024 -> L06
L0045: STORE           G80,#00
       STORE           G6e,#00
       STORE           Gcf,#00
       RET             Gcf

Routine R0013, 0 locals ()

       JZ              G52 [FALSE] RFALSE
       CALL            R0295 (Gca,Gb9) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JIN             Gb9,Gca [TRUE] RFALSE
       PRINT_PADDR     G6a
       NEW_LINE        
       RTRUE           

Routine R0014, 2 locals (0000, 0000)

       GET_PARENT      L00 -> L01
       JE              L00,#aa [FALSE] L0001
       INC             Gdc
       RTRUE           
L0001: JE              G80,#6a [FALSE] L0002
       JZ              Gcf [TRUE] L0002
       JIN             G6e,Gcf [FALSE] RTRUE
L0002: CALL            R0290 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       JE              Gae,#01 [FALSE] RFALSE
       JZ              Gcf [TRUE] L0003
       JE              G6e,Gcf [TRUE] RTRUE
L0003: JE              G80,#6a [FALSE] L0006
       TEST_ATTR       L00,#17 [TRUE] L0004
       TEST_ATTR       L00,#11 [FALSE] RTRUE
L0004: JE              L01,Gb9,G00,Gcf [TRUE] L0005
       GET_PARENT      Gb9 -> -(SP)
       JE              L01,(SP)+ [TRUE] L0005
       TEST_ATTR       L01,#12 [FALSE] RTRUE
       TEST_ATTR       L01,#17 [TRUE] RTRUE
       RFALSE          
L0005: JE              L00,#a2,#cc [TRUE] RTRUE
       JZ              Gcf [FALSE] RFALSE
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           
L0006: JE              G80,#32,#31,#30 [TRUE] L0007
       JE              G80,#3c,#3b [FALSE] L0008
L0007: JIN             L00,Gb9 [FALSE] RTRUE
L0008: JE              G80,#32,#31 [FALSE] RFALSE
       JIN             G6e,Gb9 [TRUE] RFALSE
       CALL            R0295 (G6e,Gcf) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0015, 0 locals ()

       JE              G80,#0e,#49,#0b [TRUE] RFALSE
       JE              G80,#0c,#0d,#0f [TRUE] RFALSE
       JE              G80,#06,#07,#08 [TRUE] RFALSE
       JE              G80,#0a,#09,#05 [TRUE] RFALSE
       JE              G80,#00,#02,#01 [TRUE] RFALSE
       JE              G80,#7d [TRUE] RFALSE
       RTRUE           

Routine R0016, 3 locals (0000, 0000, 0000)

       CALL            R0045 (G7a,#00) -> -(SP)
       LOADW           G27,#01 -> L01
       PRINT           "[Be specific: Wh"
       JZ              L00 [TRUE] L0001
       PRINT           "at object"
       JUMP            L0002
L0001: PRINT_CHAR      'o'
L0002: PRINT_PADDR     S071
       JZ              L01 [FALSE] L0003
       PRINT           "tell"
       JUMP            L0005
L0003: LOADB           G55,#02 -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       LOADW           L01,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0005
L0004: LOADB           L01,#02 -> L02
       LOADB           L01,#03 -> -(SP)
       CALL            R0039 (L02,(SP)+) -> -(SP)
       STOREB          G55,#02,#00
L0005: STORE           Gb8,#01
       STORE           G9c,#00
       LOADB           G7a,#01 -> -(SP)
       CALL            R0051 ((SP)+) -> -(SP)
       PRINT_RET       "?]"

Routine R0017, 2 locals (0000, 0000)

       CALL            R0018 (G80,L00,L01) -> -(SP)
       RTRUE           

Routine R0018, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           L04,G80
       STORE           L05,G6e
       STORE           L06,Gcf
       STORE           G80,L00
       JE              #3f,L01,L02 [FALSE] L0002
       JE              L00,#42 [TRUE] L0002
       CALL            R0291 (Gca) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JE              #3f,L01 [FALSE] L0001
       STORE           L01,Gca
       JUMP            L0002
L0001: STORE           L02,Gca
L0002: JE              #7a,L01,L02 [FALSE] L0006
       JE              L00,#42 [TRUE] L0006
       CALL            R0291 (G13) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       JE              #7a,L01 [FALSE] L0005
       STORE           L01,G13
       JUMP            L0006
L0003: JZ              L02 [FALSE] L0004
       CALL            R0016 (#01) -> -(SP)
       RET             #08
L0004: CALL            R0363 -> -(SP)
       RET             #08
L0005: STORE           L02,G13
L0006: JE              #29,L01,L02 [FALSE] L0010
       JE              L00,#42 [TRUE] L0010
       CALL            R0291 (Ge4) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       JE              #29,L01 [FALSE] L0009
       STORE           L01,Ge4
       JUMP            L0010
L0007: JZ              L02 [FALSE] L0008
       CALL            R0016 -> -(SP)
       RET             #08
L0008: CALL            R0363 (#01) -> -(SP)
       RET             #08
L0009: STORE           L02,Ge4
L0010: STORE           G6e,L01
       STORE           Gcf,L02
       JE              L00,#42 [TRUE] L0013
       JE              #aa,G6e,Gcf [FALSE] L0013
       CALL            R0019 (S104,#588d) -> L03
       JZ              L03 [TRUE] L0013
       STORE           G9c,#00
       JUMP            L0016
L0011: JZ              L02 [FALSE] L0012
       CALL            R0016 -> -(SP)
       RET             #08
L0012: CALL            R0363 (#01) -> -(SP)
       RET             #08
L0013: STORE           L01,G6e
       STORE           L02,Gcf
       CALL            R0025 (Gcf) -> -(SP)
       CALL            R0025 (G6e) -> -(SP)
       GET_PROP        Gb9,#11 -> -(SP)
       CALL            R0019 (S140,(SP)+) -> L03
       JZ              L03 [FALSE] L0016
       GET_PARENT      Gb9 -> -(SP)
       GET_PROP        (SP)+,#11 -> -(SP)
       CALL            R0019 (S179,(SP)+,#01) -> L03
       JZ              L03 [FALSE] L0016
       LOADW           Ged,L00 -> -(SP)
       CALL            R0019 (S016,(SP)+) -> L03
       JZ              L03 [FALSE] L0016
       JZ              L02 [TRUE] L0014
       GET_PROP        L02,#11 -> -(SP)
       CALL            R0019 (S299,(SP)+) -> L03
       JZ              L03 [FALSE] L0016
L0014: JZ              L01 [TRUE] L0015
       JE              L00,#42 [TRUE] L0015
       GET_PROP        L01,#11 -> -(SP)
       CALL            R0019 (S012,(SP)+) -> L03
       JZ              L03 [FALSE] L0016
L0015: LOADW           Gec,L00 -> -(SP)
       CALL            R0019 (#00,(SP)+) -> L03
       JZ              L03 [TRUE] L0016
L0016: STORE           G80,L04
       STORE           G6e,L05
       STORE           Gcf,L06
       RET             L03

Routine R0019, 4 locals (0000, 0000, 0000, 0000)

       JZ              L01 [TRUE] RFALSE
       JZ              L02 [TRUE] L0001
       CALL            L01 (L02) -> L03
       RET             L03
L0001: CALL            L01 -> L03
       RET             L03

Routine R0020, 1 local (0000)

       CALL            R0021 (L00) -> L00
       JZ              L00 [TRUE] RFALSE
       STOREW          L00,#00,#00
       RTRUE           

Routine R0021, 3 locals (0000, 0000, 0000)

       ADD             G2d,#3c -> L02
       ADD             G2d,G5f -> L01
L0001: JE              L01,L02 [TRUE] RFALSE
       LOADW           L01,#00 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0002
       LOADW           L01,#01 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RET             L01
L0002: ADD             L01,#04 -> L01
       JUMP            L0001

Routine R0022, 2 locals (0000, 0000)

       CALL            R0021 (L00) -> L01
       JZ              L01 [TRUE] RFALSE
       LOADW           L01,#01 -> -(SP)
       JG              (SP)+,#01 [FALSE] RTRUE
       RFALSE          

Routine R0023, 5 locals (0000, 0000, 0000, 0000, 0000)

       ADD             G2d,#3c -> L03
       ADD             G2d,G5f -> L02
L0001: JE              L02,L03 [FALSE] L0006
       JZ              L04 [TRUE] L0002
       STORE           L02,L04
       JUMP            L0005
L0002: JL              G5f,#04 [FALSE] L0003
       PRINT           "**Too many ints!**"
       NEW_LINE        
L0003: SUB             G5f,#04 -> G5f
       JL              G5f,G29 [FALSE] L0004
       STORE           G29,G5f
L0004: ADD             G2d,G5f -> L04
L0005: STOREW          L04,#00,L00
       JUMP            L0007
L0006: LOADW           L02,#00 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0009
       STORE           L04,L02
L0007: JZ              G39 [TRUE] L0008
       JG              L04,G39 [FALSE] L0008
       ADD             L01,#03 -> -(SP)
       SUB             #00,(SP)+ -> L01
L0008: STOREW          L04,#01,L01
       RET             L04
L0009: LOADW           L02,#00 -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       STORE           L04,L02
L0010: ADD             L02,#04 -> L02
       JUMP            L0001

Routine R0024, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       JZ              G23 [TRUE] L0001
       STORE           G23,#00
       RFALSE          
L0001: ADD             G2d,G5f -> G39
       ADD             G2d,#3c -> L00
       STORE           L05,Gb9
       STORE           Gb9,#c0
L0002: JE              G39,L00 [FALSE] L0003
       STORE           G39,L00
       INC             G02
       STORE           Gb9,L05
       RET             L03
L0003: LOADW           G39,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       LOADW           G39,#01 -> L01
       JL              L01,#ffff [FALSE] L0004
       SUB             #00,L01 -> -(SP)
       SUB             (SP)+,#03 -> -(SP)
       STOREW          G39,#01,(SP)+
       STORE           L04,G39
       JUMP            L0009
L0004: JZ              L01 [TRUE] L0009
       JG              L01,#00 [FALSE] L0005
       DEC             L01
       STOREW          G39,#01,L01
L0005: JZ              L01 [TRUE] L0006
       STORE           L04,G39
L0006: JG              L01,#00 [TRUE] L0009
       LOADW           G39,#00 -> L02
       JZ              L01 [FALSE] L0007
       STOREW          G39,#00,#00
L0007: CALL            L02 -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       STORE           L03,#01
L0008: JZ              L04 [FALSE] L0009
       LOADW           G39,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       STORE           L04,#01
L0009: ADD             G39,#04 -> G39
       JZ              L04 [FALSE] L0002
       ADD             G5f,#04 -> G5f
       JUMP            L0002

Routine R0025, 1 local (0000)

       JZ              L00 [TRUE] RTRUE
       JE              G80,#42 [FALSE] L0001
       JE              G6e,L00 [TRUE] RTRUE
L0001: JE              L00,#c0 [TRUE] RTRUE
       JE              L00,#aa,#0f,#75 [TRUE] RTRUE
       TEST_ATTR       L00,#07 [FALSE] L0002
       STORE           Ge4,L00
       RET             Ge4
L0002: TEST_ATTR       L00,#1f [FALSE] L0003
       STORE           G13,L00
       RET             G13
L0003: STORE           Gca,L00
       RET             Gca

Routine R0026, 1 local (0000)

       PRINT           "[Warning: there are too many "
       PRINT_PADDR     L00
       PRINT_RET       " after OOPS.]"

Routine R0027, 14 locals (0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, ffff, 0000, 0000)

L0001: INC_CHK         L0b,#09 [TRUE] L0003
       JZ              Gb8 [FALSE] L0002
       LOADW           Ga6,L0b -> -(SP)
       STOREW          G27,L0b,(SP)+
L0002: STOREW          Ga6,L0b,#00
       JUMP            L0001
L0003: STORE           L04,G71
       STORE           L05,Gb9
       STORE           G21,#00
       STORE           G71,#00
       STORE           G04,#00
       STOREB          G87,G20,#00
       STOREB          G3e,G20,#00
       STOREB          G0d,G20,#00
       JZ              Ga9 [FALSE] L0005
       JE              Gb9,#c0 [TRUE] L0005
       STORE           Gb9,#c0
       GET_PARENT      Gb9 -> -(SP)
       TEST_ATTR       (SP)+,#1c [TRUE] L0004
       GET_PARENT      Gb9 -> G00
L0004: CALL            R0074 (G00) -> G52
L0005: JZ              Gd0 [TRUE] L0007
       STORE           L00,Gd0
       CALL            R0029 (G61,G59) -> -(SP)
       CALL            R0030 (G92,G48) -> -(SP)
       JZ              G41 [TRUE] L0006
       JE              #c0,Gb9 [FALSE] L0006
       NEW_LINE        
L0006: STORE           Gd0,#00
       STORE           G3d,#00
       JUMP            L0012
L0007: JZ              G3d [TRUE] L0009
       STORE           L00,G3d
       JZ              G41 [TRUE] L0008
       JE              #c0,Gb9 [FALSE] L0008
       NEW_LINE        
L0008: STORE           G3d,#00
       JUMP            L0012
L0009: STORE           Gb9,#c0
       STORE           Ga9,#00
       GET_PARENT      Gb9 -> -(SP)
       TEST_ATTR       (SP)+,#1c [TRUE] L0010
       GET_PARENT      Gb9 -> G00
L0010: CALL            R0074 (G00) -> G52
       JZ              G41 [TRUE] L0011
       NEW_LINE        
L0011: PRINT_CHAR      '>'
       READ            G92,G61
       LOADB           G61,#01 -> L06
L0012: LOADB           G61,#01 -> G5d
       JZ              G5d [FALSE] L0013
       PRINT           "[Prithee, pardon?]"
       NEW_LINE        
       RFALSE          
L0013: LOADW           G61,L00 -> -(SP)
       JE              (SP)+,"oops" [FALSE] L0023
       ADD             L00,#02 -> -(SP)
       LOADW           G61,(SP)+ -> -(SP)
       JE              (SP)+,".","," [FALSE] L0014
       ADD             L00,#02 -> L00
       DEC             G5d
L0014: JG              G5d,#01 [TRUE] L0015
       CALL            R0360 (S300) -> -(SP)
       RFALSE          
L0015: LOADW           G34,#00 -> L02
       JZ              L02 [TRUE] L0022
       LOADB           G3f,#00 -> -(SP)
       MUL             #02,(SP)+ -> L07
       SUB             G5d,#02 -> L0b
       MUL             #02,L0b -> -(SP)
       ADD             L02,(SP)+ -> -(SP)
       JL              L07,(SP)+ [FALSE] L0016
       SUB             L07,L02 -> -(SP)
       DIV             (SP)+,#02 -> L0b
       CALL            R0026 (S030) -> -(SP)
L0016: JZ              L0b [TRUE] L0018
       LOADB           G3f,#01 -> L07
       ADD             L07,L0b -> -(SP)
       STOREB          G3f,#01,(SP)+
       MUL             #02,L0b -> L0b
       MUL             #02,L07 -> L07
L0017: ADD             L0b,L07 -> L0d
       LOADW           G3f,L07 -> -(SP)
       STOREW          G3f,L0d,(SP)+
       DEC_CHK         L07,L02 [FALSE] L0017
L0018: STORE           L0b,G5d
L0019: DEC_CHK         L0b,#01 [TRUE] L0020
       ADD             L00,#02 -> L00
       LOADW           G61,L00 -> -(SP)
       STOREW          G3f,L02,(SP)+
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> L01
       LOADB           G61,L01 -> L0c
       ADD             L01,#01 -> -(SP)
       LOADB           G61,(SP)+ -> L0d
       MUL             L02,#02 -> -(SP)
       ADD             (SP)+,#03 -> -(SP)
       CALL            R0031 (L0c,L0d,(SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0026 (S180) -> -(SP)
L0020: STORE           Gb9,L05
       CALL            R0029 (G61,G3f) -> -(SP)
       LOADB           G61,#01 -> G5d
       LOADW           G34,#01 -> L00
       CALL            R0030 (G92,Gb4) -> -(SP)
       JUMP            L0024
L0021: ADD             L02,#02 -> L02
       JUMP            L0019
L0022: STOREW          G34,#03,#00
       PRINT           "[There was no word to replace!]"
       NEW_LINE        
       RFALSE          
L0023: STOREW          G34,#03,#00
L0024: LOADW           G61,L00 -> -(SP)
       JE              (SP)+,"again","g" [FALSE] L0035
       JZ              Gb8 [TRUE] L0025
       CALL            R0360 (S209) -> -(SP)
       RFALSE          
L0025: JZ              G9c [FALSE] L0026
       PRINT           "[That would just repeat a mistake!]"
       NEW_LINE        
       RFALSE          
L0026: JE              L05,#c0 [TRUE] L0027
       CALL            R0291 (L05) -> -(SP)
       JZ              (SP)+ [FALSE] L0027
       PRINT_CHAR      '['
       PRINT_PADDR     G75
       PRINT           "see "
       PRINT_OBJ       L05
       PRINT           " any more.]"
       NEW_LINE        
       RFALSE          
L0027: JG              G5d,#01 [FALSE] L0030
       ADD             L00,#02 -> -(SP)
       LOADW           G61,(SP)+ -> -(SP)
       JE              (SP)+,".",",","then" [TRUE] L0028
       ADD             L00,#02 -> -(SP)
       LOADW           G61,(SP)+ -> -(SP)
       JE              (SP)+,"and" [FALSE] L0029
L0028: ADD             L00,#04 -> L00
       LOADB           G61,#01 -> -(SP)
       SUB             (SP)+,#02 -> -(SP)
       STOREB          G61,#01,(SP)+
       JUMP            L0031
L0029: CALL            R0361 -> -(SP)
       RFALSE          
L0030: ADD             L00,#02 -> L00
       LOADB           G61,#01 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       STOREB          G61,#01,(SP)+
L0031: LOADB           G61,#01 -> -(SP)
       JG              (SP)+,#00 [FALSE] L0032
       CALL            R0029 (G59,G61) -> -(SP)
       CALL            R0030 (G48,G92) -> -(SP)
       STORE           Gd0,L00
       JUMP            L0033
L0032: STORE           Gd0,#00
L0033: STORE           Gb9,L05
       STORE           G71,L04
       CALL            R0030 (G92,Gb4) -> -(SP)
       CALL            R0029 (G61,G3f) -> -(SP)
       STORE           L0b,#ffff
       STORE           L08,Gbe
L0034: INC_CHK         L0b,#09 [TRUE] L0059
       LOADW           G27,L0b -> -(SP)
       STOREW          Ga6,L0b,(SP)+
       JUMP            L0034
L0035: CALL            R0029 (G3f,G61) -> -(SP)
       CALL            R0030 (Gb4,G92) -> -(SP)
       STOREW          G34,#01,L00
       MUL             #04,G5d -> -(SP)
       STOREW          G34,#02,(SP)+
       LOADB           G61,#01 -> -(SP)
       MUL             #02,(SP)+ -> -(SP)
       ADD             L00,(SP)+ -> -(SP)
       MUL             #02,(SP)+ -> L07
       SUB             L07,#01 -> -(SP)
       LOADB           G61,(SP)+ -> L0d
       SUB             L07,#02 -> -(SP)
       LOADB           G61,(SP)+ -> -(SP)
       ADD             L0d,(SP)+ -> -(SP)
       STOREW          G34,#03,(SP)+
       STORE           Gd0,#00
       STORE           L07,G5d
       STORE           Ge2,#00
       STORE           Gae,#00
L0036: DEC_CHK         G5d,#00 [FALSE] L0037
       STORE           Ga9,#00
       JUMP            L0059
L0037: LOADW           G61,L00 -> L01
       JZ              L01 [FALSE] L0038
       CALL            R0035 (L00) -> L01
       JZ              L01 [TRUE] L0062
L0038: CALL            R0033 (L00) -> L09
       JE              L01,"to" [FALSE] L0039
       JE              L03,#c9,#71 [FALSE] L0039
       CALL            R0032 (L09,#40,#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0039
       STOREW          Ga6,#00,#c9
       STORE           L01,"""
       JUMP            L0041
L0039: JE              L01,"then" [FALSE] L0040
       JG              G5d,#00 [FALSE] L0040
       JZ              L03 [FALSE] L0040
       JZ              Ga9 [FALSE] L0040
       STOREW          Ga6,#00,#c9
       STOREW          Ga6,#01,#00
       STORE           L01,"""
       JUMP            L0041
L0040: JE              L01,"." [FALSE] L0041
       JE              L0a,"st" [FALSE] L0041
       DEC             Ge2
       CALL            R0028 (L00,L0a,#01) -> -(SP)
       STORE           L01,L0a
       STORE           L0a,#00
L0041: JE              L01,"then","." [TRUE] L0042
       JE              L01,""" [FALSE] L0046
L0042: JE              L01,""" [FALSE] L0044
       JZ              Ga9 [TRUE] L0043
       STORE           Ga9,#00
       JUMP            L0044
L0043: STORE           Ga9,#01
L0044: JZ              G5d [TRUE] L0045
       ADD             L00,#02 -> G3d
L0045: STOREB          G61,#01,G5d
       JUMP            L0059
L0046: CALL            R0032 (L01,#10,#03) -> L02
       JZ              L02 [TRUE] L0052
       JE              L03,#00,#f9,#81 [FALSE] L0052
       JE              L07,#01 [TRUE] L0050
       JE              L07,#02 [FALSE] L0047
       JE              L03,#f9,#81 [TRUE] L0050
L0047: JE              L09,"then",".",""" [FALSE] L0048
       JL              L07,#02 [FALSE] L0050
L0048: JZ              Ga9 [TRUE] L0049
       JE              L07,#02 [FALSE] L0049
       JE              L09,""" [TRUE] L0050
L0049: JG              L07,#02 [FALSE] L0052
       JE              L09,",","and" [FALSE] L0052
L0050: STORE           L08,L02
       JE              L09,",","and" [FALSE] L0051
       ADD             L00,#02 -> -(SP)
       CALL            R0028 ((SP)+,"then") -> -(SP)
L0051: JG              L07,#02 [TRUE] L0063
       STORE           Ga9,#00
       JUMP            L0059
L0052: CALL            R0032 (L01,#40,#01) -> L02
       JZ              L02 [TRUE] L0053
       JZ              L03 [FALSE] L0053
       STORE           G81,L01
       STORE           L03,L02
       STOREW          Ga6,#00,L02
       STOREW          Ga6,#01,G55
       STOREW          G55,#00,L01
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> L0b
       LOADB           G61,L0b -> -(SP)
       STOREB          G55,#02,(SP)+
       ADD             L0b,#01 -> -(SP)
       LOADB           G61,(SP)+ -> -(SP)
       STOREB          G55,#03,(SP)+
       JUMP            L0063
L0053: CALL            R0032 (L01,#08,#00) -> L02
       JZ              L02 [FALSE] L0054
       JE              L01,"all","one","both" [TRUE] L0054
       JE              L01,"everyt" [TRUE] L0054
       CALL            R0032 (L01,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0054
       CALL            R0032 (L01,#80) -> -(SP)
       JZ              (SP)+ [TRUE] L0060
L0054: JG              G5d,#00 [FALSE] L0055
       JE              L09,"of" [FALSE] L0055
       JZ              L02 [FALSE] L0055
       JE              L01,"all","one","a" [TRUE] L0055
       JE              L01,"both","everyt" [FALSE] L0063
L0055: JZ              L02 [TRUE] L0057
       JZ              G5d [TRUE] L0056
       JE              L09,"then","." [FALSE] L0057
L0056: STORE           G04,#01
       JL              Ge2,#02 [FALSE] L0063
       STOREW          Ga6,#02,L02
       STOREW          Ga6,#03,L01
       JUMP            L0063
L0057: JE              Ge2,#02 [FALSE] L0058
       PRINT           "[There were too many nouns in that sentence.]"
       NEW_LINE        
       RFALSE          
L0058: INC             Ge2
       CALL            R0034 (L00,L02,L01) -> L00
       JZ              L00 [TRUE] RFALSE
       JL              L00,#00 [FALSE] L0063
       STORE           Ga9,#00
L0059: STOREW          G34,#00,#00
       JZ              L08 [TRUE] L0064
       STORE           G80,#42
       STORE           G81,#00
       STORE           G6e,L08
       STORE           Gb8,#00
       STORE           G35,L08
       STORE           Gbe,L08
       RTRUE           
L0060: CALL            R0032 (L01,#04) -> -(SP)
       JZ              (SP)+ [FALSE] L0063
       JE              L03,#c9 [FALSE] L0061
       CALL            R0032 (L01,#40,#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0061
       JE              Gb9,#c0 [FALSE] L0061
       CALL            R0365 (S082) -> -(SP)
       RFALSE          
L0061: CALL            R0041 (L00) -> -(SP)
       RFALSE          
L0062: CALL            R0040 (L00) -> -(SP)
       RFALSE          
L0063: STORE           L0a,L01
       ADD             L00,#02 -> L00
       JUMP            L0036
L0064: STORE           G35,#00
       STORE           Gbe,#00
       JZ              Gb8 [TRUE] L0065
       CALL            R0037 -> -(SP)
L0065: CALL            R0042 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0057 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0071 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0069 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0028, 6 locals (0000, 0000, 0000, 0000, 0000, 0000)

       JZ              L02 [TRUE] L0001
       SUB             L00,#02 -> -(SP)
       MUL             #02,(SP)+ -> -(SP)
       ADD             #02,(SP)+ -> L03
       LOADB           G61,L03 -> L04
       MUL             #02,L00 -> -(SP)
       ADD             #02,(SP)+ -> L05
       STOREB          G61,L05,L04
       STOREB          G3f,L05,L04
       ADD             #01,L03 -> -(SP)
       LOADB           G61,(SP)+ -> L04
       MUL             #02,L00 -> -(SP)
       ADD             #03,(SP)+ -> L05
       STOREB          G61,L05,L04
       STOREB          G3f,L05,L04
L0001: STOREW          G61,L00,L01
       STOREW          G3f,L00,L01
       RTRUE           

Routine R0029, 6 locals (0000, 0000, 001d, 0001, 0001, 0000)

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

Routine R0030, 3 locals (0000, 0000, ffff)

L0001: INC_CHK         L02,#50 [TRUE] RTRUE
       LOADB           L01,L02 -> -(SP)
       STOREB          L00,L02,(SP)+
       JUMP            L0001

Routine R0031, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       LOADW           G34,#03 -> L05
       JZ              L05 [TRUE] L0001
       STORE           L03,L05
       JUMP            L0002
L0001: LOADW           G34,#02 -> L05
       LOADB           G3f,L05 -> L06
       ADD             L05,#01 -> -(SP)
       LOADB           G3f,(SP)+ -> -(SP)
       ADD             L06,(SP)+ -> L03
L0002: ADD             L03,L00 -> -(SP)
       STOREW          G34,#03,(SP)+
L0003: ADD             L03,L04 -> L06
       ADD             L01,L04 -> -(SP)
       LOADB           G92,(SP)+ -> -(SP)
       STOREB          Gb4,L06,(SP)+
       INC             L04
       JE              L04,L00 [FALSE] L0003
       STOREB          G3f,L02,L03
       SUB             L02,#01 -> -(SP)
       STOREB          G3f,(SP)+,L00
       RTRUE           

Routine R0032, 5 locals (0000, 0000, 0005, 0005, 0000)

       LOADB           L00,#04 -> L04
       TEST            L04,L01 [FALSE] RFALSE
       JG              L02,#04 [TRUE] RTRUE
       JE              L01,#80 [TRUE] RTRUE
       AND             L04,#03 -> L04
       JE              L04,L02 [TRUE] L0001
       INC             L03
L0001: LOADB           L00,L03 -> -(SP)
       RET_POPPED      

Routine R0033, 2 locals (0000, 0000)

       JZ              G5d [TRUE] RFALSE
       ADD             L00,#02 -> -(SP)
       LOADW           G61,(SP)+ -> L01
       JZ              L01 [TRUE] L0001
       RET             L01
L0001: ADD             L00,#02 -> -(SP)
       CALL            R0035 ((SP)+) -> -(SP)
       RET_POPPED      

Routine R0034, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000,
                          0000)

       SUB             Ge2,#01 -> -(SP)
       MUL             (SP)+,#02 -> L03
       JZ              L01 [TRUE] L0001
       ADD             #02,L03 -> L04
       STOREW          Ga6,L04,L01
       ADD             L04,#01 -> -(SP)
       STOREW          Ga6,(SP)+,L02
       ADD             L00,#02 -> L00
       JUMP            L0002
L0001: INC             G5d
L0002: JZ              G5d [FALSE] L0003
       DEC             Ge2
       RET             #ffff
L0003: ADD             #06,L03 -> L04
       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       STOREW          Ga6,L04,(SP)+
L0004: DEC_CHK         G5d,#00 [FALSE] L0005
       ADD             L04,#01 -> L09
       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       STOREW          Ga6,L09,(SP)+
       RET             #ffff
L0005: LOADW           G61,L00 -> L02
       JZ              L02 [FALSE] L0006
       CALL            R0035 (L00) -> L02
       JZ              L02 [TRUE] L0020
L0006: CALL            R0033 (L00) -> L07
       JZ              L06 [TRUE] L0008
       JE              L02,"the","a","an" [TRUE] L0007
       JZ              L01 [TRUE] L0008
       CALL            R0032 (L02,#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       CALL            R0032 (L02,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0008
L0007: LOADW           Ga6,L04 -> -(SP)
       ADD             (SP)+,#04 -> -(SP)
       STOREW          Ga6,L04,(SP)+
       JUMP            L0021
L0008: JE              L02,"." [FALSE] L0009
       JE              L08,"st" [FALSE] L0009
       STORE           L08,#00
       JUMP            L0021
L0009: JE              L02,"and","," [FALSE] L0010
       STORE           L05,#01
       JUMP            L0021
L0010: JE              L02,"all","one","both" [TRUE] L0011
       JE              L02,"everyt" [FALSE] L0012
L0011: JE              L07,"of" [FALSE] L0021
       DEC             G5d
       ADD             L00,#02 -> L00
       JUMP            L0021
L0012: JE              L02,"then","." [TRUE] L0013
       CALL            R0032 (L02,#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       LOADW           Ga6,#00 -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       JZ              L06 [FALSE] L0014
L0013: INC             G5d
       ADD             L04,#01 -> L09
       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       STOREW          Ga6,L09,(SP)+
       SUB             L00,#02 -> -(SP)
       RET_POPPED      
L0014: JZ              L05 [TRUE] L0015
       LOADW           Ga6,#00 -> -(SP)
       JZ              (SP)+ [FALSE] L0015
       SUB             L00,#04 -> L00
       ADD             L00,#02 -> -(SP)
       CALL            R0028 ((SP)+,"then") -> -(SP)
       ADD             G5d,#02 -> G5d
       JUMP            L0021
L0015: CALL            R0032 (L02,#80) -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       JG              G5d,#00 [FALSE] L0016
       JE              L07,"of" [FALSE] L0016
       JE              L02,"all","everyt","one" [FALSE] L0021
L0016: CALL            R0032 (L02,#20) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       JZ              L07 [TRUE] L0017
       CALL            R0032 (L07,#80) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0032 (L07,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
L0017: JZ              L05 [FALSE] L0018
       JE              L07,"but","except" [TRUE] L0018
       JE              L07,"and","," [TRUE] L0018
       ADD             L04,#01 -> L09
       ADD             L00,#02 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       STOREW          Ga6,L09,(SP)+
       RET             L00
L0018: STORE           L05,#00
       JUMP            L0021
L0019: CALL            R0032 (L02,#20) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0032 (L02,#04) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0032 (L02,#08) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0041 (L00) -> -(SP)
       RFALSE          
L0020: CALL            R0040 (L00) -> -(SP)
       RFALSE          
L0021: STORE           L08,L02
       STORE           L06,#00
       ADD             L00,#02 -> L00
       JUMP            L0004

Routine R0035, 9 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       LOADB           (SP)+,#02 -> L01
       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       LOADB           (SP)+,#03 -> L02
L0001: JG              L04,#2710 [TRUE] RFALSE
       DEC_CHK         L01,#00 [TRUE] L0004
       LOADB           G92,L02 -> L03
       JL              L03,#3a [FALSE] L0002
       JG              L03,#2f [FALSE] L0002
       MUL             L04,#0a -> L08
       SUB             L03,#30 -> -(SP)
       ADD             L08,(SP)+ -> L04
       JUMP            L0003
L0002: JE              L03,#23 [FALSE] RFALSE
L0003: INC             L02
       JUMP            L0001
L0004: CALL            R0028 (L00,"number") -> -(SP)
       ADD             L00,#02 -> -(SP)
       LOADW           G61,(SP)+ -> -(SP)
       JE              (SP)+,"," [FALSE] L0008
       JG              G5d,#01 [FALSE] L0008
       ADD             L00,#04 -> L07
       CALL            R0036 (L07) -> L06
       JZ              L06 [TRUE] L0008
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       LOADB           G61,(SP)+ -> L05
       MUL             L07,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       LOADB           G61,(SP)+ -> -(SP)
       ADD             L05,(SP)+ -> L05
       INC             L05
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       STOREB          G61,(SP)+,L05
       JE              L06,#03e8 [FALSE] L0005
       STORE           L06,#00
L0005: MUL             #03e8,L04 -> -(SP)
       ADD             (SP)+,L06 -> L04
       SUB             G5d,#02 -> L05
L0006: DEC_CHK         L05,#00 [TRUE] L0007
       ADD             L00,#02 -> L00
       ADD             L00,#04 -> L07
       LOADW           G61,L07 -> -(SP)
       CALL            R0028 (L00,(SP)+) -> -(SP)
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#02 -> L08
       MUL             L07,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       LOADB           G61,(SP)+ -> -(SP)
       STOREB          G61,L08,(SP)+
       MUL             L00,#02 -> -(SP)
       ADD             (SP)+,#03 -> L08
       MUL             L07,#02 -> -(SP)
       ADD             (SP)+,#03 -> -(SP)
       LOADB           G61,(SP)+ -> -(SP)
       STOREB          G61,L08,(SP)+
       JUMP            L0006
L0007: SUB             G5d,#02 -> G5d
       LOADB           G61,#01 -> -(SP)
       SUB             (SP)+,#02 -> -(SP)
       STOREB          G61,#01,(SP)+
L0008: JG              L04,#2710 [TRUE] RFALSE
       STORE           Gb6,L04
       RET             "number"

Routine R0036, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)

       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       LOADB           (SP)+,#02 -> L01
       MUL             L00,#02 -> -(SP)
       ADD             G61,(SP)+ -> -(SP)
       LOADB           (SP)+,#03 -> L02
L0001: DEC_CHK         L01,#00 [TRUE] L0002
       LOADB           G92,L02 -> L04
       INC_CHK         L03,#03 [TRUE] L0002
       JL              L04,#3a [FALSE] RFALSE
       JG              L04,#2f [FALSE] RFALSE
       MUL             L05,#0a -> L06
       SUB             L04,#30 -> -(SP)
       ADD             L06,(SP)+ -> L05
       INC             L02
       JUMP            L0001
L0002: JE              L03,#03 [FALSE] RFALSE
       JZ              L05 [TRUE] L0003
       RET             L05
L0003: RET             #03e8

Routine R0037, 8 locals (ffff, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           Gb8,#00
       LOADW           Ga6,#01 -> -(SP)
       LOADW           (SP)+,#00 -> L06
       CALL            R0032 (L06,#40,#01) -> L07
       LOADW           G27,#00 -> -(SP)
       JE              L07,(SP)+ [TRUE] L0001
       CALL            R0032 (L06,#20) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: STORE           L05,#01
       JUMP            L0003
L0002: CALL            R0032 (L06,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JZ              Ge2 [FALSE] L0003
       STOREW          Ga6,#00,#00
       STOREW          Ga6,#01,#00
       ADD             G61,#02 -> -(SP)
       STOREW          Ga6,#06,(SP)+
       ADD             G61,#06 -> -(SP)
       STOREW          Ga6,#07,(SP)+
       STORE           Ge2,#01
L0003: LOADW           Ga6,#00 -> L02
       JZ              L02 [TRUE] L0004
       JZ              L05 [FALSE] L0004
       LOADW           G27,#00 -> -(SP)
       JE              L02,(SP)+ [FALSE] RFALSE
L0004: JE              Ge2,#02 [TRUE] RFALSE
       LOADW           G27,#06 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0009
       LOADW           Ga6,#02 -> L01
       LOADW           G27,#02 -> -(SP)
       JE              L01,(SP)+ [TRUE] L0005
       JZ              L01 [FALSE] RFALSE
L0005: JZ              L05 [TRUE] L0007
       ADD             G61,#02 -> -(SP)
       STOREW          G27,#06,(SP)+
       LOADW           Ga6,#07 -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       ADD             G61,#06 -> -(SP)
       STOREW          Ga6,#07,(SP)+
L0006: JZ              Ge2 [FALSE] L0008
       STORE           Ge2,#01
       JUMP            L0008
L0007: LOADW           Ga6,#06 -> -(SP)
       STOREW          G27,#06,(SP)+
L0008: LOADW           Ga6,#07 -> -(SP)
       STOREW          G27,#07,(SP)+
       JUMP            L0023
L0009: LOADW           G27,#08 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0012
       LOADW           Ga6,#02 -> L01
       LOADW           G27,#04 -> -(SP)
       JE              L01,(SP)+ [TRUE] L0010
       JZ              L01 [FALSE] RFALSE
L0010: JZ              L05 [TRUE] L0011
       ADD             G61,#02 -> -(SP)
       STOREW          Ga6,#06,(SP)+
       LOADW           Ga6,#07 -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       ADD             G61,#06 -> -(SP)
       STOREW          Ga6,#07,(SP)+
L0011: LOADW           Ga6,#06 -> -(SP)
       STOREW          G27,#08,(SP)+
       LOADW           Ga6,#07 -> -(SP)
       STOREW          G27,#09,(SP)+
       STORE           Ge2,#02
       JUMP            L0023
L0012: JZ              G15 [TRUE] L0023
       JE              Ge2,#01 [TRUE] L0013
       JZ              L05 [FALSE] L0013
       STORE           G15,#00
       RFALSE          
L0013: LOADW           Ga6,#06 -> L03
       JZ              L05 [TRUE] L0014
       ADD             G61,#02 -> L03
       STORE           L05,#00
L0014: LOADW           Ga6,#07 -> L04
L0015: LOADW           L03,#00 -> L06
       JE              L03,L04 [FALSE] L0017
       JZ              L05 [TRUE] L0016
       CALL            R0038 (L05) -> -(SP)
       JUMP            L0023
L0016: STORE           G15,#00
       RFALSE          
L0017: JE              L06,"all","everyt","one" [TRUE] L0018
       LOADB           L06,#04 -> -(SP)
       TEST            (SP)+,#20 [FALSE] L0020
       CALL            R0060 (L06,L05,L05) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
L0018: STORE           L05,L06
L0019: ADD             L03,#04 -> L03
       JZ              L04 [FALSE] L0015
       STORE           L04,L03
       STORE           Ge2,#01
       SUB             L03,#04 -> -(SP)
       STOREW          Ga6,#06,(SP)+
       STOREW          Ga6,#07,L03
       JUMP            L0015
L0020: JE              L06,"one" [FALSE] L0021
       CALL            R0038 (L05) -> -(SP)
       JUMP            L0023
L0021: LOADB           L06,#04 -> -(SP)
       TEST            (SP)+,#80 [FALSE] L0019
       JE              L06,G37 [FALSE] L0022
       CALL            R0038 (L05) -> -(SP)
       JUMP            L0023
L0022: CALL            R0038 -> -(SP)
L0023: LOADW           Ga1,#00 -> -(SP)
       STOREW          G55,#00,(SP)+
       LOADB           Ga1,#02 -> -(SP)
       STOREB          G55,#02,(SP)+
       LOADB           Ga1,#03 -> -(SP)
       STOREB          G55,#03,(SP)+
       STOREW          G27,#01,G55
       STOREB          G55,#02,#00
L0024: INC_CHK         L00,#09 [FALSE] L0025
       STORE           G71,#01
       RTRUE           
L0025: LOADW           G27,L00 -> -(SP)
       STOREW          Ga6,L00,(SP)+
       JUMP            L0024

Routine R0038, 1 local (0000)

       JZ              L00 [TRUE] L0001
       LOADW           G27,#00 -> -(SP)
       STOREW          Ga6,#00,(SP)+
       JUMP            L0002
L0001: STORE           L00,#01
L0002: STOREW          G60,#00,G15
       ADD             G15,#01 -> -(SP)
       STOREW          G60,#01,(SP)+
       JE              G15,#06 [FALSE] L0003
       STOREW          G60,#02,Gcb
       JUMP            L0004
L0003: STOREW          G60,#02,Gb1
L0004: CALL            R0052 (G27,G27,L00) -> -(SP)
       LOADW           G27,#08 -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           Ge2,#02
L0005: STORE           G15,#00
       RTRUE           

Routine R0039, 2 locals (0000, 0000)

L0001: DEC_CHK         L00,#00 [TRUE] RTRUE
       LOADB           G92,L01 -> -(SP)
       PRINT_CHAR      (SP)+
       INC             L01
       JUMP            L0001

Routine R0040, 3 locals (0000, 0000, 0000)

       STOREW          G34,#00,L00
       PRINT           "[I don't know the word ""
       MUL             L00,#02 -> L01
       ADD             G61,L01 -> -(SP)
       LOADB           (SP)+,#02 -> L02
       ADD             G61,L01 -> -(SP)
       LOADB           (SP)+,#03 -> -(SP)
       CALL            R0039 (L02,(SP)+) -> -(SP)
       PRINT           "."]"
       NEW_LINE        
       STORE           Ga9,#00
       STORE           Gb8,#00
       RET             Gb8

Routine R0041, 4 locals (0000, 0000, 0000, 0000)

       PRINT           "[You used the word ""
       JZ              L01 [FALSE] L0001
       MUL             L00,#02 -> L02
       ADD             G61,L02 -> -(SP)
       LOADB           (SP)+,#02 -> L03
       ADD             G61,L02 -> -(SP)
       LOADB           (SP)+,#03 -> -(SP)
       CALL            R0039 (L03,(SP)+) -> -(SP)
L0001: PRINT           "" in a way that I don't understand.]"
       NEW_LINE        
       CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0042, 10 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000)

       LOADW           Ga6,#00 -> L07
       JZ              L07 [FALSE] L0001
       PRINT_PADDR     G65
       RFALSE          
L0001: SUB             #ff,L07 -> -(SP)
       LOADW           Gee,(SP)+ -> L00
       LOADB           L00,#00 -> L01
       INC             L00
L0002: LOADB           L00,#00 -> -(SP)
       AND             (SP)+,#03 -> L02
       JG              Ge2,L02 [TRUE] L0005
       JL              L02,#01 [TRUE] L0004
       JZ              Ge2 [FALSE] L0004
       LOADW           Ga6,#02 -> L06
       JZ              L06 [TRUE] L0003
       LOADB           L00,#01 -> -(SP)
       JE              L06,(SP)+ [FALSE] L0004
L0003: STORE           L04,L00
       JUMP            L0005
L0004: LOADB           L00,#01 -> L09
       LOADW           Ga6,#02 -> -(SP)
       JE              L09,(SP)+ [FALSE] L0005
       JE              L02,#02 [FALSE] L0006
       JE              Ge2,#01 [FALSE] L0006
       STORE           L05,L00
L0005: DEC_CHK         L01,#01 [FALSE] L0007
       JZ              L04 [FALSE] L0008
       JZ              L05 [FALSE] L0008
       CALL            R0361 -> -(SP)
       RFALSE          
L0006: LOADB           L00,#02 -> L09
       LOADW           Ga6,#04 -> -(SP)
       JE              L09,(SP)+ [FALSE] L0005
       CALL            R0055 (L00) -> -(SP)
       RTRUE           
L0007: ADD             L00,#08 -> L00
       JUMP            L0002
L0008: JZ              L04 [TRUE] L0009
       LOADB           L04,#03 -> L08
       LOADB           L04,#05 -> L09
       LOADB           L04,#01 -> -(SP)
       CALL            R0056 (L08,L09,(SP)+) -> L03
       JZ              L03 [TRUE] L0009
       STOREB          G87,G20,#01
       STOREB          G87,#01,L03
       CALL            R0055 (L04) -> -(SP)
       RET_POPPED      
L0009: JZ              L05 [TRUE] L0010
       LOADB           L05,#04 -> L08
       LOADB           L05,#06 -> L09
       LOADB           L05,#02 -> -(SP)
       CALL            R0056 (L08,L09,(SP)+) -> L03
       JZ              L03 [TRUE] L0010
       STOREB          G3e,G20,#01
       STOREB          G3e,#01,L03
       CALL            R0055 (L05) -> -(SP)
       RET_POPPED      
L0010: JE              Gb9,#c0 [FALSE] L0011
       CALL            R0045 (L04,L05) -> -(SP)
       PRINT           "[Wh"
       JUMP            L0012
L0011: PRINT           "[Your command was not complete. Next time, type wh"
L0012: JE              L07,#f9,#81 [FALSE] L0013
       PRINT           "ere"
       JUMP            L0017
L0013: JZ              L04 [TRUE] L0014
       LOADB           L04,#03 -> -(SP)
       JE              (SP)+,#1f [TRUE] L0015
L0014: JZ              L05 [TRUE] L0016
       LOADB           L05,#04 -> -(SP)
       JE              (SP)+,#1f [FALSE] L0016
L0015: PRINT           "om"
       JUMP            L0017
L0016: PRINT           "at"
L0017: JE              Gb9,#c0 [FALSE] L0018
       PRINT_PADDR     S071
       JUMP            L0019
L0018: PRINT           " you want"
       CALL            R0003 (Gb9) -> -(SP)
       PRINT           " to "
L0019: CALL            R0043 -> -(SP)
       STORE           Gb8,#00
       JZ              L05 [TRUE] L0020
       STORE           L06,G71
       STORE           G71,#00
       CALL            R0046 (#06,#07) -> -(SP)
       STORE           G71,L06
L0020: JZ              L04 [TRUE] L0021
       LOADB           L04,#01 -> -(SP)
       JUMP            L0022
L0021: LOADB           L05,#02 -> -(SP)
L0022: CALL            R0051 ((SP)+) -> -(SP)
       JE              Gb9,#c0 [FALSE] L0023
       STORE           Gb8,#01
       PRINT           "?]"
       NEW_LINE        
       RFALSE          
L0023: STORE           Gb8,#00
       PRINT           ".]"
       NEW_LINE        
       RFALSE          

Routine R0043, 2 locals (0000, 0000)

       LOADW           Ga6,#01 -> L00
       JZ              L00 [FALSE] L0001
       PRINT           "tell"
       RTRUE           
L0001: JE              L00,"zzmgck" [FALSE] L0002
       PRINT           "answer"
       RTRUE           
L0002: LOADB           L00,#02 -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       LOADW           L00,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       RTRUE           
L0003: LOADB           L00,#02 -> L01
       LOADB           L00,#03 -> -(SP)
       CALL            R0039 (L01,(SP)+) -> -(SP)
       STOREB          L00,#02,#00
       RTRUE           

Routine R0044, 0 locals ()

       PRINT           ""I don't understand! What are you referring to?""
       NEW_LINE        
       RFALSE          

Routine R0045, 3 locals (0000, 0000, ffff)

       JZ              G71 [FALSE] L0001
       STOREW          Gcb,G20,#00
       STOREW          Gb1,G20,#00
L0001: LOADW           G55,#00 -> -(SP)
       STOREW          Ga1,#00,(SP)+
       LOADB           G55,#02 -> -(SP)
       STOREB          Ga1,#02,(SP)+
       LOADB           G55,#03 -> -(SP)
       STOREB          Ga1,#03,(SP)+
L0002: INC_CHK         L02,#09 [TRUE] L0003
       LOADW           Ga6,L02 -> -(SP)
       STOREW          G27,L02,(SP)+
       JUMP            L0002
L0003: JE              Ge2,#02 [FALSE] L0004
       STOREW          G60,#00,#08
       STOREW          G60,#01,#09
       STOREW          G60,#02,Gb1
       CALL            R0052 (Ga6,G27) -> -(SP)
L0004: JL              Ge2,#01 [TRUE] L0005
       STOREW          G60,#00,#06
       STOREW          G60,#01,#07
       STOREW          G60,#02,Gcb
       CALL            R0052 (Ga6,G27) -> -(SP)
L0005: JZ              L00 [TRUE] L0006
       LOADB           L00,#01 -> -(SP)
       STOREW          G27,#02,(SP)+
       STOREW          G27,#06,#01
       RTRUE           
L0006: JZ              L01 [TRUE] RFALSE
       LOADB           L01,#02 -> -(SP)
       STOREW          G27,#04,(SP)+
       STOREW          G27,#08,#01
       RTRUE           

Routine R0046, 4 locals (0000, 0000, 0001, 0000)

       LOADW           Ga6,L00 -> L03
       LOADW           Ga6,L01 -> -(SP)
       CALL            R0047 (L03,(SP)+,L02) -> -(SP)
       RET_POPPED      

Routine R0047, 8 locals (0000, 0000, 0000, 0000, 0000, 0001, 0000, 0000)

L0001: JE              L00,L01 [TRUE] RTRUE
       JZ              L03 [TRUE] L0002
       STORE           L03,#00
       JUMP            L0003
L0002: PRINT_CHAR      ' '
L0003: LOADW           L00,#00 -> L04
       JE              L04,"." [TRUE] L0004
       JZ              L05 [TRUE] L0005
       JE              L04,"of" [FALSE] L0005
L0004: STORE           L03,#01
       JUMP            L0015
L0005: JE              L04,"me","myself" [FALSE] L0006
       PRINT_OBJ       "yourself"
       STORE           L06,#01
       JUMP            L0015
L0006: CALL            R0048 (L04) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       CALL            R0050 (L00) -> -(SP)
       STORE           L06,#01
       JUMP            L0015
L0007: JZ              L05 [TRUE] L0008
       JZ              L06 [FALSE] L0008
       JZ              L02 [TRUE] L0008
       JE              L04,"my","her" [TRUE] L0008
       PRINT           "the "
L0008: JZ              Gb8 [FALSE] L0009
       JZ              G71 [TRUE] L0010
L0009: PRINT_ADDR      L04
       JUMP            L0014
L0010: JE              L04,"it","them" [FALSE] L0011
       CALL            R0290 (Gca) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       PRINT_OBJ       Gca
       JUMP            L0014
L0011: JE              L04,"him","himsel" [FALSE] L0012
       CALL            R0290 (G13) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       PRINT_OBJ       G13
       JUMP            L0014
L0012: JE              L04,"her","hersel" [FALSE] L0013
       CALL            R0290 (Ge4) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       PRINT_OBJ       Ge4
       JUMP            L0014
L0013: LOADB           L00,#02 -> L07
       LOADB           L00,#03 -> -(SP)
       CALL            R0039 (L07,(SP)+) -> -(SP)
L0014: STORE           L05,#00
L0015: ADD             L00,#04 -> L00
       JUMP            L0001

Routine R0048, 1 local (0000)

       JE              L00,"dad","papa","father" [TRUE] RTRUE
       JE              L00,"dimsfo" [TRUE] RTRUE
       JE              L00,"crulle","lucy","lafond" [TRUE] RTRUE
       JE              L00,"govern" [TRUE] RTRUE
       JE              L00,"jamiso","cookie","quick" [TRUE] RTRUE
       JE              L00,"rodney" [TRUE] RTRUE
       JE              L00,"louise","davis","sinist" [TRUE] RTRUE
       JE              L00,"latin" [TRUE] RTRUE
       JE              L00,"nick","nichol","falcon" [TRUE] RTRUE
       JE              L00,"helena" [TRUE] RTRUE
       JE              L00,"jean","andy","andrew" [TRUE] RTRUE
       JE              L00,"st" [TRUE] RTRUE
       JE              L00,"ernest","ryall","rodney" [TRUE] RTRUE
       RFALSE          

Routine R0049, 1 local (0000)

       JE              L00,#b2,#b3,#b1 [TRUE] RTRUE
       JE              L00,#d9 [TRUE] RTRUE
       JE              L00,#6e,#74,#75 [TRUE] RTRUE
       JE              L00,#b0 [TRUE] RTRUE
       JE              L00,#70,#6f,#73 [TRUE] RTRUE
       RFALSE          

Routine R0050, 2 locals (0000, 0000)

       JZ              Gb8 [FALSE] L0001
       JZ              G71 [TRUE] L0002
L0001: LOADW           L00,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       RTRUE           
L0002: LOADB           L00,#03 -> -(SP)
       LOADB           G92,(SP)+ -> -(SP)
       SUB             (SP)+,#20 -> -(SP)
       PRINT_CHAR      (SP)+
       LOADB           L00,#02 -> -(SP)
       SUB             (SP)+,#01 -> L01
       LOADB           L00,#03 -> -(SP)
       ADD             (SP)+,#01 -> -(SP)
       CALL            R0039 (L01,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0051, 2 locals (0000, 0000)

       JZ              L00 [TRUE] RFALSE
       PRINT_CHAR      ' '
       JE              L00,#f2 [FALSE] L0001
       PRINT           "through"
       RTRUE           
L0001: CALL            R0054 (L00) -> L01
       PRINT_ADDR      L01
       RTRUE           

Routine R0052, 12 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000,
                          0000, 0000, 0000)

       LOADW           G60,#00 -> L06
       LOADW           G60,#01 -> L07
       LOADW           G60,#02 -> L03
       LOADW           L00,L06 -> L04
       LOADW           L00,L07 -> L05
       LOADW           L03,G20 -> L08
L0001: JE              L04,L05 [TRUE] L0006
       JZ              L02 [TRUE] L0004
       LOADW           L04,#00 -> -(SP)
       JE              G37,(SP)+ [FALSE] L0004
       JE              L02,#01 [FALSE] L0003
       LOADW           Ga6,#06 -> L0a
       LOADW           Ga6,#07 -> L0b
L0002: JE              L0a,L0b [TRUE] L0005
       LOADW           L0a,#00 -> -(SP)
       CALL            R0053 ((SP)+) -> -(SP)
       ADD             L0a,#04 -> L0a
       JUMP            L0002
L0003: LOADW           L03,#01 -> -(SP)
       JE              L02,(SP)+ [TRUE] L0005
       CALL            R0053 (L02) -> -(SP)
       LOADW           L04,#00 -> -(SP)
       CALL            R0053 ((SP)+) -> -(SP)
       JUMP            L0005
L0004: LOADW           L04,#00 -> -(SP)
       CALL            R0053 ((SP)+) -> -(SP)
L0005: ADD             L04,#04 -> L04
       JUMP            L0001
L0006: JE              L00,L01 [FALSE] L0009
       JG              L08,#00 [FALSE] L0009
       LOADW           L03,G20 -> -(SP)
       SUB             (SP)+,L08 -> L09
       STOREW          L03,G20,#00
       INC             L08
L0007: LOADW           L03,L08 -> -(SP)
       CALL            R0053 ((SP)+) -> -(SP)
       SUB             L09,#02 -> L09
       JZ              L09 [TRUE] L0008
       ADD             L08,#02 -> L08
       JUMP            L0007
L0008: STORE           L08,#00
L0009: MUL             L08,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       ADD             L03,(SP)+ -> -(SP)
       STOREW          L01,L06,(SP)+
       LOADW           L03,G20 -> -(SP)
       MUL             (SP)+,#02 -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       ADD             L03,(SP)+ -> -(SP)
       STOREW          L01,L07,(SP)+
       RTRUE           

Routine R0053, 3 locals (0000, 0000, 0000)

       LOADW           G60,#02 -> L01
       LOADW           L01,G20 -> -(SP)
       ADD             (SP)+,#02 -> L02
       SUB             L02,#01 -> -(SP)
       STOREW          L01,(SP)+,L00
       STOREW          L01,L02,#00
       STOREW          L01,G20,L02
       RTRUE           

Routine R0054, 3 locals (0000, 0000, 0000)

       LOADW           Geb,#00 -> -(SP)
       MUL             (SP)+,#02 -> L02
L0001: INC_CHK         L01,L02 [TRUE] RFALSE
       LOADW           Geb,L01 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0001
       SUB             L01,#01 -> -(SP)
       LOADW           Geb,(SP)+ -> -(SP)
       RET_POPPED      

Routine R0055, 1 local (0000)

       STORE           G7a,L00
       LOADB           L00,#07 -> G80
       RET             G80

Routine R0056, 4 locals (0000, 0000, 0000, 0000)

       JE              L00,#1e [FALSE] L0001
       RET             #1f
L0001: STORE           G73,L00
       STORE           G1a,L01
       STOREB          G9a,G20,#00
       CALL            R0061 (G9a,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           G73,#00
       LOADB           G9a,G20 -> -(SP)
       JE              (SP)+,#01 [FALSE] RFALSE
       LOADB           G9a,#01 -> L03
       PRINT_CHAR      '['
       JZ              L02 [TRUE] L0004
       JZ              G04 [FALSE] L0004
       CALL            R0054 (L02) -> L02
       PRINT_ADDR      L02
       JE              L02,"out" [FALSE] L0002
       PRINT           " of"
L0002: TEST_ATTR       L03,#04 [TRUE] L0003
       PRINT           " the "
       JUMP            L0004
L0003: PRINT_CHAR      ' '
L0004: PRINT_OBJ       L03
       PRINT_CHAR      ']'
       NEW_LINE        
       RET             L03
L0005: STORE           G73,#00
       RFALSE          

Routine R0057, 1 local (0000)

       LOADW           Ga6,#06 -> L00
       JZ              L00 [TRUE] L0001
       STORE           G07,#00
       LOADB           G7a,#05 -> G1a
       LOADW           Ga6,#07 -> -(SP)
       CALL            R0059 (L00,(SP)+,G87) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADB           G0d,G20 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0058 (G87) -> G87
L0001: LOADW           Ga6,#08 -> L00
       JZ              L00 [TRUE] RTRUE
       STORE           G07,#01
       LOADB           G7a,#06 -> G1a
       LOADW           Ga6,#09 -> -(SP)
       CALL            R0059 (L00,(SP)+,G3e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADB           G0d,G20 -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       LOADB           G3e,G20 -> -(SP)
       JE              (SP)+,#01 [FALSE] L0002
       CALL            R0058 (G87) -> G87
       RTRUE           
L0002: CALL            R0058 (G3e) -> G3e
       RTRUE           

Routine R0058, 7 locals (0000, 0000, 0000, 0001, 0000, 0000, 0000)

       LOADB           L00,G20 -> L01
       STOREB          G9a,G20,#00
L0001: DEC_CHK         L01,#00 [TRUE] L0003
       LOADB           L00,L03 -> L05
       CALL            R0073 (L05,G0d) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       INC             L04
       STOREB          G9a,L04,L05
L0002: INC             L03
       JUMP            L0001
L0003: STOREB          G9a,G20,L04
       STORE           L06,G9a
       STORE           G9a,L00
       RET             L06

Routine R0059, 9 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           G8c,#00
       JE              Gae,#01 [FALSE] L0001
       STORE           L08,#01
L0001: STORE           Gae,#00
       STOREB          G0d,G20,#00
       STOREB          L02,G20,#00
       LOADW           L00,#00 -> L06
L0002: JE              L00,L01 [FALSE] L0006
       JZ              L03 [TRUE] L0003
       PUSH            L03
       JUMP            L0004
L0003: PUSH            L02
L0004: CALL            R0061 ((SP)+) -> L05
       JZ              L08 [FALSE] L0005
       RET             L05
L0005: STORE           Gae,#01
       RET             L05
L0006: ADD             L00,#04 -> -(SP)
       JE              L01,(SP)+ [FALSE] L0007
       STORE           L07,#00
       JUMP            L0008
L0007: LOADW           L00,#02 -> L07
L0008: JE              L06,"all","both","everyt" [FALSE] L0009
       CALL            R0071 (G07) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           Gae,#01
       JE              L07,"of" [FALSE] L0022
       ADD             L00,#04 -> L00
       JUMP            L0022
L0009: JE              L06,"but","except" [FALSE] L0012
       JZ              L03 [TRUE] L0010
       PUSH            L03
       JUMP            L0011
L0010: PUSH            L02
L0011: CALL            R0061 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       STORE           L03,G0d
       STOREB          L03,G20,#00
       JUMP            L0022
L0012: JE              L06,"a","one" [FALSE] L0016
       JZ              G5b [FALSE] L0013
       STORE           Gae,#02
       JE              L07,"of" [FALSE] L0022
       ADD             L00,#04 -> L00
       JUMP            L0022
L0013: STORE           G2b,G8f
       JZ              L03 [TRUE] L0014
       PUSH            L03
       JUMP            L0015
L0014: PUSH            L02
L0015: CALL            R0061 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JZ              L07 [FALSE] L0022
       RTRUE           
L0016: JE              L06,"and","," [FALSE] L0019
       JE              L07,"and","," [TRUE] L0019
       STORE           G8c,#01
       JZ              L03 [TRUE] L0017
       PUSH            L03
       JUMP            L0018
L0017: PUSH            L02
L0018: CALL            R0061 ((SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       RFALSE          
L0019: CALL            R0032 (L06,#04) -> -(SP)
       JZ              (SP)+ [FALSE] L0022
       JE              L06,"and","," [TRUE] L0022
       JE              L06,"of" [FALSE] L0020
       JZ              Gae [FALSE] L0022
       STORE           Gae,#04
       JUMP            L0022
L0020: CALL            R0032 (L06,#20,#02) -> L05
       JZ              L05 [TRUE] L0021
       CALL            R0060 (L06,G5b,Gba) -> -(SP)
       JZ              (SP)+ [TRUE] L0021
       JE              L07,"of" [TRUE] L0021
       STORE           G5b,L05
       STORE           Gba,L06
       JUMP            L0022
L0021: CALL            R0032 (L06,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0022
       STORE           G2b,L06
       STORE           G8f,L06
L0022: JE              L00,L01 [TRUE] L0002
       ADD             L00,#04 -> L00
       STORE           L06,L07
       JUMP            L0002

Routine R0060, 3 locals (0000, 0000, 0000)

       JZ              L01 [FALSE] RFALSE
       RTRUE           

Routine R0061, 9 locals (0000, 0001, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       STORE           L04,G1a
       LOADB           L00,G20 -> L05
       TEST            Gae,#04 [TRUE] RTRUE
       JZ              G2b [FALSE] L0002
       JZ              G5b [TRUE] L0002
       CALL            R0032 (Gba,#80,#00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           G2b,Gba
       STORE           G5b,#00
       STORE           Gba,#00
       JUMP            L0002
L0001: CALL            R0032 (Gba,#10,#03) -> L02
       JZ              L02 [TRUE] L0002
       STORE           G44,L02
L0002: JZ              G2b [FALSE] L0003
       JZ              G5b [FALSE] L0003
       JE              Gae,#01 [TRUE] L0003
       JZ              G73 [FALSE] L0003
       JZ              L01 [TRUE] RFALSE
       PRINT_PADDR     G53
       RFALSE          
L0003: JE              Gae,#01 [FALSE] L0004
       JZ              G1a [FALSE] L0005
L0004: STORE           G1a,#ffff
L0005: STORE           Gab,L00
L0006: JZ              L06 [TRUE] L0007
       CALL            R0065 (L00) -> -(SP)
       JUMP            L0011
L0007: JZ              G52 [FALSE] L0008
       JE              G80,#98 [FALSE] L0009
L0008: CLEAR_ATTR      "it",#0e
       CALL            R0066 (G00,#10,#20) -> -(SP)
       SET_ATTR        "it",#0e
       JUMP            L0010
L0009: GET_PARENT      "it" -> -(SP)
       TEST_ATTR       (SP)+,#1c [FALSE] L0010
       GET_PARENT      "it" -> -(SP)
       CALL            R0077 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       GET_PARENT      "it" -> -(SP)
       CALL            R0068 ((SP)+,L00) -> -(SP)
L0010: CALL            R0066 (#c0,#80,#40) -> -(SP)
L0011: LOADB           L00,G20 -> -(SP)
       SUB             (SP)+,L05 -> L03
       TEST            Gae,#01 [TRUE] L0026
       JE              Gae,#01 [TRUE] L0021
       JG              L03,#01 [TRUE] L0012
       JZ              L03 [FALSE] L0021
       JE              G1a,#ffff [TRUE] L0021
L0012: JE              G1a,#ffff [FALSE] L0013
       STORE           G1a,L04
       STORE           L07,L03
       LOADB           L00,G20 -> -(SP)
       SUB             (SP)+,L03 -> -(SP)
       STOREB          L00,G20,(SP)+
       JUMP            L0006
L0013: CALL            R0062 -> -(SP)
       JZ              L03 [FALSE] L0014
       STORE           L03,L07
L0014: JZ              G2b [TRUE] L0015
       ADD             L05,#01 -> -(SP)
       LOADB           L00,(SP)+ -> L08
       JZ              L08 [TRUE] L0015
       GET_PROP        L08,#0f -> -(SP)
       CALL            (SP)+ -> L08
       JZ              L08 [TRUE] L0015
       JE              L08,#aa [TRUE] RFALSE
       STOREB          L00,#01,L08
       STOREB          L00,G20,#01
       STORE           G2b,#00
       STORE           G5b,#00
       RTRUE           
L0015: JZ              L01 [TRUE] L0016
       JE              Gb9,#c0 [TRUE] L0016
       CALL            R0044 -> -(SP)
       STORE           G2b,#00
       STORE           G5b,#00
       RFALSE          
L0016: JZ              L01 [TRUE] L0019
       JZ              G2b [TRUE] L0019
       CALL            R0064 (L05,L03,L00) -> -(SP)
       JE              L00,G87 [FALSE] L0017
       STORE           G15,#06
       JUMP            L0018
L0017: STORE           G15,#08
L0018: STORE           G7c,G5b
       STORE           G37,G2b
       CALL            R0045 (#00,#00) -> -(SP)
       STORE           Gb8,#01
       JUMP            L0020
L0019: JZ              L01 [TRUE] L0020
       PRINT_PADDR     G53
L0020: STORE           G2b,#00
       STORE           G5b,#00
       RFALSE          
L0021: JZ              L03 [FALSE] L0025
       JZ              L06 [TRUE] L0025
       CALL            R0062 -> -(SP)
       JZ              L01 [TRUE] L0024
       STORE           G1a,L04
       JZ              G52 [FALSE] L0022
       JE              G80,#98,#68 [TRUE] L0022
       JE              G80,#b1,#b0 [FALSE] L0023
L0022: CALL            R0068 (#aa,L00) -> -(SP)
       STORE           G31,G2b
       STORE           G7b,G5b
       STORE           G56,Gba
       STORE           G2b,#00
       STORE           G5b,#00
       STORE           Gba,#00
       RTRUE           
L0023: PRINT_PADDR     G6a
       NEW_LINE        
L0024: STORE           G2b,#00
       STORE           G5b,#00
       RFALSE          
L0025: JZ              L03 [FALSE] L0026
       STORE           L06,#01
       JUMP            L0006
L0026: STORE           G1a,L04
       CALL            R0062 -> -(SP)
       STORE           G2b,#00
       STORE           G5b,#00
       RTRUE           

Routine R0062, 0 locals ()

       JE              G2b,"it" [TRUE] RFALSE
       STOREW          G26,G07,G2b
       STOREW          G57,G07,G5b
       RTRUE           

Routine R0063, 6 locals (0000, 0001, 0000, 0000, 0000, 0000)

       STORE           L04,G2b
       STORE           L05,G5b
       STORE           G2b,G31
       STORE           G5b,G7b
       STOREB          L00,G20,#00
L0001: CALL            R0077 (L01) -> L03
       JZ              L03 [TRUE] L0002
       CALL            R0068 (L01,L00) -> L03
L0002: INC_CHK         L01,#df [FALSE] L0001
       LOADB           L00,G20 -> L02
       JE              L02,#01 [FALSE] L0003
       LOADB           L00,#01 -> G32
L0003: STORE           G2b,L04
       STORE           G5b,L05
       RET             L02

Routine R0064, 5 locals (0000, 0000, 0000, 0000, 0000)

       STORE           L04,L01
       PRINT           "[Which"
       JZ              Gb8 [FALSE] L0001
       JZ              G71 [FALSE] L0001
       JZ              G8c [TRUE] L0002
L0001: PRINT_CHAR      ' '
       PRINT_ADDR      G2b
       JUMP            L0004
L0002: JE              L02,G87 [FALSE] L0003
       CALL            R0046 (#06,#07,#00) -> -(SP)
       JUMP            L0004
L0003: CALL            R0046 (#08,#09,#00) -> -(SP)
L0004: PRINT           " dost thou mean, "
L0005: INC             L00
       LOADB           L02,L00 -> L03
       TEST_ATTR       L03,#04 [TRUE] L0006
       PRINT           "the "
L0006: PRINT_OBJ       L03
       JE              L01,#02 [FALSE] L0008
       JE              L04,#02 [TRUE] L0007
       PRINT_CHAR      ','
L0007: PRINT           " or "
       JUMP            L0009
L0008: JG              L01,#02 [FALSE] L0009
       PRINT           ", "
L0009: DEC_CHK         L01,#01 [FALSE] L0005
       PRINT_RET       "?]"

Routine R0065, 8 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000)

       LOADB           L00,G20 -> L01
       STORE           L06,G1a
       GET_PROP_ADDR   G00,#0b -> L02
       JZ              L02 [TRUE] L0003
       GET_PROP_LEN    L02 -> -(SP)
       SUB             (SP)+,#01 -> L03
L0001: LOADB           L02,L04 -> L05
       CALL            R0077 (L05) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0068 (L05,L00) -> -(SP)
L0002: INC_CHK         L04,L03 [FALSE] L0001
L0003: LOADB           L00,G20 -> -(SP)
       JE              (SP)+,L01 [FALSE] RFALSE
       STORE           G1a,#ffff
       STORE           Gab,L00
       CALL            R0066 (#3c,#01,#01) -> -(SP)
       STORE           G1a,L06
       RET             G1a

Routine R0066, 4 locals (0000, 0000, 0000, 0000)

       ADD             L01,L02 -> -(SP)
       TEST            G1a,(SP)+ [FALSE] L0001
       CALL            R0067 (L00,Gab,#01) -> -(SP)
       RET_POPPED      
L0001: TEST            G1a,L01 [FALSE] L0002
       CALL            R0067 (L00,Gab,#00) -> -(SP)
       RET_POPPED      
L0002: TEST            G1a,L02 [FALSE] RTRUE
       CALL            R0067 (L00,Gab,#02) -> -(SP)
       RET_POPPED      

Routine R0067, 5 locals (0000, 0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L00 [FALSE] RFALSE
L0001: JE              L02,#02 [TRUE] L0002
       GET_PROP_ADDR   L00,#1d -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0077 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0068 (L00,L01) -> -(SP)
L0002: JZ              L02 [FALSE] L0003
       TEST_ATTR       L00,#0f [TRUE] L0003
       TEST_ATTR       L00,#12 [FALSE] L0008
L0003: GET_CHILD       L00 -> L04 [FALSE] L0008
       TEST_ATTR       L00,#10 [TRUE] L0004
       TEST_ATTR       L00,#0e [TRUE] L0004
       JZ              G5a [TRUE] L0008
L0004: TEST_ATTR       L00,#12 [FALSE] L0005
       PUSH            #01
       JUMP            L0007
L0005: TEST_ATTR       L00,#0f [FALSE] L0006
       PUSH            #01
       JUMP            L0007
L0006: PUSH            #00
L0007: CALL            R0067 (L00,L01,(SP)+) -> L03
L0008: GET_SIBLING     L00 -> L00 [TRUE] L0001
       RTRUE           

Routine R0068, 3 locals (0000, 0000, 0000)

       LOADB           L01,G20 -> L02
       ADD             L02,#01 -> -(SP)
       STOREB          L01,(SP)+,L00
       ADD             L02,#01 -> -(SP)
       STOREB          L01,G20,(SP)+
       RTRUE           

Routine R0069, 0 locals ()

       LOADB           G7a,#05 -> -(SP)
       CALL            R0070 (G87,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       LOADB           G7a,#06 -> -(SP)
       CALL            R0070 (G3e,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0070, 5 locals (0000, 0000, 0000, 0000, 0000)

       LOADB           L00,G20 -> L02
       JZ              L02 [TRUE] RTRUE
       TEST            L01,#02 [TRUE] L0001
       TEST            L01,#08 [FALSE] RTRUE
L0001: DEC_CHK         L02,#00 [TRUE] RTRUE
       ADD             L02,#01 -> -(SP)
       LOADB           L00,(SP)+ -> L03
       JE              L03,#3f [FALSE] L0003
       CALL            R0291 (Gca) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0363 -> -(SP)
       RFALSE          
L0002: STORE           L03,Gca
       JUMP            L0007
L0003: JE              L03,#7a [FALSE] L0005
       CALL            R0291 (G13) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       CALL            R0363 (#01) -> -(SP)
       RFALSE          
L0004: STORE           L03,G13
       JUMP            L0007
L0005: JE              L03,#29 [FALSE] L0007
       CALL            R0291 (Ge4) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       CALL            R0363 (#01) -> -(SP)
       RFALSE          
L0006: STORE           L03,Ge4
L0007: CALL            R0295 (L03) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              L03,#05 [TRUE] L0001
       JE              G80,#93 [FALSE] L0008
       JE              L03,#88 [TRUE] L0001
L0008: STORE           G6e,L03
       TEST_ATTR       L03,#11 [FALSE] L0009
       STORE           L04,#01
       JUMP            L0016
L0009: CALL            R0292 (L03) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       STORE           L04,#01
       JUMP            L0016
L0010: JE              L03,#16 [FALSE] L0012
       CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [FALSE] L0011
       CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
L0011: STORE           L04,#00
       JUMP            L0016
L0012: JE              G00,#b2 [FALSE] L0013
       JE              L03,#4e [FALSE] L0013
       STORE           L04,#00
       JUMP            L0016
L0013: JE              Gb9,#c0 [TRUE] L0014
       STORE           L04,#00
       JUMP            L0016
L0014: TEST            L01,#08 [FALSE] L0015
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#01 [FALSE] L0015
       STORE           L04,#00
       JUMP            L0016
L0015: STORE           L04,#01
L0016: JZ              L04 [TRUE] L0021
       TEST            L01,#02 [FALSE] L0021
       LOADB           L00,G20 -> -(SP)
       JL              #01,(SP)+ [FALSE] L0017
       PRINT_PADDR     G89
       PRINT           " those things!"
       NEW_LINE        
       RFALSE          
L0017: JE              L03,#aa [FALSE] L0018
       PRINT_PADDR     G75
       PRINT           "see that here!"
       NEW_LINE        
       RFALSE          
L0018: JE              Gb9,#c0 [FALSE] L0019
       PRINT_PADDR     G89
       JUMP            L0020
L0019: PRINT_PADDR     S034
       CALL            R0003 (Gb9) -> -(SP)
       PRINT           " has"
L0020: CALL            R0025 (L03) -> -(SP)
       CALL            R0008 (L03) -> -(SP)
       RFALSE          
L0021: JZ              L04 [FALSE] L0001
       JIN             "it",L03 [TRUE] L0001
       JE              Gb9,#c0 [FALSE] L0001
       PRINT           "[taking"
       CALL            R0003 (L03) -> -(SP)
       PRINT           " first]"
       NEW_LINE        
       JUMP            L0001

Routine R0071, 4 locals (0002, 0000, 0000, 0000)

       JZ              L00 [FALSE] L0001
       LOADB           G7a,#05 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0001
       STORE           L01,#01
       JUMP            L0004
L0001: JE              L00,#01 [FALSE] L0002
       LOADB           G7a,#06 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0002
       STORE           L01,#02
       JUMP            L0004
L0002: JE              L00,#02 [FALSE] L0003
       LOADB           G87,G20 -> -(SP)
       JG              (SP)+,#01 [FALSE] L0003
       LOADB           G7a,#05 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0003
       STORE           L01,#01
       JUMP            L0004
L0003: JE              L00,#02 [FALSE] L0004
       LOADB           G3e,G20 -> -(SP)
       JG              (SP)+,#01 [FALSE] L0004
       LOADB           G7a,#06 -> -(SP)
       TEST            (SP)+,#04 [TRUE] L0004
       STORE           L01,#02
L0004: JZ              L01 [TRUE] RTRUE
       PRINT_CHAR      '['
       PRINT_PADDR     G75
       PRINT           "use multiple "
       JE              L01,#02 [FALSE] L0005
       PRINT           "in"
L0005: PRINT           "direct objects with ""
       LOADW           Ga6,#01 -> L02
       JZ              L02 [FALSE] L0006
       PRINT           "tell"
       JUMP            L0009
L0006: JZ              Gb8 [FALSE] L0007
       JZ              G71 [TRUE] L0008
L0007: LOADW           L02,#00 -> -(SP)
       PRINT_ADDR      (SP)+
       JUMP            L0009
L0008: LOADB           L02,#02 -> L03
       LOADB           L02,#03 -> -(SP)
       CALL            R0039 (L03,(SP)+) -> -(SP)
L0009: PRINT           "".]"
       NEW_LINE        
       RFALSE          

Routine R0072, 4 locals (0000, 0000, ffff, 0001)

       JZ              L01 [TRUE] RFALSE
       JL              L02,#00 [TRUE] L0001
       STORE           L03,#00
       JUMP            L0002
L0001: LOADW           L01,#00 -> L02
L0002: LOADW           L01,L03 -> -(SP)
       JE              L00,(SP)+ [TRUE] RTRUE
       INC_CHK         L03,L02 [FALSE] L0002
       RFALSE          

Routine R0073, 4 locals (0000, 0000, ffff, 0001)

       JL              L02,#00 [TRUE] L0001
       STORE           L03,#00
       JUMP            L0002
L0001: LOADB           L01,#00 -> L02
L0002: LOADB           L01,L03 -> -(SP)
       JE              L00,(SP)+ [TRUE] RTRUE
       INC_CHK         L03,L02 [FALSE] L0002
       RFALSE          

Routine R0074, 4 locals (0000, 0001, 0000, 0000)

       STORE           G73,#1d
       STORE           L02,G00
       STORE           G00,L00
       JZ              L01 [TRUE] L0001
       TEST_ATTR       L00,#1d [FALSE] L0001
       STORE           L03,#01
       JUMP            L0003
L0001: STOREB          G9a,G20,#00
       STORE           Gab,G9a
       STORE           G1a,#ffff
       JE              L02,L00 [FALSE] L0002
       CALL            R0066 (Gb9,#01,#01) -> -(SP)
       JE              Gb9,#c0 [TRUE] L0002
       JIN             "it",L00 [FALSE] L0002
       CALL            R0066 (#c0,#01,#01) -> -(SP)
L0002: CALL            R0066 (L00,#01,#01) -> -(SP)
       LOADW           Gab,G20 -> -(SP)
       JG              (SP)+,#00 [FALSE] L0003
       STORE           L03,#01
L0003: STORE           G00,L02
       STORE           G73,#00
       RET             L03

Routine R0075, 1 local (0000)

       JZ              G71 [FALSE] L0001
       LOADW           Ga6,#06 -> L00
       LOADW           L00,#00 -> -(SP)
       JE              (SP)+,"it" [FALSE] L0002
L0001: PRINT_CHAR      ' '
       PRINT_OBJ       G6e
       RTRUE           
L0002: LOADW           Ga6,#07 -> -(SP)
       CALL            R0047 (L00,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0076, 1 local (0000)

       JZ              G71 [FALSE] L0001
       LOADW           Ga6,#08 -> L00
       LOADW           L00,#00 -> -(SP)
       JE              (SP)+,"it" [FALSE] L0002
L0001: PRINT_CHAR      ' '
       PRINT_OBJ       Gcf
       RTRUE           
L0002: LOADW           Ga6,#09 -> -(SP)
       CALL            R0047 (L00,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0077, 3 locals (0000, 0000, 0000)

       TEST_ATTR       L00,#14 [TRUE] RFALSE
       JZ              G2b [TRUE] L0001
       GET_PROP_ADDR   L00,#1d -> L01
       GET_PROP_LEN    L01 -> -(SP)
       DIV             (SP)+,#02 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0072 (G2b,L01,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0001: JZ              G5b [TRUE] L0002
       GET_PROP_ADDR   L00,#12 -> L01
       JZ              L01 [TRUE] RFALSE
       GET_PROP_LEN    L01 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0073 (G5b,L01,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0002: JZ              G73 [TRUE] RTRUE
       TEST_ATTR       L00,G73 [TRUE] RTRUE
       RFALSE          

Routine R0078, 0 locals ()
    Action routine for:
        "verbos"

       STORE           G41,#02
       PRINT           "Maximum verbosity."
       NEW_LINE        
       NEW_LINE        
       CALL            R0169 -> -(SP)
       RET_POPPED      

Routine R0079, 0 locals ()
    Action routine for:
        "brief"

       STORE           G41,#01
       PRINT_CHAR      'B'
       PRINT_PADDR     G42
       RTRUE           

Routine R0080, 0 locals ()
    Action routine for:
        "super"

       STORE           G41,#00
       PRINT           "Superb"
       PRINT_PADDR     G42
       RTRUE           

Routine R0081, 0 locals ()
    Action routine for:
        "rescue"

       STORE           G3d,#00
       STORE           Ga9,#00
       SAVE            [FALSE] L0001
       PRINT_PADDR     Ge0
       RTRUE           
L0001: PRINT_PADDR     G78
       RTRUE           

Routine R0082, 0 locals ()
    Action routine for:
        "restor"

       RESTORE         [FALSE] L0001
       PRINT_PADDR     Ge0
       RTRUE           
L0001: PRINT_PADDR     G78
       RTRUE           

Routine R0083, 0 locals ()
    Action routine for:
        "script"

       LOADW           #00,#08 -> -(SP)
       OR              (SP)+,#01 -> -(SP)
       STOREW          #00,#08,(SP)+
       CALL            R0085 (S083) -> -(SP)
       CALL            R0092 -> -(SP)
       RET_POPPED      

Routine R0084, 0 locals ()
    Action routine for:
        "unscri"

       CALL            R0085 (S042) -> -(SP)
       CALL            R0092 -> -(SP)
       LOADW           #00,#08 -> -(SP)
       AND             (SP)+,#fffe -> -(SP)
       STOREW          #00,#08,(SP)+
       RTRUE           

Routine R0085, 1 local (0000)

       PRINT           "Here "
       PRINT_PADDR     L00
       PRINT_RET       " a transcript of interaction with"

Routine R0086, 0 locals ()
    Action routine for:
        "i"

       CALL            R0022 (#d67e) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JG              G06,#0a [FALSE] L0003
       CALL            R0295 (#62) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0004 (#62) -> -(SP)
       PRINT           " is not enough to cover"
       JUMP            L0002
L0001: PRINT           "You blush to look at"
L0002: PRINT_RET       " your naked body."
L0003: SUB             #00,#16 -> Gd1
       CALL            R0278 (Gb9,#00,#03) -> -(SP)
       STORE           Gd1,#16
       CALL            R0278 (Gb9,#00,#03) -> -(SP)
       STORE           Gd1,#00
       NEW_LINE        
       RTRUE           

Routine R0087, 0 locals ()
    Action routine for:
        "q"

       CALL            R0210 -> -(SP)
       CALL            R0089 (S229) -> -(SP)
       CALL            R0090 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       QUIT            
       RTRUE           
L0001: PRINT_PADDR     Ge0
       RTRUE           

Routine R0088, 0 locals ()
    Action routine for:
        "restar"

       CALL            R0210 -> -(SP)
       CALL            R0089 (S312) -> -(SP)
       CALL            R0090 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "Restarting."
       NEW_LINE        
       RESTART         
       PRINT_PADDR     G78
       RTRUE           

Routine R0089, 1 local (0000)

       PRINT_PADDR     Ge8
       PRINT           "Do you wish to "
       PRINT_PADDR     L00
       PRINT           "? (Y is affirmative): "
       RTRUE           

Routine R0090, 0 locals ()

L0001: PRINT_CHAR      '>'
       READ            G92,G61
       LOADW           G61,#01 -> -(SP)
       CALL            R0271 ((SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       LOADW           G61,#01 -> -(SP)
       CALL            R0181 ((SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       LOADW           G61,#01 -> -(SP)
       JE              (SP)+,"n" [TRUE] RFALSE
       PRINT           "This is important: please answer YES or NO. "
       JUMP            L0001

Routine R0091, 2 locals (0000, 0000)

L0001: NEW_LINE        
       JZ              L00 [FALSE] L0002
       STORE           L00,#01
       PRINT_PADDR     Ge8
       CALL            R0210 -> -(SP)
L0002: JG              G01,#18 [FALSE] L0004
       PRINT_PADDR     Ge8
       PRINT           "Thus you have finished the story of "
       PRINT_PADDR     Gc5
       PRINT           ", earning the title, ""
       LOADW           G24,Ge9 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           ".""
       JL              Ge9,#04 [FALSE] L0003
       PRINT           " There are other, perhaps more satisfying,
conclusions."
L0003: NEW_LINE        
L0004: PRINT_PADDR     Ge8
       PRINT           "You may start over, restore a saved position, or end
this session of the game. (Type RESTART, RESTORE, or QUIT):
>"
       STOREB          G61,#00,#0a
       READ            G92,G61
       STOREB          G61,#00,#3c
       INC             L01
       LOADW           G61,#01 -> -(SP)
       JE              (SP)+,"restar" [FALSE] L0005
       RESTART         
       PRINT_PADDR     G78
       JUMP            L0001
L0005: LOADW           G61,#01 -> -(SP)
       JE              (SP)+,"restor" [FALSE] L0006
       RESTORE         [TRUE] L0006
       PRINT_PADDR     G78
       JUMP            L0001
L0006: LOADW           G61,#01 -> -(SP)
       JE              (SP)+,"quit","q" [TRUE] L0007
       JG              L01,#0a [FALSE] L0001
L0007: QUIT            

orphan code fragment:

       JUMP            L0001

Routine R0092, 2 locals (0011, 0000)
    Action routine for:
        "versio"

       LOADW           #00,#01 -> -(SP)
       AND             (SP)+,#07ff -> L01
       PRINT_PADDR     Gc5
       NEW_LINE        
       PRINT           "Infocom interactive fiction
Copyright (c) 1987 by Infocom, Inc. All rights reserved.
"
       PRINT_PADDR     Gc5
       PRINT           " is a trademark of Infocom, Inc.
Release "
       PRINT_NUM       L01
       PRINT           " / Serial number "
L0001: INC_CHK         L00,#17 [TRUE] L0002
       LOADB           #00,L00 -> -(SP)
       PRINT_CHAR      (SP)+
       JUMP            L0001
L0002: NEW_LINE        
       RTRUE           

Routine R0093, 0 locals ()
    Action routine for:
        "#comm"

       INPUT_STREAM    #01
       RTRUE           

Routine R0094, 0 locals ()
    Action routine for:
        "#rand OBJ"

       JE              G6e,#ac [TRUE] L0001
       PRINT_RET       "ILLEGAL."
L0001: SUB             #00,Gb6 -> -(SP)
       RANDOM          (SP)+ -> -(SP)
       RTRUE           

Routine R0095, 0 locals ()
    Action routine for:
        "#reco"

       OUTPUT_STREAM   RECORD_ENABLE
       RTRUE           

Routine R0096, 0 locals ()
    Action routine for:
        "#unre"

       OUTPUT_STREAM   #fffc
       RTRUE           

Routine R0097, 0 locals ()
    Action routine for:
        "$ve OBJ"
        "$ve"

       JE              G6e,#ac [FALSE] L0001
       JE              Gb6,#19 [FALSE] L0001
       PRINT_NUM       #0024
       NEW_LINE        
       RTRUE           
L0001: PRINT           "Verifying."
       NEW_LINE        
       VERIFY          [FALSE] L0002
       PRINT_PADDR     Ge0
       RTRUE           
L0002: NEW_LINE        
       PRINT_RET       "** Bad **"

Routine R0098, 0 locals ()
    Action routine for:
        "awake OBJ with OBJ"
        "awake up OBJ"
        "awake OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0017 (#0f) -> -(SP)
       RTRUE           
L0001: JE              G6e,#0f [FALSE] L0002
       PRINT           "You pinch yourself. "
       PRINT_PADDR     G94
       PRINT           " dreaming"
       PRINT_PADDR     G51
       RTRUE           
L0002: TEST_ATTR       G6e,#05 [TRUE] L0004
       TEST_ATTR       G6e,#1f [TRUE] L0003
       JE              G6e,#bb [FALSE] L0004
L0003: CALL            R0362 -> -(SP)
       PRINT_RET       " isn't asleep."
L0004: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0099, 0 locals ()
    Action routine for:
        "zzmgck OBJ"

       CALL            R0350 ("i",#0f) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0086 -> -(SP)
       RET_POPPED      
L0001: STORE           G9c,#00
       PRINT_PADDR     G65
       CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0100, 0 locals ()
    Action routine for:
        "applau OBJ"
        "applau"

       PRINT_RET       "Clap."

Routine R0101, 1 local (0000)
    Action routine for:
        "ask OBJ about OBJ"

       JE              G6e,#0f [FALSE] L0001
       CALL            R0018 (#98,#0f) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6e,#1f [FALSE] L0002
       STORE           L00,Gb9
       STORE           Gb9,G6e
       CALL            R0018 (#99,#0f,Gcf) -> -(SP)
       STORE           Gb9,L00
       CALL            R0025 (Gcf) -> -(SP)
       CALL            R0025 (G6e) -> -(SP)
       RTRUE           
L0002: CALL            R0018 (#98,G6e) -> -(SP)
       RTRUE           

Routine R0102, 0 locals ()
    Action routine for:
        "ask OBJ for OBJ"
        "ask OBJ to OBJ"

       PRINT           "Naturally,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " doesn't oblige."

Routine R0103, 1 local (0000)
    Action routine for:
        "ask for OBJ"

       CALL            R0298 (G00,#1f) -> L00
       JZ              L00 [TRUE] L0001
       CALL            R0018 (#14,L00,G6e) -> -(SP)
       RTRUE           
L0001: CALL            R0364 (S111) -> -(SP)
       RET_POPPED      

Routine R0104, 0 locals ()
    Action routine for:
        "bite OBJ"

       CALL            R0304 (S061) -> -(SP)
       RET_POPPED      

Routine R0105, 0 locals ()
    Action routine for:
        "blow OBJ on OBJ"
        "blow OBJ at OBJ"
        "blow OBJ"

       CALL            R0348 (S089) -> -(SP)
       RET_POPPED      

Routine R0106, 0 locals ()
    Pre-action routine for:
        "carry on OBJ"
        "carry in OBJ"
        "board OBJ"
        "doze on OBJ"
        "doze in OBJ"
        "climb in OBJ"

       JIN             "it",G6e [FALSE] L0001
       PRINT_PADDR     Ga5
       RTRUE           
L0001: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_PADDR     Gbd
       RTRUE           
L0002: CALL            R0292 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0356 (G6e) -> -(SP)
       RET_POPPED      

Routine R0107, 1 local (0000)
    Action routine for:
        "carry on OBJ"
        "carry in OBJ"
        "board OBJ"
        "doze on OBJ"
        "doze in OBJ"
        "climb in OBJ"

       GET_PARENT      "it" -> L00
       TEST_ATTR       G6e,#1c [FALSE] L0003
       INSERT_OBJ      "it",G6e
       PRINT           "You are now "
       TEST_ATTR       G6e,#08 [FALSE] L0001
       PRINT_CHAR      'i'
       JUMP            L0002
L0001: PRINT_CHAR      'o'
L0002: PRINT_CHAR      'n'
       CALL            R0005 -> -(SP)
       PRINT_CHAR      '.'
       GET_PARENT      "it" -> -(SP)
       GET_PROP        (SP)+,#11 -> -(SP)
       CALL            (SP)+ (#02) -> -(SP)
       NEW_LINE        
       RTRUE           
L0003: TEST_ATTR       G6e,#1f [FALSE] L0004
       PRINT_PADDR     G8a
       RTRUE           
L0004: LOADW           Ga6,#02 -> -(SP)
       JE              (SP)+,#f6 [FALSE] L0005
       CALL            R0348 (S146) -> -(SP)
       RET_POPPED      
L0005: CALL            R0348 (S195) -> -(SP)
       RET_POPPED      

Routine R0108, 0 locals ()
    Action routine for:
        "bribe OBJ with OBJ"
        "bribe OBJ"

       JZ              Gcf [FALSE] L0002
       CALL            R0295 (#ba) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0018 (#3b,#ba,G6e) -> -(SP)
       RTRUE           
L0001: PRINT           "A lady bribes only with money"
       PRINT_PADDR     G51
       RTRUE           
L0002: CALL            R0018 (#3b,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0109, 0 locals ()
    Action routine for:
        "burn OBJ in OBJ"
        "burn up OBJ"
        "burn OBJ"

       JZ              Gcf [FALSE] L0001
       CALL            R0297 (#cd,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0297 (#09,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       PRINT           "You have no source of fire."
       NEW_LINE        
       TEST_ATTR       G6e,#16 [FALSE] L0002
       PRINT           "Unless you relish a fiery death, you had best remove"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0001: PRINT_RET       "Ladies do not play with fire."
L0002: JE              G6e,#90 [FALSE] L0003
       PRINT           "Papa says never put "
       PRINT_OBJ       "gunpowder"
       PRINT_RET       " near a flame."
L0003: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0357 (S052,G6e) -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#1f [FALSE] L0005
       PRINT_PADDR     S047
       RTRUE           
L0005: TEST_ATTR       G6e,#1b [FALSE] L0006
       REMOVE_OBJ      G6e
       PRINT           "In an instant,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is consumed by fire."
L0006: CALL            R0348 (S196) -> -(SP)
       RET_POPPED      

Routine R0110, 0 locals ()
    Action routine for:
        "l OBJ"

       JE              G6e,#1d [FALSE] L0001
       PRINT_PADDR     G08
       PRINT           "go in that "
       PRINT_OBJ       "direction"
       PRINT_RET       " to see what's there."
L0001: JZ              G05 [FALSE] L0002
       PRINT           "You may use prepositions to indicate precisely what you
want to do: LOOK AT the object, LOOK INSIDE it, LOOK UNDER it, etc. In this
case I'll take you to mean LOOK AT the object."
       NEW_LINE        
       PRINT_PADDR     Ge8
       STORE           G05,#01
L0002: JE              G6e,#1f [FALSE] L0003
       CALL            R0018 (#58) -> -(SP)
       RTRUE           
L0003: CALL            R0018 (#38,G6e) -> -(SP)
       RTRUE           

Routine R0111, 0 locals ()
    Action routine for:
        "clean off OBJ"
        "clean up OBJ"
        "clean OBJ"

       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Do you also do windows?"

Routine R0112, 0 locals ()
    Action routine for:
        "procee up OBJ"
        "duck up OBJ"
        "climb up OBJ"
        "climb OBJ"

       JE              G6e,#1d [FALSE] L0001
       JE              G81,"crawl" [FALSE] L0001
       CALL            R0300 (G44) -> -(SP)
       RTRUE           
L0001: JE              G6e,#1f [FALSE] L0002
       CALL            R0300 (#16) -> -(SP)
       RET_POPPED      
L0002: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       PRINT_PADDR     Gbd
       RTRUE           
L0003: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0113, 0 locals ()
    Action routine for:
        "procee down OBJ"
        "descen OBJ"
        "duck down OBJ"
        "slide down OBJ"
        "climb down OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0001: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_PADDR     Gbd
       RTRUE           
L0002: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0114, 0 locals ()
    Action routine for:
        "sit in OBJ"
        "sit on OBJ"
        "climb on OBJ"

       TEST_ATTR       G6e,#1c [TRUE] L0001
       TEST_ATTR       G6e,#1f [FALSE] L0002
L0001: CALL            R0018 (#1a,G6e) -> -(SP)
       RTRUE           
L0002: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       PRINT_PADDR     Gbd
       RTRUE           
L0003: LOADW           Ga6,#02 -> -(SP)
       JE              (SP)+,#f6 [FALSE] L0004
       CALL            R0348 (S166) -> -(SP)
       RET_POPPED      
L0004: CALL            R0348 (S167) -> -(SP)
       RET_POPPED      

Routine R0115, 0 locals ()
    Action routine for:
        "climb over OBJ"

       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_PADDR     Gbd
       RTRUE           
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0116, 0 locals ()
    Action routine for:
        "close OBJ on OBJ"
        "close OBJ"

       TEST_ATTR       G6e,#1a [TRUE] L0001
       TEST_ATTR       G6e,#18 [FALSE] L0002
L0001: TEST_ATTR       G6e,#12 [TRUE] L0002
       TEST_ATTR       G6e,#1f [TRUE] L0002
       JE              G6e,#de,#58,#bb [TRUE] L0002
       CALL            R0344 (G6e) -> -(SP)
       RET_POPPED      
L0002: CALL            R0348 (S161) -> -(SP)
       RET_POPPED      

Routine R0117, 0 locals ()
    Action routine for:
        "duck under OBJ"
        "climb under OBJ"

       TEST_ATTR       G6e,#17 [TRUE] L0001
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0118, 0 locals ()
    Action routine for:
        "cry"

       CALL            R0371 (S230) -> -(SP)
       RET_POPPED      

Routine R0119, 0 locals ()
    Action routine for:
        "cut throug OBJ with OBJ"
        "cut OBJ with OBJ"
        "cut OBJ"

       JZ              Gcf [TRUE] L0001
       JE              Gcf,#1f [FALSE] L0004
L0001: CALL            R0295 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0018 (#89,G6e,#2a) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6e,#1f [FALSE] L0003
       CALL            R0018 (#16,G6e) -> -(SP)
       RTRUE           
L0003: PRINT_RET       "Your fingernails aren't that sharp!"
L0004: PRINT           "To put it bluntly, neither"
       CALL            R0006 -> -(SP)
       PRINT           " nor you are very sharp"
       PRINT_PADDR     G51
       RTRUE           

Routine R0120, 1 local (0000)
    Action routine for:
        "dance with OBJ"
        "dance OBJ"

       JE              Gb9,#c0 [TRUE] L0001
       JE              G6e,#00,#0f,#c0 [FALSE] L0001
       STORE           L00,Gb9
       STORE           Gb9,#c0
       CALL            R0018 (#2a,L00) -> -(SP)
       STORE           Gb9,L00
       RTRUE           
L0001: TEST_ATTR       G6e,#1f [FALSE] L0003
       JE              G00,#a5,#41 [TRUE] L0002
       PRINT           "This isn't a good place to dance"
       PRINT_PADDR     G51
       RTRUE           
L0002: PRINT           "It is unlikely"
       CALL            R0005 -> -(SP)
       PRINT_RET       " would want to dance just now."
L0003: JE              G6e,#1f,#0f [FALSE] L0005
       JZ              G98 [TRUE] L0004
       PRINT_PADDR     S069
       RTRUE           
L0004: PRINT_RET       "One cannot dance the minuet alone."
L0005: PRINT           "Dancing with"
       CALL            R0002 (G6e) -> -(SP)
       PRINT_RET       " is an early symptom of the plague."

Routine R0121, 0 locals ()
    Action routine for:
        "carry down OBJ"
        "carry out OBJ"
        "debark OBJ"
        "debark"
        "climb off OBJ"
        "climb out OBJ"

       JZ              G6e [FALSE] L0002
       JIN             "it",G00 [TRUE] L0001
       GET_PARENT      "it" -> -(SP)
       CALL            R0017 ((SP)+) -> -(SP)
       RTRUE           
L0001: PRINT_PADDR     Ga5
       RTRUE           
L0002: JE              G81,"take" [FALSE] L0003
       CALL            R0018 (#6a,G6e) -> -(SP)
       RTRUE           
L0003: JE              G6e,#1b [FALSE] L0004
       JE              G00,#50 [FALSE] L0004
       CALL            R0018 (#1f,G6e) -> -(SP)
       RTRUE           
L0004: JIN             "it",G6e [TRUE] L0005
       PRINT_PADDR     Ga5
       RET             #08
L0005: JE              G00,#59,#94 [FALSE] L0006
       CALL            R0233 -> -(SP)
       RET_POPPED      
L0006: INSERT_OBJ      "it",G00
       PRINT           "You"
       JIN             "Captain Jamison",G6e [FALSE] L0007
       INSERT_OBJ      "Captain Jamison",G00
       PRINT           " and "
       PRINT_OBJ       "Captain Jamison"
L0007: PRINT           " get o"
       CALL            R0352 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       PRINT           "ff"
       JUMP            L0009
L0008: PRINT           "ut of"
L0009: CALL            R0005 -> -(SP)
       PRINT_RET       "."

Routine R0122, 0 locals ()
    Action routine for:
        "dress OBJ"
        "dress"

       JZ              G6e [TRUE] L0002
       TEST_ATTR       G6e,#1f [FALSE] L0001
       PRINT_RET       "There's no need for that."
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      
L0002: STORE           G6e,#1f
       CALL            R0143 -> -(SP)
       RET_POPPED      

Routine R0123, 0 locals ()
    Action routine for:
        "drink OBJ"

       CALL            R0348 (S220) -> -(SP)
       RET_POPPED      

Routine R0124, 0 locals ()
    Action routine for:
        "drink OBJ from OBJ"
        "drink from OBJ"

       CALL            R0348 (S221) -> -(SP)
       RET_POPPED      

Routine R0125, 0 locals ()
    Action routine for:
        "dip down OBJ"
        "let go OBJ"
        "drop OBJ"

       CALL            R0126 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#34,#5d [FALSE] L0001
       GET_PARENT      "it" -> -(SP)
       INSERT_OBJ      G6e,(SP)+
       JUMP            L0002
L0001: INSERT_OBJ      G6e,G00
L0002: PRINT_RET       "Dropped."

Routine R0126, 0 locals ()

       JE              G00,#32,#b2 [FALSE] L0001
       REMOVE_OBJ      G6e
       PRINT           "With a splash,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is lost forever."
L0001: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#63 [FALSE] L0002
       REMOVE_OBJ      G6e
       PRINT           "With a plop,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is dragged out by a wave."
L0002: JE              G00,#cf [TRUE] L0003
       JE              G00,#55 [FALSE] RFALSE
       JE              G80,#9c [FALSE] RFALSE
L0003: TEST_ATTR       G6e,#15 [FALSE] L0005
       TEST_ATTR       G6e,#16 [TRUE] L0005
       INSERT_OBJ      G6e,G00
       PRINT           "Billowing out,"
       CALL            R0005 -> -(SP)
       PRINT           " catch"
       TEST_ATTR       G6e,#02 [TRUE] L0004
       PRINT           "es"
L0004: PRINT           " in"
       CALL            R0003 (#de) -> -(SP)
       PRINT_RET       " nearby."
L0005: INSERT_OBJ      G6e,G6f
       CALL            R0004 (G6e) -> -(SP)
       PRINT_RET       " falls to the deck below."

Routine R0127, 0 locals ()
    Action routine for:
        "devour OBJ"

       PRINT           "A lady is trained to eat anything, but this is absurd"
       PRINT_PADDR     G51
       RTRUE           

Routine R0128, 0 locals ()
    Action routine for:
        "embrac OBJ"
        "lean agains OBJ"

       CALL            R0346 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "You give"
       CALL            R0005 -> -(SP)
       PRINT           " a brief embrace"
       TEST_ATTR       G6e,#1f [TRUE] L0001
       PRINT           " and are not surprised when it doesn't respond"
L0001: PRINT_PADDR     G51
       RTRUE           
L0002: JIN             G6e,"it" [FALSE] L0003
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0003: CALL            R0356 (G6e) -> -(SP)
       RET_POPPED      

Routine R0129, 2 locals (0000, 0000)
    Action routine for:
        "empty OBJ in OBJ"
        "empty OBJ on OBJ"
        "empty out OBJ"
        "empty OBJ"

       JZ              Gcf [FALSE] L0001
       STORE           Gcf,#a8
L0001: TEST_ATTR       G6e,#18 [TRUE] L0002
       PRINT_PADDR     G0c
       RTRUE           
L0002: TEST_ATTR       G6e,#10 [TRUE] L0003
       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT_RET       " isn't open."
L0003: GET_CHILD       G6e -> -(SP) [TRUE] L0004
       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is already empty!"
L0004: GET_CHILD       G6e -> -(SP) [FALSE] RFALSE
       JE              Gcf,(SP)+ [FALSE] L0005
       GET_SIBLING     Gcf -> -(SP) [TRUE] L0005
       PRINT_PADDR     G90
       PRINT           "in"
       CALL            R0005 -> -(SP)
       PRINT           " but"
       CALL            R0008 (Gcf) -> -(SP)
       RET_POPPED      
L0005: GET_CHILD       G6e -> L00 [TRUE] L0006
L0006: GET_SIBLING     L00 -> L01 [TRUE] L0007
L0007: JE              L00,#c0 [TRUE] L0012
       PRINT_OBJ       L00
       PRINT           ": "
       TEST_ATTR       L00,#17 [FALSE] L0011
       INSERT_OBJ      L00,"it"
       JE              Gcf,#05 [FALSE] L0008
       PRINT           "Taken."
       NEW_LINE        
       JUMP            L0012
L0008: JE              Gcf,#a8 [FALSE] L0009
       CALL            R0018 (#30,L00) -> -(SP)
       JUMP            L0012
L0009: TEST_ATTR       Gcf,#12 [FALSE] L0010
       CALL            R0018 (#32,L00,Gcf) -> -(SP)
       JUMP            L0012
L0010: CALL            R0018 (#31,L00,Gcf) -> -(SP)
       JUMP            L0012
L0011: CALL            R0307 -> -(SP)
L0012: JZ              L01 [TRUE] RTRUE
       STORE           L00,L01
       JUMP            L0006

Routine R0130, 0 locals ()
    Action routine for:
        "empty OBJ from OBJ"
        "pour OBJ out OBJ"
        "pour OBJ from OBJ"

       JIN             G6e,Gcf [FALSE] L0002
       TEST_ATTR       G6e,#17 [FALSE] L0001
       INSERT_OBJ      G6e,"it"
       CALL            R0018 (#30,G6e) -> -(SP)
       RTRUE           
L0001: CALL            R0307 -> -(SP)
       RET_POPPED      
L0002: CALL            R0358 -> -(SP)
       RET_POPPED      

Routine R0131, 0 locals ()
    Action routine for:
        "procee throug OBJ"
        "procee over OBJ"
        "procee across OBJ"
        "procee out OBJ"
        "procee in OBJ"
        "dive throug OBJ"
        "dive in OBJ"
        "enter OBJ"
        "duck throug OBJ"
        "duck in OBJ"
        "climb throug OBJ"

       TEST_ATTR       G6e,#1a [FALSE] L0001
       CALL            R0294 (G6e) -> -(SP)
       CALL            R0300 ((SP)+) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6e,#1c [FALSE] L0002
       CALL            R0018 (#1a,G6e) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6e,#1f [FALSE] L0003
       CALL            R0018 (#1a,G6e) -> -(SP)
       RTRUE           
L0003: JIN             G6e,"it" [FALSE] L0004
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#17 [TRUE] L0005
       CALL            R0349 -> -(SP)
       RET_POPPED      
L0005: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT_PADDR     Gbd
       RTRUE           
L0006: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0132, 0 locals ()
    Action routine for:
        "l over OBJ"
        "l to OBJ"
        "l on OBJ"
        "l at OBJ"
        "descri OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0002
       GET_CHILD       G6e -> -(SP) [FALSE] L0001
       CALL            R0018 (#5b,G6e) -> -(SP)
       RTRUE           
L0001: CALL            R0133 -> -(SP)
       PRINT           "about"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       G6e,#1a [TRUE] L0003
       TEST_ATTR       G6e,#12 [FALSE] L0004
L0003: CALL            R0172 -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#18 [FALSE] L0006
       TEST_ATTR       G6e,#10 [FALSE] L0005
       CALL            R0172 -> -(SP)
       RET_POPPED      
L0005: PRINT           "It"
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RTRUE           
L0006: TEST_ATTR       G6e,#19 [FALSE] L0009
       PRINT           "It's o"
       TEST_ATTR       G6e,#1d [FALSE] L0007
       PRINT_CHAR      'n'
       JUMP            L0008
L0007: PRINT           "ff"
L0008: PRINT_PADDR     G51
       RTRUE           
L0009: TEST_ATTR       G6e,#04 [FALSE] L0010
       CALL            R0226 (S120) -> -(SP)
       RET_POPPED      
L0010: RANDOM          #64 -> -(SP)
       JL              #19,(SP)+ [FALSE] L0011
       JE              G6e,#db [FALSE] L0012
L0011: PRINT_PADDR     G50
       PRINT_OBJ       G6e
       PRINT_PADDR     G51
       RTRUE           
L0012: RANDOM          #64 -> -(SP)
       JL              #3c,(SP)+ [TRUE] L0013
       CALL            R0133 -> -(SP)
       PRINT           "about"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0013: CALL            R0362 -> -(SP)
       PRINT           " look"
       TEST_ATTR       G6e,#02 [TRUE] L0014
       JE              G6e,#0f [TRUE] L0014
       PRINT_CHAR      's'
L0014: PRINT           " like every other "
       PRINT_OBJ       G6e
       PRINT_RET       " you've ever seen."

Routine R0133, 0 locals ()

       PRINT_PADDR     G90
       RANDOM          #64 -> -(SP)
       JL              #19,(SP)+ [TRUE] L0001
       PRINT           "unusual"
       JUMP            L0004
L0001: RANDOM          #64 -> -(SP)
       JL              #21,(SP)+ [TRUE] L0002
       PRINT           "noteworthy"
       JUMP            L0004
L0002: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] L0003
       PRINT           "extraordinary"
       JUMP            L0004
L0003: PRINT           "special"
L0004: PRINT_CHAR      ' '
       RTRUE           

Routine R0134, 0 locals ()
    Action routine for:
        "depart OBJ"
        "depart"

       JZ              G6e [TRUE] L0001
       TEST_ATTR       G6e,#1c [FALSE] L0001
       CALL            R0018 (#21,G6e) -> -(SP)
       RTRUE           
L0001: CALL            R0135 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0300 (#13) -> -(SP)
       RET_POPPED      

Routine R0135, 1 local (0000)

       GET_PARENT      "it" -> L00
       JE              L00,#5d,#34,#1b [TRUE] L0001
       JE              L00,#d6,#83,#52 [TRUE] L0001
       JE              L00,#d5 [FALSE] RFALSE
L0001: GET_PARENT      "it" -> -(SP)
       CALL            R0018 (#21,(SP)+) -> -(SP)
       RTRUE           

Routine R0136, 0 locals ()
    Action routine for:
        "feed OBJ"

       CALL            R0372 -> -(SP)
       RET_POPPED      

Routine R0137, 0 locals ()
    Action routine for:
        "fiddle with OBJ"

       CALL            R0304 (S239) -> -(SP)
       RET_POPPED      

Routine R0138, 0 locals ()
    Action routine for:
        "fill OBJ with OBJ"
        "fill OBJ"

       JZ              Gcf [FALSE] L0001
       PRINT_PADDR     G90
       PRINT_RET       "to fill it with."
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0139, 0 locals ()
    Action routine for:
        "fill OBJ in OBJ"

       CALL            R0018 (#3e,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0140, 2 locals (0000, 0000)
    Action routine for:
        "find OBJ on OBJ"
        "find OBJ"
        "rummag for OBJ"
        "l for OBJ"

       GET_PARENT      G6e -> L01
       JZ              L01 [FALSE] L0001
       CALL            R0362 -> -(SP)
       PRINT_RET       " could be anywhere!"
L0001: JIN             G6e,"it" [FALSE] L0002
       PRINT_RET       "You have it!"
L0002: JIN             G6e,G00 [FALSE] L0003
       PRINT_RET       "Right in front of you."
L0003: JIN             G6e,"it" [TRUE] L0004
       CALL            R0297 (G6e,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       JE              G6e,#db [FALSE] L0005
L0004: CALL            R0376 -> -(SP)
       RET_POPPED      
L0005: TEST_ATTR       L01,#1f [FALSE] L0006
       CALL            R0291 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT           "Looks as if"
       CALL            R0003 (L01) -> -(SP)
       PRINT_RET       " has it."
L0006: TEST_ATTR       L01,#18 [FALSE] L0010
       CALL            R0291 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       JIN             L01,"it" [TRUE] L0010
       TEST_ATTR       L01,#12 [FALSE] L0007
       PRINT_CHAR      'O'
       JUMP            L0009
L0007: TEST_ATTR       L01,#1c [FALSE] L0008
       TEST_ATTR       L01,#08 [TRUE] L0008
       PRINT_CHAR      'O'
       JUMP            L0009
L0008: PRINT_CHAR      'I'
L0009: PRINT_CHAR      'n'
       CALL            R0008 (L01) -> -(SP)
       RET_POPPED      
L0010: JZ              L00 [TRUE] L0011
       PRINT_RET       "Beats me."
L0011: CALL            R0376 -> -(SP)
       RET_POPPED      

Routine R0141, 0 locals ()
    Action routine for:
        "chase OBJ"
        "come with OBJ"
        "duck with OBJ"

       CALL            R0291 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is right here!"
L0001: TEST_ATTR       G6e,#1f [TRUE] L0002
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0002: PRINT           "You have no idea where"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is."

Routine R0142, 1 local (0000)
    Pre-action routine for:
        "pass OBJ to OBJ"
        "feed OBJ to OBJ"
        "pay OBJ to OBJ"
        "give OBJ to OBJ"

       TEST_ATTR       G6e,#05 [FALSE] L0001
       JE              Gcf,#0b [TRUE] L0001
       PRINT           "It's unlikely"
       CALL            R0005 -> -(SP)
       PRINT_RET       " will want that."
L0001: JE              G80,#3b [FALSE] L0002
       JE              G6e,#05 [FALSE] L0002
       CALL            R0018 (#80,Gcf) -> -(SP)
       RTRUE           
L0002: JE              G6e,#16 [FALSE] L0006
       CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
L0003: CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       STORE           L00,#5a
       JUMP            L0005
L0004: CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       STORE           L00,#8d
L0005: CALL            R0017 (L00,Gcf) -> -(SP)
       RTRUE           
L0006: CALL            R0273 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0143, 0 locals ()
    Action routine for:
        "carry dresse OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0372 -> -(SP)
       RET_POPPED      
L0001: CALL            R0361 -> -(SP)
       RET_POPPED      

Routine R0144, 0 locals ()
    Action routine for:
        "carry drunk OBJ"

       JE              G6e,#1f [TRUE] L0001
       CALL            R0361 -> -(SP)
       RET_POPPED      
L0001: STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Here?"

Routine R0145, 0 locals ()
    Action routine for:
        "carry undres OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0146 (#01) -> -(SP)
       RET_POPPED      
L0001: CALL            R0361 -> -(SP)
       RET_POPPED      

Routine R0146, 3 locals (0000, 0000, 0000)

       JZ              L00 [TRUE] L0002
       CALL            R0202 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT           "You"
       TEST_ATTR       "linen chemise",#06 [TRUE] L0001
       TEST_ATTR       "breeches",#16 [TRUE] L0001
       TEST_ATTR       "shirt",#16 [TRUE] L0001
       PRINT_RET       "'re already stripped!"
L0001: PRINT           " strip down to your chemise"
       PRINT_PADDR     G51
L0002: GET_CHILD       "it" -> L01 [TRUE] L0003
L0003: JZ              L01 [TRUE] L0006
       TEST_ATTR       L01,#16 [FALSE] L0004
       CLEAR_ATTR      L01,#16
L0004: GET_SIBLING     L01 -> L02 [TRUE] L0005
L0005: STORE           L01,L02
       JUMP            L0003
L0006: INSERT_OBJ      "your reticule","it"
       SET_ATTR        "your kid slippers",#16
       SET_ATTR        "linen chemise",#16
       CLEAR_ATTR      "linen chemise",#06
       STORE           G99,#00
       RTRUE           

Routine R0147, 0 locals ()
    Action routine for:
        "disrob OBJ"
        "disrob"

       JZ              G6e [TRUE] L0004
       JE              G6e,#39 [FALSE] L0001
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Undress your father?!"
L0001: JE              G6e,#0f [FALSE] L0002
       CALL            R0018 (#96,#1f) -> -(SP)
       RTRUE           
L0002: TEST_ATTR       G6e,#1f [FALSE] L0003
       TEST_ATTR       G6e,#07 [TRUE] L0003
       PRINT_PADDR     Gda
       RTRUE           
L0003: CALL            R0306 -> -(SP)
       RET_POPPED      
L0004: STORE           G6e,#1f
       CALL            R0145 -> -(SP)
       RET_POPPED      

Routine R0148, 0 locals ()
    Action routine for:
        "pass OBJ to OBJ"
        "feed OBJ to OBJ"
        "pay OBJ to OBJ"
        "give OBJ to OBJ"

       TEST_ATTR       Gcf,#1f [FALSE] L0002
       TEST_ATTR       Gcf,#05 [FALSE] L0001
       PRINT_PADDR     G12
       RTRUE           
L0001: PRINT           "Briskly,"
       CALL            R0006 -> -(SP)
       PRINT_RET       " refuses your offer."
L0002: PRINT_PADDR     G75
       PRINT           "give"
       CALL            R0002 (G6e) -> -(SP)
       PRINT           " to"
       CALL            R0002 (Gcf) -> -(SP)
       PRINT_RET       "!"

Routine R0149, 0 locals ()
    Action routine for:
        "greet OBJ"
        "greet"

       JZ              G6e [TRUE] L0002
       JE              G6e,"sailor" [FALSE] L0001
       PRINT           "Nothing happens"
       PRINT_PADDR     G51
       RTRUE           
L0001: PRINT_RET       "[The proper way to talk to characters in the story is
PERSON, HELLO.]"
L0002: JE              G00,#50 [FALSE] L0003
       JIN             "Captain Jamison",G00 [FALSE] L0003
       CALL            R0018 (#48,#be) -> -(SP)
       RTRUE           
L0003: CALL            R0018 (#98,#0f) -> -(SP)
       RTRUE           

Routine R0150, 0 locals ()
    Action routine for:
        "stop OBJ"

       JE              G6e,#1f [FALSE] L0001
       PRINT           "You haven't started"
       PRINT_PADDR     G51
       RTRUE           
L0001: CALL            R0367 -> -(SP)
       RET_POPPED      

Routine R0151, 0 locals ()
    Action routine for:
        "help"

       PRINT           "If you're feeling pillaged, maps and hint booklets are
available from your dealer, or via mail order with the form"
       CALL            R0355 -> -(SP)
       RET_POPPED      

Routine R0152, 0 locals ()
    Action routine for:
        "procee behind OBJ"
        "rise behind OBJ"
        "hide behind OBJ"
        "hide under OBJ"
        "hide"
        "duck behind OBJ"

       PRINT_PADDR     G75
       PRINT           "hide "
       JZ              G6e [TRUE] L0001
       PRINT_CHAR      't'
L0001: PRINT_RET       "here."

Routine R0153, 0 locals ()
    Action routine for:
        "i love OBJ"

       JE              G81,"i" [FALSE] L0001
       PRINT_RET       "[Why... I'm speechless! Thank you.]"
L0001: CALL            R0361 -> -(SP)
       RET_POPPED      

Routine R0154, 1 local (0000)
    Action routine for:
        "enter"

       CALL            R0300 (#14) -> -(SP)
       RET_POPPED      

Routine R0155, 0 locals ()
    Action routine for:
        "kick OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0002
       TEST_ATTR       G6e,#05 [FALSE] L0001
       PRINT_PADDR     G12
       RTRUE           
L0001: PRINT_RET       ""Hey! Cut that out!""
L0002: CALL            R0304 (S181) -> -(SP)
       RET_POPPED      

Routine R0156, 0 locals ()
    Action routine for:
        "knock down OBJ"
        "attack OBJ with OBJ"
        "attack OBJ"
        "break down OBJ"

       PRINT_RET       "Relax."

Routine R0157, 0 locals ()
    Action routine for:
        "kiss OBJ"

       PRINT_RET       ""Smooch!""

Routine R0158, 0 locals ()
    Action routine for:
        "bow to OBJ"

       PRINT_RET       "You curtsey gracefully."

Routine R0159, 0 locals ()
    Action routine for:
        "knock at OBJ"
        "knock on OBJ"
        "tap on OBJ"

       CALL            R0304 (S084) -> -(SP)
       RET_POPPED      

Routine R0160, 0 locals ()
    Action routine for:
        "laugh at OBJ"
        "laugh"

       PRINT_RET       ""Ha-ha.""

Routine R0161, 0 locals ()
    Action routine for:
        "launch OBJ"

       PRINT_RET       "Your brain is out to launch."

Routine R0162, 0 locals ()
    Action routine for:
        "dive to OBJ"
        "dive down OBJ"
        "dive up OBJ"
        "dive across OBJ"
        "dive across OBJ"
        "dive over OBJ"
        "dive"

       JZ              G6e [TRUE] L0001
       JE              G6e,#1f [FALSE] L0004
L0001: JE              G00,#02 [FALSE] L0002
       TEST_ATTR       "trapdoor",#10 [FALSE] L0002
       CALL            R0018 (#23,#81) -> -(SP)
       RTRUE           
L0002: JE              G00,#cf,#55,#32 [FALSE] L0003
       PRINT_PADDR     G95
       RTRUE           
L0003: CALL            R0354 -> -(SP)
       RET_POPPED      
L0004: JIN             G6e,G00 [TRUE] L0005
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0005: CALL            R0354 -> -(SP)
       RET_POPPED      

Routine R0163, 0 locals ()
    Action routine for:
        "dive out OBJ"
        "dive off OBJ"

       TEST_ATTR       G6e,#1c [FALSE] L0001
       CALL            R0018 (#21,G6e) -> -(SP)
       RTRUE           
L0001: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_PADDR     G95
       RTRUE           
L0002: CALL            R0018 (#4c,G6e) -> -(SP)
       RTRUE           

Routine R0164, 0 locals ()
    Action routine for:
        "dive overbo OBJ"
        "duck"

       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_PADDR     G95
       RTRUE           
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0165, 0 locals ()
    Action routine for:
        "procee away OBJ"
        "leave OBJ"
        "leave"
        "duck away OBJ"

       JZ              G6e [FALSE] L0001
       STORE           G6e,#1f
L0001: JE              G6e,#1f [FALSE] L0002
       CALL            R0300 (#13) -> -(SP)
       RET_POPPED      
L0002: JIN             "it",G6e [FALSE] L0003
       CALL            R0018 (#21,G6e) -> -(SP)
       RTRUE           
L0003: CALL            R0018 (#30,G6e) -> -(SP)
       RTRUE           

Routine R0166, 0 locals ()
    Action routine for:
        "lie down OBJ"
        "lie in OBJ"
        "lie on OBJ"

       TEST_ATTR       G6e,#1c [TRUE] L0001
       TEST_ATTR       G6e,#1f [FALSE] L0002
L0001: CALL            R0018 (#1a,G6e) -> -(SP)
       RTRUE           
L0002: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0167, 0 locals ()
    Action routine for:
        "hear OBJ"
        "listen to OBJ"
        "listen"

       CALL            R0022 (#cd05) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0018 (#47,#b1) -> -(SP)
       RTRUE           
L0001: JIN             "Captain Jamison",G00 [TRUE] L0002
       JIN             "your father",G00 [TRUE] L0002
       JIN             "Lafond",G00 [TRUE] L0002
       JIN             "Cookie",G00 [FALSE] L0003
L0002: PRINT           "You listen intently"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G6e,#23 [FALSE] L0004
       CALL            R0004 (#23) -> -(SP)
       PRINT_RET       " confers quietly."
L0004: CALL            R0022 (#77e9) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       PRINT_PADDR     G18
       PRINT_RET       "tumult of screams."
L0005: JE              G00,#41,#a5,#53 [FALSE] L0006
       JZ              Gb3 [FALSE] L0006
       PRINT_RET       "The orchestra plays a sprightly dance tune."
L0006: JZ              G6e [TRUE] L0007
       CALL            R0226 (S018) -> -(SP)
       RET_POPPED      
L0007: PRINT_RET       "You hear nothing of interest."

Routine R0168, 0 locals ()
    Pre-action routine for:
        "lock OBJ with OBJ"
        "lock OBJ"
        "pick OBJ with OBJ"
        "pick OBJ"
        "unbar OBJ with OBJ"
        "unbar OBJ"

       JE              G00,#bd,#5c [FALSE] L0001
       JE              G81,"unbar" [TRUE] RFALSE
L0001: JE              G6e,#9e [FALSE] L0002
       JE              G80,#69 [FALSE] L0002
       CALL            R0018 (#6a,#9e) -> -(SP)
       RTRUE           
L0002: JE              G6e,#be [FALSE] L0004
       JE              G00,#02 [FALSE] L0004
       JZ              Gcf [TRUE] L0003
       CALL            R0018 (#a7,#80,Gcf) -> -(SP)
       RTRUE           
L0003: CALL            R0367 -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#0a [TRUE] L0005
       JE              G80,#69,#a7 [TRUE] L0006
L0005: TEST_ATTR       G6e,#0a [FALSE] L0008
       JE              G80,#57 [FALSE] L0008
L0006: JE              G6e,#80 [FALSE] L0007
       PRINT_PADDR     S049
       RTRUE           
L0007: PRINT_PADDR     Gd6
       RTRUE           
L0008: JZ              Gcf [FALSE] RFALSE
       JE              G80,#69 [FALSE] L0009
       CALL            R0295 (#6c) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       PRINT           "[with"
       CALL            R0003 (#6c) -> -(SP)
       PRINT_CHAR      ']'
       NEW_LINE        
       CALL            R0017 (G6e,#6c) -> -(SP)
       RET_POPPED      
L0009: CALL            R0295 (#73) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       PRINT           "[with"
       CALL            R0003 (#73) -> -(SP)
       PRINT_CHAR      ']'
       NEW_LINE        
       CALL            R0017 (G6e,#73) -> -(SP)
       RET_POPPED      
L0010: CALL            R0367 -> -(SP)
       RTRUE           

Routine R0169, 0 locals ()
    Action routine for:
        "l around OBJ"
        "l"

       CALL            R0276 (#01) -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       CALL            R0277 -> -(SP)
       RTRUE           

Routine R0170, 0 locals ()
    Action routine for:
        "l behind OBJ"

       TEST_ATTR       G6e,#1a [FALSE] L0001
       CALL            R0018 (#5b,G6e) -> -(SP)
       RTRUE           
L0001: PRINT           "There is nothing behind"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0171, 0 locals ()
    Action routine for:
        "l down OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0018 (#38,#a8) -> -(SP)
       RTRUE           
L0001: CALL            R0018 (#5b,G6e) -> -(SP)
       RTRUE           

Routine R0172, 0 locals ()
    Action routine for:
        "l in OBJ"
        "l out OBJ"
        "l throug OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0003
       PRINT_PADDR     G93
       TEST_ATTR       G6e,#07 [FALSE] L0001
       PRINT           " sh"
       JUMP            L0002
L0001: PRINT           " h"
L0002: PRINT           "e has"
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT_PADDR     G51
       RTRUE           
L0003: JIN             "it",G6e [FALSE] L0004
       CALL            R0282 -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#12 [FALSE] L0005
       PRINT_PADDR     G82
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT           " on"
       CALL            R0008 (G6e) -> -(SP)
       RTRUE           
L0005: TEST_ATTR       G6e,#1a [FALSE] L0006
       PRINT           "You can only tell that"
       CALL            R0005 -> -(SP)
       PRINT           " is"
       CALL            R0353 (G6e) -> -(SP)
       PRINT           ".
"
       RTRUE           
L0006: TEST_ATTR       G6e,#18 [FALSE] L0009
       CALL            R0296 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       PRINT_PADDR     G82
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT           " in"
       CALL            R0008 (G6e) -> -(SP)
       RTRUE           
L0007: TEST_ATTR       G6e,#10 [TRUE] L0008
       GET_CHILD       G6e -> -(SP) [FALSE] L0008
       CALL            R0250 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0018 (#68,G6e) -> -(SP)
       RTRUE           
L0008: CALL            R0357 (S168,G6e) -> -(SP)
       RET_POPPED      
L0009: LOADW           Ga6,#02 -> -(SP)
       JE              (SP)+,#f6 [FALSE] L0010
       CALL            R0348 (S036) -> -(SP)
       RET_POPPED      
L0010: PRINT           "Even if Queen Augusta commanded it, you couldn't see
through that"
       PRINT_PADDR     G51
       RTRUE           

Routine R0173, 0 locals ()
    Action routine for:
        "rummag under OBJ"
        "l under OBJ"

       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       TEST_ATTR       G6e,#16 [FALSE] L0001
       PRINT_RET       "You're wearing it!"
L0001: PRINT_PADDR     Gbd
       RTRUE           
L0002: TEST_ATTR       G6e,#1a [FALSE] L0003
       PRINT_RET       "The space is too narrow to see anything."
L0003: CALL            R0133 -> -(SP)
       PRINT           "under"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0174, 0 locals ()
    Action routine for:
        "l up OBJ"

       JE              G6e,#1f [FALSE] L0003
       JE              G00,#cf,#55 [FALSE] L0001
       PRINT_PADDR     G82
       PRINT_RET       " a mess of sails and rope."
L0001: TEST_ATTR       G00,#0c [FALSE] L0002
       CALL            R0018 (#38,#b5) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "The midnight sky is clear of all but a full moon."
L0003: CALL            R0018 (#5b,G6e) -> -(SP)
       RTRUE           

Routine R0175, 1 local (0000)
    Action routine for:
        "make out OBJ"
        "make love OBJ"

       JE              G6e,#1f [TRUE] L0001
       STORE           L00,G6e
       JUMP            L0002
L0001: CALL            R0298 (G00,#1f,S031) -> L00
       JZ              L00 [FALSE] L0002
       STORE           L00,#0f
L0002: CALL            R0018 (#4f,L00) -> -(SP)
       RTRUE           

Routine R0176, 0 locals ()
    Action routine for:
        "marry OBJ"

       JE              G6e,#a3,#08,#42 [FALSE] L0001
       PRINT           "I doubt that"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is the marrying type."
L0001: JE              G6e,#39 [FALSE] L0002
       PRINT_RET       "Don't be absurd."
L0002: JE              G6e,#be [FALSE] L0003
       CALL            R0375 (S332) -> -(SP)
       RET_POPPED      
L0003: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0177, 0 locals ()
    Action routine for:
        "move OBJ to OBJ"
        "move in OBJ"
        "move OBJ"

       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0001: CALL            R0299 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       TEST_ATTR       G6e,#17 [FALSE] L0002
       PRINT           "Moving"
       CALL            R0005 -> -(SP)
       PRINT_RET       " reveals nothing."
L0002: JE              G81,"pull" [FALSE] L0003
       CALL            R0304 (S019) -> -(SP)
       RET_POPPED      
L0003: CALL            R0348 (S169) -> -(SP)
       RET_POPPED      

Routine R0178, 0 locals ()
    Action routine for:
        "break out OBJ"
        "break OBJ with OBJ"
        "break OBJ"

       CALL            R0304 (S240) -> -(SP)
       RET_POPPED      

Routine R0179, 0 locals ()
    Action routine for:
        "muzzle OBJ with OBJ"

       CALL            R0304 (S241) -> -(SP)
       RET_POPPED      

Routine R0180, 0 locals ()
    Action routine for:
        "nay"

       JE              Gc9,#01,#02 [FALSE] L0001
       CALL            R0269 -> -(SP)
       RET_POPPED      
L0001: JE              Gc9,#03 [FALSE] L0002
       PRINT           "One should hope not! Lafond is too respectable to
harbour such secrets"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              Gc9,#04 [FALSE] L0003
       PRINT           ""Foolish of me to have thought you were serious," he
smiles, relieved"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              Gc9,#05 [FALSE] L0004
       PRINT           ""No!" you say pertly"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              Gc9,#06 [FALSE] L0005
       PRINT_RET       "Papa clucks. "Pity. I'll introduce you to Lucy after
we're out of this mess.""
L0005: JE              Gc9,#09 [FALSE] L0006
       PRINT_PADDR     S094
       PRINT_RET       " firmly, "No.""
L0006: JE              Gc9,#0a [FALSE] L0007
       PRINT_PADDR     S094
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              Gc9,#0b [FALSE] L0008
       PRINT           ""No," you say, chin trembling"
       PRINT_PADDR     G51
       RTRUE           
L0008: JE              Gc9,#0c [FALSE] L0009
       PRINT_PADDR     S094
       PRINT_RET       ", teeth clenched."
L0009: JE              Gc9,#0d [FALSE] L0010
       PRINT_RET       ""God's blood! We'll have to find some other way.""
L0010: JE              Gc9,#0e [FALSE] L0011
       PRINT           ""Sorry, but I'm enjoying this dance too much to just
let you go." Jamison tightens his grip on "
       PRINT_OBJ       "your hand"
       PRINT           " as you circle each other"
       PRINT_PADDR     G51
       RTRUE           
L0011: JE              Gc9,#0f [FALSE] L0012
       PRINT_PADDR     S094
       PRINT_RET       " breathlessly."
L0012: JE              Gc9,#10 [FALSE] L0013
       PRINT_RET       ""'Tis a pity. I was hoping...""
L0013: JE              Gc9,#11 [FALSE] L0014
       PRINT_RET       ""I'll do the hittin' 'ere.""
L0014: CALL            R0270 (S271) -> -(SP)
       RET_POPPED      

Routine R0181, 1 local (0000)

       JE              L00,"no","nope" [TRUE] RTRUE
       JE              L00,"nay","never" [TRUE] RTRUE
       RFALSE          

Routine R0182, 0 locals ()
    Action routine for:
        "dip out OBJ"
        "blow out OBJ"
        "deacti OBJ"
        "flick off OBJ"
        "close off OBJ"

       TEST_ATTR       G6e,#19 [FALSE] L0002
       TEST_ATTR       G6e,#1d [FALSE] L0001
       CLEAR_ATTR      G6e,#1d
       PRINT           "Okay,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is now off."
L0001: PRINT_RET       "It isn't on!"
L0002: CALL            R0348 (S264) -> -(SP)
       RET_POPPED      

Routine R0183, 0 locals ()
    Action routine for:
        "light OBJ on OBJ"
        "light OBJ with OBJ"
        "light OBJ in OBJ"
        "light OBJ"
        "flick on OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0001
       PRINT_PADDR     G0c
       RTRUE           
L0001: TEST_ATTR       G6e,#19 [FALSE] L0003
       TEST_ATTR       G6e,#1d [FALSE] L0002
       PRINT_PADDR     Gd6
       RTRUE           
L0002: SET_ATTR        G6e,#1d
       PRINT           "Okay,"
       CALL            R0005 -> -(SP)
       PRINT_RET       " is now on."
L0003: CALL            R0348 (S147) -> -(SP)
       RET_POPPED      

Routine R0184, 0 locals ()
    Action routine for:
        "open OBJ with OBJ"
        "open up OBJ"
        "open OBJ"

       TEST_ATTR       G6e,#0a [FALSE] L0001
       PRINT_RET       "It's quite locked."
L0001: TEST_ATTR       G6e,#1a [TRUE] L0002
       TEST_ATTR       G6e,#18 [FALSE] L0003
L0002: TEST_ATTR       G6e,#12 [TRUE] L0003
       TEST_ATTR       G6e,#1f [TRUE] L0003
       CALL            R0344 (G6e) -> -(SP)
       RET_POPPED      
L0003: CALL            R0348 (S168) -> -(SP)
       RET_POPPED      

Routine R0185, 0 locals ()
    Action routine for:
        "pick OBJ with OBJ"
        "pick OBJ"

       TEST_ATTR       G6e,#1a [FALSE] L0001
       CALL            R0295 (#6c) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "That doesn't work here"
       PRINT_PADDR     G51
       RTRUE           
L0001: CALL            R0348 (S020) -> -(SP)
       RET_POPPED      

Routine R0186, 0 locals ()
    Action routine for:
        "aim OBJ in OBJ"
        "aim OBJ out OBJ"
        "aim OBJ on OBJ"
        "aim OBJ at OBJ"
        "aim OBJ"
        "wave OBJ at OBJ"
        "wave OBJ in OBJ"

       PRINT_RET       "That would be pointless."

Routine R0187, 0 locals ()
    Action routine for:
        "aim OBJ with OBJ"
        "aim OBJ from OBJ"

       CALL            R0018 (#6d,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0188, 2 locals (0000, 0000)

       PRINT_PADDR     G08
       PRINT           "specify what you want to "
       PRINT_PADDR     L00
       CALL            R0003 (L01) -> -(SP)
       PRINT           " in"
       PRINT_PADDR     G51
       RTRUE           

Routine R0189, 0 locals ()
    Pre-action routine for:
        "dry OBJ on OBJ"
        "dry OBJ in OBJ"
        "dry OBJ out OBJ"
        "dry OBJ from OBJ"
        "dry OBJ"
        "pour OBJ in OBJ"
        "pour OBJ on OBJ"
        "pour OBJ"

       JE              G6e,#16 [FALSE] L0001
       JZ              Gcf [FALSE] L0001
       JE              G81,"spill" [TRUE] L0001
       CALL            R0188 (S259,G6e) -> -(SP)
       RET_POPPED      
L0001: JE              G6e,#66,#79 [FALSE] RFALSE
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       PRINT_PADDR     G89
       CALL            R0008 (#79) -> -(SP)
       RET_POPPED      
L0002: JZ              G70 [FALSE] L0003
       PRINT           "There's no "
       PRINT_OBJ       "laudanum"
       PRINT_RET       " left."
L0003: JZ              Gcf [FALSE] L0004
       INSERT_OBJ      "leather bottle","it"
       PRINT           "A bubble of "
       PRINT_OBJ       "laudanum"
       PRINT           " forms on the tip of"
       CALL            R0003 (#79) -> -(SP)
       PRINT_RET       " then slurps back in."
L0004: JE              Gcf,#16 [FALSE] L0005
       PRINT_PADDR     G08
       PRINT           "specify which glass you want to put"
       CALL            R0003 (#66) -> -(SP)
       PRINT_RET       " into."
L0005: GET_PROP        Gcf,#0e -> -(SP)
       JE              (SP)+,#02,#03 [FALSE] RFALSE
       PRINT_PADDR     G19
       PRINT           " dosed"
       CALL            R0006 -> -(SP)
       PRINT           ". Any more might be dangerous"
       PRINT_PADDR     G51
       RTRUE           

Routine R0190, 0 locals ()
    Action routine for:
        "press on OBJ"
        "press OBJ to OBJ"
        "press OBJ on OBJ"
        "press OBJ in OBJ"
        "press OBJ"
        "roll OBJ to OBJ"

       CALL            R0304 (S131) -> -(SP)
       RET_POPPED      

Routine R0191, 0 locals ()
    Action routine for:
        "move OBJ OBJ"
        "press OBJ OBJ"

       JE              Gcf,#1d [FALSE] L0001
       CALL            R0190 -> -(SP)
       RET_POPPED      
L0001: CALL            R0361 -> -(SP)
       RET_POPPED      

Routine R0192, 0 locals ()
    Pre-action routine for:
        "dip OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "leave OBJ in OBJ"
        "dip OBJ over OBJ"
        "dip OBJ around OBJ"
        "dip OBJ on OBJ"
        "drop OBJ on OBJ"
        "leave OBJ on OBJ"
        "bind OBJ"
        "wrap OBJ around OBJ"

       JE              Gcf,#a8 [FALSE] L0001
       CALL            R0018 (#30,G6e) -> -(SP)
       RTRUE           
L0001: JE              G6e,#66,#16 [FALSE] L0002
       CALL            R0018 (#6f,G6e,Gcf) -> -(SP)
       RTRUE           
L0002: JE              G6e,#05 [FALSE] L0004
       JE              G80,#31 [FALSE] L0003
       CALL            R0018 (#74,Gcf) -> -(SP)
       RTRUE           
L0003: CALL            R0307 -> -(SP)
       RET_POPPED      
L0004: JE              Gcf,#60 [FALSE] L0006
       JE              G00,#cf,#55,#32 [TRUE] L0005
       JE              G00,#b9,#bd,#97 [TRUE] L0005
       JE              G00,#72 [FALSE] L0006
L0005: JE              G80,#32,#30,#9c [TRUE] RFALSE
       JE              G80,#31 [TRUE] RFALSE
L0006: TEST_ATTR       Gcf,#1f [FALSE] L0007
       JE              G80,#32 [TRUE] L0007
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0007: CALL            R0295 (Gcf,G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       PRINT_PADDR     G75
       PRINT           "put"
       CALL            R0005 -> -(SP)
       LOADW           Ga6,#04 -> -(SP)
       JE              (SP)+,#f9 [FALSE] L0008
       PRINT           " on"
       JUMP            L0009
L0008: PRINT           " in"
L0009: CALL            R0006 -> -(SP)
       PRINT           " when"
       CALL            R0006 -> -(SP)
       PRINT           " is already "
       TEST_ATTR       G6e,#12 [FALSE] L0010
       PRINT           "on"
       JUMP            L0011
L0010: PRINT           "in"
L0011: CALL            R0005 -> -(SP)
       PRINT_RET       "!"
L0012: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] L0013
       JE              G6e,#80 [TRUE] L0013
       PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0013: CALL            R0292 (Gcf) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       CALL            R0356 (Gcf) -> -(SP)
       RET_POPPED      
L0014: CALL            R0273 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       RFALSE          

Routine R0193, 3 locals (0000, 0000, 0000)
    Action routine for:
        "dip OBJ in OBJ"
        "drop OBJ in OBJ"
        "drop OBJ down OBJ"
        "leave OBJ in OBJ"

       TEST_ATTR       Gcf,#10 [TRUE] L0001
       TEST_ATTR       Gcf,#18 [TRUE] L0001
       TEST_ATTR       Gcf,#12 [TRUE] L0001
       TEST_ATTR       Gcf,#1c [TRUE] L0001
       PRINT_PADDR     G75
       PRINT           "put"
       CALL            R0005 -> -(SP)
       PRINT           " in"
       CALL            R0002 (Gcf) -> -(SP)
       PRINT_RET       "!"
L0001: JE              Gcf,G6e [TRUE] L0002
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       TEST_ATTR       G6e,#17 [TRUE] L0003
L0002: CALL            R0307 -> -(SP)
       RET_POPPED      
L0003: TEST_ATTR       Gcf,#1a [FALSE] L0004
       PRINT_PADDR     Gb2
       RTRUE           
L0004: TEST_ATTR       Gcf,#10 [TRUE] L0005
       TEST_ATTR       Gcf,#12 [TRUE] L0005
       CALL            R0025 (Gcf) -> -(SP)
       CALL            R0357 (S168,Gcf) -> -(SP)
       RET_POPPED      
L0005: JIN             G6e,Gcf [FALSE] L0006
       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT           " is already in"
       CALL            R0008 (Gcf) -> -(SP)
       RET_POPPED      
L0006: CALL            R0275 (Gcf) -> L02
       CALL            R0275 (G6e) -> -(SP)
       ADD             L02,(SP)+ -> L01
       GET_PROP        Gcf,#10 -> -(SP)
       SUB             L01,(SP)+ -> L00
       GET_PROP        Gcf,#0a -> -(SP)
       JG              L00,(SP)+ [FALSE] L0009
       CALL            R0295 (G6e,Gcf) -> -(SP)
       JZ              (SP)+ [FALSE] L0009
       PRINT           "There's no room "
       TEST_ATTR       Gcf,#12 [FALSE] L0007
       PRINT           "on"
       JUMP            L0008
L0007: PRINT           "in"
L0008: CALL            R0006 -> -(SP)
       PRINT           " for"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0009: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] RTRUE
L0010: INSERT_OBJ      G6e,Gcf
       SET_ATTR        G6e,#13
       PRINT_RET       "Done."

Routine R0194, 0 locals ()
    Action routine for:
        "dip OBJ over OBJ"
        "dip OBJ around OBJ"
        "dip OBJ on OBJ"
        "drop OBJ on OBJ"
        "leave OBJ on OBJ"
        "bind OBJ"

       JE              Gcf,#0f [FALSE] L0001
       CALL            R0018 (#8e,G6e) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       Gcf,#12 [FALSE] L0002
       CALL            R0193 -> -(SP)
       RET_POPPED      
L0002: PRINT           "There's no good surface on"
       CALL            R0008 (Gcf) -> -(SP)
       RET_POPPED      

Routine R0195, 0 locals ()
    Action routine for:
        "dip OBJ out OBJ"
        "dip OBJ throug OBJ"
        "hurl OBJ out OBJ"
        "hurl OBJ throug OBJ"
        "lower OBJ out OBJ"
        "lower OBJ throug OBJ"
        "drop OBJ throug OBJ"
        "drop OBJ out OBJ"

       TEST_ATTR       Gcf,#1a [FALSE] L0002
       TEST_ATTR       Gcf,#10 [FALSE] L0001
       CALL            R0245 -> -(SP)
       RET_POPPED      
L0001: CALL            R0357 (S168,Gcf) -> -(SP)
       RET_POPPED      
L0002: GET_PARENT      "it" -> -(SP)
       JE              Gcf,(SP)+ [FALSE] L0003
       JE              G81,"throw","toss","hurl" [FALSE] L0003
       STORE           Gcf,#00
       CALL            R0245 -> -(SP)
       RET_POPPED      
L0003: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0196, 0 locals ()
    Action routine for:
        "move down OBJ"
        "move OBJ down OBJ"
        "lower OBJ"
        "press down OBJ"
        "press OBJ down OBJ"
        "boost up OBJ"
        "boost OBJ"
        "move up OBJ"
        "move OBJ up OBJ"
        "press up OBJ"
        "press OBJ up OBJ"

       CALL            R0304 (S222) -> -(SP)
       RET_POPPED      

Routine R0197, 0 locals ()
    Action routine for:
        "rape OBJ"

       PRINT_PADDR     S047
       RTRUE           

Routine R0198, 1 local (0000)
    Action routine for:
        "reach in OBJ"

       GET_CHILD       G6e -> L00 [TRUE] L0001
L0001: TEST_ATTR       G6e,#1f [TRUE] L0002
       TEST_ATTR       G6e,#12 [TRUE] L0002
       TEST_ATTR       G6e,#18 [TRUE] L0003
L0002: CALL            R0307 -> -(SP)
       RET_POPPED      
L0003: TEST_ATTR       G6e,#10 [TRUE] L0004
       CALL            R0357 (S168,G6e) -> -(SP)
       RET_POPPED      
L0004: JZ              L00 [TRUE] L0005
       TEST_ATTR       L00,#14 [TRUE] L0005
       TEST_ATTR       L00,#17 [TRUE] L0006
L0005: PRINT_PADDR     G90
       PRINT           "in"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0006: PRINT           "You feel something inside"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0199, 0 locals ()
    Action routine for:
        "browse OBJ with OBJ"
        "browse OBJ throug OBJ"
        "browse throug OBJ"
        "browse OBJ"

       CALL            R0348 (S210) -> -(SP)
       RET_POPPED      

Routine R0200, 0 locals ()
    Action routine for:
        "reflec OBJ in OBJ"

       JE              G6e,#dc [FALSE] L0001
       JE              Gcf,#c6,#6b [FALSE] L0001
       JE              G00,#b0 [FALSE] L0001
       CALL            R0018 (#6c,#67,Gcf) -> -(SP)
       RTRUE           
L0001: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0201, 0 locals ()
    Action routine for:
        "remove OBJ"

       TEST_ATTR       G6e,#15 [FALSE] L0002
       JIN             G6e,"it" [FALSE] L0002
       TEST_ATTR       G6e,#16 [TRUE] L0001
       PRINT_PADDR     G94
       PRINT_RET       "wearing that!"
L0001: CALL            R0202 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CLEAR_ATTR      G6e,#16
       PRINT           "You remove"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0002: CALL            R0018 (#6a,G6e) -> -(SP)
       RTRUE           

Routine R0202, 0 locals ()

       JE              G00,#b0 [FALSE] RFALSE
       JIN             "Lafond",G00 [FALSE] RFALSE
       JG              G06,#0a [FALSE] L0001
       PRINT_PADDR     G90
       PRINT_RET       "to remove!"
L0001: PRINT_OBJ       "Lafond"
       PRINT           " chuckles. "No, ma cherie, "
       JL              G06,#03 [FALSE] L0002
       PRINT_RET       "have some wine first.""
L0002: PRINT           "I'll do that.""
       NEW_LINE        
       STORE           G06,#0a
       CALL            R0023 (#d67e,#ffff) -> -(SP)
       RTRUE           

Routine R0203, 1 local (0000)
    Action routine for:
        "return OBJ to OBJ"
        "return OBJ"

       JZ              Gcf [FALSE] L0002
       CALL            R0298 (G00,#1f,S121) -> L00
       JZ              L00 [TRUE] L0001
       CALL            R0018 (#3b,G6e,L00) -> -(SP)
       RTRUE           
L0001: CALL            R0364 (S211) -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       Gcf,#1f [FALSE] L0003
       CALL            R0018 (#3b,G6e,Gcf) -> -(SP)
       RTRUE           
L0003: CALL            R0018 (#31,G6e,Gcf) -> -(SP)
       RTRUE           

Routine R0204, 0 locals ()
    Action routine for:
        "rip OBJ with OBJ"
        "rip up OBJ"
        "rip OBJ in OBJ"
        "rip OBJ"

       JE              G6e,#ce,#af [FALSE] L0001
       PRINT           "There's no reason to be so destructive"
       PRINT_PADDR     G51
       RTRUE           
L0001: PRINT_RET       "It doesn't tear."

Routine R0205, 0 locals ()
    Action routine for:
        "knock over OBJ"
        "roll OBJ"

       JE              G6e,#7c [FALSE] L0001
       PRINT_RET       "You ARE exasperated."
L0001: CALL            R0292 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0356 (G6e) -> -(SP)
       RET_POPPED      
L0002: JE              G81,"tip" [FALSE] L0004
       JE              G6e,#26 [FALSE] L0003
       CALL            R0269 -> -(SP)
       RET_POPPED      
L0003: CALL            R0362 -> -(SP)
       PRINT_RET       " can't take tips!"
L0004: PRINT           "A rolling "
       PRINT_OBJ       G6e
       PRINT_RET       " gathers no moss."

Routine R0206, 0 locals ()
    Action routine for:
        "oar OBJ"

       PRINT_RET       "You haven't any oars!"

Routine R0207, 0 locals ()
    Action routine for:
        "oar OBJ OBJ"

       JE              Gcf,#1d [FALSE] L0001
       CALL            R0206 -> -(SP)
       RET_POPPED      
L0001: CALL            R0361 -> -(SP)
       RET_POPPED      

Routine R0208, 0 locals ()
    Action routine for:
        "oar OBJ to OBJ"
        "oar to OBJ"

       JE              G6e,#78 [TRUE] L0001
       JE              G6e,#34 [FALSE] L0002
       JE              Gcf,#78 [FALSE] L0002
L0001: STORE           G44,#17
       CALL            R0018 (#7b,#34,#1d) -> -(SP)
       RTRUE           
L0002: JE              G6e,#24,#67 [TRUE] L0003
       JE              G6e,#34 [FALSE] L0004
       JE              Gcf,#24,#67 [FALSE] L0004
L0003: STORE           G44,#1a
       CALL            R0018 (#7b,#34,#1d) -> -(SP)
       RTRUE           
L0004: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#34 [FALSE] L0005
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0005: CALL            R0357 (S148,#34) -> -(SP)
       RET_POPPED      

Routine R0209, 0 locals ()
    Action routine for:
        "rescue OBJ"
        "help OBJ"

       CALL            R0367 -> -(SP)
       RET_POPPED      

Routine R0210, 0 locals ()
    Action routine for:
        "score"

       PRINT           "In "
       PRINT_NUM       G02
       PRINT           " turn"
       JE              G02,#01 [TRUE] L0001
       PRINT_CHAR      's'
L0001: PRINT           ", you have achieved a score of "
       PRINT_NUM       G01
       PRINT           " out of 25 points"
       JL              G01,#19 [FALSE] L0006
       PRINT           ". This gives you the rank of "
       JL              G01,#05 [FALSE] L0002
       PRINT           "Damsel in Distress"
       JUMP            L0006
L0002: JL              G01,#0a [FALSE] L0003
       PRINT           "Missish Minx"
       JUMP            L0006
L0003: JL              G01,#0f [FALSE] L0004
       PRINT           "Plucky Lass"
       JUMP            L0006
L0004: JL              G01,#14 [FALSE] L0005
       PRINT           "Daring Demoiselle"
       JUMP            L0006
L0005: JL              G01,#19 [FALSE] L0006
       PRINT           "Lady Leman"
L0006: PRINT_PADDR     G51
       RTRUE           

Routine R0211, 0 locals ()
    Action routine for:
        "rummag throug OBJ"
        "rummag in OBJ"
        "rummag OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0001
       CALL            R0214 -> -(SP)
       RET_POPPED      
L0001: JIN             "it",G6e [FALSE] L0002
       CALL            R0282 -> -(SP)
       RET_POPPED      
L0002: TEST_ATTR       G6e,#18 [FALSE] L0003
       TEST_ATTR       G6e,#10 [TRUE] L0003
       CALL            R0357 (S168,G6e) -> -(SP)
       RET_POPPED      
L0003: TEST_ATTR       G6e,#18 [FALSE] L0004
       PRINT           "You find"
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT_PADDR     G51
       RTRUE           
L0004: CALL            R0348 (S162) -> -(SP)
       RET_POPPED      

Routine R0212, 0 locals ()
    Action routine for:
        "flick OBJ to OBJ"
        "flick around OBJ"
        "flick OBJ"

       JE              G6e,#1f [FALSE] L0001
       CALL            R0354 -> -(SP)
       RET_POPPED      
L0001: JZ              Gcf [FALSE] L0003
       TEST_ATTR       G6e,#17 [FALSE] L0002
       CALL            R0304 (S260) -> -(SP)
       RET_POPPED      
L0002: PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0003: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0213, 0 locals ()
    Action routine for:
        "feed OBJ with OBJ"
        "feed OBJ OBJ"
        "give OBJ with OBJ"
        "give OBJ OBJ"

       CALL            R0018 (#3b,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0214, 0 locals ()
    Action routine for:
        "bounce OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0001
       PRINT_PADDR     Gd5
       RTRUE           
L0001: CALL            R0304 (S182) -> -(SP)
       RET_POPPED      

Routine R0215, 0 locals ()
    Action routine for:
        "bounce OBJ with OBJ"

       JE              G6e,#05 [TRUE] L0001
       CALL            R0361 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       Gcf,#1f [TRUE] L0002
       PRINT           "I don't think"
       CALL            R0006 -> -(SP)
       PRINT_RET       " even has hands."
L0002: CALL            R0018 (#9b,Gcf) -> -(SP)
       RTRUE           

Routine R0216, 0 locals ()
    Action routine for:
        "fire OBJ with OBJ"
        "fire OBJ"
        "hurl OBJ with OBJ"

       JZ              Gcf [FALSE] L0002
       CALL            R0295 (#5b) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0018 (#81,G6e,#5b) -> -(SP)
       RTRUE           
L0001: CALL            R0367 -> -(SP)
       RET_POPPED      
L0002: PRINT_RET       "Don't ever bother applying for a job as a gunswoman."

Routine R0217, 0 locals ()
    Pre-action routine for:
        "fire OBJ in OBJ"
        "fire at OBJ"
        "fire OBJ at OBJ"

       JE              G6e,#a0 [TRUE] RFALSE
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JZ              Gcf [FALSE] L0002
       CALL            R0295 (#5b) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0001: CALL            R0018 (#81,G6e) -> -(SP)
       RTRUE           
L0002: PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0218, 0 locals ()
    Action routine for:
        "fire OBJ in OBJ"
        "fire at OBJ"
        "fire OBJ at OBJ"

       CALL            R0018 (#81,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0219, 0 locals ()
    Action routine for:
        "show OBJ to OBJ"

       PRINT_PADDR     S034
       CALL            R0006 -> -(SP)
       PRINT_RET       " is interested."

Routine R0220, 0 locals ()
    Action routine for:
        "close up OBJ"

       JE              G6e,#1f [FALSE] L0001
       PRINT_RET       "[I hope you're not addressing me...]"
L0001: CALL            R0018 (#25,G6e) -> -(SP)
       RTRUE           

Routine R0221, 0 locals ()
    Action routine for:
        "moan"

       PRINT_RET       "You sigh contentedly, smiling."

Routine R0222, 1 local (0000)
    Action routine for:
        "sit down OBJ"

       CALL            R0298 (G00,#1c) -> L00
       JZ              L00 [TRUE] L0001
       CALL            R0018 (#1a,L00) -> -(SP)
       RTRUE           
L0001: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0223, 0 locals ()
    Action routine for:
        "doze"

       CALL            R0021 (#ac18) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0534 -> -(SP)
       RET_POPPED      
L0001: PRINT_RET       "You're not tired."

Routine R0224, 0 locals ()
    Action routine for:
        "smell OBJ"
        "smell"

       JZ              G6e [TRUE] L0001
       PRINT           "Smells like any other "
       PRINT_OBJ       G6e
       PRINT_PADDR     G51
       RTRUE           
L0001: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#5d [FALSE] L0002
       PRINT           "You recoil from the taint of rancid meat"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G00,#72,#86 [FALSE] L0003
       PRINT_RET       "The odor of old grease and char does not improve your
appetite."
L0003: JE              G00,#50 [FALSE] L0004
       PRINT           "The odors of charred wood, sea salt and blood burn your
nose"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G00,#c1 [FALSE] L0005
       PRINT_RET       "Close quarters, indeed."
L0005: PRINT           "Nothing smells unusual"
       PRINT_PADDR     G51
       RTRUE           

Routine R0225, 0 locals ()
    Action routine for:
        "soak OBJ with OBJ"
        "soak OBJ in OBJ"
        "soak OBJ"

       JZ              Gcf [FALSE] L0001
       CALL            R0188 (S333,G6e) -> -(SP)
       RET_POPPED      
L0001: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0226, 1 local (0000)

       CALL            R0362 -> -(SP)
       PRINT_CHAR      ' '
       PRINT_PADDR     L00
       TEST_ATTR       G6e,#02 [TRUE] L0001
       JE              G6e,#0f [TRUE] L0001
       PRINT_CHAR      's'
L0001: PRINT           " just like"
       CALL            R0007 (G6e) -> -(SP)
       RET_POPPED      

Routine R0227, 0 locals ()
    Action routine for:
        "cover OBJ with OBJ"

       CALL            R0018 (#32,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0228, 0 locals ()
    Action routine for:
        "show OBJ OBJ"

       CALL            R0018 (#83,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0229, 0 locals ()
    Action routine for:
        "carry up OBJ"
        "rise up OBJ"
        "rise"

       JE              G81,"hold" [FALSE] L0001
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0001: GET_PARENT      "it" -> -(SP)
       TEST_ATTR       (SP)+,#1c [FALSE] L0002
       GET_PARENT      "it" -> -(SP)
       CALL            R0018 (#21,(SP)+) -> -(SP)
       RTRUE           
L0002: JZ              G6e [TRUE] L0003
       TEST_ATTR       G6e,#17 [FALSE] L0003
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0003: JE              G00,#8e,#d8,#7f [FALSE] L0004
       PRINT_RET       "There's not enough room for even your petite frame to
stand straight."
L0004: PRINT_PADDR     G1e
       PRINT_RET       "standing."

Routine R0230, 0 locals ()
    Action routine for:
        "tell OBJ OBJ"

       CALL            R0018 (#98,Gcf) -> -(SP)
       RTRUE           

Routine R0231, 0 locals ()
    Action routine for:
        "hurl OBJ OBJ"

       CALL            R0018 (#9f,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0232, 0 locals ()
    Action routine for:
        "fix OBJ"

       JE              G6e,#2a [FALSE] L0001
       CALL            R0369 (S037) -> -(SP)
       RET_POPPED      
L0001: PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT           " isn't "
       JE              G81,"sharpe","whet" [FALSE] L0002
       PRINT           "dull"
       JUMP            L0003
L0002: PRINT           "broken"
L0003: PRINT_RET       "!"

Routine R0233, 0 locals ()
    Action routine for:
        "swim in OBJ"
        "swim"

       JE              G6e,#60 [TRUE] L0001
       JZ              G6e [FALSE] L0002
       CALL            R0297 (#60,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: CALL            R0369 (S231) -> -(SP)
       RET_POPPED      
L0002: PRINT_RET       "Your head must be swimming."

Routine R0234, 0 locals ()
    Action routine for:
        "swing OBJ at OBJ"
        "swing OBJ"
        "swing from OBJ"
        "swing down OBJ"
        "swing on OBJ"

       JZ              Gcf [TRUE] L0001
       CALL            R0018 (#16,Gcf,G6e) -> -(SP)
       RTRUE           
L0001: JE              G6e,#1f [FALSE] L0002
       JE              G00,#6d [FALSE] L0002
       CALL            R0018 (#91,#38) -> -(SP)
       RTRUE           
L0002: CALL            R0354 -> -(SP)
       RET_POPPED      

Routine R0235, 0 locals ()
    Action routine for:
        "faint OBJ"

       PRINT           "You've never been missish enough to faint on demand"
       PRINT_PADDR     G51
       RTRUE           

Routine R0236, 0 locals ()
    Action routine for:
        "wrap OBJ in OBJ"

       CALL            R0018 (#b2,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0237, 0 locals ()
    Pre-action routine for:
        "carry OBJ on OBJ"
        "carry OBJ in OBJ"
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "pick up OBJ"
        "remove OBJ from OBJ"

       CALL            R0299 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JIN             "it",G6e [FALSE] L0003
       PRINT           "You're "
       TEST_ATTR       G6e,#08 [FALSE] L0001
       PRINT_CHAR      'i'
       JUMP            L0002
L0001: PRINT_CHAR      'o'
L0002: PRINT_RET       "n it!"
L0003: JG              G06,#0a [FALSE] L0004
       JE              G00,#b0 [FALSE] L0004
       JIN             G00,"Lafond" [TRUE] RFALSE
L0004: JIN             G6e,"it" [TRUE] L0005
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       TEST_ATTR       G6e,#17 [TRUE] L0008
L0005: TEST_ATTR       G6e,#16 [FALSE] L0006
       PRINT_PADDR     G1e
       PRINT           "wearing"
       JUMP            L0007
L0006: PRINT_PADDR     G19
L0007: CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0008: JE              G6e,#66 [FALSE] L0009
       JE              Gcf,#79 [TRUE] L0009
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0009: JZ              Gcf [TRUE] RFALSE
       JIN             G6e,Gcf [TRUE] RFALSE
       JIN             G6e,Gcf [TRUE] L0010
       CALL            R0358 -> -(SP)
       RET_POPPED      
L0010: JE              G6e,#0f [FALSE] L0011
       CALL            R0018 (#30,Gcf) -> -(SP)
       RTRUE           
L0011: STORE           Gcf,#00
       RFALSE          

Routine R0238, 0 locals ()
    Action routine for:
        "carry OBJ on OBJ"
        "carry OBJ in OBJ"
        "carry OBJ from OBJ"
        "carry OBJ off OBJ"
        "carry OBJ out OBJ"
        "carry OBJ"
        "pick up OBJ"
        "remove OBJ from OBJ"

       CALL            R0272 -> -(SP)
       JE              (SP)+,#01 [FALSE] RFALSE
       PRINT_RET       "Taken."

Routine R0239, 0 locals ()
    Action routine for:
        "carry off OBJ"

       TEST_ATTR       G6e,#16 [FALSE] L0001
       CALL            R0018 (#77,G6e) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       G6e,#1c [FALSE] L0002
       CALL            R0018 (#21,G6e) -> -(SP)
       RTRUE           
L0002: PRINT_PADDR     G94
       PRINT           "wearing"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0240, 0 locals ()
    Action routine for:
        "carry OBJ with OBJ"

       PRINT           "Sorry,"
       CALL            R0006 -> -(SP)
       PRINT           " is no help in getting"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0241, 0 locals ()
    Action routine for:
        "tell OBJ"
        "speak to OBJ"

       TEST_ATTR       G6e,#1f [FALSE] L0003
       JE              G6e,#bb [TRUE] L0003
       TEST_ATTR       G6e,#05 [FALSE] L0001
       PRINT_PADDR     G12
       CALL            R0301 -> -(SP)
       RET_POPPED      
L0001: JZ              G3d [TRUE] L0002
       STORE           Gb9,G6e
       STORE           G23,#01
       RTRUE           
L0002: PRINT           "Hmmm ..."
       CALL            R0005 -> -(SP)
       PRINT_RET       " looks at you expectantly, as if you seemed to be about
to talk."
L0003: CALL            R0348 (S085) -> -(SP)
       CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0242, 0 locals ()
    Action routine for:
        "tell OBJ about OBJ"

       JE              G6e,#0f [FALSE] L0001
       CALL            R0018 (#b0,Gcf) -> -(SP)
       RTRUE           
L0001: CALL            R0018 (#83,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0243, 0 locals ()
    Action routine for:
        "thank"
        "thank OBJ"

       JZ              G6e [FALSE] L0001
       PRINT_RET       "[Just doing my job.]"
L0001: TEST_ATTR       G6e,#1f [FALSE] L0002
       PRINT_RET       ""You're welcome.""
L0002: CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0244, 0 locals ()
    Action routine for:
        "hurl OBJ at OBJ"

       CALL            R0018 (#2b,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0245, 0 locals ()
    Action routine for:
        "hurl OBJ on OBJ"
        "hurl OBJ down OBJ"
        "hurl OBJ in OBJ"
        "hurl away OBJ"
        "hurl OBJ"

       CALL            R0126 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G00,#94,#59,#63 [FALSE] L0001
       CALL            R0018 (#31,G6e,#60) -> -(SP)
       RTRUE           
L0001: JZ              Gcf [TRUE] L0002
       INSERT_OBJ      G6e,G00
       PRINT_RET       "You missed."
L0002: INSERT_OBJ      G6e,G00
       PRINT_RET       "Thrown."

Routine R0246, 0 locals ()
    Action routine for:
        "hurl OBJ over OBJ"

       INSERT_OBJ      G6e,G00
       PRINT_RET       "You missed."

Routine R0247, 0 locals ()
    Action routine for:
        "hurl overbo OBJ"

       JE              G00,#94,#63 [TRUE] L0001
       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: CALL            R0018 (#31,G6e,#60) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "One normally tries this on a boat."

Routine R0248, 0 locals ()
    Action routine for:
        "hurl OBJ to OBJ"

       TEST_ATTR       Gcf,#1f [FALSE] L0001
       CALL            R0018 (#3b,G6e,Gcf) -> -(SP)
       RTRUE           
L0001: CALL            R0018 (#9c,G6e,Gcf) -> -(SP)
       RTRUE           

Routine R0249, 0 locals ()
    Action routine for:
        "attach OBJ with OBJ"
        "attach up OBJ with OBJ"

       CALL            R0018 (#a2,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0250, 0 locals ()
    Pre-action routine for:
        "dip out OBJ"
        "blow out OBJ"
        "deacti OBJ"
        "flick off OBJ"
        "close off OBJ"
        "burn OBJ in OBJ"
        "burn up OBJ"
        "burn OBJ"
        "close OBJ on OBJ"
        "close OBJ"
        "empty OBJ in OBJ"
        "empty OBJ on OBJ"
        "empty out OBJ"
        "empty OBJ"
        "kiss OBJ"
        "knock over OBJ"
        "roll OBJ"
        "light OBJ on OBJ"
        "light OBJ with OBJ"
        "light OBJ in OBJ"
        "light OBJ"
        "flick on OBJ"
        "move down OBJ"
        "move OBJ down OBJ"
        "lower OBJ"
        "press down OBJ"
        "press OBJ down OBJ"
        "move OBJ to OBJ"
        "move in OBJ"
        "move OBJ"
        "boost up OBJ"
        "boost OBJ"
        "move up OBJ"
        "move OBJ up OBJ"
        "press up OBJ"
        "press OBJ up OBJ"
        "open OBJ with OBJ"
        "open up OBJ"
        "open OBJ"
        "play with OBJ"
        "feel throug OBJ"
        "feel OBJ with OBJ"
        "feel OBJ"
        "tap OBJ"
        "feel OBJ on OBJ"

       JE              G80,#5f,#65 [FALSE] L0001
       JZ              Gcf [TRUE] L0001
       JE              Gcf,#1f [TRUE] L0001
       CALL            R0361 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#6b [FALSE] L0002
       JE              G6e,#a3 [FALSE] L0002
       JE              Gcf,#2a [FALSE] L0002
       PRINT_PADDR     S047
       RTRUE           
L0002: JE              G80,#25,#68 [FALSE] L0004
       JE              G6e,#d5,#52,#ae [TRUE] L0003
       JE              G6e,#9a,#d6,#83 [FALSE] L0004
L0003: CALL            R0348 (S232) -> -(SP)
       RET_POPPED      
L0004: JE              G6e,#4a [FALSE] L0005
       JE              G80,#6b [FALSE] L0005
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#5d [FALSE] L0005
       PRINT           "Your fingers just brush"
       CALL            R0008 (#4a) -> -(SP)
       RET_POPPED      
L0005: CALL            R0292 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0356 (G6e) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#35 [FALSE] L0008
       JE              G6e,#d2,#5f [TRUE] RFALSE
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       CALL            R0069 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
L0007: PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET             #08
L0008: JE              G80,#36 [FALSE] RFALSE
       JE              Gcf,#d2,#5f [TRUE] RFALSE
       CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       CALL            R0069 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
L0009: PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET             #08

Routine R0251, 0 locals ()
    Action routine for:
        "play with OBJ"
        "feel throug OBJ"
        "feel OBJ with OBJ"
        "feel OBJ"
        "tap OBJ"

       CALL            R0299 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0304 (S265) -> -(SP)
       RET_POPPED      

Routine R0252, 0 locals ()
    Action routine for:
        "feel OBJ on OBJ"

       CALL            R0018 (#6b,Gcf,G6e) -> -(SP)
       RTRUE           

Routine R0253, 0 locals ()
    Action routine for:
        "unbar OBJ with OBJ"
        "unbar OBJ"

       JZ              Gcf [TRUE] L0001
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6e,#0a [FALSE] L0002
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Your nose is key-shaped, I suppose?"
L0002: TEST_ATTR       G6e,#1a [FALSE] L0003
       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT_RET       " isn't locked."
L0003: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0254, 7 locals (0000, 0000, 0000, 0000, 0000, 0000, 0000)
    Action routine for:
        "procee OBJ"
        "duck OBJ"

       GET_PARENT      "it" -> L00
       JZ              G35 [FALSE] L0001
       CALL            R0018 (#12,G6e) -> -(SP)
       RTRUE           
L0001: JE              G6e,#13 [FALSE] L0002
       CALL            R0135 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0002: JE              G6e,#14 [FALSE] L0003
       GET_PROP_ADDR   G00,#14 -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0298 (G00,#1c) -> L01
       JZ              L01 [TRUE] L0003
       CALL            R0295 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0018 (#1a,L01) -> -(SP)
       RTRUE           
L0003: GET_PROP_ADDR   G00,G6e -> L02
       JZ              L02 [TRUE] L0013
       GET_PROP_LEN    L02 -> L03
       JE              L03,#01 [FALSE] L0004
       LOADB           L02,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0004: JE              L03,#02 [FALSE] L0005
       LOADW           L02,#00 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RET             #08
L0005: JE              L03,#03 [FALSE] L0007
       LOADW           L02,#00 -> -(SP)
       CALL            (SP)+ -> L06
       JZ              L06 [TRUE] L0006
       JE              L06,#1f [TRUE] RTRUE
       CALL            R0284 (L06) -> -(SP)
       RET_POPPED      
L0006: RET             #08
L0007: JE              L03,#04 [FALSE] L0010
       LOADB           L02,#01 -> -(SP)
       LOAD            [(SP)+] -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       LOADB           L02,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0008: LOADW           L02,#01 -> L04
       JZ              L04 [TRUE] L0009
       PRINT_PADDR     L04
       NEW_LINE        
       RET             #08
L0009: PRINT_PADDR     G49
       RET             #08
L0010: JE              L03,#05 [FALSE] RFALSE
       LOADB           L02,#01 -> L05
       TEST_ATTR       L05,#10 [FALSE] L0011
       LOADB           L02,#00 -> -(SP)
       CALL            R0284 ((SP)+) -> -(SP)
       RET_POPPED      
L0011: LOADW           L02,#01 -> L04
       JZ              L04 [TRUE] L0012
       CALL            R0025 (L05) -> -(SP)
       PRINT_PADDR     L04
       NEW_LINE        
       RET             #08
L0012: CALL            R0025 (L05) -> -(SP)
       CALL            R0357 (S168,L05) -> -(SP)
       RET             #08
L0013: JE              G6e,#14,#13 [FALSE] L0014
       CALL            R0258 -> -(SP)
       RET             #08
L0014: PRINT_PADDR     G49
       RET             #08

Routine R0255, 1 local (0000)
    Action routine for:
        "wave OBJ"

       PRINT           "You wave"
       JZ              L00 [FALSE] L0001
       CALL            R0075 -> -(SP)
       PRINT           " in the air"
       PRINT_PADDR     G51
       RTRUE           
L0001: PRINT           " cheerfully at"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0256, 0 locals ()
    Action routine for:
        "wave at OBJ"

       CALL            R0255 (#01) -> -(SP)
       RTRUE           

Routine R0257, 0 locals ()
    Action routine for:
        "dry OBJ on OBJ"
        "dry OBJ in OBJ"
        "dry OBJ out OBJ"
        "dry OBJ from OBJ"
        "dry OBJ"

       JZ              Gcf [FALSE] L0005
       JE              G6e,#54 [FALSE] L0001
       JZ              Gdb [FALSE] L0002
L0001: JE              G6e,#ca [FALSE] L0003
       JZ              G5e [TRUE] L0003
L0002: PRINT_RET       "You don't have time to dry it."
L0003: JE              G81,"dry" [FALSE] L0004
       PRINT_RET       "That isn't wet!"
L0004: CALL            R0307 -> -(SP)
       RET_POPPED      
L0005: JE              Gcf,#ca,#54 [FALSE] L0006
       CALL            R0018 (#6e,Gcf) -> -(SP)
       RTRUE           
L0006: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0258, 0 locals ()
    Action routine for:
        "procee around OBJ"
        "procee"
        "move around OBJ"
        "circle OBJ"
        "duck around OBJ"

       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           "Did you have any particular "
       PRINT_OBJ       "direction"
       PRINT_RET       " in mind?"

Routine R0259, 0 locals ()
    Action routine for:
        "approa OBJ"
        "procee to OBJ"
        "duck to OBJ"

       JE              G6e,#1d [FALSE] L0001
       CALL            R0300 (G44) -> -(SP)
       RET_POPPED      
L0001: CALL            R0258 -> -(SP)
       RET_POPPED      

Routine R0260, 1 local (0003)
    Action routine for:
        "wait"

       PRINT           "Time passes..."
       NEW_LINE        
L0001: DEC_CHK         L00,#00 [TRUE] L0002
       CALL            R0024 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
L0002: STORE           G23,#01
       RET             G23

Routine R0261, 1 local (0000)
    Pre-action routine for:
        "remove OBJ"
        "carry off OBJ"
        "carry undres OBJ"
        "disrob OBJ"
        "disrob"

       CALL            R0350 ("deck",#a8) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JE              G00,#4d [TRUE] L0001
       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: CALL            R0258 -> -(SP)
       RTRUE           
L0002: JZ              G6e [TRUE] L0003
       JE              G80,#a6 [TRUE] RFALSE
L0003: CALL            R0263 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       JE              G00,#b0 [TRUE] RFALSE
       JE              G00,#30 [FALSE] L0004
       JIN             "your father",G00 [FALSE] RFALSE
L0004: CALL            R0298 (G00,#1f,S291) -> -(SP)
       JZ              (SP)+ [FALSE] L0005
       JE              G00,#41,#53,#a5 [FALSE] L0006
L0005: PRINT_PADDR     G8a
       RTRUE           
L0006: JE              G00,#30 [FALSE] L0007
       GET_PARENT      "your father" -> L00
       GET_PARENT      "Cookie" -> -(SP)
       JE              G00,L00,(SP)+ [FALSE] RFALSE
L0007: JZ              G6e [TRUE] RFALSE
       JE              G6e,#df [TRUE] RFALSE
       TEST_ATTR       G6e,#16 [TRUE] L0008
       TEST_ATTR       G6e,#15 [FALSE] RFALSE
L0008: TEST_ATTR       G6e,#16 [TRUE] RFALSE
       PRINT           "You're not wearing"
       CALL            R0005 -> -(SP)
       PRINT_RET       "!"

Routine R0262, 0 locals ()
    Pre-action routine for:
        "dip on OBJ"
        "don OBJ"

       TEST_ATTR       G6e,#15 [TRUE] L0001
       CALL            R0348 (S062) -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G6e,#16 [FALSE] L0002
       PRINT_PADDR     G1e
       PRINT           "wearing"
       CALL            R0005 -> -(SP)
       PRINT_RET       "!"
L0002: CALL            R0263 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0022 (#d67e) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       GET_PARENT      "Lafond" -> -(SP)
       JE              (SP)+,G00 [FALSE] L0003
       PRINT_OBJ       "Lafond"
       PRINT_RET       " prevents you."
L0003: JZ              Gb3 [FALSE] RFALSE
       JE              G00,#70,#a5,#53 [TRUE] L0004
       JE              G00,#41 [FALSE] RFALSE
L0004: PRINT_RET       "People might notice."

Routine R0263, 0 locals ()

       JE              G00,#50 [FALSE] L0001
       PRINT           "With pirates attacking?! "
       PRINT_PADDR     Gda
       RTRUE           
L0001: JE              G00,#b2,#cf [FALSE] L0003
       PRINT_PADDR     G75
       PRINT           "manage the fastenings while whipping to and fro "
       JE              G00,#b2 [FALSE] L0002
       PRINT           "on"
       CALL            R0007 (#4e) -> -(SP)
       RET_POPPED      
L0002: PRINT           "in"
       CALL            R0008 (#de) -> -(SP)
       RET_POPPED      
L0003: JE              G00,#8e,#d8 [FALSE] RFALSE
       PRINT_PADDR     G75
       PRINT_RET       "even stand straight, much less change clothes!"

Routine R0264, 0 locals ()
    Action routine for:
        "dip on OBJ"
        "don OBJ"

       INSERT_OBJ      G6e,"it"
       SET_ATTR        G6e,#16
       PRINT           "You're now wearing"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0265, 0 locals ()
    Action routine for:
        "what OBJ"

       PRINT_RET       "Good question."

Routine R0266, 0 locals ()
    Action routine for:
        "where OBJ"

       CALL            R0140 (#01) -> -(SP)
       RET_POPPED      

Routine R0267, 0 locals ()
    Action routine for:
        "aaieee to OBJ"
        "aaieee at OBJ"
        "aaieee"

       JE              G00,#6d,#4d [FALSE] L0001
       PRINT           "Although your voice is quite piercing, no one notices
you."
       NEW_LINE        
       JUMP            L0003
L0001: JE              G00,#50 [FALSE] L0002
       PRINT_PADDR     G45
       NEW_LINE        
       JUMP            L0003
L0002: PRINT           "Papa always says, "Action, not reaction, girl!""
       NEW_LINE        
L0003: CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0268, 0 locals ()

       STORE           Gc9,#00
       RFALSE          

Routine R0269, 0 locals ()
    Action routine for:
        "nod"

       JE              Gc9,#01 [FALSE] L0001
       PRINT           "That wasn't a yes or no question"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              Gc9,#02 [FALSE] L0002
       PRINT_RET       "That was just a rhetorical question."
L0002: JE              Gc9,#03 [FALSE] L0003
       PRINT_RET       "Whither goes a will, goes a way."
L0003: JE              Gc9,#04 [FALSE] L0004
       REMOVE_OBJ      "Captain Jamison"
       CALL            R0368 -> -(SP)
       PRINT_RET       "Silently he drops your arm and retreats. You are
alone."
L0004: JE              Gc9,#05 [FALSE] L0005
       PRINT_RET       "You nod tentatively."
L0005: JE              Gc9,#06 [FALSE] L0006
       PRINT           ""Quite a girl, isn't she? You two will be great
friends," he says"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              Gc9,#09 [FALSE] L0007
       PRINT           "You have no breath to speak. You nod once, never taking
"
       PRINT_OBJ       "your eyes"
       PRINT           " off Nicholas Jamison"
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              Gc9,#0a [FALSE] L0008
       PRINT_RET       "You nod eagerly."
L0008: JE              Gc9,#0b [FALSE] L0009
       PRINT_RET       "You summon a gracious smile, "Why yes, I'd love to.""
L0009: JE              Gc9,#0c [FALSE] L0010
       PRINT           "You nod"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              Gc9,#0d [FALSE] L0011
       PRINT           "Nicholas pulls forward a fettered wrist"
       PRINT_PADDR     G51
       RTRUE           
L0011: JE              Gc9,#0e [FALSE] L0012
       PRINT           "Jamison grins at you"
       PRINT_PADDR     G51
       RTRUE           
L0012: JE              Gc9,#0f [FALSE] L0013
       PRINT           "Breathless, eager, you lean into him"
       PRINT_PADDR     G51
       RTRUE           
L0013: JE              Gc9,#10 [FALSE] L0014
       PRINT_RET       "Your father twinkles, "Good! He's of good family, you
know.""
L0014: JE              Gc9,#11 [FALSE] L0015
       PRINT_RET       ""Har, just you try!""
L0015: CALL            R0270 (S063) -> -(SP)
       RET_POPPED      

Routine R0270, 1 local (0000)

       PRINT           "You sound rather "
       PRINT_PADDR     L00
       PRINT_RET       "tive."

Routine R0271, 1 local (0000)

       JE              L00,"yes","y","yup" [TRUE] RTRUE
       JE              L00,"ok","okay","sure" [TRUE] RTRUE
       RFALSE          

Routine R0272, 3 locals (0001, 0000, 0000)

       TEST_ATTR       G6e,#17 [TRUE] L0002
       JZ              L00 [TRUE] L0001
       CALL            R0307 -> -(SP)
L0001: RET             #08
L0002: CALL            R0250 -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       RET             #08
L0003: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] L0005
       CALL            R0275 (G6e) -> L02
       CALL            R0275 (#c0) -> -(SP)
       ADD             L02,(SP)+ -> -(SP)
       JG              (SP)+,#6e [FALSE] L0005
       JZ              L00 [TRUE] L0004
       PRINT           "It's too heavy, considering your current load."
       NEW_LINE        
L0004: RET             #08
L0005: CALL            R0274 (#c0) -> -(SP)
       JG              (SP)+,#0c [FALSE] L0007
       JZ              L00 [TRUE] L0006
       PRINT_PADDR     G1e
       PRINT           "juggling as many items as you can possibly carry."
       NEW_LINE        
L0006: RET             #08
L0007: SET_ATTR        G6e,#13
       CLEAR_ATTR      G6e,#09
       JIN             "it",G6e [TRUE] RFALSE
       INSERT_OBJ      G6e,"it"
       RTRUE           

Routine R0273, 0 locals ()
    Pre-action routine for:
        "dip down OBJ"
        "let go OBJ"
        "drop OBJ"
        "dip OBJ out OBJ"
        "dip OBJ throug OBJ"
        "hurl OBJ out OBJ"
        "hurl OBJ throug OBJ"
        "lower OBJ out OBJ"
        "lower OBJ throug OBJ"
        "drop OBJ throug OBJ"
        "drop OBJ out OBJ"
        "hurl OBJ on OBJ"
        "hurl OBJ down OBJ"
        "hurl OBJ in OBJ"
        "hurl away OBJ"
        "hurl OBJ"
        "hurl overbo OBJ"
        "hurl OBJ at OBJ"
        "hurl OBJ to OBJ"
        "hurl OBJ over OBJ"

       JE              G6e,#05 [FALSE] L0001
       JE              G80,#3b,#9c,#30 [FALSE] RFALSE
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0001: JE              G6e,#df [FALSE] L0002
       JE              G80,#3b,#9c,#30 [FALSE] RFALSE
       PRINT_RET       "A lady is never without her reticule."
L0002: JE              G6e,#0f [FALSE] L0003
       JE              G80,#31 [FALSE] L0003
       TEST_ATTR       Gcf,#1f [FALSE] L0003
       CALL            R0018 (#1a,Gcf) -> -(SP)
       RTRUE           
L0003: JE              Gcf,#0f [FALSE] L0004
       JE              G80,#31 [FALSE] L0004
       TEST_ATTR       G6e,#1f [FALSE] L0004
       CALL            R0018 (#1a,G6e) -> -(SP)
       RTRUE           
L0004: JE              G6e,#19 [TRUE] L0005
       JE              G6e,#62 [FALSE] L0006
L0005: CALL            R0295 (#62) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
L0006: CALL            R0295 (G6e) -> -(SP)
       JZ              (SP)+ [FALSE] L0009
       JE              G6e,#0f [TRUE] L0007
       TEST_ATTR       G6e,#03 [FALSE] L0008
L0007: CALL            R0306 -> -(SP)
       RET             #08
L0008: PRINT_PADDR     G89
       CALL            R0008 (G6e) -> -(SP)
       RET             #08
L0009: JIN             G6e,"it" [TRUE] L0010
       GET_PARENT      G6e -> -(SP)
       TEST_ATTR       (SP)+,#18 [FALSE] L0010
       GET_PARENT      G6e -> -(SP)
       TEST_ATTR       (SP)+,#10 [TRUE] L0010
       GET_PARENT      G6e -> -(SP)
       CALL            R0357 (S168,(SP)+) -> -(SP)
       RET_POPPED      
L0010: TEST_ATTR       G6e,#16 [FALSE] RFALSE
       CALL            R0357 (S064,G6e) -> -(SP)
       RET_POPPED      

Routine R0274, 3 locals (0000, 0000, 0000)

       GET_CHILD       L00 -> L02 [TRUE] L0001
       RET             L01
L0001: TEST_ATTR       L02,#16 [TRUE] L0002
       INC             L01
L0002: GET_SIBLING     L02 -> L02 [TRUE] L0001
       RET             L01

Routine R0275, 3 locals (0000, 0000, 0000)

       GET_CHILD       L00 -> L01 [FALSE] L0002
L0001: CALL            R0275 (L01) -> -(SP)
       ADD             L02,(SP)+ -> L02
       GET_SIBLING     L01 -> L01 [TRUE] L0001
L0002: GET_PROP        L00,#10 -> -(SP)
       ADD             L02,(SP)+ -> -(SP)
       RET_POPPED      

Routine R0276, 3 locals (0000, 0000, 0000)

       JZ              G52 [FALSE] L0001
       PRINT_PADDR     G6a
       NEW_LINE        
       RFALSE          
L0001: TEST_ATTR       G00,#13 [TRUE] L0002
       SET_ATTR        G00,#13
       STORE           L01,#01
L0002: PRINT_OBJ       G00
       GET_PARENT      "it" -> -(SP)
       TEST_ATTR       (SP)+,#1c [FALSE] L0005
       PRINT           ", "
       GET_PARENT      "it" -> -(SP)
       TEST_ATTR       (SP)+,#08 [FALSE] L0003
       PRINT_CHAR      'i'
       JUMP            L0004
L0003: PRINT_CHAR      'o'
L0004: PRINT_CHAR      'n'
       GET_PARENT      "it" -> -(SP)
       CALL            R0003 ((SP)+) -> -(SP)
L0005: NEW_LINE        
       JZ              L00 [FALSE] L0006
       JE              G41,#02 [TRUE] L0006
       JZ              L01 [TRUE] RTRUE
       JE              G41,#01 [FALSE] RTRUE
L0006: PRINT_PADDR     Ge8
       GET_PROP        G00,#11 -> -(SP)
       CALL            (SP)+ (#03) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       GET_PROP        G00,#0c -> -(SP)
       PRINT_PADDR     (SP)+
L0007: NEW_LINE        
       RTRUE           

Routine R0277, 4 locals (0000, 0000, 0001, 0000)

       GET_PARENT      Gb9 -> L03
       GET_CHILD       G00 -> L00 [TRUE] L0001
L0001: JZ              L00 [TRUE] RFALSE
L0002: JZ              L00 [TRUE] L0005
       CALL            R0280 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       TEST_ATTR       L00,#13 [TRUE] L0004
       GET_PROP        L00,#09 -> L01
       JZ              L01 [TRUE] L0004
       PRINT_PADDR     Ge8
       PRINT_PADDR     L01
       TEST_ATTR       L00,#18 [FALSE] L0003
       CALL            R0278 (L00,#01,#03) -> -(SP)
L0003: NEW_LINE        
L0004: GET_SIBLING     L00 -> L00 [TRUE] L0002
       JUMP            L0002
L0005: GET_CHILD       G00 -> L00 [TRUE] L0006
L0006: STORE           L02,#01
L0007: JZ              L00 [TRUE] L0013
       CALL            R0280 (L00) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       GET_PROP        L00,#09 -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       TEST_ATTR       L00,#13 [FALSE] L0012
L0008: GET_PROP        L00,#0d -> L01
       JZ              L01 [TRUE] L0010
       CALL            L01 (#05) -> L01
       JZ              L01 [TRUE] L0010
       TEST_ATTR       L00,#18 [FALSE] L0009
       JE              L01,#08 [TRUE] L0009
       CALL            R0278 (L00,#01,#03) -> -(SP)
L0009: NEW_LINE        
       JUMP            L0012
L0010: GET_PROP        L00,#0c -> L01
       JZ              L01 [TRUE] L0012
       PRINT_PADDR     Ge8
       PRINT_PADDR     L01
       TEST_ATTR       L00,#18 [FALSE] L0011
       CALL            R0278 (L00,#01,#03) -> -(SP)
L0011: NEW_LINE        
L0012: GET_SIBLING     L00 -> L00 [TRUE] L0007
       JUMP            L0007
L0013: CALL            R0278 (G00,#00,#00) -> -(SP)
       JZ              L03 [TRUE] RFALSE
       JE              G00,L03 [TRUE] RFALSE
       CALL            R0278 (L03,#00,#00) -> -(SP)
       RET_POPPED      

Routine R0278, 11 locals (0000, ffff, 0001, 0000, 0000, 0001, 0000, 0000, 0000,
                          0000, 0000)

       JE              L01,#02 [FALSE] L0001
       STORE           L01,#01
       STORE           L09,#01
       STORE           L08,#01
       JUMP            L0002
L0001: TEST            L02,#02 [FALSE] L0002
       STORE           L09,#01
L0002: GET_CHILD       L00 -> L04 [TRUE] L0003
L0003: JZ              L08 [FALSE] L0005
       JIN             L00,"it" [TRUE] L0005
       TEST_ATTR       L00,#1f [TRUE] L0005
       JZ              L04 [TRUE] RFALSE
       TEST_ATTR       L00,#18 [FALSE] RFALSE
       TEST_ATTR       L00,#10 [TRUE] L0004
       TEST_ATTR       L00,#0e [FALSE] RFALSE
L0004: JE              L01,#ffff [TRUE] L0005
       TEST_ATTR       L00,#0f [FALSE] RFALSE
L0005: JZ              L04 [TRUE] L0006
       CALL            R0280 (L04) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
       TEST            L02,#01 [TRUE] L0006
       CALL            R0281 (L04) -> -(SP)
       JZ              (SP)+ [TRUE] L0018
L0006: JZ              L03 [TRUE] L0017
       JZ              L05 [TRUE] L0011
       STORE           L05,#00
       JE              L01,#00,#01 [FALSE] L0010
       JZ              L08 [FALSE] L0013
       JZ              L09 [FALSE] L0008
       JE              L00,#c0 [TRUE] L0007
       PRINT_PADDR     Ge8
L0007: STORE           L09,#01
       JUMP            L0009
L0008: JE              L01,#01 [FALSE] L0009
       PRINT_CHAR      ' '
L0009: CALL            R0279 (L00) -> -(SP)
       JUMP            L0013
L0010: JE              L01,#ffff [TRUE] L0013
       PRINT_PADDR     L01
       JUMP            L0013
L0011: JZ              L04 [TRUE] L0012
       PRINT_CHAR      ','
       JUMP            L0013
L0012: PRINT           " and"
L0013: CALL            R0002 (L03) -> -(SP)
       TEST_ATTR       L03,#1d [FALSE] L0014
       PRINT           " (providing light)"
       JUMP            L0015
L0014: JE              L03,#df [FALSE] L0015
       PRINT           " (hanging from your wrist)"
L0015: JZ              L06 [FALSE] L0016
       JZ              L07 [FALSE] L0016
       STORE           L06,L03
       JUMP            L0017
L0016: STORE           L07,#01
       STORE           L06,#00
L0017: STORE           L03,L04
L0018: JZ              L04 [TRUE] L0019
       GET_SIBLING     L04 -> L04 [TRUE] L0019
L0019: JZ              L03 [FALSE] L0005
       JZ              L04 [FALSE] L0005
       JZ              L06 [TRUE] L0020
       JZ              L07 [FALSE] L0020
       CALL            R0025 (L06) -> -(SP)
L0020: JZ              L05 [TRUE] L0021
       JZ              L08 [TRUE] L0021
       PRINT           " nothing"
       RFALSE          
L0021: JZ              L05 [FALSE] L0023
       JE              L01,#00,#01 [FALSE] L0023
       JE              L00,G00 [FALSE] L0022
       PRINT           " here"
L0022: PRINT_CHAR      '.'
L0023: JE              L01,#00,#01 [FALSE] L0030
       GET_CHILD       L00 -> L03 [TRUE] L0024
L0024: JZ              L03 [TRUE] L0030
       TEST_ATTR       L03,#18 [FALSE] L0029
       CALL            R0280 (L03,#01) -> -(SP)
       JZ              (SP)+ [TRUE] L0029
       TEST            L02,#01 [TRUE] L0025
       CALL            R0281 (L03) -> -(SP)
       JZ              (SP)+ [TRUE] L0029
L0025: STORE           L0a,Gd1
       STORE           Gd1,#00
       JZ              L09 [TRUE] L0026
       PUSH            #03
       JUMP            L0027
L0026: PUSH            #01
L0027: CALL            R0278 (L03,#01,(SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] L0028
       STORE           L05,#00
       STORE           L09,#01
L0028: STORE           Gd1,L0a
L0029: GET_SIBLING     L03 -> L03 [TRUE] L0024
       JUMP            L0024
L0030: JZ              L05 [FALSE] L0031
       JE              L01,#00,#01 [FALSE] L0031
       GET_PARENT      Gb9 -> -(SP)
       JE              L00,G00,(SP)+ [FALSE] L0031
       NEW_LINE        
L0031: JZ              L05 [TRUE] RTRUE
       RFALSE          

Routine R0279, 1 local (0000)

       JE              L00,G00 [FALSE] L0001
       PRINT_PADDR     G82
       RTRUE           
L0001: JE              L00,#c0 [FALSE] L0003
       JE              Gd1,#16 [FALSE] L0002
       PRINT           " You are wearing"
       RTRUE           
L0002: PRINT           "You have"
       RTRUE           
L0003: TEST_ATTR       L00,#12 [FALSE] L0004
       PRINT           "Sitting on"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " is"
       RTRUE           
L0004: TEST_ATTR       L00,#1f [FALSE] L0007
       JE              L00,#bb [TRUE] L0007
       JE              L00,#b1 [FALSE] L0005
       PRINT           "Sh"
       JUMP            L0006
L0005: PRINT_CHAR      'H'
L0006: PRINT           "e has"
       RTRUE           
L0007: JE              L00,#6f,#79,#0e [TRUE] RTRUE
       PRINT_PADDR     G93
       CALL            R0003 (L00) -> -(SP)
       PRINT           " contains"
       RTRUE           

Routine R0280, 2 locals (0000, 0000)

       TEST_ATTR       L00,#14 [TRUE] RFALSE
       JE              L00,Gb9 [TRUE] RFALSE
       GET_PARENT      Gb9 -> -(SP)
       JE              L00,(SP)+ [FALSE] L0001
       GET_PARENT      Gb9 -> -(SP)
       JE              G00,(SP)+ [FALSE] RFALSE
L0001: JZ              L01 [FALSE] L0002
       TEST_ATTR       L00,#09 [TRUE] RFALSE
L0002: JZ              Gd1 [TRUE] RTRUE
       JG              Gd1,#00 [FALSE] L0003
       TEST_ATTR       L00,Gd1 [TRUE] RTRUE
       RFALSE          
L0003: SUB             #00,Gd1 -> -(SP)
       TEST_ATTR       L00,(SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0281, 2 locals (0000, 0000)

       GET_PROP        L00,#09 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       TEST_ATTR       L00,#13 [FALSE] RFALSE
L0001: GET_PROP        L00,#0d -> L01
       JZ              L01 [TRUE] L0002
       CALL            L01 (#09) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
L0002: GET_PROP        L00,#0c -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       RFALSE          

Routine R0282, 0 locals ()

       PRINT           "Other than "
       PRINT_OBJ       "yourself"
       PRINT           ", you can see"
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       TEST_ATTR       G6e,#08 [FALSE] L0001
       PRINT           " in"
       JUMP            L0002
L0001: PRINT           " on"
L0002: CALL            R0008 (G6e) -> -(SP)
       RTRUE           

Routine R0283, 0 locals ()

       CALL            R0278 (G6e,#02) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JIN             "it",G6e [TRUE] RTRUE
       NEW_LINE        
       RTRUE           

Routine R0284, 3 locals (0000, 0000, 0000)

       STORE           L02,G00
       INSERT_OBJ      "it",L00
       JIN             L00,"it" [FALSE] L0001
       STORE           G00,L00
       JUMP            L0002
L0001: GET_PARENT      L00 -> G00
L0002: CALL            R0074 (G00) -> G52
       JE              L02,#7b [FALSE] L0003
       CALL            R0295 (#85) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JE              G00,#d8,#99 [FALSE] L0003
       CALL            R0285 -> -(SP)
       NEW_LINE        
L0003: GET_PROP        G00,#11 -> -(SP)
       CALL            (SP)+ (#02) -> -(SP)
       JE              G00,#ad [FALSE] L0004
       JIN             "your father",G00 [FALSE] L0004
       PRINT           ""What a brave tot! You've inherited all your mother's
spirit." Your father beams with pride"
       PRINT_PADDR     G51
       NEW_LINE        
       JUMP            L0007
L0004: JE              G00,#d4 [FALSE] L0006
       JIN             "Cookie","Anteroom" [FALSE] L0006
       STORE           G62,#00
       CLEAR_ATTR      "crocodile",#09
       PRINT           ""I ain't goin' to fight this beast if you're headin'
back upstairs.""
       CALL            R0003 (#a3) -> -(SP)
       JIN             "rapier","it" [FALSE] L0005
       INSERT_OBJ      "rapier","Cookie"
       PRINT           " eyes"
       CALL            R0003 (#10) -> -(SP)
       PRINT           " in"
       CALL            R0003 (#05) -> -(SP)
       PRINT           ". "Not a proper thing fer a lady," he grumbles, taking
it from you. He"
L0005: PRINT           " follows you"
       PRINT_PADDR     G51
       NEW_LINE        
       JUMP            L0007
L0006: JE              G00,#94 [TRUE] RTRUE
L0007: CALL            R0276 -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       JZ              G41 [TRUE] L0008
       CALL            R0277 -> -(SP)
L0008: JIN             "your father",L02 [FALSE] L0009
       JIN             "it",G00 [FALSE] L0009
       JZ              L01 [FALSE] L0009
       JZ              Gb3 [FALSE] L0009
       CALL            R0286 -> -(SP)
L0009: JIN             "Captain Jamison",L02 [FALSE] L0014
       JIN             "it",G00 [FALSE] L0014
       JZ              Gb3 [FALSE] L0014
       JE              G00,#a5 [FALSE] L0010
       JE              G98,#be [FALSE] L0010
       INSERT_OBJ      "Captain Jamison",G00
       PRINT_OBJ       "Captain Jamison"
       PRINT           " smiles and follows you, pulling you onto"
       PRINT_PADDR     S039
       PRINT_PADDR     G51
       JUMP            L0014
L0010: JE              L02,#a5 [FALSE] L0011
       INSERT_OBJ      "Captain Jamison",G00
       RTRUE           
L0011: CALL            R0368 -> -(SP)
       REMOVE_OBJ      "Captain Jamison"
       PRINT_PADDR     Ge8
       PRINT           ""No, wait -- !" Jamison cries. He "
       JE              G00,#18 [FALSE] L0012
       PRINT           "slips past you into the forest"
       JUMP            L0013
L0012: PRINT           "hesitates and turns away"
L0013: PRINT_PADDR     G51
L0014: JZ              Gb3 [TRUE] RTRUE
       JIN             "Cookie",L02 [FALSE] RTRUE
       JIN             "it",G00 [FALSE] RTRUE
       JZ              G62 [FALSE] RTRUE
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0015
       JE              L02,#6d,#1c [TRUE] RTRUE
L0015: JE              G00,#49 [TRUE] RTRUE
       INSERT_OBJ      "Cookie",G00
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Cookie"
       PRINT           " pegs after you"
       PRINT_PADDR     G51
       RTRUE           

Routine R0285, 0 locals ()

       INSERT_OBJ      "hat","Library"
       CLEAR_ATTR      "hat",#16
       SET_ATTR        "hat",#06
       CLEAR_ATTR      "knob",#06
       SET_ATTR        "knob",#05
       PRINT           "For safety's sake, you leave"
       CALL            R0003 (#85) -> -(SP)
       PRINT           " on its knob. Best not to show that you've been
wandering"
       PRINT_PADDR     G51
       RTRUE           

Routine R0286, 0 locals ()

       JE              G00,#1a [FALSE] L0001
       PRINT_RET       "Your father chuckles in the darkness of the passageway,
"No dear, I'm not going in there again!""
L0001: GET_PARENT      "it" -> -(SP)
       INSERT_OBJ      "your father",(SP)+
       PRINT_PADDR     Ge8
       PRINT           "Papa "
       CALL            R0001 (Gd4) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0287, 1 local (0000)

       PRINT_PADDR     L00
       PRINT_PADDR     Gb5
       CALL            R0091 -> -(SP)
       RET_POPPED      

Routine R0288, 2 locals (0000, 0000)

       PRINT_PADDR     L00
       PRINT_PADDR     Gb5
       PRINT_PADDR     Ge8
       JZ              L01 [TRUE] L0001
       PRINT           "Troubled by Papa's death, caused by your own unthinking
pride, your life loses meaning. You die by your own hand, in grief and shame."
       JUMP            L0002
L0001: PRINT           "Rather, your flesh is intact, but your spirit has flown
with the death of your heart's love. The years pass, unnoticed, twisting you
into an old and ugly spinster, that dies alone, loved by no one."
L0002: NEW_LINE        
       CALL            R0091 -> -(SP)
       RET_POPPED      

Routine R0289, 1 local (0000)

       PRINT_PADDR     L00
       NEW_LINE        
       NEW_LINE        
       PRINT           "  ***     You have suffered
       a fate worse than death  ***"
       NEW_LINE        
       CALL            R0091 -> -(SP)
       RET_POPPED      

Routine R0290, 2 locals (0000, 0000)

       JZ              L00 [TRUE] RFALSE
       GET_PARENT      L00 -> L01
       TEST_ATTR       L00,#14 [TRUE] RFALSE
       JE              L00,#db [FALSE] L0001
       JE              G3b,G00 [TRUE] RTRUE
       RFALSE          
L0001: JZ              L01 [TRUE] RFALSE
       JE              L01,#3c [TRUE] RTRUE
       JE              L01,#25 [FALSE] L0002
       CALL            R0297 (L00,G00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
L0002: CALL            R0293 (L00) -> -(SP)
       JE              (SP)+,G00 [FALSE] RFALSE
       JE              L01,Gb9,G00 [TRUE] RTRUE
       TEST_ATTR       L01,#10 [FALSE] RFALSE
       CALL            R0290 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0291, 2 locals (0000, 0000)

       JZ              L00 [TRUE] RFALSE
       GET_PARENT      L00 -> L01
       CALL            R0290 (L00) -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       CALL            R0296 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0291 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0292, 1 local (0000)

       JZ              L00 [TRUE] RFALSE
       JE              L00,#60 [FALSE] L0001
       JE              G00,#94,#63,#97 [TRUE] RFALSE
       JE              G00,#49 [TRUE] RFALSE
       RTRUE           
L0001: JE              L00,#4e [FALSE] L0002
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#1b [TRUE] RFALSE
L0002: JIN             "it",G00 [TRUE] RFALSE
       GET_PARENT      "it" -> -(SP)
       CALL            R0295 (L00,(SP)+) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       GET_PARENT      "it" -> -(SP)
       JE              L00,(SP)+ [TRUE] RFALSE
       JIN             L00,"it" [TRUE] RFALSE
       RTRUE           

Routine R0293, 1 local (0000)

L0001: JZ              L00 [TRUE] RFALSE
       JIN             L00,"it" [FALSE] L0002
       RET             #3c
L0002: JIN             L00,"it" [FALSE] L0003
       RET             L00
L0003: GET_PARENT      L00 -> L00
       JUMP            L0001

Routine R0294, 3 locals (0000, 0000, 0000)

L0001: GET_NEXT_PROP   G00,L01 -> L01
       JL              L01,#13 [TRUE] RFALSE
       GET_PROP_ADDR   G00,L01 -> L02
       GET_PROP_LEN    L02 -> -(SP)
       JE              (SP)+,#05 [FALSE] L0001
       LOADB           L02,#01 -> -(SP)
       JE              (SP)+,L00 [FALSE] L0001
       RET             L01

Routine R0295, 2 locals (0000, 0000)

       JZ              L01 [FALSE] L0001
       STORE           L01,Gb9
L0001: JZ              L00 [TRUE] RFALSE
       JIN             L00,L01 [TRUE] RTRUE
       JIN             L00,"it" [TRUE] RFALSE
       GET_PARENT      L00 -> -(SP)
       CALL            R0295 ((SP)+,L01) -> -(SP)
       RET_POPPED      

Routine R0296, 1 local (0000)

       JZ              L00 [TRUE] RFALSE
       TEST_ATTR       L00,#14 [TRUE] RFALSE
       TEST_ATTR       L00,#0e [TRUE] RTRUE
       TEST_ATTR       L00,#10 [TRUE] RTRUE
       RFALSE          

Routine R0297, 3 locals (0000, 0000, 0000)

       GET_PROP_ADDR   L01,#0b -> L02
       JZ              L02 [TRUE] RFALSE
       GET_PROP_LEN    L02 -> -(SP)
       SUB             (SP)+,#01 -> -(SP)
       CALL            R0073 (L00,L02,(SP)+) -> -(SP)
       RET_POPPED      

Routine R0298, 5 locals (0000, 0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L03 [TRUE] L0001
L0001: JZ              L03 [TRUE] RFALSE
L0002: TEST_ATTR       L03,L01 [FALSE] L0004
       TEST_ATTR       L03,#14 [TRUE] L0004
       JZ              L02 [FALSE] L0003
       RET             L03
L0003: PRINT_CHAR      '['
       PRINT_PADDR     L02
       CALL            R0003 (L03) -> -(SP)
       PRINT_CHAR      ']'
       NEW_LINE        
       RET             L03
L0004: CALL            R0298 (L03,L01) -> L04
       JZ              L04 [TRUE] L0005
       RET             L04
L0005: GET_SIBLING     L03 -> L03 [TRUE] L0002
       RFALSE          

Routine R0299, 1 local (0000)

       GET_PARENT      G6e -> L00
       TEST_ATTR       L00,#18 [FALSE] RFALSE
       TEST_ATTR       L00,#10 [TRUE] RFALSE
       TEST_ATTR       G6e,#17 [FALSE] RFALSE
       CALL            R0357 (S168,L00) -> -(SP)
       RET_POPPED      

Routine R0300, 1 local (0000)

       STORE           G35,L00
       CALL            R0018 (#42,L00) -> -(SP)
       RET_POPPED      

Routine R0301, 0 locals ()

       STORE           G3d,#00
       STORE           Ga9,#00
       RET             #08

Routine R0302, 3 locals (0000, 0000, 0000)

       GET_CHILD       "it" -> L02 [TRUE] L0001
L0001: JZ              L02 [TRUE] L0004
       TEST_ATTR       L02,#16 [TRUE] L0002
       JE              L02,#df [TRUE] L0002
       STORE           L00,#01
L0002: GET_SIBLING     L02 -> L01 [TRUE] L0003
L0003: STORE           L02,L01
       JUMP            L0001
L0004: RET             L00

Routine R0303, 4 locals (0000, 0000, 0000, 0000)

       GET_CHILD       L00 -> L03 [TRUE] L0001
L0001: JZ              L03 [TRUE] L0005
       GET_SIBLING     L03 -> L02 [TRUE] L0002
L0002: TEST_ATTR       L03,#16 [TRUE] L0004
       JE              L03,#62 [TRUE] L0004
       JZ              L01 [TRUE] L0003
       INSERT_OBJ      L03,L01
       JUMP            L0004
L0003: REMOVE_OBJ      L03
L0004: STORE           L03,L02
       JUMP            L0001
L0005: INSERT_OBJ      "your reticule","it"
       RTRUE           

Routine R0304, 1 local (0000)

       PRINT_PADDR     L00
       CALL            R0005 -> -(SP)
       CALL            R0305 -> -(SP)
       RET_POPPED      

Routine R0305, 0 locals ()

       CALL            R0001 (G16) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0306, 0 locals ()
    Action routine for:
        "sink OBJ"
        "unroll OBJ"
        "free OBJ"

       CALL            R0001 (G4a) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0307, 0 locals ()
    Action routine for:
        "dig throug OBJ"
        "dig in OBJ"
        "lock OBJ with OBJ"
        "lock OBJ"
        "pour OBJ in OBJ"
        "pour OBJ on OBJ"
        "pour OBJ"
        "dip OBJ under OBJ"
        "press OBJ under OBJ"
        "rise in OBJ"
        "rise on OBJ"
        "dip OBJ behind OBJ"
        "attach OBJ around OBJ"
        "attach OBJ to OBJ"
        "wrap OBJ around OBJ"

       CALL            R0001 (Gc0) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0308, 1 local (0000)

       JE              G80,#7c,#7a,#7b [FALSE] RFALSE
       JIN             "it","skiff" [FALSE] RFALSE
       JE              G44,#1a [FALSE] L0005
       JE              G00,#59 [FALSE] L0001
       PRINT           "That would take you past"
       CALL            R0003 (#67) -> -(SP)
       PRINT_RET       " into the open sea!"
L0001: STORE           G1c,#02
       PRINT_PADDR     Ge6
       PRINT_OBJ       "skiff"
       PRINT           " plows through the lagoon."
       JE              G00,#63 [FALSE] L0002
       CALL            R0023 (#83cd,#ffff) -> -(SP)
       STORE           G1c,#01
       INSERT_OBJ      "skiff","Lagoon"
       NEW_LINE        
       CALL            R0284 (#34) -> -(SP)
       RET_POPPED      
L0002: ADD             G47,G1c -> L00
       ADD             Gbb,#01 -> -(SP)
       JE              L00,Gbb,(SP)+ [FALSE] L0004
       TEST_ATTR       "Helena Louise",#0d [FALSE] L0003
       CALL            R0287 (S065) -> -(SP)
       RET_POPPED      
L0003: PRINT           " You glide into the shadow of"
       CALL            R0008 (#67) -> -(SP)
       NEW_LINE        
       STORE           G47,Gbb
       STORE           G1c,#00
       INSERT_OBJ      "skiff","By the Ship"
       CALL            R0284 (#34) -> -(SP)
       RET_POPPED      
L0004: NEW_LINE        
       RTRUE           
L0005: JE              G44,#17 [FALSE] L0008
       STORE           G1c,#fffd
       JE              G00,#63 [FALSE] L0006
       PRINT           "You can row"
       CALL            R0003 (#34) -> -(SP)
       PRINT           " no farther west"
       PRINT_PADDR     G51
       RTRUE           
L0006: ADD             G47,G1c -> -(SP)
       JL              (SP)+,#02 [FALSE] L0007
       PRINT_PADDR     Ge6
       PRINT_OBJ       "skiff"
       PRINT           " noses into the sand of the shallows. You get out"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0020 (#83cd) -> -(SP)
       STORE           G47,#01
       INSERT_OBJ      "skiff","Shallows"
       CALL            R0284 (#63) -> -(SP)
       RTRUE           
L0007: PRINT_PADDR     Ge6
       PRINT_OBJ       "skiff"
       PRINT           " shoots over the waves"
       PRINT_PADDR     G51
       JE              G00,#59 [FALSE] RTRUE
       INSERT_OBJ      "skiff","Lagoon"
       CALL            R0284 (#34) -> -(SP)
       RTRUE           
L0008: JE              G44,#1c,#1f,#1b [TRUE] L0009
       JE              G44,#18,#1e,#19 [FALSE] RFALSE
L0009: PRINT_RET       "You can barely row back and forth, much less side to
side!"

Routine R0309, 1 local (0000)

       JE              G6e,#0f [FALSE] L0001
       JE              G80,#93 [FALSE] L0001
       CALL            R0361 -> -(SP)
       RET_POPPED      
L0001: CALL            R0350 ("sailor",#88) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       JE              G80,#48 [FALSE] L0003
       CALL            R0297 (#bf,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0018 (#48,#bf) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "Nothing happens here."
L0003: LOADW           G26,#00 -> -(SP)
       JE              (SP)+,"man" [FALSE] L0007
       JE              G6e,#88 [FALSE] L0007
       CALL            R0351 (#f6) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0017 (#42,Gcf) -> -(SP)
       RET_POPPED      
L0004: CALL            R0350 ("men",#88) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       JE              G00,#a5,#41,#53 [TRUE] L0005
       CALL            R0372 -> -(SP)
       RET_POPPED      
L0005: CALL            R0310 -> L00
       JZ              L00 [TRUE] L0006
       CALL            R0017 (L00,Gcf) -> -(SP)
       RTRUE           
L0006: CALL            R0347 (#88) -> -(SP)
       RET_POPPED      
L0007: LOADW           G26,#01 -> -(SP)
       JE              (SP)+,"man" [FALSE] RFALSE
       JE              Gcf,#88 [FALSE] RFALSE
       CALL            R0351 (#f6) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       CALL            R0017 (G6e,#42) -> -(SP)
       RET_POPPED      
L0008: CALL            R0350 ("men",#88) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       JE              G00,#a5,#41,#53 [TRUE] L0009
       CALL            R0372 -> -(SP)
       RET_POPPED      
L0009: CALL            R0310 -> L00
       JZ              L00 [TRUE] L0010
       CALL            R0017 (G6e,L00) -> -(SP)
       RTRUE           
L0010: CALL            R0347 (#88) -> -(SP)
       RET_POPPED      

Routine R0310, 0 locals ()

       JIN             "Captain Jamison",G00 [FALSE] L0001
       RET             #be
L0001: JIN             "Lafond",G00 [FALSE] L0002
       RET             #42
L0002: JIN             "your father",G00 [FALSE] L0003
       RET             #39
L0003: JIN             "Crulley",G00 [FALSE] L0004
       RET             #08
L0004: JIN             "Cookie",G00 [FALSE] L0005
       RET             #a3
L0005: JIN             "butler",G00 [FALSE] L0006
       RET             #4f
L0006: CALL            R0297 (#6e,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       RET             #6e
L0007: CALL            R0297 (#bf,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0008
       RET             #bf
L0008: JIN             "crocodile",G00 [FALSE] RFALSE
       RET             #bb

Routine R0311, 4 locals (0000, 0001, 0000, 0000)

       JE              G6e,#aa [FALSE] L0001
       JE              Gcf,#aa [FALSE] L0001
       PRINT_RET       "Those things aren't here!"
L0001: JE              G31,"mouth","eyes" [FALSE] L0003
       JE              G56,"lafond",#00 [FALSE] L0003
       JE              G6e,#aa [FALSE] L0002
       STORE           G6e,#42
       RFALSE          
L0002: STORE           Gcf,#42
       RFALSE          
L0003: JE              G56,"powder" [FALSE] L0005
       CALL            R0295 (#0e) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       JE              G6e,#aa [FALSE] L0004
       STORE           G6e,#90
       JUMP            L0010
L0004: STORE           Gcf,#90
       JUMP            L0010
L0005: JE              G31,"hands","hand" [TRUE] L0006
       JE              G31,"finger","eye","eyes" [TRUE] L0006
       JE              G31,"head","jamiso" [TRUE] L0006
       JE              G31,"lip","lips","mouth" [FALSE] L0008
L0006: JE              G56,"nick","nichol","croc'" [TRUE] L0007
       JE              G56,"dad","father","papa" [TRUE] L0007
       JE              G56,"woman","lucy" [TRUE] L0007
       JE              G56,"jean","lafond" [FALSE] L0008
L0007: PRINT_RET       "[Sadly, we haven't the space to handle everything. Try
to refer only to characters in the story, not individual body parts or
possessions. For example, you can EXAMINE PIRATE but you can't EXAMINE PIRATE'S
EYEPATCH.]"
L0008: JE              G6e,#aa [FALSE] L0009
       STORE           L00,G87
       JUMP            L0010
L0009: STORE           L00,G3e
       STORE           L01,#00
L0010: JZ              L01 [TRUE] L0011
       CALL            R0312 -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       STORE           L03,#01
       JUMP            L0012
L0011: JZ              L01 [FALSE] L0012
       CALL            R0313 -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       STORE           L03,#01
L0012: JZ              L03 [TRUE] L0014
       CALL            R0314 (L00,L01) -> L02
       JZ              L02 [TRUE] RFALSE
       JE              L02,#aa [FALSE] RTRUE
       JE              G80,#27,#12 [FALSE] L0013
       CALL            R0258 -> -(SP)
       JUMP            L0020
L0013: CALL            R0372 -> -(SP)
       JUMP            L0020
L0014: JE              Gb9,#c0 [FALSE] L0015
       PRINT           "You"
       JUMP            L0017
L0015: TEST_ATTR       Gb9,#05 [FALSE] L0016
       PRINT_PADDR     G12
       RET             #08
L0016: PRINT           "Looking confused,"
       CALL            R0003 (Gb9) -> -(SP)
       PRINT           " says, "I"
L0017: PRINT           " can't see"
       CALL            R0049 (G7b) -> -(SP)
       JZ              (SP)+ [FALSE] L0018
       CALL            R0048 (G31) -> -(SP)
       JZ              (SP)+ [FALSE] L0018
       PRINT           " any"
L0018: CALL            R0315 (L01) -> -(SP)
       PRINT           " here!"
       JE              Gb9,#c0 [TRUE] L0019
       PRINT_CHAR      '"'
L0019: NEW_LINE        
L0020: CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0312, 0 locals ()

       JE              G80,#b0,#b1,#81 [TRUE] RTRUE
       JE              G80,#82 [TRUE] RTRUE
       JE              G80,#12 [TRUE] RTRUE
       JE              G80,#04 [TRUE] RTRUE
       JE              G80,#40,#27,#4a [TRUE] RTRUE
       JE              G80,#b6 [TRUE] RTRUE
       RFALSE          

Routine R0313, 0 locals ()

       JE              G80,#13,#14,#99 [TRUE] RTRUE
       JE              G80,#04 [TRUE] RTRUE
       RFALSE          

Routine R0314, 4 locals (0000, 0000, 0000, 0000)

       CALL            R0063 (L00) -> L02
       JE              #01,L02 [FALSE] L0002
       JZ              L01 [TRUE] L0001
       STORE           G6e,G32
       CALL            R0025 (G6e) -> -(SP)
       RFALSE          
L0001: STORE           Gcf,G32
       RFALSE          
L0002: JL              #01,L02 [FALSE] L0004
       LOADB           L00,#01 -> L03
       GET_PROP        L03,#0f -> -(SP)
       CALL            (SP)+ -> L03
       JZ              L03 [TRUE] L0004
       JE              L03,#aa [TRUE] RTRUE
       JZ              L01 [TRUE] L0003
       STORE           G6e,L03
       CALL            R0025 (G6e) -> -(SP)
       RFALSE          
L0003: STORE           Gcf,L03
       RFALSE          
L0004: RET             #aa

Routine R0315, 2 locals (0000, 0000)

       JZ              Gb8 [TRUE] L0002
       JZ              G7b [TRUE] L0001
       PRINT_CHAR      ' '
       PRINT_ADDR      G56
L0001: JZ              G31 [TRUE] RFALSE
       PRINT_CHAR      ' '
       PRINT_ADDR      G31
       RTRUE           
L0002: JZ              L00 [TRUE] L0003
       LOADW           Ga6,#06 -> L01
       LOADW           Ga6,#07 -> -(SP)
       CALL            R0047 (L01,(SP)+,#00) -> -(SP)
       RET_POPPED      
L0003: LOADW           Ga6,#08 -> L01
       LOADW           Ga6,#09 -> -(SP)
       CALL            R0047 (L01,(SP)+,#00) -> -(SP)
       RET_POPPED      

Routine R0316, 0 locals ()

       JZ              G9b [FALSE] L0001
       CALL            R0347 (#4e) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#1a,#1e,#6a [FALSE] L0011
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#a9 [FALSE] L0003
       TEST_ATTR       "ledge",#0d [FALSE] L0002
       PRINT           "You lean over"
       CALL            R0003 (#1b) -> -(SP)
       PRINT           ", but"
       CALL            R0003 (#4e) -> -(SP)
       PRINT           " is too far out to reach"
       PRINT_PADDR     G51
       RTRUE           
L0002: PRINT           "It's on the other side of the window"
       PRINT_PADDR     G51
       RTRUE           
L0003: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#1b [FALSE] L0007
       PRINT           "You "
       CALL            R0302 -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0303 (#c0,#df) -> -(SP)
       PRINT           "put everything in"
       CALL            R0003 (#df) -> -(SP)
       PRINT           " and "
L0004: TEST_ATTR       "Poop",#13 [FALSE] L0005
       PRINT           "hop out, catching the"
       JUMP            L0006
L0005: CALL            R0023 (#6f2b,#ffff) -> -(SP)
       PRINT           "reach out for"
       CALL            R0003 (#4e) -> -(SP)
       PRINT           " and over-balance, tumbling from your perch. Your hand
closes on a slimy hemp rung as you fly out over the waves, clinging tenuously,
feet free, to the"
L0006: CALL            R0075 -> -(SP)
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#b2) -> -(SP)
       RET_POPPED      
L0007: JE              G00,#b2 [FALSE] L0008
       JE              G80,#6a [FALSE] L0008
       PRINT_PADDR     Gbd
       RTRUE           
L0008: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#34 [FALSE] L0009
       CALL            R0456 -> -(SP)
       RET_POPPED      
L0009: JE              G00,#b9 [FALSE] L0010
       PRINT           "If you wish to climb down"
       CALL            R0003 (#4e) -> -(SP)
       PRINT           ", say so"
       PRINT_PADDR     G51
       RTRUE           
L0010: CALL            R0300 (#16) -> -(SP)
       RET_POPPED      
L0011: JE              G80,#89 [FALSE] L0013
       CALL            R0295 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       CALL            R0004 (#2a) -> -(SP)
       PRINT           " isn't sharp enough to cut through"
       CALL            R0008 (#4e) -> -(SP)
       RET_POPPED      
L0012: CALL            R0367 -> -(SP)
       RET_POPPED      
L0013: JE              G80,#a9 [FALSE] L0014
       CALL            R0004 (#38) -> -(SP)
       PRINT           " is tied in too complex a knot"
       PRINT_PADDR     G51
       RTRUE           
L0014: JE              G80,#20 [FALSE] L0016
       JE              G00,#a9 [FALSE] L0015
       CALL            R0357 (S197,#4e) -> -(SP)
       RET_POPPED      
L0015: CALL            R0300 (#15) -> -(SP)
       RTRUE           
L0016: JE              G80,#38 [FALSE] RFALSE
       JE              G00,#a9,#b2,#b9 [FALSE] RFALSE
       PRINT_PADDR     G50
       PRINT           "rope "
       PRINT_OBJ       "ladder"
       PRINT_PADDR     G51
       RTRUE           

Routine R0317, 0 locals ()

       PRINT_PADDR     Ge8
       PRINT           "Davis leaps across the deck to your side, "Free me or
she dies!" he yells, jabbing a knife up to your throat. In one smooth motion,"
       CALL            R0003 (#be) -> -(SP)
       PRINT           " draws his rapier, pulls you free and stabs. Davis
slumps into a bloody heap.
   Swooning, you fall into the Falcon's arms. You are dimly aware of being
carried to the other ship, down a short flight of stairs, and laid gently on a
soft bed. When you gather strength to look around, the Falcon has left you in
peace.
   You remain confined to this room, a large cupboard blocking the door. Meals
are brought by a peg-legged old man and eaten in silence. Of your handsome
rescuer you see nothing. Slowly the days pass.
"
       NEW_LINE        
       PRINT_PADDR     Gc2
       PRINT           "continue.]"
       NEW_LINE        
       READ            G92,G61
       CALL            R0010 (#0a) -> -(SP)
       CALL            R0284 (#a9) -> -(SP)
       CLEAR_ATTR      "Crulley",#05
       CLEAR_ATTR      "door",#0d
       INSERT_OBJ      "Captain Jamison","Captain's Quarters"
       CLEAR_ATTR      "Captain Jamison",#09
       REMOVE_OBJ      "coffer"
       SET_ATTR        "coffer",#0d
       CLEAR_ATTR      "coffer",#0a
       SET_ATTR        "rapier",#09
       CLEAR_ATTR      "door",#10
       RTRUE           

Routine R0318, 0 locals ()

       JE              G80,#6a,#12 [FALSE] RFALSE
       CALL            R0018 (#88) -> -(SP)
       RTRUE           

Routine R0319, 0 locals ()

       JE              G80,#38 [FALSE] L0008
       JE              G00,#cf,#55 [FALSE] L0001
       PRINT           "Looking down at the distant deck is a mistake. Your
stomach flips over"
       JUMP            L0007
L0001: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "Well scrubbed and smoothed floorboards make up the
deck"
       JUMP            L0007
L0002: JE              G00,#59,#94,#63 [FALSE] L0003
       PRINT           "A sandy bottom shifts under the waves"
       JUMP            L0007
L0003: JE              G00,#9b,#1a [FALSE] L0004
       PRINT           "Like the walls and ceiling, rock"
       JUMP            L0007
L0004: JE              G00,#b4 [FALSE] L0005
       PRINT           "The floor is ankle deep in mud"
       JUMP            L0007
L0005: CALL            R0133 -> -(SP)
       PRINT           "about "
       TEST_ATTR       G00,#0c [FALSE] L0006
       PRINT           "the floor"
       JUMP            L0007
L0006: CALL            R0003 (#a8) -> -(SP)
L0007: PRINT_PADDR     G51
       RTRUE           
L0008: JE              G80,#1a,#1e,#1f [FALSE] L0009
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0009: JE              G80,#5c [FALSE] L0010
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0010: JE              G80,#44 [FALSE] L0011
       CALL            R0300 (#16) -> -(SP)
       RET_POPPED      
L0011: JE              G80,#12 [FALSE] RFALSE
       CALL            R0350 ("deck",#a8) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G00,#50,#5c,#65 [TRUE] L0012
       JE              G00,#86 [FALSE] L0013
L0012: CALL            R0300 (#13) -> -(SP)
       RET_POPPED      
L0013: JE              G00,#4d,#b9,#bd [TRUE] L0014
       JE              G00,#97,#72 [FALSE] L0015
L0014: PRINT_PADDR     Ga5
       RTRUE           
L0015: JE              G00,#55,#cf [FALSE] L0016
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0016: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       CALL            R0258 -> -(SP)
       RET_POPPED      
L0017: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0320, 0 locals ()

       JE              G80,#6a [FALSE] RFALSE
       TEST_ATTR       "large key",#11 [FALSE] RFALSE
       INSERT_OBJ      "large key","it"
       CLEAR_ATTR      "large key",#11
       INC             G01
       PRINT_RET       "Taken."

Routine R0321, 0 locals ()

       TEST_ATTR       "coffer",#09 [TRUE] RFALSE
       RET             #d9

Routine R0322, 0 locals ()

       JE              G00,#a9 [FALSE] L0001
       CALL            R0017 (#0c) -> -(SP)
       RTRUE           
L0001: JE              G80,#5b,#38 [FALSE] L0006
       CALL            R0350 ("lock",#dd) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT           "Ladies do not look through keyholes!"
       NEW_LINE        
       JUMP            L0005
L0002: TEST_ATTR       G6e,#10 [FALSE] L0003
       PRINT           "It is open"
       JUMP            L0005
L0003: PRINT           "It"
       PRINT_PADDR     Gd8
       JE              G00,#bd [FALSE] L0004
       PRINT           " and barred"
       JUMP            L0005
L0004: TEST_ATTR       "door",#0d [FALSE] L0005
       PRINT           ". Or, what remains of it is"
L0005: CALL            R0025 (G6e) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G80,#69 [FALSE] L0007
       JE              G6e,#dd [FALSE] L0007
       PRINT_RET       "The mechanism is too complex to pick."
L0007: JE              G80,#a7 [FALSE] L0013
       JE              G00,#1e [FALSE] L0008
       PRINT           "Only one man has the key to this room: Jean Lafond"
       PRINT_PADDR     G51
       RTRUE           
L0008: JE              G00,#bd [FALSE] L0009
       CALL            R0018 (#68,#d9) -> -(SP)
       RTRUE           
L0009: JE              G6e,#95 [FALSE] L0010
       PRINT           "But"
       CALL            R0003 (#d9) -> -(SP)
       PRINT           " isn't locked"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              Gcf,#73 [FALSE] L0012
       JE              G6e,#68 [FALSE] L0011
       CLEAR_ATTR      G6e,#0a
       PRINT           "Unlocked"
       PRINT_PADDR     G51
       RTRUE           
L0011: PRINT           "That key does not unlock this door"
       PRINT_PADDR     G51
       RTRUE           
L0012: PRINT           "You are unable to unlock"
       CALL            R0008 (#d9) -> -(SP)
       RET_POPPED      
L0013: JE              G80,#57 [FALSE] L0018
       JE              G6e,#68 [FALSE] L0015
       JE              Gcf,#73 [FALSE] L0015
       SET_ATTR        G6e,#0a
       PRINT           "You "
       TEST_ATTR       G6e,#10 [FALSE] L0014
       CLEAR_ATTR      G6e,#10
       PRINT           "close and "
L0014: PRINT           "lock"
       CALL            R0008 (#d9) -> -(SP)
       RET_POPPED      
L0015: JE              Gcf,#73 [FALSE] L0016
       PRINT           "That key won't work here"
       PRINT_PADDR     G51
       RTRUE           
L0016: JE              G6e,#35 [FALSE] L0017
       PRINT_PADDR     G75
       PRINT           "lock that"
       PRINT_PADDR     G51
       RTRUE           
L0017: CALL            R0367 -> -(SP)
       RET_POPPED      
L0018: JE              G80,#51 [FALSE] L0020
       JE              G00,#1e [FALSE] L0019
       TEST_ATTR       "ornate door",#0a [TRUE] L0019
       JIN             "Lafond","Lafond's Bedroom" [FALSE] L0019
       PRINT_OBJ       "Lafond"
       PRINT_RET       " calls, "Come.""
L0019: PRINT_RET       "Silence answers back."
L0020: JE              G80,#68 [FALSE] RFALSE
       JE              G00,#50 [FALSE] L0021
       PRINT_RET       "It appears to be locked."
L0021: JE              G00,#5c [FALSE] L0022
       CALL            R0004 (#d9) -> -(SP)
       PRINT           " won't open"
       PRINT_PADDR     G51
       RTRUE           
L0022: JE              G00,#bd [FALSE] L0023
       PRINT           "Someone yells from ahead, "Cap'n 'll have your hide if
you go down there!" You haven't the strength to lift the bar anyway"
       PRINT_PADDR     G51
       RTRUE           
L0023: JE              G00,#ab [FALSE] RFALSE
       TEST_ATTR       "door",#10 [TRUE] RFALSE
       PRINT_PADDR     G0e
       PRINT_PADDR     Gbc
       RTRUE           

Routine R0323, 0 locals ()

       JE              G80,#38 [FALSE] RFALSE
       JE              G00,#c1 [FALSE] L0001
       PRINT_PADDR     G82
       PRINT           " a sail rippling against the night sky through"
       CALL            R0008 (#17) -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       G00,#0c [TRUE] RFALSE
       CALL            R0347 (#b5) -> -(SP)
       RET_POPPED      

Routine R0324, 0 locals ()

       JE              G00,#b0,#cf [TRUE] L0001
       JE              G00,#32,#55 [FALSE] L0003
L0001: JE              G80,#32,#31,#9c [TRUE] L0003
       JE              G80,#23 [FALSE] L0002
       PRINT_PADDR     G95
       RTRUE           
L0002: CALL            R0356 (#60) -> -(SP)
       RET_POPPED      
L0003: CALL            R0297 (#60,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       CALL            R0295 (#a6,G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       PRINT_RET       "There's no water here."
L0004: JE              G80,#38,#5c,#5b [FALSE] L0005
       PRINT           "The water is sparkling clear"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#74 [FALSE] L0006
       PRINT           "Water"
       PRINT_PADDR     G0b
       RTRUE           
L0006: JE              G80,#2f,#2e [FALSE] L0008
       JE              G6e,#a6 [FALSE] L0007
       PRINT           "You take a long draft. It is quite refreshing"
       PRINT_PADDR     G51
       RTRUE           
L0007: PRINT           "This water is much too salty to drink"
       PRINT_PADDR     G51
       RTRUE           
L0008: JE              G80,#32 [FALSE] L0009
       JE              Gcf,#60 [FALSE] L0009
       CALL            R0018 (#31,G6e,#60) -> -(SP)
       RTRUE           
L0009: JE              G80,#9c [FALSE] L0011
       JE              G00,#a9 [FALSE] L0010
       TEST_ATTR       "ledge",#0d [TRUE] L0010
       PRINT           "But"
       CALL            R0003 (#0a) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_RET       "!"
L0010: REMOVE_OBJ      G6e
       PRINT           "You toss"
       CALL            R0005 -> -(SP)
       PRINT           " into"
       CALL            R0008 (#60) -> -(SP)
       RET_POPPED      
L0011: JE              G80,#8b,#31 [FALSE] L0020
       JE              G6e,#ce,#af [FALSE] L0012
       REMOVE_OBJ      G6e
       PRINT           "It disintegrates quickly into nothing"
       PRINT_PADDR     G51
       RTRUE           
L0012: JE              G00,#b9,#bd,#72 [TRUE] L0013
       JE              G00,#32,#a9 [FALSE] L0014
L0013: CALL            R0018 (#9c,G6e,#60) -> -(SP)
       RTRUE           
L0014: JE              G00,#97 [FALSE] L0016
       JE              Gcf,#60 [FALSE] L0015
       CALL            R0018 (#9c,G6e,#60) -> -(SP)
       RTRUE           
L0015: CALL            R0018 (#31,G6e,#5f) -> -(SP)
       RTRUE           
L0016: JE              G00,#49,#63,#94 [TRUE] L0017
       JE              G00,#59 [FALSE] L0019
L0017: JE              G6e,#ca,#54 [FALSE] L0018
       CALL            R0438 -> -(SP)
       RET_POPPED      
L0018: PRINT           "You dip"
       CALL            R0005 -> -(SP)
       PRINT           " into the water"
       PRINT_PADDR     G51
       RTRUE           
L0019: PRINT_PADDR     G75
       PRINT           "reach any water"
       PRINT_PADDR     G51
       RTRUE           
L0020: JE              G80,#90,#23,#1a [FALSE] L0022
       JE              G00,#49 [FALSE] L0021
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0021: CALL            R0233 -> -(SP)
       RET_POPPED      
L0022: CALL            R0346 (#60) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "The cool water runs through your fingers"
       PRINT_PADDR     G51
       RTRUE           

Routine R0325, 0 locals ()

       TEST_ATTR       G00,#0c [FALSE] RFALSE
       CALL            R0347 (#3a) -> -(SP)
       RET_POPPED      

Routine R0326, 0 locals ()

       TEST_ATTR       G00,#0c [FALSE] L0001
       JE              G00,#c1,#a9,#92 [TRUE] L0001
       JE              G00,#b0 [TRUE] L0001
       JE              G80,#99,#13 [TRUE] L0001
       PRINT_PADDR     G75
       PRINT           "see the moon from here"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#38 [FALSE] RFALSE
       PRINT_RET       "A dusty moonbeam swirls down from the sky."

Routine R0327, 1 local (0000)

       JE              G80,#11 [FALSE] L0001
       STORE           G6e,#00
       CALL            R0100 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#7f [FALSE] L0003
       CALL            R0298 (G00,#1f,S031) -> L00
       JZ              L00 [TRUE] L0002
       CALL            R0018 (#80,#05,L00) -> -(SP)
       RTRUE           
L0002: PRINT_RET       "Pleased to meet you."
L0003: JE              G80,#ad [FALSE] L0004
       PRINT_RET       "Done."
L0004: JE              G80,#93 [FALSE] RFALSE
       JE              Gcf,#05 [FALSE] RFALSE
       CALL            R0018 (#6a,G6e) -> -(SP)
       RTRUE           

Routine R0328, 0 locals ()

       JE              G80,#25 [FALSE] L0001
       PRINT           "You blink"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#68 [FALSE] L0002
       PRINT_RET       "They are open!"
L0002: JE              G80,#5b,#38 [FALSE] RFALSE
       CALL            R0351 (#e8) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JIN             "Captain Jamison",G00 [FALSE] RFALSE
       LOADW           Ga7,#03 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       RTRUE           

Routine R0329, 0 locals ()

       JE              G80,#68,#23,#32 [TRUE] L0001
       JE              G80,#38,#6f,#6e [TRUE] L0001
       JE              G80,#31 [FALSE] L0005
L0001: CALL            R0351 (#e6) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0351 (#e5) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0350 ("snout",#91) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
L0002: CALL            R0017 (G6e,#bb) -> -(SP)
       RTRUE           
L0003: CALL            R0351 (#e7) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0017 (G6e,#42) -> -(SP)
       RET_POPPED      
L0004: JE              Gcf,#91 [FALSE] RFALSE
       CALL            R0018 (#34,G6e) -> -(SP)
       RTRUE           
L0005: JE              G80,#68 [FALSE] RFALSE
       CALL            R0022 (#93de) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT_RET       "Jamison will do that for you."
L0006: PRINT_RET       "You fail to stifle a yawn."

Routine R0330, 0 locals ()

       JZ              G10 [TRUE] RFALSE
       CALL            R0333 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JE              G80,#67 [TRUE] L0001
       CALL            R0332 -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       JE              G10,G6e,Gcf [FALSE] L0002
L0001: STORE           G3a,#ffff
       JUMP            L0005
L0002: JE              G80,#b5 [TRUE] L0003
       CALL            R0331 -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0003: STORE           G3a,#01
       JUMP            L0005
L0004: STORE           G3a,#00
L0005: STORE           G10,#00
       RFALSE          

Routine R0331, 0 locals ()

       JE              G80,#1f,#11 [TRUE] RTRUE
       JE              G80,#3b,#27,#2a [TRUE] RTRUE
       JE              G80,#3c [TRUE] RTRUE
       JE              G80,#50,#4f,#48 [TRUE] RTRUE
       JE              G80,#53 [TRUE] RTRUE
       JE              G80,#62,#04,#4b [TRUE] RTRUE
       JE              G80,#6b [TRUE] RTRUE
       JE              G80,#4a,#12,#9b [TRUE] RTRUE
       JE              G80,#84,#83 [TRUE] RTRUE
       JE              G80,#60,#61 [TRUE] RTRUE
       JE              G80,#98 [FALSE] RFALSE
       LOADW           G61,G3d -> -(SP)
       CALL            R0271 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0332, 0 locals ()

       JE              G80,#1c,#17,#16 [TRUE] RTRUE
       JE              G80,#73,#4e,#2b [TRUE] RTRUE
       JE              G80,#b4,#91,#7f [TRUE] RTRUE
       JE              G80,#98 [FALSE] RFALSE
       LOADW           G61,G3d -> -(SP)
       CALL            R0181 ((SP)+) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       RTRUE           

Routine R0333, 0 locals ()

       JE              G80,#05,#07,#08 [TRUE] RTRUE
       JE              G80,#02,#01,#00 [TRUE] RTRUE
       JE              G80,#0b,#0a,#09 [TRUE] RTRUE
       JE              G80,#0e,#0d,#0c [TRUE] RTRUE
       JE              G80,#0f [TRUE] RTRUE
       JE              G80,#10 [TRUE] RTRUE
       JE              G80,#7d,#49 [TRUE] RTRUE
       RFALSE          

Routine R0334, 0 locals ()

       JE              G80,#98 [FALSE] L0001
       PRINT           "You'll end up in Bedlam, talking to "
       PRINT_OBJ       "yourself"
       PRINT           " that way."
       NEW_LINE        
       CALL            R0301 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#3b [FALSE] L0002
       JE              Gcf,#0f [FALSE] L0002
       CALL            R0018 (#6a,G6e) -> -(SP)
       RTRUE           
L0002: JE              G80,#93 [FALSE] L0003
       JE              Gcf,#88 [FALSE] L0003
       CALL            R0361 -> -(SP)
       RET_POPPED      
L0003: JE              G80,#83 [FALSE] L0004
       JE              Gcf,#0f [FALSE] L0004
       CALL            R0018 (#38,G6e) -> -(SP)
       RTRUE           
L0004: JE              G80,#63 [FALSE] L0005
       CALL            R0258 -> -(SP)
       RET_POPPED      
L0005: JE              G80,#7e [FALSE] L0006
       CALL            R0086 -> -(SP)
       RTRUE           
L0006: JE              G80,#ac [FALSE] L0007
       CALL            R0295 (#0b) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       CALL            R0018 (#8a,#0b) -> -(SP)
       RTRUE           
L0007: JE              G80,#2d [FALSE] L0008
       CALL            R0018 (#95,#1f) -> -(SP)
       RTRUE           
L0008: JE              G80,#38 [FALSE] L0015
       CALL            R0022 (#d67e) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
       JG              G06,#0a [FALSE] L0009
       CALL            R0086 -> -(SP)
       RET_POPPED      
L0009: PRINT           "You are wearing"
       JZ              G99 [TRUE] L0010
       CALL            R0002 (#82) -> -(SP)
       PRINT           " and "
       PRINT_OBJ       "breeches"
       PRINT_RET       ". Mama herself would think you a plump boy."
L0010: TEST_ATTR       "cotton frock",#16 [FALSE] L0011
       CALL            R0002 (#54) -> -(SP)
       PRINT_RET       ", very pretty, if a tad outmoded for today's fashions."
L0011: TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0012
       CALL            R0002 (#c8) -> -(SP)
       PRINT_RET       " of creamy watered silk."
L0012: TEST_ATTR       "shirt",#16 [FALSE] L0013
       CALL            R0002 (#82) -> -(SP)
       PRINT_PADDR     G9d
       RTRUE           
L0013: TEST_ATTR       "breeches",#16 [FALSE] L0014
       CALL            R0002 (#c2) -> -(SP)
       PRINT_PADDR     G9d
       RTRUE           
L0014: TEST_ATTR       "linen chemise",#06 [TRUE] RFALSE
       PRINT           " absolutely nothing besides"
       CALL            R0002 (#11) -> -(SP)
       PRINT           ", "
       PRINT_OBJ       "your kid slippers"
       PRINT           " and a few layers of "
       PRINT_OBJ       "unmentionables"
       PRINT           ". "
       PRINT_PADDR     Gda
       RTRUE           
L0015: JE              G80,#81,#2b,#16 [TRUE] L0016
       JE              G80,#82 [FALSE] L0017
L0016: PRINT_PADDR     G95
       RTRUE           
L0017: JE              G80,#b1,#40 [FALSE] L0018
       PRINT           "You're in"
       CALL            R0008 (G00) -> -(SP)
       RET_POPPED      
L0018: JE              G80,#27 [FALSE] L0019
       PRINT_RET       "Next time, please specify who you wish to follow."
L0019: JE              G80,#4b,#4f [FALSE] RFALSE
       PRINT           "Mama warned you of the dangers of onanism"
       PRINT_PADDR     G51
       RTRUE           

Routine R0335, 0 locals ()

       JE              G80,#38,#5b,#58 [FALSE] L0001
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#12,#23 [FALSE] L0002
       CALL            R0258 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#21,#39,#44 [FALSE] L0003
       CALL            R0300 (#13) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#7e [FALSE] L0005
       JE              G00,#50 [FALSE] L0004
       CALL            R0022 (#6cda) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       CALL            R0295 (#45) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       CALL            R0018 (#5c,#d5) -> -(SP)
       RTRUE           
L0004: PRINT_PADDR     G63
       RTRUE           
L0005: JE              G80,#31 [FALSE] RFALSE
       JE              Gcf,#75 [FALSE] RFALSE
       JE              G81,"throw" [FALSE] L0006
       CALL            R0018 (#9c,G6e) -> -(SP)
       RTRUE           
L0006: CALL            R0018 (#30,G6e) -> -(SP)
       RTRUE           

Routine R0336, 0 locals ()

       JE              G80,#1a,#12,#23 [FALSE] L0005
       JE              G00,#44 [FALSE] L0001
       CALL            R0300 (#18) -> -(SP)
       RET_POPPED      
L0001: JE              G00,#b3 [FALSE] L0002
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0002: JE              G00,#ab,#18 [FALSE] L0003
       CALL            R0300 (#1c) -> -(SP)
       RET_POPPED      
L0003: JE              G00,#d8 [FALSE] L0004
       CALL            R0300 (#17) -> -(SP)
       RET_POPPED      
L0004: PRINT_PADDR     G75
       PRINT_RET       "do that from here."
L0005: JE              G80,#21,#44,#39 [FALSE] L0011
       JE              G00,#15 [FALSE] L0006
       CALL            R0300 (#17) -> -(SP)
       RET_POPPED      
L0006: JE              G00,#70 [FALSE] L0007
       CALL            R0300 (#1c) -> -(SP)
       RET_POPPED      
L0007: JE              G00,#a5 [FALSE] L0008
       CALL            R0300 (#18) -> -(SP)
       RET_POPPED      
L0008: JE              G00,#7b [FALSE] L0009
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0009: JE              G00,#92 [FALSE] L0010
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0010: PRINT_PADDR     Ga5
       RTRUE           
L0011: JE              G80,#5b [FALSE] L0014
       JE              G00,#44,#b3,#18 [TRUE] L0012
       JE              G00,#d8 [FALSE] L0013
L0012: PRINT_PADDR     Gb2
       RTRUE           
L0013: CALL            R0169 -> -(SP)
       RET_POPPED      
L0014: JE              G80,#38 [FALSE] RFALSE
       JE              G00,#c1 [FALSE] L0015
       PRINT           "Bathed in moonbeams and candlelight, the house squats
at the crest of a cliff. The upstairs window is dark"
       PRINT_PADDR     G51
       RTRUE           
L0015: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
L0016: JE              G00,#49 [FALSE] L0018
L0017: PRINT_PADDR     G75
       PRINT           "make out much of the house from this angle"
       PRINT_PADDR     G51
       RTRUE           
L0018: CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0019
       CALL            R0474 (G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0019
       JE              G00,#01,#43,#8e [FALSE] L0020
L0019: PRINT_PADDR     G0e
       PRINT           "house here"
       PRINT_PADDR     G51
       RTRUE           
L0020: JE              G00,#14,#44,#18 [TRUE] L0021
       JE              G00,#b3,#71,#ab [FALSE] L0022
L0021: PRINT           "An entrance to"
       CALL            R0003 (#47) -> -(SP)
       PRINT           " is nearby"
       PRINT_PADDR     G51
       RTRUE           
L0022: CALL            R0169 -> -(SP)
       RET_POPPED      

Routine R0337, 0 locals ()

       TEST_ATTR       "cotton frock",#16 [TRUE] L0001
       TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0002
L0001: STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           "In these clothes? You jest"
       PRINT_PADDR     G51
       RFALSE          
L0002: JE              G35,#16 [FALSE] L0016
       JE              G00,#71 [FALSE] L0003
       PRINT           "You take a firm grasp on a particularly thick tendril,
jerk once to secure it, and scamper up the wall like some huge tropical spider.
It is easy to climb through the window"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #92
L0003: JE              G00,#a9 [FALSE] L0007
       JZ              G9b [FALSE] L0004
       PRINT_PADDR     G49
       RFALSE          
L0004: TEST_ATTR       "Poop",#13 [TRUE] L0006
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#1b [FALSE] L0005
       CALL            R0357 (S086,#4e) -> -(SP)
       RFALSE          
L0005: CALL            R0357 (S197,#1b) -> -(SP)
       RFALSE          
L0006: PRINT           "You dash up"
       CALL            R0008 (#4e) -> -(SP)
       NEW_LINE        
       RET             #b9
L0007: JE              G00,#97,#72 [FALSE] L0009
       STORE           G6f,G00
       GET_PARENT      "dagger" -> -(SP)
       JE              (SP)+,#c0 [FALSE] L0008
       PRINT           "You bite down on"
       CALL            R0003 (#2a) -> -(SP)
       PRINT           ", freeing "
       PRINT_OBJ       "your hand"
       PRINT           "s to climb. When you stop, you take it back again. "
L0008: PRINT           "The wind, a mere breeze on the deck, blows more
fiercely"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #cf
L0009: JE              #cf,G00 [FALSE] L0011
       JE              G6f,#72 [FALSE] L0010
       PRINT           "You clamber up"
       CALL            R0008 (#de) -> -(SP)
       NEW_LINE        
       RET             #55
L0010: PRINT           "Above you there only appears to be more of the same,
except higher, and you can not vouch for the effects on your stomach"
       PRINT_PADDR     G51
       RFALSE          
L0011: JE              G00,#b2 [FALSE] L0015
       TEST_ATTR       "Poop",#13 [TRUE] L0014
       INC             G88
       JE              G88,#04 [TRUE] L0013
       PRINT           "You climb up"
       CALL            R0003 (#4e) -> -(SP)
       JE              G88,#02 [FALSE] L0012
       PRINT           ", passing the halfway point"
L0012: PRINT_PADDR     G51
       RFALSE          
L0013: PRINT           "You heave "
       PRINT_OBJ       "yourself"
       PRINT           " over the stern rail and sink breathless to the deck
of"
       CALL            R0008 (#67) -> -(SP)
       NEW_LINE        
       CALL            R0020 (#6f2b) -> -(SP)
       RET             #b9
L0014: PRINT           "You dash up"
       CALL            R0008 (#4e) -> -(SP)
       NEW_LINE        
       RET             #b9
L0015: JE              G00,#59 [FALSE] RFALSE
       CALL            R0456 -> -(SP)
       RFALSE          
L0016: JE              G35,#15 [FALSE] RFALSE
       JE              G00,#92 [FALSE] L0017
       PRINT           "Absently, you slide down"
       CALL            R0003 (#36) -> -(SP)
       PRINT           ". You're getting quite adept at clambering about"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #71
L0017: JE              G00,#55,#cf [FALSE] L0018
       PRINT           "You half-climb, half-fall, down to the deck"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             G6f
L0018: JE              G00,#b9 [FALSE] L0019
       PRINT           "You climb down to opposite"
       CALL            R0008 (#1b) -> -(SP)
       NEW_LINE        
       RET             #b2
L0019: JE              G00,#b2 [FALSE] RFALSE
       JZ              Gd3 [TRUE] L0020
       STORE           Gd3,#00
       PRINT           "Freeing your feet from the rungs, you slide down the
wet rope to the skiff, and quickly untie it from the ship"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #59
L0020: PRINT           "A watery grave awaits you that way."
       NEW_LINE        
       RFALSE          

Routine R0338, 0 locals ()

       JE              G80,#19 [FALSE] L0001
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#32,#31,#56 [TRUE] L0002
       JE              G80,#9c [FALSE] L0003
L0002: CALL            R0018 (#1c,G6e,#cd) -> -(SP)
       RTRUE           
L0003: JE              G80,#99 [TRUE] RFALSE
       CALL            R0366 -> -(SP)
       RET_POPPED      

Routine R0339, 0 locals ()

       JE              G80,#1e [FALSE] L0002
       JE              G00,#97 [FALSE] L0001
       CALL            R0300 (#1c) -> -(SP)
       RET_POPPED      
L0001: CALL            R0300 (#16) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#20 [FALSE] L0003
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#9c [FALSE] L0004
       JE              Gcf,#9d [FALSE] L0004
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0004: JE              G80,#38 [FALSE] RFALSE
       JE              G00,#65 [FALSE] L0005
       PRINT           "Steep stairs mount up to"
       CALL            R0008 (#89) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#97 [FALSE] RFALSE
       TEST_ATTR       "canvas hatch",#10 [FALSE] L0006
       PRINT_PADDR     G72
       PRINT           "down from "
       CALL            R0003 (#89) -> -(SP)
       PRINT           ". Another leads"
       JUMP            L0007
L0006: CALL            R0004 (#9d) -> -(SP)
       PRINT           " lead"
L0007: PRINT           " to the foredeck"
       PRINT_PADDR     G51
       RTRUE           

Routine R0340, 3 locals (0000, 0000, 0000)

       JZ              L00 [TRUE] L0002
       JE              L00,#01 [FALSE] RFALSE
       JE              G80,#42 [TRUE] L0001
       JZ              G6e [TRUE] RFALSE
       JE              G80,#6a [FALSE] RFALSE
       JE              G6e,#d1,#57 [TRUE] RFALSE
       JIN             G6e,"it" [TRUE] RFALSE
       GET_PARENT      "it" -> L02
       GET_PARENT      G6e -> -(SP)
       JE              L02,(SP)+ [TRUE] RFALSE
L0001: CALL            R0357 (S149) -> -(SP)
       RET             #08
L0002: JE              G80,#8c,#21 [FALSE] L0003
       JIN             "Lafond","bed" [FALSE] L0003
       PRINT           "Lafond slams you back into the feather mattress"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#1a,#23 [FALSE] L0004
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#b0 [FALSE] L0004
       JIN             "Lafond",G00 [FALSE] L0004
       PRINT_OBJ       "Lafond"
       PRINT_RET       " stops you. "I'll tell you when to do that.""
L0004: JE              G80,#38 [FALSE] L0011
       JE              G00,#50 [FALSE] L0005
       STORE           L01,#d5
       JUMP            L0007
L0005: JE              G00,#a9 [TRUE] L0006
       STORE           L01,#00
       JUMP            L0007
L0006: STORE           L01,#83
L0007: JZ              L01 [TRUE] L0008
       GET_CHILD       L01 -> -(SP) [TRUE] L0008
       PRINT           "Someone appears to have tumbled out of it in a hurry"
       JUMP            L0010
L0008: JE              G00,#b0 [FALSE] L0009
       PRINT           "You gaze at the purple and gold bed, fearing it is your
destiny"
       JUMP            L0010
L0009: JE              G00,#9b [FALSE] RFALSE
       PRINT           "It is an uncomfortable canvas cot, old and torn"
L0010: PRINT_PADDR     G51
       RTRUE           
L0011: JE              G80,#5c [FALSE] L0014
       CALL            R0021 (#6cda) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       PRINT_PADDR     G82
       CALL            R0002 (#45) -> -(SP)
       PRINT_CHAR      ' '
       CLEAR_ATTR      "coffer",#09
       SET_ATTR        "coffer",#13
       JUMP            L0013
L0012: PRINT_PADDR     G90
L0013: PRINT           "under"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0014: JE              G80,#71,#63 [FALSE] L0015
       PRINT           "It is nailed to the floor"
       PRINT_PADDR     G51
       RTRUE           
L0015: JE              G80,#72 [FALSE] RFALSE
       JE              G00,#a9,#50 [FALSE] RFALSE
       JE              G6e,#0f [FALSE] L0016
       CALL            R0018 (#24,#d5) -> -(SP)
       RTRUE           
L0016: JE              G6e,#df [TRUE] RFALSE
       PRINT           "You do so, but the ship rolls to one side and"
       CALL            R0005 -> -(SP)
       PRINT           " rolls out"
       PRINT_PADDR     G51
       INSERT_OBJ      G6e,G00
       RTRUE           

Routine R0341, 0 locals ()

       JE              G80,#3d,#63,#68 [TRUE] L0001
       JE              G80,#5d [FALSE] L0002
L0001: PRINT_PADDR     G17
       PRINT           " Behind it,"
       CALL            R0002 (#2d) -> -(SP)
       PRINT_RET       " mostly blocks the doorway."
L0002: JE              G80,#25 [FALSE] L0003
       PRINT_PADDR     Gd6
       RTRUE           
L0003: JE              G80,#12,#42 [FALSE] RFALSE
       PRINT           "Please indicate a "
       PRINT_OBJ       "direction"
       PRINT_PADDR     G51
       RTRUE           

Routine R0342, 0 locals ()

       JE              G80,#68 [FALSE] L0005
       TEST_ATTR       "window",#10 [TRUE] L0004
       JE              G00,#50 [FALSE] L0001
       PRINT           "This isn't the opening kind of porthole"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G00,#a9 [FALSE] L0002
       PRINT           "These windows don't open"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G00,#7b,#d8 [FALSE] L0003
       CALL            R0344 (#8b) -> -(SP)
       RET_POPPED      
L0003: PRINT           "That's not necessary"
       PRINT_PADDR     G51
       RTRUE           
L0004: PRINT           "It's already open"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#25 [FALSE] L0007
       JE              G00,#7b,#d8 [FALSE] L0006
       CALL            R0344 (#8b) -> -(SP)
       RET_POPPED      
L0006: PRINT_PADDR     Gde
       RTRUE           
L0007: JE              G80,#38 [FALSE] L0010
       JE              G00,#50 [FALSE] L0008
       PRINT           "Through the porthole you see the bow of the pirate ship
bucking in the high seas, lit by the fires burning on deck. It is called the ""
       PRINT_OBJ       "Helena Louise"
       PRINT           "." Odd, that was your mother's name"
       PRINT_PADDR     G51
       RTRUE           
L0008: JE              G00,#a9 [FALSE] L0009
       CALL            R0018 (#38,#1b) -> -(SP)
       RTRUE           
L0009: JE              G00,#7b,#d8 [FALSE] RFALSE
       PRINT_PADDR     G82
       PRINT_PADDR     G40
       CALL            R0008 (#0a) -> -(SP)
       RET_POPPED      
L0010: JE              G80,#5b [FALSE] L0018
       JE              #50,G00 [FALSE] L0011
       CALL            R0018 (#38,#0a) -> -(SP)
       RTRUE           
L0011: JE              G00,#a9 [FALSE] L0015
       JZ              G9b [TRUE] L0012
       CALL            R0023 (#6e82,#02) -> -(SP)
       PRINT           "A rope "
       PRINT_OBJ       "ladder"
       PRINT           " twists by in the breeze, and the"
       JUMP            L0013
L0012: PRINT           "The"
L0013: PRINT           " moon beckons across the lagoon to "
       PRINT_OBJ       "St. Sinistra"
       JZ              Gd3 [TRUE] L0014
       PRINT           ". Moored to the stern is"
       CALL            R0002 (#34) -> -(SP)
L0014: PRINT_CHAR      '.'
       CALL            R0452 (#00) -> -(SP)
       NEW_LINE        
       RTRUE           
L0015: JE              G00,#7b,#d8 [FALSE] L0016
       CALL            R0018 (#38,#8b) -> -(SP)
       RTRUE           
L0016: JE              G00,#92 [FALSE] L0017
       PRINT           "It has a lovely view of grey-green palm trees extending
for miles"
       PRINT_PADDR     G51
       RTRUE           
L0017: PRINT_PADDR     G82
       PRINT_PADDR     G40
       CALL            R0008 (#0a) -> -(SP)
       RET_POPPED      
L0018: JE              G80,#2b [FALSE] L0022
       JZ              Gcf [FALSE] L0019
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0019: JE              Gcf,#45 [FALSE] L0020
       CALL            R0018 (#33,#45,#0a) -> -(SP)
       RTRUE           
L0020: JE              G00,#a9 [FALSE] L0021
       PRINT_PADDR     G08
       PRINT           "find something else to break"
       CALL            R0003 (#0a) -> -(SP)
       PRINT           " with"
       PRINT_PADDR     G51
       RTRUE           
L0021: PRINT_RET       "Then again, a lady would just open it."
L0022: JE              G80,#16 [FALSE] L0024
       JZ              Gcf [FALSE] L0023
       PRINT           "You haven't the strength to damage"
       CALL            R0008 (#0a) -> -(SP)
       RET_POPPED      
L0023: CALL            R0018 (#2b,G6e,Gcf) -> -(SP)
       RTRUE           
L0024: JE              G80,#31,#33,#9c [FALSE] L0031
       JE              G00,#50 [FALSE] L0026
       JE              G80,#9c [FALSE] L0025
       CALL            R0245 -> -(SP)
       RET_POPPED      
L0025: PRINT           "It doesn't fit through the porthole"
       PRINT_PADDR     G51
       RTRUE           
L0026: JE              G6e,#45 [FALSE] L0028
       JIN             "Captain Jamison",G00 [FALSE] L0027
       PRINT_RET       "Jamison stops you, "Nay, lady, glass is expensive.""
L0027: REMOVE_OBJ      G6e
       SET_ATTR        "ledge",#0d
       INC             G01
       PRINT           "You hurl"
       CALL            R0003 (#45) -> -(SP)
       PRINT           " through"
       CALL            R0003 (#0a) -> -(SP)
       PRINT           ", sending it and a shower of glass into the sea. "
       CALL            R0004 (#1b) -> -(SP)
       PRINT           " now looks deep enough to sit upon"
       PRINT_PADDR     G51
       RTRUE           
L0028: TEST_ATTR       "ledge",#0d [TRUE] L0029
       JE              G00,#a9 [FALSE] L0029
       CALL            R0004 (#0a) -> -(SP)
       PRINT           " isn't open"
       PRINT_PADDR     G51
       RTRUE           
L0029: JE              G6e,#05 [FALSE] L0030
       PRINT_PADDR     G0c
       RTRUE           
L0030: CALL            R0343 -> -(SP)
       RET_POPPED      
L0031: JE              G80,#21,#39,#23 [TRUE] L0032
       JE              G80,#1a,#4d [FALSE] RFALSE
L0032: JE              G00,#50 [FALSE] L0033
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0033: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#a9 [FALSE] L0034
       CALL            R0017 (#1b) -> -(SP)
       RTRUE           
L0034: JE              G00,#7b [FALSE] L0035
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0035: JE              G00,#d8 [FALSE] L0036
       CALL            R0300 (#17) -> -(SP)
       RET_POPPED      
L0036: JE              G00,#92 [FALSE] L0037
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0037: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0343, 0 locals ()

       JE              G00,#a9 [FALSE] L0001
       TEST_ATTR       "ledge",#0d [TRUE] L0001
       PRINT           "The window isn't open"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G6e,#df [TRUE] RFALSE
       CALL            R0362 -> -(SP)
       PRINT           " fall"
       TEST_ATTR       G6e,#02 [TRUE] L0002
       PRINT_CHAR      's'
L0002: JE              G00,#a9 [FALSE] L0003
       REMOVE_OBJ      G6e
       PRINT           " into the seas below"
       JUMP            L0006
L0003: JE              G00,#92 [FALSE] L0004
       INSERT_OBJ      G6e,"Clearing"
       PRINT           " onto the forest floor"
       JUMP            L0006
L0004: JE              G00,#7b,#b0 [FALSE] L0005
       INSERT_OBJ      G6e,"By the House"
       PRINT           " into the darkness of the hedge"
       JUMP            L0006
L0005: JE              G00,#d8 [FALSE] L0006
       INSERT_OBJ      G6e,"Library"
       PRINT           " with a thunk over"
       PRINT_PADDR     S038
       CALL            R0003 (#8b) -> -(SP)
L0006: PRINT_PADDR     G51
       RTRUE           

Routine R0344, 3 locals (0000, 0000, 0000)

       JE              G80,#63,#65,#68 [FALSE] L0008
       TEST_ATTR       L00,#10 [FALSE] L0003
       TEST_ATTR       L00,#02 [FALSE] L0001
       PRINT           "They are"
       JUMP            L0002
L0001: PRINT           "It is"
L0002: PRINT_RET       " already open."
L0003: SET_ATTR        L00,#10
       SET_ATTR        L00,#13
       JZ              L01 [TRUE] L0004
       PRINT_PADDR     L01
       PRINT_RET       "."
L0004: JE              L00,#2d [FALSE] L0005
       JE              G00,#7f [TRUE] L0005
       PRINT           "Opened. "
       CALL            R0018 (#5b,#2d) -> -(SP)
       RTRUE           
L0005: GET_CHILD       L00 -> -(SP) [FALSE] L0006
       TEST_ATTR       L00,#0e [TRUE] L0006
       TEST_ATTR       L00,#1a [FALSE] L0007
L0006: PRINT_RET       "Opened."
L0007: PRINT           "Opening"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " reveals"
       CALL            R0283 -> -(SP)
       JZ              (SP)+ [FALSE] RTRUE
       PRINT_CHAR      '.'
       RTRUE           
L0008: JE              G80,#25 [FALSE] RFALSE
       TEST_ATTR       L00,#10 [TRUE] L0011
       TEST_ATTR       L00,#02 [FALSE] L0009
       PRINT           "They are"
       JUMP            L0010
L0009: PRINT           "It is"
L0010: PRINT           " already closed"
       PRINT_PADDR     G51
       RTRUE           
L0011: CLEAR_ATTR      L00,#10
       JE              L00,#80 [FALSE] L0012
       SET_ATTR        L00,#0a
L0012: JZ              L02 [TRUE] L0013
       PRINT_PADDR     L02
       PRINT_RET       "."
L0013: PRINT           "Shut."
       JE              G6e,#2d [FALSE] L0014
       JE              #7f,G00 [FALSE] L0014
       PRINT_RET       " You imagine Jamison being lulled to sleep by the waves
lapping against the ship."
L0014: NEW_LINE        
       RTRUE           

Routine R0345, 0 locals ()

       JE              G80,#1e [FALSE] RFALSE
       PRINT_RET       "The trees are all unclimbable."

Routine R0346, 1 local (0000)

       JE              G6e,L00 [FALSE] L0001
       JE              G80,#ac,#17,#1a [TRUE] RTRUE
       JE              G80,#ad,#22,#24 [TRUE] RTRUE
       JE              G80,#1e,#20,#1f [TRUE] RTRUE
       JE              G80,#89,#2a,#4b [TRUE] RTRUE
       JE              G80,#23,#3d [TRUE] RTRUE
       JE              G80,#4e,#16,#4f [TRUE] RTRUE
       JE              G80,#51,#5c,#5b [TRUE] RTRUE
       JE              G80,#63,#2b,#6e [TRUE] RTRUE
       JE              G80,#56,#19,#68 [TRUE] RTRUE
       JE              G80,#25 [TRUE] RTRUE
       JE              G80,#69,#71,#65 [TRUE] RTRUE
       JE              G80,#a5,#8d,#90 [TRUE] RTRUE
       JE              G80,#a2 [TRUE] RTRUE
       JE              G80,#9c,#73 [TRUE] RTRUE
       JE              G80,#6a,#6b,#7f [TRUE] RTRUE
       JE              G80,#a7,#57,#a9 [TRUE] RTRUE
L0001: JE              Gcf,L00 [FALSE] RFALSE
       JE              G80,#32,#31,#3b [TRUE] RTRUE
       JE              G80,#72 [TRUE] RTRUE
       RFALSE          

Routine R0347, 2 locals (0000, 0000)

       JE              G6e,L00 [FALSE] L0001
       PUSH            #00
       JUMP            L0002
L0001: PUSH            #01
L0002: LOADW           G26,(SP)+ -> L01
       JZ              L01 [FALSE] L0005
       JE              G6e,L00 [FALSE] L0003
       PUSH            #00
       JUMP            L0004
L0003: PUSH            #01
L0004: LOADW           G57,(SP)+ -> L01
L0005: STORE           G9c,#00
       PRINT_PADDR     G75
       PRINT           "see"
       JZ              L00 [TRUE] L0006
       CALL            R0048 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       PRINT           " any"
L0006: JE              L00,Gcf [FALSE] L0007
       CALL            R0076 -> -(SP)
       JUMP            L0008
L0007: CALL            R0075 -> -(SP)
L0008: PRINT           " here."
       NEW_LINE        
       CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0348, 1 local (0000)

       PRINT_PADDR     G75
       PRINT_PADDR     L00
       CALL            R0002 (G6e) -> -(SP)
       PRINT_RET       "!"

Routine R0349, 0 locals ()

       PRINT           "You knock your brow against"
       CALL            R0005 -> -(SP)
       PRINT_RET       " as you attempt this."

Routine R0350, 2 locals (0000, 0000)

       JE              G6e,L01 [FALSE] L0001
       LOADW           G26,#00 -> -(SP)
       JE              (SP)+,L00 [TRUE] RTRUE
L0001: JE              Gcf,L01 [FALSE] RFALSE
       LOADW           G26,#01 -> -(SP)
       JE              (SP)+,L00 [TRUE] RTRUE
       RFALSE          

Routine R0351, 2 locals (0000, 0000)

       LOADW           G57,#00 -> L01
       LOADW           G57,#01 -> -(SP)
       JE              L00,L01,(SP)+ [TRUE] RTRUE
       RFALSE          

Routine R0352, 1 local (0000)

       JE              L00,#1b [TRUE] RTRUE
       JE              L00,#cb [TRUE] RTRUE
       RFALSE          

Routine R0353, 2 locals (0000, 0000)

       TEST_ATTR       L00,#10 [FALSE] L0002
       JZ              L01 [TRUE] L0001
       PRINT_CHAR      'n'
L0001: PRINT           " open"
       RTRUE           
L0002: PRINT           " closed"
       RTRUE           

Routine R0354, 0 locals ()

       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Wasn't that fun?"

Routine R0355, 0 locals ()

       PRINT           " that came in your game package.
"
       RTRUE           

Routine R0356, 1 local (0000)

       PRINT_PADDR     G75
       PRINT           "reach"
       CALL            R0003 (L00) -> -(SP)
       JIN             "it",G00 [TRUE] L0001
       PRINT           " from"
       GET_PARENT      "it" -> -(SP)
       CALL            R0003 ((SP)+) -> -(SP)
L0001: PRINT_PADDR     G51
       RTRUE           

Routine R0357, 2 locals (0000, 0000)

       PRINT_PADDR     G08
       PRINT_PADDR     L00
       JZ              L01 [TRUE] L0001
       CALL            R0003 (L01) -> -(SP)
L0001: PRINT_RET       " first."

Routine R0358, 0 locals ()

       PRINT           "But"
       CALL            R0005 -> -(SP)
       PRINT           " isn't "
       TEST_ATTR       Gcf,#1f [FALSE] L0001
       PRINT           "being held by"
       JUMP            L0003
L0001: TEST_ATTR       Gcf,#12 [FALSE] L0002
       PRINT           "on"
       JUMP            L0003
L0002: PRINT           "in"
L0003: CALL            R0008 (Gcf) -> -(SP)
       RET_POPPED      

Routine R0359, 1 local (0000)

       PRINT           "You begin to get a sore "
       PRINT_PADDR     L00
       PRINT_PADDR     G51
       RTRUE           

Routine R0360, 1 local (0000)

       PRINT_CHAR      '['
       PRINT_PADDR     G75
       PRINT           "use "
       PRINT_PADDR     L00
       PRINT_RET       " that way.]"

Routine R0361, 0 locals ()

       STORE           G9c,#00
       PRINT           "[That sentence isn't one I recognize.]
"
       RTRUE           

Routine R0362, 0 locals ()

       JE              G6e,#0f [FALSE] L0001
       PRINT           "You"
       RTRUE           
L0001: TEST_ATTR       G6e,#02 [FALSE] L0002
       PRINT           "They"
       RTRUE           
L0002: JE              G6e,#b1 [FALSE] L0003
       PRINT           "She"
       RTRUE           
L0003: TEST_ATTR       G6e,#1f [FALSE] L0004
       PRINT           "He"
       RTRUE           
L0004: PRINT           "It"
       RTRUE           

Routine R0363, 1 local (0000)

       PRINT           "I don't see wh"
       JZ              L00 [TRUE] L0001
       PRINT_CHAR      'o'
       JUMP            L0002
L0001: PRINT           "at"
L0002: PRINT_RET       " you're referring to."

Routine R0364, 1 local (0000)

       PRINT           "There's no one here to "
       PRINT_PADDR     L00
       PRINT_PADDR     G51
       RTRUE           

Routine R0365, 1 local (0000)

       PRINT           "[See the instruction manual section entitled
"Communicating With Infocom's Interactive Fiction." to properly "
       PRINT_PADDR     L00
       PRINT_RET       "]"

Routine R0366, 0 locals ()

       PRINT_RET       "You have no need for that, milady."

Routine R0367, 0 locals ()

       STORE           Gc9,#01
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "And how do you propose to do that?"

Routine R0368, 0 locals ()

       CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           G98,#00
       CALL            R0020 (#914b) -> -(SP)
       RET_POPPED      
L0001: CALL            R0022 (#93de) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0020 (#93de) -> -(SP)
       RET_POPPED      

Routine R0369, 1 local (0000)

       PRINT_PADDR     L00
       PRINT_RET       " is not in the repertoire of well-bred young ladies."

Routine R0370, 0 locals ()

       PRINT_PADDR     Gd2
       PRINT_RET       "hit a man when he's down!"

Routine R0371, 1 local (0000)

       PRINT           "This is no time to "
       PRINT_PADDR     L00
       PRINT           "!
"
       RTRUE           

Routine R0372, 0 locals ()
    Action routine for:
        "use OBJ on OBJ"
        "use OBJ"

       PRINT_PADDR     G08
       PRINT_RET       "be more specific."

Routine R0373, 1 local (0000)

       PRINT           "Your "
       PRINT_PADDR     L00
       PRINT           " could not hurt"
       CALL            R0008 (#08) -> -(SP)
       RET_POPPED      

Routine R0374, 0 locals ()

       PRINT_PADDR     Ge8
       PRINT           "A sailor notices "
       TEST_ATTR       "breeches",#16 [FALSE] L0001
       PRINT           "the roundness of your body through the lace of your
chemise"
       JUMP            L0002
L0001: PRINT           "the "swish" of your petticoats"
L0002: PRINT           ". "A woman," he gasps, "free, aboard this ship!""
       NEW_LINE        
       CALL            R0287 (S126) -> -(SP)
       RET_POPPED      

Routine R0375, 1 local (0000)

       PRINT           "A lady must obtain her father's permission before "
       PRINT_PADDR     L00
       PRINT_RET       " anyone."

Routine R0376, 0 locals ()

       PRINT_PADDR     G08
       PRINT           "figure that out "
       PRINT_OBJ       "yourself"
       PRINT_PADDR     G51
       RTRUE           

Routine R0377, 0 locals ()

       PRINT_PADDR     Ge8
       JE              G00,#99 [FALSE] L0001
       PRINT           "A black-garbed "
       PRINT_OBJ       "butler"
       JUMP            L0002
L0001: CALL            R0004 (#4f) -> -(SP)
L0002: PRINT           " marches up to you, "It was made clear at the whippings
that villagers are not admitted in this house." He grasps you by the scruff of
the neck and propels you headfirst out the front door"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#44) -> -(SP)
       RET_POPPED      

Routine R0378, 0 locals ()

       CALL            R0022 (#c6e7) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G9f,#0a [FALSE] L0001
       CALL            R0023 (#c6e7,#02) -> -(SP)
L0001: INSERT_OBJ      "Captain Jamison","Gallery"
       INSERT_OBJ      "Lafond","Gallery"
       INSERT_OBJ      "your father","Gallery"
       INSERT_OBJ      "Lucy","Gallery"
       STORE           Gc6,#01
       CALL            R0023 (#dde3,#ffff) -> -(SP)
       SET_ATTR        "rapier",#09
       CLEAR_ATTR      "Ballroom",#06
       PRINT_PADDR     Ge8
       PRINT           "Nick kisses you briefly, a butterfly touching your
lips,"
       CALL            R0293 (#10) -> -(SP)
       JE              (SP)+,G00,#ad,#1a [FALSE] L0002
       INSERT_OBJ      "rapier","Captain Jamison"
       PRINT           " then seizes his rapier"
L0002: PRINT           " and runs off to the north. Cookie calls a breathless
"Hullo, Cap'n" to him as he races past"
       PRINT_PADDR     G51
       RTRUE           

Routine R0379, 0 locals ()

       JE              G80,#38 [FALSE] L0008
       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0001: JE              G00,#50,#4d [FALSE] L0004
       CALL            R0351 (#d9) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0350 ("louise",#67) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
L0002: CALL            R0018 (#5b,#0a) -> -(SP)
       RTRUE           
L0003: CALL            R0169 -> -(SP)
       RET_POPPED      
L0004: JE              G00,#9b,#b4 [TRUE] L0005
       JE              G00,#b0,#49,#94 [TRUE] L0005
       JE              G00,#63 [FALSE] L0007
L0005: TEST_ATTR       "Helena Louise",#0d [FALSE] L0006
       PRINT_PADDR     G75
       PRINT           "see"
       CALL            R0003 (#67) -> -(SP)
       PRINT           " anywhere, but a lot of debris floats in the lagoon"
       PRINT_PADDR     G51
       RTRUE           
L0006: CALL            R0004 (#67) -> -(SP)
       PRINT           " floats, silent and serene, some distance out in the
lagoon"
       PRINT_PADDR     G51
       RTRUE           
L0007: PRINT_PADDR     G75
       PRINT           "see"
       CALL            R0003 (#67) -> -(SP)
       PRINT_RET       " from here."
L0008: JE              G80,#6d [FALSE] L0009
       JZ              Gcf [FALSE] RFALSE
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0009: JE              G80,#31 [FALSE] RFALSE
       JE              G6e,#6b,#c6 [FALSE] RFALSE
       CALL            R0306 -> -(SP)
       RET_POPPED      

Routine R0380, 0 locals ()

       CALL            R0297 (#21,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       RET             #21
L0001: GET_PARENT      "skiff" -> -(SP)
       JE              (SP)+,G00 [TRUE] L0002
       RET             #67
L0002: RET             #34

Routine R0381, 0 locals ()

       TEST_ATTR       "Helena Louise",#0d [TRUE] L0001
       PRINT_PADDR     G0e
       PRINT_OBJ       "debris"
       PRINT_RET       " here!"
L0001: JE              G80,#5b,#7e,#38 [FALSE] L0003
       PRINT_PADDR     Ge8
       CALL            R0001 (Ga2) -> -(SP)
       PRINT_PADDR     (SP)+
       JE              G00,#49,#63 [FALSE] L0002
       PRINT_RET       "bobs briefly in the waves."
L0002: PRINT_RET       "floats by you."
L0003: JE              G80,#6a [FALSE] RFALSE
       PRINT           "You reconsider, thinking of"
       CALL            R0003 (#67) -> -(SP)
       PRINT_RET       " as it was, whole and proud."

Routine R0382, 1 local (0000)

       JE              L00,#a9,#5c,#7f [TRUE] RTRUE
       JE              L00,#2e,#65,#c1 [TRUE] RTRUE
       JE              L00,#b9,#bd,#97 [TRUE] RTRUE
       JE              L00,#72,#86,#32 [TRUE] RTRUE
       JE              L00,#55 [TRUE] RTRUE
       JE              L00,#59,#b2,#cf [TRUE] RTRUE
       RFALSE          

Routine R0383, 1 local (0000)

       JE              L00,#7f,#5c,#2e [TRUE] RTRUE
       JE              L00,#65,#c1,#86 [TRUE] RTRUE
       RFALSE          

Routine R0384, 0 locals ()

       JIN             "Captain Jamison",G00 [FALSE] L0002
       JG              Gc6,#03 [FALSE] L0001
       CALL            R0020 (#8ced) -> -(SP)
       CALL            R0020 (#836f) -> -(SP)
       PRINT_PADDR     G84
       PRINT           "follows you through"
       CALL            R0008 (#d9) -> -(SP)
       NEW_LINE        
       RET             #4d
L0001: PRINT_PADDR     G69
       NEW_LINE        
       RFALSE          
L0002: JIN             "Captain Jamison","Deck" [FALSE] L0003
       RET             #4d
L0003: JIN             "Crulley",G00 [FALSE] L0004
       PRINT           ""Not that way, me pretty," says"
       CALL            R0003 (#08) -> -(SP)
       PRINT           ", blocking your way"
       PRINT_PADDR     G51
       RFALSE          
L0004: CALL            R0004 (#d9) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       CALL            R0025 (#d9) -> -(SP)
       RFALSE          

Routine R0385, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       INSERT_OBJ      "Captain Jamison",G00
       PRINT           "The deck is an avalanche of noise and blood. Lit by
roaring fires, silhouetted forms crash swords, dancing around the screaming
wounded."
       RTRUE           
L0001: JE              L00,#02 [FALSE] RFALSE
       CALL            R0023 (#5add,#01) -> -(SP)
       RET_POPPED      

Routine R0386, 0 locals ()

       JE              G80,#38 [FALSE] L0002
       PRINT           "It is a small heavy chest, with a "
       TEST_ATTR       "coffer",#0d [FALSE] L0001
       PRINT           "smashed "
L0001: PRINT           "lock. It is"
       CALL            R0353 (G6e) -> -(SP)
       PRINT           ".
"
       RTRUE           
L0002: JE              G80,#6a [FALSE] L0004
       JE              G6e,#45 [FALSE] RFALSE
       TEST_ATTR       "coffer",#09 [TRUE] L0003
       SET_ATTR        "coffer",#17
       CALL            R0020 (#6cda) -> -(SP)
       INSERT_OBJ      "coffer","it"
       CLEAR_ATTR      "coffer",#09
       PRINT_RET       "Taken."
L0003: PRINT_PADDR     G0c
       RTRUE           
L0004: JE              G80,#2b [FALSE] L0005
       JE              G6e,#0a [FALSE] L0005
       CALL            R0018 (#33,#45,#0a) -> -(SP)
       RTRUE           
L0005: JE              G80,#8d,#1a [FALSE] L0006
       CALL            R0004 (#45) -> -(SP)
       PRINT_RET       " is too small to stand on."
L0006: JE              G80,#7f [FALSE] RFALSE
       TEST_ATTR       "coffer",#0a [FALSE] RFALSE
       PRINT           "It seems to be full of small, heavy objects"
       PRINT_PADDR     G51
       RTRUE           

Routine R0387, 0 locals ()

       JE              G80,#38,#75 [FALSE] RFALSE
       CALL            R0004 (#ce) -> -(SP)
       PRINT           " is in dear Papa's handwriting:

"Dearest child,
   You are in gravest danger! Lafond is a viper with the smile of a saint, my
most particular enemy. I have only now learned the depth of his deception.
Should Lafond get you in his power... It is unspeakable!
   I have sided with Nicholas Jamison, a sea captain and a gentleman, whose
circumstances have driven him to extreme measures, even branding him a pirate.
Nevertheless, I trust him and so may you.
   You will be safe -- but there is another for whom I fear! My horse is
waiting and I ride to her rescue. Jamison will deliver this to you. Should
anything happen to me, you must rely on him. I remain, with love,"
       CALL            R0003 (#39) -> -(SP)
       PRINT           ".""
       NEW_LINE        
       NEW_LINE        
       RTRUE           

Routine R0388, 0 locals ()

       JE              G80,#38,#75 [FALSE] L0001
       CALL            R0004 (#af) -> -(SP)
       PRINT           " is addressed to "Davis":

       In Honor of Jean Lafond,
         recently proclaimed
       Governor of "
       PRINT_OBJ       "St. Sinistra"
       PRINT           "
        A Dance at his Mansion
      Ananas Road, "
       PRINT_OBJ       "St. Sinistra"
       PRINT           "
Formal Dress and Invitation Required"
       PRINT_PADDR     G51
       NEW_LINE        
       TEST_ATTR       "invitation",#0d [TRUE] RFALSE
       SET_ATTR        "invitation",#0d
       PRINT_PADDR     Ge8
       PRINT_RET       "A ball! You haven't been to a ball in months!"
L0001: JE              G80,#3c,#84 [FALSE] RFALSE
       JE              G6e,#4f [FALSE] RFALSE
       CALL            R0018 (#3b,#af,#4f) -> -(SP)
       RTRUE           

Routine R0389, 0 locals ()

       CALL            R0295 (#45) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CLEAR_ATTR      "coffer",#09
       SET_ATTR        "coffer",#17
       CALL            R0025 (#45) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "Suddenly, the ship lurches to one side, throwing you "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#d5 [FALSE] L0001
       INSERT_OBJ      "it",G00
       PRINT           "out of the bed. "
       JUMP            L0002
L0001: PRINT           "off balance. "
L0002: TEST_ATTR       "coffer",#13 [FALSE] L0003
       CALL            R0004 (#45) -> -(SP)
       JUMP            L0004
L0003: PRINT           "A "
       PRINT_OBJ       "coffer"
       PRINT           " slides from under the bed and"
L0004: PRINT_RET       " bumps against your foot."

Routine R0390, 1 local (0000)

       JE              L00,#02 [FALSE] L0002
       JIN             "ledge","On the Ladder" [FALSE] L0001
       INSERT_OBJ      "ledge","Captain's Quarters"
       RTRUE           
L0001: TEST_ATTR       "Captain's Quarters",#13 [TRUE] RFALSE
       INSERT_OBJ      "it","bed"
       STORE           Gc6,#00
       CALL            R0023 (#8fa6,#02) -> -(SP)
       PRINT           "TWO DAYS LATER"
       PRINT_PADDR     G7e
       PRINT_PADDR     Ge8
       PRINT           "You blear awake from a bored nap, focusing on something
shiny. You discern it to be"
       CALL            R0002 (#57) -> -(SP)
       PRINT           ", on a strong hand in the act of tying a ribbon onto"
       CALL            R0007 (#10) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "The man with"
       CALL            R0003 (#10) -> -(SP)
       PRINT           " and the ring turns, "Sorry, I tried not to wake you."
You sit up as if the bed had caught fire, for this is the Falcon, changed from
his rags to a finery all red velvet and white lace -- and in your presence!"
       NEW_LINE        
       NEW_LINE        
       RTRUE           
L0002: JE              L00,#03 [FALSE] RFALSE
       TEST_ATTR       G00,#0d [TRUE] L0003
       SET_ATTR        G00,#0d
       PRINT           "You are in the captain's "
       PRINT_OBJ       "quarters"
       PRINT           " of the "
       PRINT_OBJ       "Helena Louise"
       PRINT           ", where you have been trapped these past days since
your "rescue" from the Lafond Deux. "
L0003: PRINT           "The room has a masculine air, with ebony panelling, a
large messy table, and a rumpled bed"
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#83 [FALSE] L0004
       PRINT           " (upon which you lie)"
L0004: PRINT           ". A curtain masks the forward exit and "
       TEST_ATTR       "ledge",#0d [FALSE] L0005
       PRINT           "air breezes in over the ledge"
       JUMP            L0006
L0005: PRINT           "gilded woodwork decorates the sill of the tall window
looking"
L0006: PRINT           " aft."
       RTRUE           

Routine R0391, 0 locals ()

       JE              G00,#a9 [FALSE] L0001
       PRINT_PADDR     Ge8
       PRINT           "Men clomp about overhead and a rope ladder unfurls
itself past the window. Jamison climbs down it, entering"
       CALL            R0003 (#34) -> -(SP)
       PRINT           " that awaits him below. He rows to the island as the
men above "
       PRINT_OBJ       "your head"
       PRINT           " disperse, calling farewells to their captain"
       PRINT_PADDR     G51
L0001: STORE           G47,#01
       STORE           Gd3,#00
       REMOVE_OBJ      "Captain Jamison"
       STORE           G9b,#01
       CALL            R0023 (#6e82,#ffff) -> -(SP)
       RET_POPPED      

Routine R0392, 0 locals ()

       JE              G00,#a9 [FALSE] L0002
       CALL            R0023 (#6e82,#ffff) -> -(SP)
       RANDOM          #64 -> -(SP)
       JL              #28,(SP)+ [TRUE] RFALSE
       PRINT_PADDR     Ge8
       PRINT           "The end of a rope ladder blows "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#83,#a9 [FALSE] L0001
       PRINT_RET       "past the window."
L0001: PRINT_RET       "by."
L0002: CALL            R0020 (#6e82) -> -(SP)
       RET_POPPED      

Routine R0393, 0 locals ()

       CALL            R0366 -> -(SP)
       RET_POPPED      

Routine R0394, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       INSERT_OBJ      "ledge",G00
       CALL            R0020 (#6e82) -> -(SP)
       RET_POPPED      
L0001: JE              L00,#01 [FALSE] L0003
       JE              G80,#4d,#4c [TRUE] L0002
       JE              G80,#30 [FALSE] L0003
       JE              G6e,#4e [FALSE] L0003
L0002: CALL            R0300 (#15) -> -(SP)
       RET_POPPED      
L0003: JE              L00,#03 [FALSE] RFALSE
       PRINT           "You are clinging to a slimy ladder, tied to a rail of
the poop deck above you. Not far from your feet,"
       JZ              Gd3 [TRUE] L0004
       CALL            R0002 (#34) -> -(SP)
       PRINT           " bobs in the water"
       JUMP            L0005
L0004: PRINT           " waves kiss the stern of the ship"
L0005: TEST_ATTR       "On the Ladder",#13 [TRUE] L0006
       PRINT           ". The ladder twists under your weight"
L0006: PRINT_CHAR      '.'
       RTRUE           

Routine R0395, 0 locals ()

       JE              G80,#38 [FALSE] L0002
       CALL            R0350 ("quarte",#21) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JE              G00,#b9,#5c [FALSE] L0001
       PRINT_RET       "Why don't you go there and look?"
L0001: CALL            R0169 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#23,#1e,#1a [FALSE] RFALSE
       JE              G00,#4d,#b2 [FALSE] RFALSE
       CALL            R0300 (#14) -> -(SP)
       RET_POPPED      

Routine R0396, 0 locals ()

       INC             G1b
       JL              G1b,#02 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       JE              G1b,#02,#05 [FALSE] L0001
       PRINT           "All air is driven out of you as"
       CALL            R0003 (#4e) -> -(SP)
       PRINT_RET       " slams into the stern."
L0001: JE              G1b,#03,#06 [FALSE] L0002
       PRINT           "Rebounding,"
       CALL            R0003 (#4e) -> -(SP)
       PRINT           " twists you around to face"
       CALL            R0008 (#67) -> -(SP)
       RET_POPPED      
L0002: JE              G1b,#04 [FALSE] L0003
       PRINT           "The ladder swings back towards"
       CALL            R0008 (#67) -> -(SP)
       RET_POPPED      
L0003: JE              G1b,#07 [FALSE] RFALSE
       CALL            R0287 (S261) -> -(SP)
       RET_POPPED      

Routine R0397, 1 local (0000)

       CALL            R0020 (#6f2b) -> -(SP)
       PRINT           "You pull "
       PRINT_OBJ       "yourself"
       PRINT           " over"
       CALL            R0003 (#1b) -> -(SP)
       PRINT           ", tumbling head over heels into Jamison's "
       PRINT_OBJ       "quarters"
       PRINT_PADDR     G51
       NEW_LINE        
       JZ              L00 [FALSE] L0001
       RET             #a9
L0001: CALL            R0284 (#a9) -> -(SP)
       RET_POPPED      

Routine R0398, 0 locals ()

       JIN             "Captain Jamison",G00 [FALSE] L0001
       PRINT_PADDR     G69
       NEW_LINE        
       RFALSE          
L0001: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#1b [FALSE] L0002
       RET             #a9
L0002: TEST_ATTR       "Landing",#13 [TRUE] L0003
       CALL            R0004 (#2d) -> -(SP)
       PRINT_PADDR     Gc8
L0003: PRINT           "You"
       PRINT_PADDR     G97
       PRINT_PADDR     G51
       NEW_LINE        
       JE              G35,#18 [FALSE] L0005
       JZ              G9b [TRUE] L0004
       CALL            R0023 (#6e82,#ffff) -> -(SP)
L0004: SET_ATTR        "pile of clothes",#09
       INSERT_OBJ      "large cupboard","Captain's Quarters"
       RET             #a9
L0005: CLEAR_ATTR      "pile of clothes",#09
       INSERT_OBJ      "large cupboard","Landing"
       CALL            R0020 (#6e82) -> -(SP)
       RET             #5c

Routine R0399, 0 locals ()

       CALL            R0018 (#1a,#1b) -> -(SP)
       RFALSE          

Routine R0400, 1 local (0000)

       JE              L00,#01 [FALSE] L0005
       JE              G80,#94,#20,#21 [FALSE] L0001
       JE              G6e,#54,#4e [TRUE] L0001
       INSERT_OBJ      "it",G00
       SET_ATTR        "ladder",#11
       PRINT_RET       "You clamber off the sill to safety."
L0001: JE              G80,#4d,#4c [TRUE] L0002
       JE              G80,#23 [FALSE] L0003
       JE              G6e,#60 [FALSE] L0003
L0002: PRINT_PADDR     G95
       RTRUE           
L0003: JE              G80,#42 [FALSE] RFALSE
       JE              G35,#1c [FALSE] L0004
       CALL            R0018 (#21,#1b) -> -(SP)
       RTRUE           
L0004: JE              G35,#16 [TRUE] RFALSE
       CALL            R0357 (S198,#1b) -> -(SP)
       RET_POPPED      
L0005: JZ              L00 [FALSE] RFALSE
       JE              G80,#38 [FALSE] L0007
       TEST_ATTR       "ledge",#0d [FALSE] L0006
       PRINT           "Glass shards decorate"
       CALL            R0008 (#1b) -> -(SP)
       RET_POPPED      
L0006: PRINT           "Tall panes of glass are inset into"
       CALL            R0008 (#1b) -> -(SP)
       RET_POPPED      
L0007: JE              G80,#2b [FALSE] L0008
       JZ              Gcf [FALSE] L0008
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0008: JE              G80,#4d [FALSE] L0010
       TEST_ATTR       "ledge",#0d [FALSE] L0009
       CALL            R0357 (S167,#1b) -> -(SP)
       RET_POPPED      
L0009: PRINT_PADDR     G95
       RTRUE           
L0010: JE              G80,#21,#1f,#1a [TRUE] L0011
       JE              G80,#23,#8d [FALSE] RFALSE
L0011: JE              G00,#a9 [FALSE] L0015
       TEST_ATTR       "ledge",#0d [TRUE] L0012
       PRINT           "The available ledge on this side of the window is
hardly deep enough to sit on"
       PRINT_PADDR     G51
       RTRUE           
L0012: PRINT           "You climb onto the ledge. "
       TEST_ATTR       "Poop",#13 [TRUE] L0013
       SET_ATTR        "ladder",#17
L0013: JZ              G9b [TRUE] L0014
       CALL            R0023 (#6e82,#02) -> -(SP)
       CALL            R0004 (#4e) -> -(SP)
       PRINT           " drifts within reach."
L0014: NEW_LINE        
       INSERT_OBJ      "it","ledge"
       RTRUE           
L0015: JE              G00,#b2 [FALSE] RFALSE
       CALL            R0397 (#01) -> -(SP)
       RTRUE           

Routine R0401, 0 locals ()

       RET             #83

Routine R0402, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You are on the landing of a steep stairway heading up
and down. A "
       PRINT_OBJ       "large cupboard"
       PRINT           " against the aft wall blocks the doorway to the
captain's "
       PRINT_OBJ       "quarters"
       PRINT_CHAR      '.'
       RTRUE           

Routine R0403, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "The bed is softer than it looks, plumped up with fresh
straw. A soft, if somewhat cramped, bunk for the tall bulk of Jamison. The
cupboard opens to the fore."
       RTRUE           
L0001: JE              L00,#01 [FALSE] RFALSE
       JE              G80,#21 [FALSE] RFALSE
       JE              G6e,#2d [FALSE] RFALSE
       CALL            R0300 (#13) -> -(SP)
       RET_POPPED      

Routine R0404, 0 locals ()

       TEST_ATTR       "large cupboard",#10 [TRUE] L0002
       JE              G35,#14 [FALSE] L0001
       CALL            R0357 (S168,#2d) -> -(SP)
       RFALSE          
L0001: SET_ATTR        "large cupboard",#10
       PRINT           "You open"
       CALL            R0003 (#2d) -> -(SP)
       PRINT           " and clamber out"
       PRINT_PADDR     G51
       NEW_LINE        
       INSERT_OBJ      "large cupboard","Landing"
       RET             #5c
L0002: JE              G35,#14 [FALSE] L0004
       JIN             "pile of clothes","large cupboard" [FALSE] L0003
       INSERT_OBJ      "pile of clothes","Sleeping Cupboard"
L0003: INSERT_OBJ      "large cupboard","Sleeping Cupboard"
       RET             #7f
L0004: JIN             "pile of clothes","Sleeping Cupboard" [FALSE] L0005
       INSERT_OBJ      "pile of clothes","large cupboard"
L0005: INSERT_OBJ      "large cupboard","Landing"
       RET             #5c

Routine R0405, 0 locals ()

       JE              G80,#63,#71 [FALSE] L0001
       CALL            R0004 (#2d) -> -(SP)
       PRINT_PADDR     Gc8
       PRINT_PADDR     S040
       RTRUE           
L0001: JE              G80,#25,#68 [FALSE] L0002
       JE              G00,#a9 [FALSE] L0002
       CALL            R0004 (#d9) -> -(SP)
       PRINT           " is on the other side of"
       CALL            R0008 (#2d) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#7e,#5b,#38 [FALSE] L0007
       JE              G00,#7f [FALSE] L0003
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0003: JE              G00,#a9 [FALSE] L0004
       PRINT_PADDR     G82
       PRINT_PADDR     G83
       CALL            R0003 (#2d) -> -(SP)
       PRINT           ". "
       PRINT_PADDR     S040
       RTRUE           
L0004: TEST_ATTR       "large cupboard",#10 [FALSE] L0006
       PRINT           "It is a dark messy bed, set entirely within and
filling"
       CALL            R0003 (#2d) -> -(SP)
       PRINT           ". A cabin boy must sleep here when Jamison isn't using
it."
       TEST_ATTR       "pile of clothes",#13 [TRUE] L0005
       PRINT_CHAR      ' '
       GET_PROP        "pile of clothes",#09 -> -(SP)
       PRINT_PADDR     (SP)+
L0005: NEW_LINE        
       RTRUE           
L0006: PRINT           "It"
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              G80,#1a,#23 [FALSE] L0010
       JE              G00,#7f [FALSE] L0008
       PRINT_PADDR     Ga5
       RTRUE           
L0008: JE              G00,#a9 [FALSE] L0009
       PRINT_PADDR     G0e
       PRINT_PADDR     Gbc
       RTRUE           
L0009: CALL            R0300 (#14) -> -(SP)
       RET_POPPED      
L0010: JE              G80,#31 [FALSE] RFALSE
       PRINT_PADDR     G08
       PRINT           "get in the "
       PRINT_OBJ       "large cupboard"
       PRINT           " to do that"
       PRINT_PADDR     G51
       RTRUE           

Routine R0406, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       TEST_ATTR       G00,#13 [TRUE] L0001
       TEST_ATTR       "Poop",#13 [TRUE] L0001
       PRINT           "You hear a scuffling noise ahead, and scraping up near
the ceiling. You would think it was caused by rats, but for the definite curse
you heard before all the movement"
       PRINT_PADDR     G51
       NEW_LINE        
       RTRUE           
L0001: JE              L00,#06 [FALSE] L0002
       JZ              G8b [TRUE] L0002
       TEST_ATTR       "fuse",#13 [TRUE] L0002
       CALL            R0020 (#74d7) -> -(SP)
       CALL            R0414 -> -(SP)
       RFALSE          
L0002: JE              L00,#03 [FALSE] RFALSE
       CALL            R0408 -> -(SP)
       PRINT           " above. Rats' scratchings counterpoint the lullaby of
bilge water sloshing in the bulkheads, punctuated by footsteps slapping the
deck overhead. You may move fore or aft.
   Behind a high fence, decorated by a sign, are stacked"
       CALL            R0003 (#77) -> -(SP)
       PRINT           "; casks of rum, water, flour and salt meat interspersed
with kegs of gunpowder and shot. A closed gate is the only way in."
       RTRUE           

Routine R0407, 0 locals ()

       JE              G80,#38 [FALSE] L0003
       JE              G00,#65 [FALSE] L0001
       CALL            R0408 -> -(SP)
       PRINT_PADDR     G51
       RTRUE           
L0001: TEST_ATTR       "canvas hatch",#10 [FALSE] L0002
       PRINT_PADDR     G72
       PRINT_RET       "into murky darkness."
L0002: PRINT           "Canvas stretches across"
       CALL            R0008 (#89) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#5b [FALSE] L0005
       TEST_ATTR       "canvas hatch",#10 [FALSE] L0004
       CALL            R0018 (#38,#89) -> -(SP)
       RTRUE           
L0004: CALL            R0004 (#89) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#68 [FALSE] RFALSE
       TEST_ATTR       "canvas hatch",#10 [TRUE] RFALSE
       JE              G00,#97 [FALSE] L0006
       SET_ATTR        "canvas hatch",#10
       PRINT           "You pull a corner of canvas out of the frame. "
       CALL            R0018 (#38,#89) -> -(SP)
       RTRUE           
L0006: PRINT_PADDR     G0e
       PRINT_PADDR     Gbc
       RTRUE           

Routine R0408, 0 locals ()

       TEST_ATTR       "canvas hatch",#10 [FALSE] L0001
       PRINT           "Moonlight shines down the stairs through an open corner
of the canvas hatch"
       RTRUE           
L0001: PRINT           "Steep stairs lead up in the dimness to a canvas hatch"
       RTRUE           

Routine R0409, 0 locals ()

       JE              G80,#5b,#5d [FALSE] L0002
       CALL            R0004 (#77) -> -(SP)
       PRINT           " are kept locked behind the fence. "
       JZ              G8b [TRUE] L0001
       CALL            R0018 (#38,#bc) -> -(SP)
       RTRUE           
L0001: NEW_LINE        
       RTRUE           
L0002: JE              G80,#38 [FALSE] L0003
       CALL            R0004 (#6f) -> -(SP)
       PRINT_RET       " is made of thick, finely woven wire mesh, uncuttable
and unclimbable. Except for a gap of about 6 inches over the closed gate, the
cage is secure from ceiling to damp floorboards."
L0003: JE              G80,#a1 [FALSE] L0004
       PRINT           "You'd best throw"
       CALL            R0005 -> -(SP)
       PRINT           " over"
       CALL            R0008 (#27) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#1e [FALSE] L0005
       PRINT           "You can't get a toehold in"
       CALL            R0008 (#6f) -> -(SP)
       RET_POPPED      
L0005: JE              G80,#25,#68 [FALSE] RFALSE
       PRINT_PADDR     G08
       PRINT           "do that to the gate in"
       CALL            R0008 (#6f) -> -(SP)
       RET_POPPED      

Routine R0410, 1 local (0000)

       PRINT           "The gate is made of the same "
       PRINT_PADDR     L00
       PRINT           " wire as"
       CALL            R0003 (#6f) -> -(SP)
       RET_POPPED      

Routine R0411, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       PRINT           "It has a huge iron lock. Between"
       CALL            R0003 (#27) -> -(SP)
       PRINT_RET       " and the ceiling, however, is a gap of about 6 inches."
L0001: JE              G80,#23 [FALSE] L0002
       CALL            R0350 ("gap",#27) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0018 (#1e,#27) -> -(SP)
       RTRUE           
L0002: JE              G80,#39,#22,#1e [FALSE] L0003
       CALL            R0410 (S066) -> -(SP)
       PRINT           ", and you cannot get a foothold"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#89 [FALSE] L0004
       CALL            R0410 (S343) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#5d [FALSE] L0005
       CALL            R0017 (#6f) -> -(SP)
       RET_POPPED      
L0005: JE              G80,#a1 [FALSE] L0014
       PRINT           "You throw"
       JE              G6e,#ca [FALSE] L0010
       REMOVE_OBJ      "rag"
       CLEAR_ATTR      "rag",#13
       CALL            R0003 (#ca) -> -(SP)
       PRINT           " over the gate. "
       JZ              G8b [FALSE] L0006
       PRINT           "It falls to the floor amongst the food supplies"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G5e,#00 [FALSE] L0007
       PRINT           "It flaps haplessly in the air, settling to the floor
not far from the burning fuse"
       PRINT_PADDR     G51
       RTRUE           
L0007: PRINT           "Luckily, it lands directly on the burning end of the
fuse. "
       JE              G5e,#8c [FALSE] L0008
       CALL            R0023 (#7569,#09) -> -(SP)
       CALL            R0020 (#751d) -> -(SP)
       PRINT           "Unluckily, it is soaked with flammable rum, and flares
up, making the fuse burn much faster. You have perhaps 3 minutes to live."
       NEW_LINE        
       JUMP            L0009
L0008: JE              G5e,#a6 [FALSE] L0009
       CALL            R0020 (#7569) -> -(SP)
       CALL            R0020 (#751d) -> -(SP)
       STORE           G8b,#00
       SET_ATTR        "fuse",#09
       INC             G01
       PRINT           "With a sputter and a sigh, the flame dies."
       NEW_LINE        
L0009: STORE           G5e,#00
       RTRUE           
L0010: JE              G6e,#54 [FALSE] L0012
       CALL            R0003 (#54) -> -(SP)
       PRINT           " up, "
       JZ              Gdb [TRUE] L0011
       INSERT_OBJ      "cotton frock","Hold"
       PRINT           "its soaked skirt slapping "
       PRINT_OBJ       "your head"
       PRINT           ". Too heavy and bulky to make it over the gate, it
squelches to the floor nearby. A cold tear of "
       PRINT_OBJ       Gdb
       PRINT           " dribbles down the back of your neck"
       PRINT_PADDR     G51
       RTRUE           
L0011: INSERT_OBJ      "cotton frock",G00
       PRINT           "but it billows out and catches on the top of the gate.
It floats to the floor near you"
       PRINT_PADDR     G51
       RTRUE           
L0012: REMOVE_OBJ      G6e
       CALL            R0005 -> -(SP)
       PRINT           " into the ammunition area. It skids into the darkness"
       JZ              G8b [TRUE] L0013
       PRINT           ", over the burning end of the fuse. The fuse falters,
spits and resumes burning"
L0013: PRINT_PADDR     G51
       RTRUE           
L0014: JE              G80,#9c,#33,#31 [FALSE] RFALSE
       CALL            R0350 ("gap",#27) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0018 (#a1,G6e,#27) -> -(SP)
       RTRUE           

Routine R0412, 0 locals ()

       CALL            R0346 (#a7) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0346 (#77) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0001: CALL            R0356 (#77) -> -(SP)
       RET_POPPED      

Routine R0413, 0 locals ()

       JE              G80,#38,#75 [FALSE] RFALSE
       PRINT_RET       "The sign proclaims "Thieves be keel-hauled" in
uncertain lettering."

Routine R0414, 0 locals ()

       CALL            R0021 (#7569) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           G8b,#01
       CLEAR_ATTR      "fuse",#09
       CALL            R0023 (#751d,#55) -> -(SP)
L0001: TEST_ATTR       "fuse",#13 [TRUE] RFALSE
       JE              G00,#97 [FALSE] L0002
       TEST_ATTR       "canvas hatch",#10 [TRUE] L0003
L0002: JE              G00,#65 [FALSE] RFALSE
L0003: SET_ATTR        "fuse",#13
       CLEAR_ATTR      "fuse",#14
       PRINT_PADDR     Ge8
       PRINT           "You gradually notice a familiar, worrying smell, sniff,
and identify it as smoke. "
       JE              G00,#97 [FALSE] L0004
       PRINT           "It appears to come from below decks."
       NEW_LINE        
       RFALSE          
L0004: JE              G00,#65 [FALSE] RFALSE
       PRINT_PADDR     Gad
       PRINT_PADDR     G51
       RFALSE          

Routine R0415, 0 locals ()

       CALL            R0023 (#7569,#0f) -> -(SP)
       GET_PARENT      "rag" -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       JZ              G8b [TRUE] RFALSE
       TEST_ATTR       "cotton frock",#16 [TRUE] L0001
       JIN             "cotton frock","it" [FALSE] L0003
L0001: JZ              Gdb [TRUE] L0002
       STORE           G5e,#01
L0002: SET_ATTR        "cotton frock",#0d
       PRINT_PADDR     Ge8
       PRINT           "Your frock"
       JUMP            L0005
L0003: JIN             "shirt","it" [FALSE] L0004
       SET_ATTR        "shirt",#0d
       PRINT_PADDR     Ge8
       PRINT           "The tail of your shirt"
       JUMP            L0005
L0004: TEST_ATTR       "linen chemise",#06 [TRUE] RTRUE
       SET_ATTR        "linen chemise",#0d
       PRINT_PADDR     Ge8
       PRINT           "Your chemise"
L0005: GET_PARENT      "it" -> -(SP)
       INSERT_OBJ      "rag",(SP)+
       PRINT_RET       " suddenly catches on something, tearing the fabric. A
large scrap flutters to your feet."

Routine R0416, 0 locals ()

       JZ              G8b [TRUE] RFALSE
       SET_ATTR        "Helena Louise",#0d
       STORE           Gbb,#0a
       CALL            R0020 (#7569) -> -(SP)
       CALL            R0020 (#751d) -> -(SP)
       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G00,#59 [FALSE] L0002
L0001: CALL            R0287 (S204) -> -(SP)
       RET_POPPED      
L0002: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#34,#5d,#49 [FALSE] L0005
       PRINT_PADDR     Ge8
       PRINT           "A huge wave "
       JE              G00,#49 [FALSE] L0003
       PRINT           "rolls up the beach"
       JUMP            L0004
L0003: PRINT           "rocks"
       GET_PARENT      "it" -> -(SP)
       CALL            R0003 ((SP)+) -> -(SP)
L0004: PRINT           " as"
       CALL            R0003 (#67) -> -(SP)
       PRINT           " explodes into flames across the lagoon"
       PRINT_PADDR     G51
       RTRUE           
L0005: PRINT_PADDR     Ge8
       PRINT           "You hear a noise like a huge explosion in the distance,
and the ground shakes beneath your feet. There should be good beachcombing
tomorrow"
       PRINT_PADDR     G51
       RTRUE           

Routine R0417, 3 locals (0000, 0000, 0000)

       JZ              L00 [TRUE] L0001
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT_PADDR     Gad
       PRINT_CHAR      '.'
       RTRUE           
L0001: JE              G80,#32,#6f [FALSE] L0002
       JE              G6e,#54,#ca [FALSE] L0002
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#6a,#63 [FALSE] L0003
       CALL            R0356 (#bc) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#6f,#19,#56 [TRUE] L0004
       JE              G80,#89,#32 [TRUE] L0004
       CALL            R0346 (#bc) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
L0004: PRINT_PADDR     G94
       PRINT           "anywhere near"
       CALL            R0003 (#bc) -> -(SP)
       PRINT_RET       "!"
L0005: JE              G80,#38 [FALSE] L0014
       JZ              G8b [TRUE] L0013
       PRINT           "The burning fuse is "
       CALL            R0021 (#7569) -> L01
       JZ              L01 [TRUE] L0008
       LOADW           L01,#01 -> -(SP)
       SUB             #0f,(SP)+ -> L02
       JG              L02,#0c [FALSE] L0006
       PRINT           "boring a hole through the largest powder keg"
       PRINT_PADDR     G51
       RTRUE           
L0006: JG              L02,#07 [FALSE] L0007
       PRINT           "mere inches"
       JUMP            L0012
L0007: PRINT           "only a foot"
       JUMP            L0012
L0008: CALL            R0021 (#751d) -> L01
       LOADW           L01,#01 -> -(SP)
       SUB             #55,(SP)+ -> L02
       JG              L02,#46 [FALSE] L0009
       PRINT           "a few feet"
       JUMP            L0012
L0009: JG              L02,#3c [FALSE] L0010
       PRINT           "several feet"
       JUMP            L0012
L0010: JG              L02,#2d [FALSE] L0011
       PRINT           "a few yards"
       JUMP            L0012
L0011: PRINT           "quite near the fence, several yards"
L0012: PRINT           " from the pile of gunpowder kegs opposite"
       CALL            R0008 (#27) -> -(SP)
       RET_POPPED      
L0013: PRINT_PADDR     G82
       PRINT_PADDR     G40
       CALL            R0008 (#6f) -> -(SP)
       RET_POPPED      
L0014: JE              G80,#9e,#a1,#9c [FALSE] RFALSE
       JE              G6e,#54,#ca [FALSE] RFALSE
       CALL            R0018 (#a1,G6e,#27) -> -(SP)
       RTRUE           

Routine R0418, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       JZ              G03 [FALSE] L0001
       CALL            R0023 (#c591,#02) -> -(SP)
       RET_POPPED      
L0001: JE              L00,#03 [FALSE] RFALSE
       PRINT           "The crew sleeps, in shifts, in this cramped space under
the forecastle. A breeze blows in on a moonbeam through a grate in the ceiling.
A low doorsill is abaft.
"
       PRINT_PADDR     Ge8
       TEST_ATTR       "mess",#13 [TRUE] L0002
       SET_ATTR        "mess",#13
       PRINT           "This area must also serve as sickroom. "
L0002: PRINT           "Strewn about the floor are various powders and spills
of malodorous potions. In one corner, a large blood stain indicates an
amputation; in another is the smear of a leech, dropped off a bloodletting."
       RTRUE           

Routine R0419, 0 locals ()

       JE              G80,#5b [FALSE] RFALSE
       JE              G00,#c1 [FALSE] L0001
       CALL            R0018 (#38,#b5) -> -(SP)
       RTRUE           
L0001: PRINT_PADDR     G82
       PRINT_PADDR     G40
       CALL            R0008 (#17) -> -(SP)
       RET_POPPED      

Routine R0420, 0 locals ()

       JE              G80,#5b [FALSE] L0001
       PRINT           "You are aglow with excitement"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#6d,#31 [FALSE] L0003
       JE              Gcf,#dc,#d3,#67 [TRUE] L0002
       JE              Gcf,#0a [FALSE] L0003
L0002: CALL            R0421 (#6b) -> -(SP)
       RTRUE           
L0003: JE              G80,#38 [FALSE] RFALSE
       PRINT           "Probably a remnant of a pirated lady's boudoir,"
       CALL            R0003 (#6b) -> -(SP)
       PRINT           "'s edges are dulled from use"
       PRINT_PADDR     G51
       RTRUE           

Routine R0421, 1 local (0000)

       TEST_ATTR       G00,#0c [FALSE] L0001
       CALL            R0297 (G00,#0a) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G00,#b0,#a9 [TRUE] L0001
       PRINT_PADDR     G0e
       PRINT_PADDR     Gbc
       RTRUE           
L0001: INSERT_OBJ      L00,"it"
       JIN             "cold chicken",L00 [FALSE] L0002
       REMOVE_OBJ      "cold chicken"
       REMOVE_OBJ      "spices"
       PRINT           "You scrape everything off"
       CALL            R0003 (#c6) -> -(SP)
       PRINT           " into the bushes below. "
L0002: JE              G00,#92 [FALSE] L0003
       PRINT_PADDR     G75
       PRINT           "quite catch the moon, just peeking over the house, in
the little mirror"
       PRINT_PADDR     G51
       RTRUE           
L0003: PRINT           "You roll"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " around in the beam of moonlight till it glows
silver-white. "
       JE              G00,#b0 [FALSE] L0008
       TEST_ATTR       "Helena Louise",#0d [FALSE] L0004
       PRINT           "The breeze picks up, howling off"
       CALL            R0008 (#60) -> -(SP)
       RTRUE           
L0004: CALL            R0021 (#77e9) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       JZ              Gb3 [FALSE] L0007
       INC             G01
       JIN             "Lafond",G00 [FALSE] L0005
       CALL            R0023 (#77e9,#0e) -> -(SP)
       JUMP            L0006
L0005: CALL            R0023 (#77e9,#06) -> -(SP)
L0006: PRINT           "After a moment, a flash of light responds from"
       CALL            R0008 (#67) -> -(SP)
       RET_POPPED      
L0007: NEW_LINE        
       RTRUE           
L0008: NEW_LINE        
       RTRUE           

Routine R0422, 0 locals ()

       STORE           Gb3,#01
       STORE           G2c,#01
       SET_ATTR        "Lucy",#09
       SET_ATTR        "your father",#09
       INSERT_OBJ      "Crulley","Dungeon"
       CLEAR_ATTR      "Cookie",#09
       SET_ATTR        "Ballroom",#06
       SET_ATTR        "skiff",#09
       PRINT_PADDR     Ge8
       JE              G00,#18,#ab,#01 [TRUE] L0001
       JE              G00,#b3 [FALSE] L0002
L0001: PRINT           "Silently, a dozen ragged men creep in from the beach.
Small groups move in all "
       PRINT_OBJ       "direction"
       PRINT           "s, surrounding the mansion, until, with a hair-raising
cry, they attack the house. Screams of terror come from the ballroom"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G00,#b0 [FALSE] L0003
       JIN             "Lafond",G00 [FALSE] L0003
       PRINT_PADDR     G2f
       PRINT           ", and Lafond whirls around, every sinew taut.
"Damnation! Jamison somehow called his men!" Holding a knife to your throat,
Lafond drags you downstairs and away from rescue, as Cookie and the crew watch
helpless."
       CALL            R0287 (S334) -> -(SP)
       RET_POPPED      
L0003: JE              G00,#b0 [FALSE] L0004
       TEST_ATTR       "butler",#05 [TRUE] L0004
       PRINT_PADDR     G2f
       PRINT           ", as Jamison's men respond to your signal. "
       CALL            R0004 (#4f) -> -(SP)
       PRINT           ", looking scared, grabs you and runs downstairs and out
to the front drive."
       CALL            R0287 (S053) -> -(SP)
       RET_POPPED      
L0004: JE              G00,#6d,#1c,#70 [TRUE] L0005
       JE              G00,#a5,#41,#53 [FALSE] L0006
L0005: PRINT_PADDR     G2f
       PRINT           ", and Jamison's men stream in from all "
       PRINT_OBJ       "direction"
       PRINT           "s, huddling the dancers in the middle of the ballroom"
       PRINT_PADDR     G51
       RTRUE           
L0006: PRINT_PADDR     G2f
       PRINT           ". It is drowned out a few minutes later by screams of
terror from the dancers in the ballroom"
       PRINT_PADDR     G51
       JE              G00,#14 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       PRINT_RET       "The dragoons look alarmed, and confer among
themselves."

Routine R0423, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       CALL            R0004 (#2a) -> -(SP)
       PRINT           " is quite dull"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#89 [FALSE] RFALSE
       TEST_ATTR       G6e,#15 [FALSE] L0002
       CALL            R0018 (#79,G6e) -> -(SP)
       RTRUE           
L0002: JE              G6e,#4a [TRUE] RFALSE
       JE              G6e,#2a [FALSE] L0003
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0003: CALL            R0004 (#2a) -> -(SP)
       PRINT           " is much too dull to cut"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      

Routine R0424, 1 local (0000)

       JE              L00,#02 [FALSE] L0002
       TEST_ATTR       "Poop",#13 [TRUE] L0002
       JZ              G03 [FALSE] L0001
       STORE           G03,#01
       SET_ATTR        "anchor",#0d
       SET_ATTR        "lever",#0d
       CALL            R0023 (#c618,#02) -> -(SP)
       CALL            R0023 (#837a,#0a) -> -(SP)
L0001: INC             G01
       RET             G01
L0002: JE              L00,#03 [FALSE] RFALSE
       PRINT           "From this platform deck you can see the whole of the
two-masted ship, shadowy forms moving about here and there. A railing protects
you from stepping off the deck in any "
       PRINT_OBJ       "direction"
       PRINT           " but to the fore."
       JZ              G9b [TRUE] L0003
       PRINT           " A rope ladder is tied to the railing at the stern of
the ship."
L0003: CALL            R0452 (#00) -> -(SP)
       RET_POPPED      

Routine R0425, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "No torches are lit, or needed on this moonlit night,
except in the deep shadows cast by the huge navigation wheel. Men move about to
the fore, talking quietly. Under the stairs aft to the poop is a barred door."
       CALL            R0452 (#00) -> -(SP)
       RET_POPPED      
L0001: JE              L00,#06 [FALSE] RFALSE
       JZ              G99 [FALSE] RFALSE
       CALL            R0374 -> -(SP)
       RET_POPPED      

Routine R0426, 0 locals ()

       CALL            R0346 (#48) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "From the grumbling emitted as you near"
       CALL            R0003 (#48) -> -(SP)
       PRINT_RET       ", you gather that the sailors close by would not
appreciate your action."

Routine R0427, 0 locals ()

       CALL            R0346 (#a0) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_RET       "A crewman growls angrily, "Boy! Get away from me guns
-- they've killed better men than thee by just rollin' backwards.""
L0001: JE              G80,#38 [FALSE] L0002
       PRINT           "Huge, old and blackened, these cannon have seen many
battles"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#82,#81 [FALSE] RFALSE
       CALL            R0369 (S242) -> -(SP)
       RET_POPPED      

Routine R0428, 1 local (0000)

       JZ              L00 [TRUE] L0005
       JE              L00,#01 [FALSE] L0004
       JE              G80,#7c,#7b,#7a [FALSE] L0001
       CALL            R0206 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#42 [FALSE] L0002
       JE              G6e,#13 [FALSE] L0003
L0002: CALL            R0346 (#c4) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0003: CALL            R0357 (S199,#5d) -> -(SP)
       RET_POPPED      
L0004: JE              L00,#09 [TRUE] RTRUE
       JE              L00,#05 [FALSE] RFALSE
       JE              G00,#63,#94 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       PRINT           "Waves lap at"
       CALL            R0003 (#5d) -> -(SP)
       PRINT_CHAR      '.'
       RTRUE           
L0005: JE              G80,#38 [FALSE] L0006
       PRINT           "This large, empty cask smells of salt and rancid meat.
The head of"
       CALL            R0003 (#5d) -> -(SP)
       PRINT           " is missing"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G80,#23,#1a [FALSE] L0009
       INSERT_OBJ      "it","cask"
       PRINT           "You crawl into"
       CALL            R0003 (#5d) -> -(SP)
       TEST_ATTR       "slab of pork",#13 [TRUE] L0007
       PRINT           ", feeling a slab of something stuck on the bottom"
L0007: JE              G00,#bd [FALSE] L0008
       PRINT           ". From this close, you can see"
       CALL            R0003 (#4a) -> -(SP)
       PRINT           " is getting frayed where it rubs against"
       CALL            R0008 (#5d) -> -(SP)
       RET_POPPED      
L0008: PRINT_PADDR     G51
       RTRUE           
L0009: JE              G80,#25,#68 [FALSE] L0010
       PRINT           "One end of"
       CALL            R0003 (#5d) -> -(SP)
       PRINT           " is missing, so it can't be opened or closed"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              G80,#54 [FALSE] L0012
       JE              G00,#bd [FALSE] L0011
       PRINT_PADDR     G0c
       RTRUE           
L0011: PRINT_PADDR     Gd6
       RTRUE           
L0012: JE              G80,#21 [FALSE] RFALSE
       JE              G00,#94 [FALSE] L0013
       PRINT_PADDR     S190
       RTRUE           
L0013: JE              G00,#63 [FALSE] RFALSE
       INSERT_OBJ      "it",G00
       REMOVE_OBJ      "cask"
       PRINT           "Free of your weight,"
       CALL            R0003 (#5d) -> -(SP)
       PRINT           " bobs and spins in the current, pulled out into the
lagoon. You splash after it, but it is gone"
       PRINT_PADDR     G51
       RTRUE           

Routine R0429, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       CALL            R0004 (#64) -> -(SP)
       PRINT_RET       ", caked white with salt, is rock-hard."
L0001: JE              G80,#34 [FALSE] L0002
       CALL            R0004 (#64) -> -(SP)
       PRINT_RET       " is too salty to eat."
L0002: JE              G80,#6a [FALSE] RFALSE
       JIN             "slab of pork","cask" [FALSE] RFALSE
       TEST_ATTR       "slab of pork",#17 [TRUE] RFALSE
       JIN             "it","cask" [FALSE] L0003
       SET_ATTR        "slab of pork",#17
       INSERT_OBJ      "slab of pork","it"
       PRINT           "You peel it off"
       CALL            R0008 (#5d) -> -(SP)
       RET_POPPED      
L0003: CALL            R0004 (#64) -> -(SP)
       PRINT           " is beyond your reach at the bottom of"
       CALL            R0008 (#5d) -> -(SP)
       RET_POPPED      

Routine R0430, 0 locals ()

       JE              G80,#38 [FALSE] L0004
       PRINT           "Heavy-duty, hand-twisted rope is pulled taut around"
       CALL            R0003 (#c4) -> -(SP)
       PRINT           ". "
       TEST_ATTR       "line",#0d [TRUE] L0001
       PRINT           "It runs directly over the open-ended cask. "
L0001: PRINT           "A seaman calls over, "Boy, take care"
       TEST_ATTR       "line",#0d [FALSE] L0002
       PRINT           " -- or I'll see you flogged"
       JUMP            L0003
L0002: PRINT           ". Them casks ain't safe, they could push ye overboard"
L0003: PRINT_RET       "!""
L0004: JE              G80,#89 [FALSE] L0010
       JZ              Gcf [FALSE] L0005
       CALL            R0295 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       PRINT           "[with the dagger]"
       NEW_LINE        
       CALL            R0018 (#89,#4a,#2a) -> -(SP)
       RTRUE           
L0005: JE              Gcf,#2a [FALSE] RFALSE
       JZ              G8b [TRUE] L0006
       JIN             "it","cask" [FALSE] L0006
       TEST_ATTR       "line",#06 [TRUE] L0006
       SET_ATTR        "line",#06
       PRINT_RET       "You hesitate, thinking of the fates of those left
aboard this ship."
L0006: CALL            R0004 (#4a) -> -(SP)
       PRINT           " snaps, and the pyramid collapses into dozens of
tumbling casks. "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#5d [FALSE] L0009
       CLEAR_ATTR      "cask",#09
       SET_ATTR        "line",#0d
       REMOVE_OBJ      "dagger"
       SUB             Gbb,#02 -> Ge5
       INC             G01
       PRINT           "Your cask is thrust into the sea,"
       CALL            R0003 (#2a) -> -(SP)
       PRINT           " flying from "
       PRINT_OBJ       "your hand"
       PRINT_PADDR     G51
       TEST_ATTR       "anchor",#0d [FALSE] L0007
       CALL            R0289 (S013) -> -(SP)
       JUMP            L0008
L0007: PRINT_PADDR     Ge8
       PRINT           "Sputtering mouthfuls of salt water, you first look
around several minutes later"
       PRINT_PADDR     G51
       NEW_LINE        
L0008: CLEAR_ATTR      "door",#10
       SET_ATTR        "door",#0a
       CALL            R0023 (#83cd,#ffff) -> -(SP)
       INSERT_OBJ      "cask","Lagoon"
       CALL            R0284 (#5d) -> -(SP)
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0009: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#bd [FALSE] RFALSE
       CALL            R0287 (S141) -> -(SP)
       RET_POPPED      
L0010: JE              G80,#77,#a9 [FALSE] RFALSE
       PRINT_PADDR     G0e
       PRINT           "knots to untie, just line"
       PRINT_PADDR     G51
       RTRUE           

Routine R0431, 0 locals ()

       JIN             "cask",G00 [TRUE] L0001
       RET             #c4
L0001: RET             #5d

Routine R0432, 1 local (0000)

       JZ              L00 [TRUE] L0003
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT           "Abaft the wheel sits a "
       TEST_ATTR       "line",#0d [FALSE] L0001
       PRINT           "small, hastily constructed"
       JUMP            L0002
L0001: PRINT           "large"
L0002: PRINT           " pyramid of casks, held in place by a heavy rope."
       RTRUE           
L0003: JE              G80,#38 [FALSE] L0005
       PRINT           "Lying on their sides, the casks are stacked in a rather
shaky pyramid: perhaps that's why someone has tied the rope about them"
       TEST_ATTR       "line",#0d [TRUE] L0004
       PRINT           ". A cask on one corner has lost its lid"
L0004: PRINT_PADDR     Gb0
       NEW_LINE        
       RTRUE           
L0005: JE              G80,#5b [FALSE] L0007
       PRINT           "All of the casks seem empty"
       TEST_ATTR       "line",#0d [TRUE] L0006
       PRINT           ", but the only one you can actually look in is the
open-ended cask."
       JIN             "slab of pork","cask" [FALSE] L0006
       PRINT           " There appears to be"
       CALL            R0002 (#64) -> -(SP)
       PRINT_RET       " dried to the bottom of that one."
L0006: NEW_LINE        
       RTRUE           
L0007: CALL            R0346 (#c4) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       TEST_ATTR       "line",#0d [FALSE] L0008
       PRINT_RET       "A sailor swoops down on you from nowhere, whapping your
backside painfully. "Boy!" he booms, "get away from those! We already had to
clean up after you once. Cap'n'll hear of this, I tell you.""
L0008: INC             G25
       PRINT           "The pyramid wobbles"
       JE              G25,#03 [FALSE] L0009
       CALL            R0287 (S043) -> -(SP)
       RTRUE           
L0009: PRINT_PADDR     Gb0
       NEW_LINE        
       RTRUE           

Routine R0433, 1 local (0000)

       JE              L00,#03 [FALSE] L0003
       PRINT           "It is a deceptively quiet evening on the ship, the
pirates singing low shanties as they repair cannon, twist ropes and sharpen
daggers. The mainmast casts an inky shadow over the "
       TEST_ATTR       "canvas hatch",#10 [FALSE] L0001
       PRINT           "open hatch and stairs leading down to the hold."
       JUMP            L0002
L0001: PRINT           "canvas screening the hatch."
L0002: PRINT_PADDR     Gac
       CALL            R0452 (#00) -> -(SP)
       NEW_LINE        
       PRINT_PADDR     Ge8
       PRINT           "Two large barrels stand near the stair to the
foredeck."
       RTRUE           
L0003: JE              L00,#02 [FALSE] L0004
       JZ              G8b [TRUE] L0004
       TEST_ATTR       "fuse",#13 [TRUE] L0004
       CALL            R0020 (#74d7) -> -(SP)
       CALL            R0414 -> -(SP)
       RET_POPPED      
L0004: JE              L00,#06 [FALSE] RFALSE
       JZ              G99 [FALSE] RFALSE
       CALL            R0374 -> -(SP)
       RET_POPPED      

Routine R0434, 0 locals ()

       TEST_ATTR       "canvas hatch",#10 [TRUE] L0001
       CALL            R0004 (#89) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RFALSE          
L0001: JE              G00,#97 [FALSE] L0002
       PRINT           "You glance around to see that no one is watching, and
duck through the open corner of"
       CALL            R0008 (#89) -> -(SP)
       NEW_LINE        
       RET             #65
L0002: PRINT           "You slip lithely through"
       CALL            R0008 (#89) -> -(SP)
       NEW_LINE        
       RET             #97

Routine R0435, 0 locals ()

       JE              G80,#8b,#31 [FALSE] L0001
       CALL            R0018 (#31,G6e,#d2) -> -(SP)
       RTRUE           
L0001: JE              G80,#5c,#5b,#38 [FALSE] L0002
       PRINT           "The rum is a dark brown color"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#74 [FALSE] L0003
       PRINT           "Rum"
       PRINT_PADDR     G0b
       RTRUE           
L0003: JE              G80,#2e [FALSE] RFALSE
       PRINT_RET       "You take a sip and spit it out, coughing. This is much
stronger than ratafia!"

Routine R0436, 0 locals ()

       JE              G80,#38 [FALSE] RFALSE
       RET             #5f

Routine R0437, 0 locals ()

       JE              G80,#5b,#38 [FALSE] L0004
       JE              G6e,#5f [FALSE] L0003
       CALL            R0351 (#bb) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0351 (#f0) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: PRINT_RET       "This large barrel is full of fresh water for the long
sea voyage."
L0002: PRINT           "The two open barrels contain rum and water, you can
tell by the smell of each. They are identical but for the dark stains around
the mouth of"
       CALL            R0008 (#d2) -> -(SP)
       RET_POPPED      
L0003: JE              G6e,#d2 [FALSE] RFALSE
       PRINT           "Stained around the mouth by the spills of over-eager
sailors,"
       CALL            R0003 (#d2) -> -(SP)
       PRINT_RET       " is nearly full."
L0004: JE              G80,#2f [FALSE] L0006
       JE              Gcf,#d2 [FALSE] L0005
       CALL            R0018 (#2e,#8c) -> -(SP)
       RTRUE           
L0005: JE              Gcf,#5f [FALSE] RFALSE
       CALL            R0018 (#2e,#a6) -> -(SP)
       RTRUE           
L0006: JE              G80,#64,#71,#52 [FALSE] L0008
       JE              G81,"tip" [FALSE] L0007
       PRINT_RET       "You notice a scrawl on the side, "No tipping, please.""
L0007: PRINT_RET       "The barrel is secured to the deck."
L0008: JE              G80,#36,#35 [FALSE] L0009
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0009: JE              G80,#74 [FALSE] L0012
       JE              G6e,#d2 [FALSE] L0010
       PRINT           "Rum"
       JUMP            L0011
L0010: PRINT           "Water"
L0011: PRINT_PADDR     G0b
       RTRUE           
L0012: JE              G80,#25 [FALSE] L0013
       PRINT_RET       "There is no lid."
L0013: JE              G80,#8b,#31 [FALSE] L0018
       JE              G6e,#66 [FALSE] L0014
       PRINT_RET       "The few drops left would be too diluted to affect
anyone."
L0014: TEST_ATTR       Gcf,#10 [TRUE] L0015
       CALL            R0004 (Gcf) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RTRUE           
L0015: JE              G6e,#ce,#af [FALSE] L0016
       CALL            R0018 (#31,G6e,#60) -> -(SP)
       RTRUE           
L0016: JE              G6e,#ca,#54 [FALSE] L0017
       CALL            R0438 -> -(SP)
       RET_POPPED      
L0017: REMOVE_OBJ      G6e
       PRINT           "You drop"
       CALL            R0005 -> -(SP)
       PRINT           " into"
       CALL            R0006 -> -(SP)
       PRINT           ". It sinks from sight"
       PRINT_PADDR     G51
       RTRUE           
L0018: JE              G80,#2e [FALSE] RFALSE
       LOADW           G26,#00 -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       CALL            R0351 (#bb) -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       CALL            R0018 (#2e,#a6) -> -(SP)
       RTRUE           
L0019: CALL            R0351 (#c0) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0018 (#2e,#8c) -> -(SP)
       RTRUE           

Routine R0438, 1 local (0000)

       JZ              Gcf [FALSE] L0001
       CALL            R0225 -> -(SP)
       RTRUE           
L0001: JE              Gcf,#d2,#8c [FALSE] L0002
       STORE           L00,#8c
       JUMP            L0004
L0002: JE              Gcf,#5f,#a6,#60 [TRUE] L0003
       JE              Gcf,#20 [TRUE] L0003
       JE              G00,#59,#94,#63 [TRUE] L0003
       JE              G00,#49 [FALSE] L0004
L0003: STORE           L00,#a6
L0004: JZ              Gdb [TRUE] L0005
       JE              G6e,#54 [TRUE] L0006
L0005: JZ              G5e [TRUE] L0007
       JE              G6e,#ca [FALSE] L0007
L0006: PRINT_RET       "That's already wet enough."
L0007: PRINT           "Keeping hold on"
       CALL            R0005 -> -(SP)
       PRINT           ", you soak it with "
       JE              G6e,#54 [FALSE] L0008
       GET_PARENT      "it" -> -(SP)
       INSERT_OBJ      "cotton frock",(SP)+
       PUT_PROP        "cotton frock",#10,#0a
       STORE           Gdb,L00
       PRINT_OBJ       L00
       PRINT           ". It becomes so heavy, however, that you drop it, with
a loud squelch"
       JUMP            L0009
L0008: JE              G6e,#ca [FALSE] L0009
       STORE           G5e,L00
       PRINT_OBJ       L00
L0009: PRINT_PADDR     G51
       RTRUE           

Routine R0439, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "Higher than all but the poop deck, this end of the ship
commands a good view of the island; the "crow's nest," swinging above in the
heights of the foremast, would command a better."
       PRINT_PADDR     Gac
       NEW_LINE        
       PRINT           "   Imbedded in the deck is a grated air hole to the
crew's "
       PRINT_OBJ       "quarters"
       PRINT           " below. You can go aft, or forward through a break in
the ubiquitous railing.
   Odors of old grease and char waft from a little shack perched behind the
mast."
       CALL            R0452 (#00) -> -(SP)
       RET_POPPED      
L0001: JE              L00,#06 [FALSE] RFALSE
       JZ              G99 [FALSE] RFALSE
       CALL            R0374 -> -(SP)
       RET_POPPED      

Routine R0440, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       PRINT           "Made of an old barrel turning on a pole,"
       CALL            R0003 (#96) -> -(SP)
       PRINT           " is used to coil in the anchor chain. A pair of metal
teeth bite the links to prevent it from dragging out; a lever is connected to
the teeth. Something is written on the lever"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#a5 [FALSE] L0003
       TEST_ATTR       "lever",#0d [FALSE] L0002
       PRINT           "The teeth are closed, so you can't move the chain"
       PRINT_PADDR     G51
       RTRUE           
L0002: PRINT_PADDR     G76
       RTRUE           
L0003: JE              G80,#25,#68 [FALSE] RFALSE
       CALL            R0367 -> -(SP)
       RET_POPPED      

Routine R0441, 0 locals ()

       JE              G80,#38,#75 [FALSE] L0001
       PRINT_RET       "On the lever is written "Open Up, Close Down." You
notice the lever is pointed down."
L0001: JE              G80,#65 [FALSE] L0004
       TEST_ATTR       "anchor",#0d [FALSE] L0002
       INC             G01
       CLEAR_ATTR      "anchor",#0d
       REMOVE_OBJ      "anchor"
       CALL            R0020 (#837a) -> -(SP)
       CALL            R0023 (#8162,#03) -> -(SP)
       PRINT           "The metal teeth open as you raise up"
       CALL            R0003 (#6a) -> -(SP)
       PRINT           ". The anchor, released, splashes down into the sea,
dragging its clanking chain. After a moment, you feel the ship pull slightly
against the current. You lower the lever to prevent any more chain from
spooling out"
       PRINT_PADDR     G51
       RTRUE           
L0002: PRINT           "Raising"
       CALL            R0003 (#6a) -> -(SP)
       PRINT           " would release more chain and you might "
       CALL            R0021 (#8162) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       PRINT           "cast"
       CALL            R0003 (#67) -> -(SP)
       PRINT_RET       " against the reefs!"
L0003: PRINT           "ground"
       CALL            R0008 (#67) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#5f [FALSE] L0005
       PRINT_PADDR     Gd6
       RTRUE           
L0005: JE              G80,#71,#63 [FALSE] RFALSE
       PRINT_PADDR     G08
       PRINT           "specify which way you want to move it"
       PRINT_PADDR     G51
       RTRUE           

Routine R0442, 0 locals ()

       PRINT_PADDR     Ge8
       PRINT           "With a heave and creak of timbers,"
       CALL            R0003 (#67) -> -(SP)
       PRINT_RET       " drifts a little way back towards the island. The tide
has turned."

Routine R0443, 1 local (0000)

       JE              L00,#06 [FALSE] L0005
       TEST_ATTR       "Cookie",#13 [TRUE] L0005
       SET_ATTR        "Cookie",#13
       PRINT_PADDR     Ge8
       PRINT           "The man looks you over sharply,"
       JZ              G99 [TRUE] L0001
       PRINT           " then winks an eye. "Hullo, boy -- Sam, I'll call you.
N"
       JUMP            L0002
L0001: PRINT           "frowning. "Tut, lass, you don't foller orders, do ye?
'Tain't safe to go about dressed like that. Mayhap ye're n"
L0002: PRINT           "ervous about Cap'n? He'll come to no harm. And if there
is trouble, he only has to signal from that seaward winder of the house -- ye
can see it from the crow's nest -- and we'll be there in a jiffy. Me and my peg
are to stay aboard and guard y"
       JZ              G99 [TRUE] L0003
       PRINT           "--, the Cap'n's"
       JUMP            L0004
L0003: PRINT           "ou,"
L0004: PRINT_RET       " young lady.""
L0005: JE              L00,#02 [FALSE] RFALSE
       CALL            R0025 (#a3) -> -(SP)
       CALL            R0025 (#2a) -> -(SP)
       RET_POPPED      

Routine R0444, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       PRINT           "It's a tiny charred wooden shack"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#7e,#5b [FALSE] L0002
       CALL            R0017 (#86) -> -(SP)
       RTRUE           
L0002: JE              G80,#23 [FALSE] RFALSE
       CALL            R0284 (#86) -> -(SP)
       RET_POPPED      

Routine R0445, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "Hanging on the bowsprit, your arms and legs wrapped
tightly around the narrow spar, you can't see much beside an upside-down view
of the figurehead of the "
       PRINT_OBJ       "Helena Louise"
       PRINT           ", "
       TEST_ATTR       "anchor",#0d [FALSE] L0001
       PRINT           "the barnacle encrusted main anchor dripping from its
chain, and the nauseous"
       JUMP            L0002
L0001: PRINT           "and"
       CALL            R0003 (#12) -> -(SP)
       PRINT           " chain descending into the"
L0002: PRINT           " swelling and breaking waves over (under?) "
       PRINT_OBJ       "your head"
       PRINT_CHAR      '.'
       RTRUE           

Routine R0446, 0 locals ()

       JE              G00,#72 [FALSE] L0002
       PRINT           "You"
       CALL            R0302 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0303 (#c0,G00) -> -(SP)
       PRINT           " drop all you are carrying and"
L0001: PRINT           " creep out over the waves"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #32
L0002: PRINT           "You inch back down to"
       PRINT_PADDR     G7e
       RET             #72

Routine R0447, 1 local (0000)

       JZ              L00 [TRUE] L0001
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT           "A "
       PRINT_OBJ       "stub of rope"
       PRINT           ", roughly cut, swings rudely over the waves."
       TEST_ATTR       "anchor",#0d [FALSE] RTRUE
       PRINT           " The line holding the sea anchor has been cut!"
       RTRUE           
L0001: CALL            R0346 (#8a) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT_PADDR     G75
       PRINT_RET       "quite reach it."

Routine R0448, 0 locals ()

       JE              G80,#65 [FALSE] RFALSE
       PRINT_PADDR     G76
       RTRUE           

Routine R0449, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "The deck swings far below as you cling to"
       CALL            R0003 (#de) -> -(SP)
       PRINT           " in the wind."
       PRINT_PADDR     Gac
       JE              G6f,#72 [FALSE] RTRUE
       PRINT           " Farther up"
       CALL            R0003 (#de) -> -(SP)
       PRINT           " is a small platform."
       RTRUE           

Routine R0450, 0 locals ()

       JE              G80,#6a [FALSE] L0001
       PRINT_RET       "The only thing rigging is good for is climbing."
L0001: JE              G80,#1e [FALSE] L0002
       CALL            R0300 (#16) -> -(SP)
       RTRUE           
L0002: JE              G80,#20 [FALSE] L0003
       CALL            R0300 (#15) -> -(SP)
       RTRUE           
L0003: JE              G80,#38 [FALSE] RFALSE
       PRINT           "The mast stands tall and powerful, shrouded in"
       CALL            R0008 (#de) -> -(SP)
       RET_POPPED      

Routine R0451, 0 locals ()

       RANDOM          #64 -> -(SP)
       JL              #28,(SP)+ [TRUE] RFALSE
       PRINT_PADDR     Ge8
       CALL            R0001 (G54) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       RFALSE          

Routine R0452, 2 locals (0001, 0000)

       CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       STORE           L01,#01
L0001: JZ              L00 [TRUE] L0004
       CALL            R0023 (#837a,#0f) -> -(SP)
       INC             Gbb
       JE              Gbb,#0a [FALSE] L0002
       PRINT_PADDR     Ge8
       LOADW           G0f,Gbb -> -(SP)
       PRINT_PADDR     (SP)+
       CALL            R0289 (S324) -> -(SP)
       RET_POPPED      
L0002: JZ              L01 [TRUE] L0003
       JE              Gbb,#08 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       PRINT_RET       "The crash of surf is increasing in volume. You'd best
find out what's going on!"
L0003: PRINT_PADDR     Ge8
       LOADW           G0f,Gbb -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       RTRUE           
L0004: TEST_ATTR       "anchor",#0d [FALSE] RTRUE
       CALL            R0022 (#837a) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       CALL            R0023 (#837a,#02) -> -(SP)
       CALL            R0452 (#00) -> -(SP)
       RET_POPPED      
L0005: NEW_LINE        
       PRINT_PADDR     Ge8
       LOADW           G0f,Gbb -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_CHAR      '.'
       RTRUE           

Routine R0453, 1 local (0000)

       JIN             "it","cask" [FALSE] L0001
       ADD             Ge5,G1c -> L00
       JUMP            L0003
L0001: JIN             "it","skiff" [TRUE] L0002
       STORE           L00,#00
       JUMP            L0003
L0002: ADD             G47,G1c -> L00
L0003: JE              G1c,#ffff [FALSE] L0008
       PRINT_PADDR     Ge8
       PRINT           "The current pulls you in towards the island."
       JE              G00,#59 [FALSE] L0004
       NEW_LINE        
       NEW_LINE        
       INSERT_OBJ      "skiff","Lagoon"
       CALL            R0284 (#34) -> -(SP)
       CALL            R0169 -> -(SP)
       JUMP            L0008
L0004: JL              L00,#02 [FALSE] L0006
       JE              G00,#63 [TRUE] L0006
       STORE           L00,#01
       CALL            R0020 (#83cd) -> -(SP)
       PRINT           " With a scrape,"
       GET_PARENT      "it" -> -(SP)
       CALL            R0003 ((SP)+) -> -(SP)
       PRINT           " lodges in the sand"
       PRINT_PADDR     G51
       NEW_LINE        
       JIN             "it","cask" [FALSE] L0005
       INSERT_OBJ      "cask","Shallows"
       CALL            R0284 (#5d) -> -(SP)
       JUMP            L0008
L0005: JIN             "it","skiff" [FALSE] L0008
       INSERT_OBJ      "skiff","Shallows"
       CALL            R0284 (#34) -> -(SP)
       JUMP            L0008
L0006: JE              G00,#94 [FALSE] RTRUE
       NEW_LINE        
       JZ              Ge7 [FALSE] L0007
       CALL            R0169 -> -(SP)
       JUMP            L0008
L0007: STORE           Ge7,#00
L0008: STORE           G1c,#ffff
       JIN             "it","cask" [FALSE] L0009
       STORE           Ge5,L00
       RTRUE           
L0009: JIN             "it","skiff" [FALSE] RTRUE
       STORE           G47,L00
       RTRUE           

Routine R0454, 2 locals (0000, 0000)

       JZ              L00 [TRUE] L0003
       JE              L00,#09 [TRUE] RTRUE
       JE              L00,#05 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       TEST_ATTR       "skiff",#13 [FALSE] L0001
       CALL            R0004 (#34) -> -(SP)
       JUMP            L0002
L0001: SET_ATTR        "skiff",#13
       PRINT           "A "
       PRINT_OBJ       "skiff"
L0002: PRINT           " nods in the waves, its oars jerking around in the
current."
       RTRUE           
L0003: JE              G80,#38 [FALSE] L0004
       CALL            R0004 (#34) -> -(SP)
       PRINT           " is large enough to carry several men, but light enough
that you feel able to row it"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#5b [FALSE] L0007
       CLEAR_ATTR      "pair of oars",#09
       JIN             "it","skiff" [FALSE] L0005
       CALL            R0282 -> -(SP)
       JUMP            L0006
L0005: PRINT           "In"
       CALL            R0003 (#34) -> -(SP)
       PRINT           " is"
       CALL            R0278 (#34) -> -(SP)
       PRINT_PADDR     G51
L0006: SET_ATTR        "pair of oars",#09
       RTRUE           
L0007: JE              G80,#54 [TRUE] L0008
       JE              G80,#71 [FALSE] L0009
       JE              Gcf,#60 [FALSE] L0009
L0008: PRINT_PADDR     Gd6
       RTRUE           
L0009: JE              G80,#a2 [FALSE] L0011
       JE              G00,#59 [FALSE] L0010
       CALL            R0456 -> -(SP)
       RET_POPPED      
L0010: PRINT_PADDR     G90
       PRINT_RET       "to moor it to!"
L0011: JE              G80,#7a [FALSE] L0014
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#34 [FALSE] L0013
       JE              G00,#49 [FALSE] L0012
       CALL            R0357 (S243,#34) -> -(SP)
       RET_POPPED      
L0012: PRINT_PADDR     G08
       PRINT           "specify a "
       PRINT_OBJ       "direction"
       PRINT_PADDR     G51
       RTRUE           
L0013: CALL            R0357 (S148,#34) -> -(SP)
       RET_POPPED      
L0014: JE              G80,#21 [FALSE] L0016
       JE              G00,#94 [FALSE] L0015
       PRINT_PADDR     S190
       RTRUE           
L0015: JE              G00,#59 [FALSE] RFALSE
       CALL            R0456 -> -(SP)
       RET_POPPED      
L0016: JE              G80,#32 [FALSE] RFALSE
       JE              Gcf,#34 [FALSE] RFALSE
       CALL            R0018 (#31,G6e,#34) -> -(SP)
       RTRUE           

Routine R0455, 0 locals ()

       JE              G80,#77,#6a [FALSE] RFALSE
       PRINT           "They are fastened to"
       CALL            R0003 (#34) -> -(SP)
       PRINT           " with metal oarlocks"
       PRINT_PADDR     G51
       RTRUE           

Routine R0456, 0 locals ()

       CALL            R0020 (#83cd) -> -(SP)
       STORE           Gd3,#01
       PRINT           "You tie"
       CALL            R0003 (#34) -> -(SP)
       PRINT           " to the end of"
       CALL            R0003 (#4e) -> -(SP)
       PRINT           ", then climb partway up it"
       PRINT_PADDR     G51
       NEW_LINE        
       INSERT_OBJ      "it",G00
       INSERT_OBJ      "skiff","By the Ship"
       CALL            R0284 (#b2) -> -(SP)
       RET_POPPED      

Routine R0457, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       INSERT_OBJ      "it","skiff"
       RTRUE           
L0001: JE              L00,#03 [FALSE] L0005
       PRINT           "You are floating in a small skiff "
       JG              Gbb,#04 [FALSE] L0003
       JL              Gbb,#09 [FALSE] L0003
       PRINT           "at the stern of"
       CALL            R0003 (#67) -> -(SP)
       PRINT           ", "
       JE              Gbb,#07,#08 [FALSE] L0002
       PRINT           "at the far edge of"
       JUMP            L0004
L0002: JE              Gbb,#05,#06 [FALSE] L0004
       PRINT           "in the middle of"
       JUMP            L0004
L0003: PRINT           "in"
L0004: PRINT           " the lagoon."
       JZ              G9b [TRUE] RTRUE
       PRINT           " A rope ladder, frayed ends dripping water, hangs down
from the poop deck."
       RTRUE           
L0005: JE              L00,#06 [FALSE] RFALSE
       CALL            R0022 (#83cd) -> -(SP)
       JZ              (SP)+ [FALSE] RFALSE
       STORE           G1c,#00
       CALL            R0023 (#83cd,#ffff) -> -(SP)
       RET_POPPED      

Routine R0458, 2 locals (0000, 0000)

       JE              L00,#03 [FALSE] L0008
       PRINT           "You are "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#5d [FALSE] L0001
       PRINT           "crouched in a cask"
       STORE           L01,Ge5
       JUMP            L0002
L0001: PRINT           "sitting in a skiff"
       STORE           L01,G47
L0002: PRINT           " on the lagoon of "
       PRINT_OBJ       "St. Sinistra"
       SUB             Gbb,L01 -> -(SP)
       JL              (SP)+,#02 [FALSE] L0004
       PRINT           ". You are quite near"
       TEST_ATTR       "Helena Louise",#0d [FALSE] L0003
       CALL            R0003 (#24) -> -(SP)
       JUMP            L0007
L0003: CALL            R0003 (#67) -> -(SP)
       JUMP            L0007
L0004: SUB             #0a,L01 -> -(SP)
       JL              (SP)+,#05 [FALSE] L0005
       PRINT           ". The crash of surf hitting"
       CALL            R0003 (#24) -> -(SP)
       PRINT           " is quite loud"
       JUMP            L0007
L0005: JL              L01,#03 [FALSE] L0006
       PRINT           ". Music floats down to the water, mingling with the
distant roar of the sea"
       JUMP            L0007
L0006: PRINT           ". The jungle looms gray-green in the light of the full
moon"
L0007: PRINT_CHAR      '.'
       RTRUE           
L0008: JE              L00,#06 [FALSE] RFALSE
       JE              G80,#58 [TRUE] RFALSE
       STORE           Ge7,#01
       RFALSE          

Routine R0459, 0 locals ()

       JE              G80,#81 [FALSE] L0017
       JZ              Gcf [FALSE] L0001
       REMOVE_OBJ      "stone"
       CALL            R0004 (#8f) -> -(SP)
       PRINT           ", unaimed, flies into the air, arcing up and into the
sea"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G6e,#58 [FALSE] L0002
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0002: GET_PROP        G6e,#10 -> -(SP)
       JL              (SP)+,#05 [FALSE] L0003
       PRINT           "You don't trust your aim to hit something that small"
       PRINT_PADDR     G51
       RTRUE           
L0003: JIN             "stone","garter" [TRUE] L0004
       PRINT_PADDR     G08
       PRINT           "put"
       CALL            R0003 (#8f) -> -(SP)
       PRINT           " into"
       CALL            R0008 (#58) -> -(SP)
       RET_POPPED      
L0004: TEST_ATTR       G6e,#05 [FALSE] L0005
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0005: JE              G6e,#0f [FALSE] L0006
       PRINT_PADDR     G95
       RTRUE           
L0006: JE              G6e,#b1 [FALSE] L0007
       PRINT_PADDR     S047
       RTRUE           
L0007: JE              G6e,#5b [FALSE] L0008
       CALL            R0017 (#08,Gcf) -> -(SP)
       RTRUE           
L0008: JE              G6e,#47,#67 [FALSE] L0009
       PRINT_RET       "That is too far away."
L0009: JE              G6e,#be [FALSE] L0010
       INSERT_OBJ      "garter",G00
       PRINT           "You falter, dropping the makeshift sling. Your heart
rules too well"
       PRINT_PADDR     G51
       RTRUE           
L0010: PRINT           "You pull"
       CALL            R0003 (#58) -> -(SP)
       PRINT           " taut, aim, and let fly"
       CALL            R0003 (#8f) -> -(SP)
       PRINT           ". "
       SET_ATTR        "stone",#11
       INSERT_OBJ      "stone",G00
       JE              G6e,#42 [FALSE] L0011
       JL              G06,#05 [TRUE] L0012
L0011: JE              G6e,#08 [FALSE] L0013
       JL              G06,#07 [FALSE] L0013
L0012: PRINT           "It clatters onto the rocks, short of the mark"
       PRINT_PADDR     G51
       RTRUE           
L0013: TEST_ATTR       G6e,#1f [FALSE] L0016
       NEW_LINE        
       PRINT_PADDR     Ge8
       PRINT           "He ducks as it whirs past his ear"
       JE              G6e,#08 [FALSE] L0014
       SET_ATTR        "your father",#05
       INC             G01
       PRINT           ". Papa, creeping unnoticed up the stairs, leaps and
wrests the gun from his grip, toppling all three, father, pirate and gun, off
the cliff. Lucy screams as the struggling pair fall to the rocks below.
   You run to Nicholas. You have lost"
       CALL            R0003 (#39) -> -(SP)
       PRINT           ", but Nicholas's embrace remains, comforting,
shielding, a world of love"
       PRINT_PADDR     G51
       CALL            R0612 -> -(SP)
       RET_POPPED      
L0014: PRINT           " to disappear with a quiet thud into the sand"
       JE              G6e,#39 [FALSE] L0015
       PRINT           ". He looks a bit surprised, but nods encouragingly"
L0015: PRINT_PADDR     G51
       RTRUE           
L0016: PRINT           "It bounces off"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0017: JE              G80,#6a [FALSE] L0018
       TEST_ATTR       "stone",#11 [FALSE] L0018
       CALL            R0356 (#8f) -> -(SP)
       RET_POPPED      
L0018: JE              G80,#9e,#9c [FALSE] L0022
       JE              G6e,#8f [FALSE] L0022
       JZ              Gcf [FALSE] L0019
       CALL            R0018 (#81,#8f) -> -(SP)
       RTRUE           
L0019: CALL            R0295 (Gcf) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0020: TEST_ATTR       Gcf,#05 [FALSE] L0021
       CALL            R0370 -> -(SP)
       RTRUE           
L0021: INSERT_OBJ      "stone",G00
       PRINT           "You hurl"
       CALL            R0003 (#8f) -> -(SP)
       PRINT           ", but it falls far short of"
       CALL            R0008 (Gcf) -> -(SP)
       RET_POPPED      
L0022: JE              G80,#16 [FALSE] L0024
       JIN             "stone","garter" [TRUE] L0023
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0023: CALL            R0018 (#81,G6e,#8f) -> -(SP)
       RTRUE           
L0024: JE              G80,#38 [FALSE] RFALSE
       PRINT           "It is a pretty little stone"
       PRINT_PADDR     G51
       RTRUE           

Routine R0460, 1 local (0000)

       JE              L00,#03 [FALSE] L0007
       PRINT           "You are "
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,G00 [FALSE] L0003
       JZ              G99 [TRUE] L0001
       PRINT           "soaking your shoes and stockings in"
       JUMP            L0006
L0001: TEST_ATTR       "linen chemise",#06 [TRUE] L0002
       PRINT           "soaking the hem of your chemise in"
       JUMP            L0006
L0002: PRINT           "holding your skirts high over"
       JUMP            L0006
L0003: GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#5d [FALSE] L0004
       PRINT           "crouched in"
       CALL            R0003 (#5d) -> -(SP)
       JUMP            L0005
L0004: PRINT           "sitting in"
       CALL            R0003 (#34) -> -(SP)
L0005: PRINT           " in"
L0006: PRINT           " the warm, lapping waves of the shallows. A white sand
beach is west of you."
       RTRUE           
L0007: JE              L00,#01 [FALSE] RFALSE
       JE              G80,#82,#81 [FALSE] RFALSE
       CALL            R0293 (G6e) -> -(SP)
       JE              (SP)+,G00,#3c [FALSE] L0008
       CALL            R0293 (Gcf) -> -(SP)
       JE              (SP)+,G00,#3c [TRUE] RFALSE
L0008: PRINT_RET       "Your aim is too unsure from this distance. Go to the
beach."

Routine R0461, 0 locals ()

       JE              G00,#63 [FALSE] L0004
       JIN             "it","skiff" [FALSE] L0002
       JE              G35,#17 [FALSE] L0001
       CALL            R0357 (S199,#34) -> -(SP)
       RFALSE          
L0001: JE              G35,#1a [FALSE] RFALSE
       PRINT_PADDR     G08
       PRINT           "row that way"
       PRINT_PADDR     G51
       RFALSE          
L0002: JE              G35,#17 [FALSE] L0003
       RET             #49
L0003: PRINT           "You wade in the shallow water, unable to swim"
       PRINT_PADDR     G51
       RFALSE          
L0004: JE              G35,#17 [FALSE] L0005
       PRINT           "You're going that way anyway"
       PRINT_PADDR     G51
       RFALSE          
L0005: PRINT_PADDR     G08
       PRINT           "row that way"
       PRINT_PADDR     G51
       RFALSE          

Routine R0462, 0 locals ()

       JE              G80,#38 [FALSE] RFALSE
       CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT_PADDR     G0e
       PRINT_OBJ       "reefs"
       PRINT           " from here"
       PRINT_PADDR     G51
       RTRUE           
L0001: PRINT           "A line of reefs separates the lagoon from the sea
beyond"
       PRINT_PADDR     G51
       RTRUE           

Routine R0463, 1 local (0000)

       JZ              L00 [TRUE] L0012
       JE              L00,#09 [TRUE] RTRUE
       JE              G00,#43 [TRUE] L0001
       PRINT_PADDR     Ge8
L0001: JE              G00,#50 [FALSE] L0002
       PRINT_PADDR     G84
       PRINT           "is studying you"
       JUMP            L0011
L0002: JE              G00,#4d [FALSE] L0003
       PRINT_PADDR     G84
       PRINT           "stands protectively a few steps behind you"
       JUMP            L0011
L0003: JE              G00,#a9 [FALSE] L0004
       PRINT_OBJ       "Captain Jamison"
       PRINT           " is adjusting his clothes"
       JUMP            L0011
L0004: CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       PRINT           "Battered and bruised, Nicholas can hardly stand"
       JUMP            L0011
L0005: TEST_ATTR       "Captain Jamison",#05 [FALSE] L0006
       PRINT_PADDR     G2e
       JUMP            L0011
L0006: JE              G00,#49 [FALSE] L0009
       PRINT           "Nicholas "
       TEST_ATTR       "Lafond",#05 [FALSE] L0007
       PRINT           "walks toward you, smiling wearily"
       JUMP            L0011
L0007: JG              G06,#04 [FALSE] L0008
       PRINT           "and Lafond are fighting"
       JUMP            L0011
L0008: PRINT           "stands alone at one edge of the beach"
       JUMP            L0011
L0009: CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       PRINT           "Nicholas stands, half-supported by Lucy and"
       CALL            R0003 (#39) -> -(SP)
       JUMP            L0011
L0010: JE              G00,#a5 [FALSE] RFALSE
       PRINT           "Nicholas looks quite rakish, in red velvet and white,
his rapier flashing in the light of the "
       PRINT_OBJ       "chandelier"
L0011: PRINT_CHAR      '.'
       RTRUE           
L0012: JE              #be,Gb9 [FALSE] L0037
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       JE              G00,#6d,#1c [FALSE] L0013
       PRINT_PADDR     G86
       RTRUE           
L0013: JE              G00,#49 [FALSE] L0017
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       TEST_ATTR       "Lafond",#05 [TRUE] L0014
       JG              G06,#04 [FALSE] L0014
       PRINT_PADDR     G86
       RTRUE           
L0014: JE              G80,#42,#5b,#46 [TRUE] L0015
       JE              G80,#20 [FALSE] L0016
L0015: CALL            R0288 (S183) -> -(SP)
       RET_POPPED      
L0016: CALL            R0614 -> -(SP)
       RET_POPPED      
L0017: TEST_ATTR       "Captain Jamison",#05 [FALSE] L0018
       PRINT_PADDR     G12
       RTRUE           
L0018: JE              G80,#27 [FALSE] L0019
       JE              G6e,#0f [FALSE] L0019
       CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] L0019
       TEST_ATTR       "your father",#13 [FALSE] L0019
       STORE           G30,#01
       PRINT_RET       ""I will follow you anywhere you please, but first I
must kill Lafond.""
L0019: JE              G80,#04 [FALSE] L0024
       JE              G6e,#be,#88 [FALSE] L0020
       PRINT_RET       "He smiles at you warmly, his eyes full of passion."
L0020: JE              G6e,#42 [FALSE] L0023
       CALL            R0022 (#93de) -> -(SP)
       JZ              (SP)+ [FALSE] L0021
       CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] L0022
L0021: REMOVE_OBJ      "Captain Jamison"
       CALL            R0368 -> -(SP)
       PRINT_RET       "He looks at you in disgust and walks away."
L0022: PRINT_RET       ""Don't jest," he says."
L0023: PRINT_RET       "He isn't all that interested."
L0024: JE              G80,#44 [FALSE] L0026
       TEST_ATTR       "Beach",#13 [FALSE] L0025
       STORE           Gc9,#04
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "He catches your arm, "Nay, can you mean that?""
L0025: PRINT_RET       ""I have business to attend to here, and have no
intention of leaving.""
L0026: JE              G80,#75 [FALSE] L0027
       JE              G6e,#ce [FALSE] L0027
       CALL            R0018 (#99,#0f,#ce) -> -(SP)
       RTRUE           
L0027: JE              G80,#99 [FALSE] L0035
       JE              G6e,#0f [FALSE] L0035
       JE              Gcf,#ce [FALSE] L0028
       PRINT           ""Your father wrote it for you.""
       NEW_LINE        
       JUMP            L0034
L0028: JE              Gcf,#57 [FALSE] L0029
       STORE           Gb9,#c0
       CALL            R0018 (#6a,#57) -> -(SP)
       RTRUE           
L0029: JE              Gcf,#42 [FALSE] L0030
       PRINT           ""I abhor the fiend." He clenches a fist."
       NEW_LINE        
       JUMP            L0034
L0030: JE              Gcf,#39 [FALSE] L0033
       CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] L0031
       STORE           G30,#01
       LOADW           G8d,#00 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       JUMP            L0034
L0031: CALL            R0022 (#93de) -> -(SP)
       JZ              (SP)+ [TRUE] L0032
       PRINT           ""Let's not discuss"
       CALL            R0003 (#39) -> -(SP)
       PRINT           " just now," he says, kissing your neck"
       PRINT_PADDR     G51
       JUMP            L0034
L0032: PRINT           ""I admire and respect your father greatly.""
       NEW_LINE        
       JUMP            L0034
L0033: CALL            R0614 -> -(SP)
L0034: CALL            R0301 -> -(SP)
       RET_POPPED      
L0035: JE              G80,#6a [FALSE] L0036
       JE              G6e,#9e [FALSE] L0036
       STORE           Gb9,#c0
       CALL            R0018 (#3b,#9e,#be) -> -(SP)
       STORE           Gb9,#be
       RTRUE           
L0036: CALL            R0600 (#be) -> L00
       JZ              L00 [TRUE] RFALSE
       JE              L00,#08 [TRUE] RFALSE
       RTRUE           
L0037: JE              G80,#38 [FALSE] L0041
       TEST_ATTR       "Captain Jamison",#05 [FALSE] L0039
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0038
       PRINT_RET       "He lies in a pool of blood."
L0038: PRINT_PADDR     G2e
       RTRUE           
L0039: JE              G00,#a9,#a5,#43 [FALSE] L0040
       JZ              Gb3 [FALSE] L0040
       PRINT           "Jamison is finely dressed, in red velvet coat and full
breeches, with a long gold embroidered vest and waterfalls of white lace at his
neck, wrists and boottops. His rapier is bedecked with a fringed gold ribbon.
He wears no wig, his unpowdered hair tied neatly at the back of his neck"
       PRINT_PADDR     G51
       RTRUE           
L0040: PRINT           "Jamison carries an aura of power unusual in men so slim
and tall, the strength of a willow in his hard seaworn body, straight
shouldered and resilient. "
       PRINT_PADDR     G28
       PRINT           "A jagged scar etches one cheek, harsh against the
warmth of his limpid blue eyes"
       PRINT_PADDR     G51
       RTRUE           
L0041: JE              G80,#52,#4a [FALSE] L0042
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0042
       STORE           Gb9,#be
       CALL            R0018 (#46,#1f) -> -(SP)
       STORE           Gb9,#c0
       RTRUE           
L0042: TEST_ATTR       "Captain Jamison",#05 [FALSE] L0050
       JE              G80,#3b [FALSE] L0043
       JE              G6e,#0b [FALSE] L0043
       CALL            R0568 -> -(SP)
       RET_POPPED      
L0043: JE              G80,#9e,#32,#18 [FALSE] L0044
       JE              G6e,#19 [FALSE] L0044
       PRINT_RET       "He sneezes involuntarily, unconscious."
L0044: JE              G80,#2b,#4e,#16 [FALSE] L0045
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0045: JE              G80,#63 [FALSE] L0046
       PRINT_RET       "He's too heavy."
L0046: JE              G80,#4b,#4f [FALSE] L0047
       PRINT           "You press your lips to his cold mouth. "
       PRINT_PADDR     G12
       RTRUE           
L0047: JE              G80,#13,#99,#98 [FALSE] L0048
       JE              G6e,#be [FALSE] L0049
L0048: CALL            R0346 (#be) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0049: PRINT_PADDR     G12
       RTRUE           
L0050: JE              G80,#3b [FALSE] L0054
       JE              G6e,#0b [FALSE] L0051
       CALL            R0568 -> -(SP)
       RET_POPPED      
L0051: JE              G6e,#ba [FALSE] L0052
       PRINT_OBJ       "Captain Jamison"
       PRINT           " returns"
       CALL            R0003 (#ba) -> -(SP)
       PRINT           " to you"
       PRINT_PADDR     G51
       RTRUE           
L0052: JE              G6e,#9e [FALSE] L0053
       PRINT_RET       "He prevents you, smiling. "It looks much too pretty
against your hair. Keep it.""
L0053: JE              G6e,#45 [FALSE] RFALSE
       CALL            R0614 -> -(SP)
       RET_POPPED      
L0054: JE              G80,#ac [FALSE] L0057
       JE              Gcf,#0b [TRUE] L0055
       PRINT_PADDR     G75
       PRINT_RET       "revive him with that!"
L0055: CALL            R0295 (#0b) -> -(SP)
       JZ              (SP)+ [TRUE] L0056
       CALL            R0568 -> -(SP)
       RET_POPPED      
L0056: PRINT_OBJ       "Captain Jamison"
       PRINT           " is not asleep"
       PRINT_PADDR     G51
       RTRUE           
L0057: JE              G80,#a9 [FALSE] L0059
       JE              G81,"free" [FALSE] L0059
       JIN             "Captain Jamison","pair of manacles" [FALSE] L0058
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "You have the key, maybe?"
L0058: PRINT           "Jamison is free enough as it is"
       PRINT_PADDR     G51
       RTRUE           
L0059: JE              G80,#2b,#4e,#16 [FALSE] L0062
       PRINT           ""Please, I'm not trying to hurt you,""
       JE              G00,#50 [FALSE] L0060
       PRINT           " the stranger"
       JUMP            L0061
L0060: CALL            R0003 (#be) -> -(SP)
L0061: PRINT           " says, casually deflecting the blow"
       PRINT_PADDR     G51
       RTRUE           
L0062: JE              G80,#4f [FALSE] L0069
       JE              Gb9,#c0 [FALSE] L0069
       JE              G00,#50,#4d [FALSE] L0063
       PRINT_RET       "You are not so pert as to kiss a stranger, and a
pirate, at that!"
L0063: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0064
       PRINT           "That thought has occurred to you before, but now does
not seem appropriate"
       PRINT_PADDR     G51
       RTRUE           
L0064: JE              G00,#43 [FALSE] L0065
       STORE           G3a,#01
       PRINT           "You lean into his arms, face lifted"
       PRINT_PADDR     G51
       RTRUE           
L0065: CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [FALSE] L0066
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0067
L0066: PRINT           "You would only distract"
       CALL            R0008 (#be) -> -(SP)
       RET_POPPED      
L0067: CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] L0068
       PRINT           "In view of all"
       CALL            R0003 (#6e) -> -(SP)
       PRINT           "s, you exchange only a peck on the cheek"
       PRINT_PADDR     G51
       RTRUE           
L0068: PRINT           "He kisses you back"
       PRINT_PADDR     G51
       RTRUE           
L0069: JE              G80,#99 [FALSE] L0074
       CALL            R0350 ("librar",#47) -> -(SP)
       JZ              (SP)+ [FALSE] L0070
       CALL            R0350 ("cell",#1a) -> -(SP)
       JZ              (SP)+ [FALSE] L0070
       JE              Gcf,#02,#37 [FALSE] L0071
L0070: PRINT_RET       "He nods. "That area is guarded well.""
L0071: JE              Gcf,#39 [FALSE] L0073
       JIN             "your father","Cell" [FALSE] L0072
       PRINT_RET       "He smiles fondly at your reminiscing. "I never knew my
father -- he died when I was a boy.""
L0072: STORE           G30,#01
       PRINT_RET       ""Such bravery joined with such beauty!""
L0073: JE              Gcf,#08 [FALSE] RFALSE
       TEST_ATTR       "Beach",#13 [FALSE] RFALSE
       PRINT_RET       ""Crulley?! God's blood!""
L0074: JE              G80,#6b,#4b [FALSE] L0075
       JE              G00,#43 [FALSE] L0075
       CALL            R0018 (#4f,#be) -> -(SP)
       RTRUE           
L0075: JE              G80,#2a [FALSE] L0077
       JE              G00,#a5 [FALSE] L0076
       JE              G98,#be [FALSE] L0076
       PRINT_PADDR     S069
       RTRUE           
L0076: CALL            R0022 (#914b) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       INSERT_OBJ      "it","Ballroom"
       INSERT_OBJ      "Captain Jamison","Ballroom"
       STORE           G98,#be
       PRINT           "You whirl back out to"
       PRINT_PADDR     S039
       PRINT_PADDR     G51
       RTRUE           
L0077: JE              G80,#83 [FALSE] RFALSE
       JE              G6e,#6c [FALSE] RFALSE
       JIN             "Captain Jamison","pair of manacles" [FALSE] RFALSE
       PRINT_RET       "Nick smiles dazzlingly, "Of course! Now pick the
locks.""

Routine R0464, 0 locals ()

       JZ              Gb3 [TRUE] L0001
       JE              G00,#a5 [FALSE] L0001
       RET             #bf
L0001: TEST_ATTR       "Captain's Quarters",#13 [FALSE] RFALSE
       RET             #08

Routine R0465, 0 locals ()

       STORE           Gc9,#05
       CALL            R0023 (#5073,#01) -> -(SP)
       STORE           G10,#be
       PRINT_PADDR     Ge8
       JE              Gc6,#01 [FALSE] L0005
       INSERT_OBJ      "Captain Jamison",G00
       CALL            R0023 (#8ced,#ffff) -> -(SP)
       JL              G6b,#02 [FALSE] L0003
       CALL            R0020 (#c510) -> -(SP)
       SET_ATTR        "Crulley",#05
       PRINT_OBJ       "Crulley"
       PRINT           " drags you, despite your resistance, to"
       GET_PARENT      "it" -> -(SP)
       JE              (SP)+,#d5 [FALSE] L0001
       INSERT_OBJ      "it",G00
       PRINT           " your feet"
       JUMP            L0002
L0001: PRINT           "wards him"
L0002: PRINT           ". Then suddenly he grunts, stiffens and slumps into
your arms. "
       PRINT_PADDR     G9e
       PRINT           ".
   A tall form blocks the shattered door, one fist still raised from striking
your attacker"
       JUMP            L0004
L0003: CALL            R0004 (#d9) -> -(SP)
       PRINT           " creaks slightly as a tall form bends through its
smashed remains. "You seem to have this situation well in hand," timbers a
well-bred voice"
L0004: PRINT           ". You catch a glimpse of the hard masculinity of his
broad shoulders, the implied power in the scar that etches the stranger's jaw,
and feel tremors course through your veins. Then you realize how ragged are his
shirt, patched breeches and high boots. Intuitively, you understand -- he is
the dreaded Falcon, scourge of the sea! Alas, your fate is sealed. Resigned,
you meet his sea-blue eyes."
       NEW_LINE        
       JUMP            L0012
L0005: JE              Gc6,#02 [FALSE] L0006
       INSERT_OBJ      "missive","it"
       CALL            R0025 (#ce) -> -(SP)
       PRINT_PADDR     S171
       PRINT           "the stranger bows. "Well met, my lady." His accent is
cultured, his smile vibrant. "I am Captain Nicholas Jamison, known in these
waters as 'The Falcon'. Your father has sent me." He chuckles at your glare of
distrust. "Yes, you are like your sire. You needn't believe me untried -- I
carry this." He hands you"
       CALL            R0007 (#ce) -> -(SP)
       JUMP            L0012
L0006: JE              Gc6,#03 [FALSE] L0008
       SET_ATTR        "door",#10
       PRINT_PADDR     G84
       PRINT           "glances around the empty room, then notices the coffer"
       JIN             "coffer","it" [FALSE] L0007
       PRINT           " in your arms"
L0007: INSERT_OBJ      "coffer","Captain Jamison"
       PRINT           ". "Davis's safety box -- my men were hoping I'd find
it." He takes it and nudges the unconscious man on the floor, "I wonder how "
       PRINT_OBJ       "Crulley"
       PRINT           " knew you were here? Just his bad luck? He'll be
flogged when he wakes."
   The pirate bows. "My lady, may I offer my protection and my ship until your
father is free?""
       NEW_LINE        
       JUMP            L0012
L0008: JE              Gc6,#04,#05 [FALSE] L0012
       JE              Gc6,#04 [FALSE] L0009
       JZ              G3a [FALSE] L0009
       STORE           G10,#be
       PRINT           ""We haven't time to waste. Will you come willingly or
not?" says"
       CALL            R0008 (#be) -> -(SP)
       JUMP            L0012
L0009: CALL            R0020 (#8ced) -> -(SP)
       CALL            R0020 (#836f) -> -(SP)
       JE              G3a,#01 [FALSE] L0010
       PRINT           "He chuckles. "Brave lady, to trust a stranger -- and a
pirate. Who knows, perhaps I forged your father's signature? Keep by my side as
we go to my ship -- few sailors respect a lady's dignity." He helps you
through"
       CALL            R0008 (#d9) -> -(SP)
       NEW_LINE        
       JUMP            L0011
L0010: PRINT           "He sighs, "You share"
       CALL            R0003 (#39) -> -(SP)
       PRINT           "'s stubborn streak. I wished not to do this." He leaps
to your side, hauling you up onto his shoulder, and carries you out of the
room."
       CALL            R0003 (#be) -> -(SP)
       PRINT           " sets you on your feet again on the horror of the deck"
       PRINT_PADDR     G51
       NEW_LINE        
L0011: SET_ATTR        "Captain Jamison",#09
       INSERT_OBJ      "Captain Jamison","Deck"
       CALL            R0284 (#4d) -> -(SP)
L0012: INC             Gc6
       RET             Gc6

Routine R0466, 0 locals ()

       PRINT_PADDR     Ge8
       LOADW           G36,Gc6 -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       JE              Gc6,#02 [FALSE] L0001
       REMOVE_OBJ      "Captain Jamison"
       CALL            R0023 (#8fba,#08) -> -(SP)
       JUMP            L0002
L0001: CALL            R0023 (#8fa6,#01) -> -(SP)
L0002: INC             Gc6
       RET             Gc6

Routine R0467, 0 locals ()

       CALL            R0022 (#c591) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G00,#7f [FALSE] L0002
L0001: CALL            R0023 (#8fba,#02) -> -(SP)
       RET_POPPED      
L0002: INSERT_OBJ      "jewelled brooch","it"
       PRINT_PADDR     Ge8
       PRINT           "You hear"
       JE              G00,#a9 [FALSE] L0003
       CALL            R0003 (#2d) -> -(SP)
       PRINT           " scrape"
       JUMP            L0005
L0003: JE              G00,#5c [FALSE] L0004
       CALL            R0003 (#d9) -> -(SP)
       PRINT           " being unbarred"
       JUMP            L0005
L0004: PRINT           " a footstep"
L0005: PRINT           ", "
       TEST_ATTR       "linen chemise",#06 [TRUE] L0006
       PRINT           "turn, and cover "
       PRINT_OBJ       "yourself"
       PRINT           " as best you can with what you are holding, for Jamison
stands there, his eyes burning through your lightweight chemise. He chuckles,
"I am not sorry in the least that I surprised you."
       JUMP            L0008
L0006: JZ              G99 [TRUE] L0007
       PRINT           "and"
       CALL            R0003 (#be) -> -(SP)
       PRINT           "'s startled laugh. "For a moment I thought you were
Matthew, the boy who used to sleep in the cupboard. He ran off last port."
       JUMP            L0008
L0007: PRINT           "and turn to see"
       CALL            R0003 (#be) -> -(SP)
       PRINT           ". "Hello!"
L0008: JE              G00,#a9 [TRUE] L0009
       PRINT           " How did you escape? Don't stutter, I won't lock you up
again -- you are safe as long as you remain below-decks."
L0009: PRINT           " I came down to give you this -- my allotment from"
       CALL            R0003 (#45) -> -(SP)
       PRINT           "." He nods at the box in his arms.
   Jamison starts to pin"
       CALL            R0002 (#6c) -> -(SP)
       PRINT           " on your clothes, but, "Devil take it, the clasp is
broken. I'll have it repaired." He folds the pretty thing into "
       PRINT_OBJ       "your hand"
       PRINT           ". "And I meant to reassure you that if the men suddenly
abandon ship, they are off to help me. Rodney will stay behind with you." He "
       JE              G00,#a9 [FALSE] L0010
       INSERT_OBJ      "coffer",G00
       PRINT           "drops"
       CALL            R0003 (#45) -> -(SP)
       PRINT           " on the floor, smiling in farewell,"
       JUMP            L0011
L0010: INSERT_OBJ      "coffer","it"
       PRINT           "hands"
       CALL            R0003 (#45) -> -(SP)
       PRINT           " to you. "Please return this to my quarters for me,
will you?""
L0011: PRINT           " and walks swiftly "
       JE              G00,#5c [FALSE] L0012
       PRINT           "up the stairs to the deck, barring the door a moment
later"
       JUMP            L0013
L0012: PRINT           "away"
L0013: PRINT_PADDR     G51
       CALL            R0023 (#74d7,#03) -> -(SP)
       CALL            R0023 (#6e2e,#05) -> -(SP)
       RET             #08

Routine R0468, 0 locals ()

       JE              Gc6,#01 [FALSE] L0001
       JE              #a5,G00 [FALSE] L0001
       INSERT_OBJ      "Captain Jamison",G00
       STORE           G06,#01
       CALL            R0023 (#d455,#07) -> -(SP)
       STORE           G98,#be
       STORE           G10,#be
       STORE           Gc9,#0e
       CALL            R0023 (#5073,#02) -> -(SP)
       STORE           G46,#be
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Captain Jamison"
       PRINT           " moves up to you, saying, "May I have this dance?" He
doesn't await an answer, sweeping you out onto"
       PRINT_PADDR     S039
       PRINT_PADDR     G51
       JUMP            L0009
L0001: JE              Gc6,#02 [FALSE] L0004
       STORE           G10,#be
       JZ              G11 [FALSE] L0002
       STORE           G11,#01
       PRINT_PADDR     Ge8
       PRINT_CHAR      '"'
       PRINT_PADDR     Ga3
       PRINT           "smiles suddenly. "Why should I complain? You are quite
safe, since no one expects you here. And you are looking lovely.""
       NEW_LINE        
       JUMP            L0003
L0002: CALL            R0471 -> -(SP)
L0003: JE              G00,#a5 [FALSE] L0009
       PRINT_PADDR     Ge8
       PRINT           "The steps of the dance separate you a moment, as you
twirl around and curtsey to another dancer. You glide back into the captain's
arms"
       PRINT_PADDR     G51
       JUMP            L0009
L0004: JE              Gc6,#03 [FALSE] L0005
       STORE           G10,#be
       CALL            R0471 -> -(SP)
       JE              G00,#a5 [FALSE] L0009
       PRINT_PADDR     Ge8
       PRINT           "Your hands linked tightly with his and held high over "
       PRINT_OBJ       "your head"
       PRINT           "s, a line of dancers files between you and Jamison"
       PRINT_PADDR     G51
       JUMP            L0009
L0005: JE              Gc6,#04 [FALSE] L0006
       STORE           G10,#be
       CALL            R0471 -> -(SP)
       JE              G00,#a5 [FALSE] L0009
       PRINT_PADDR     Ge8
       PRINT           "Together you whirl around the ballroom, his arm snug
around your waist, leading you gracefully, masterfully.
    Nicholas's grip tenses as he nods to a bewigged man staring at you. You
turn, and the man moves on"
       PRINT_PADDR     G51
       JUMP            L0009
L0006: JE              Gc6,#05 [FALSE] RFALSE
       REMOVE_OBJ      "Captain Jamison"
       STORE           G98,#00
       CALL            R0020 (#914b) -> -(SP)
       CALL            R0471 -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "The music ends with a flourish"
       JE              G00,#a5 [FALSE] L0007
       PRINT           " and you pirouette once more before curtseying to
Jamison. As you move"
       JUMP            L0008
L0007: PRINT           ". As he guides you back"
L0008: PRINT           " to the side of"
       PRINT_PADDR     S039
       PRINT           ", Nick adds, "We should separate -- I'm sure I am being
watched. You would be safer aboard"
       CALL            R0003 (#67) -> -(SP)
       PRINT           ". If you slip out the veranda doors, no one will notice
you leaving." He touches "
       PRINT_OBJ       "your hand"
       PRINT           " and dissolves into the crowd"
       PRINT_PADDR     G51
       JE              G00,#a5 [TRUE] L0009
       CALL            R0284 (#a5) -> -(SP)
L0009: INC             Gc6
       RET             Gc6

Routine R0469, 1 local (0000)

       STORE           G67,#01
       PRINT_PADDR     Ge8
       PRINT           "There is a commotion from the west. A woman screams and
a man yells, "Stop, Pirate!" "
       JZ              L00 [FALSE] L0002
       JE              G00,#70 [TRUE] L0002
       CALL            R0295 (#85) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CLEAR_ATTR      "hat",#16
       INSERT_OBJ      "hat","Library"
L0001: PRINT           "You run to the foyer in time to see two dragoons
dragging out the battered frame of"
       CALL            R0003 (#be) -> -(SP)
       JUMP            L0003
L0002: PRINT           "and Jamison is dragged out of the ballroom by two burly
dragoons"
L0003: PRINT_PADDR     G51
       PRINT           "   An officer quiets the guests, "This is the buccaneer
who has been pirating our ships. He had the audacity to come here tonight
intending to assassinate our dear governor. Do not worry, ladies, he was
arrogant enough to come alone." The officer marches after his men. "
       CALL            R0004 (#6e) -> -(SP)
       PRINT           "s return to their banal conversations"
       PRINT_PADDR     G51
       JZ              L00 [FALSE] L0004
       NEW_LINE        
       CALL            R0284 (#70) -> -(SP)
       RET_POPPED      
L0004: CALL            R0023 (#d455,#01) -> -(SP)
       STORE           G98,#42
       PRINT_PADDR     Ge8
       PRINT           "Only the painful grip"
       CALL            R0003 (#42) -> -(SP)
       PRINT_RET       " has on your arm prevents you from swooning away. "Ah,
so that's the way of it," he purrs, noticing your sudden pallor. "All the
better for me." He pulls you unresisting into a dance."

Routine R0470, 1 local (0000)

       JE              G00,#43 [FALSE] RFALSE
       STORE           G10,#be
       JZ              L00 [FALSE] L0001
       PRINT_PADDR     Ge8
L0001: JE              Gc6,#01 [FALSE] L0007
       CALL            R0023 (#93de,#ffff) -> -(SP)
       INSERT_OBJ      "Captain Jamison","Folly"
       PRINT_OBJ       "Captain Jamison"
       PRINT           " enters"
       CALL            R0003 (#69) -> -(SP)
       PRINT           ", stooping to avoid the flowers dangling over the door.
"I thought I heard someone."
       JZ              G11 [FALSE] L0002
       STORE           G11,#01
       PRINT_CHAR      ' '
       PRINT_PADDR     Ga3
       JUMP            L0003
L0002: PRINT           "" Jamison "
L0003: PRINT           "sighs. "What an astonishing girl you are, my dear. "
       TEST_ATTR       "linen chemise",#06 [TRUE] L0004
       PRINT           "If --""
       PRINT_PADDR     G09
       PRINT           ", "somewhat underdressed"
       JUMP            L0006
L0004: JZ              G99 [TRUE] L0005
       PRINT           "And so ingeniously dressed"
       JUMP            L0006
L0005: PRINT           "And looking more lovely than ever"
L0006: PRINT           "." He plucks"
       CALL            R0002 (#9e) -> -(SP)
       PRINT           " from the tangle above the door, and sets it in your
hair. "The beauty of this blossom is nothing to yours.""
       NEW_LINE        
       INSERT_OBJ      "flower","it"
       CLEAR_ATTR      "flower",#09
       SET_ATTR        "flower",#17
       JUMP            L0014
L0007: JE              G3a,#ffff [TRUE] L0008
       JE              Gc6,#06 [FALSE] L0009
L0008: JIN             "Captain Jamison",G00 [FALSE] L0009
       CALL            R0020 (#93de) -> -(SP)
       STORE           G10,#00
       REMOVE_OBJ      "Captain Jamison"
       PRINT           "Jamison backs away from you, smiling wistfully"
       PRINT_CHAR      '.'
       PRINT_PADDR     G58
       JUMP            L0014
L0009: JE              Gc6,#02 [FALSE] L0011
       PRINT           "Catching his breath, Jamison pulls you against him, his
hands circling your waist"
       JIN             "flower","it" [FALSE] L0010
       PRINT           ", crushing"
       CALL            R0003 (#9e) -> -(SP)
       PRINT           " between you"
L0010: PRINT           ". "Darling," he whispers, leaning over you, "oh, my
angel ...""
       NEW_LINE        
       JUMP            L0014
L0011: JE              Gc6,#03 [FALSE] L0012
       STORE           Gc9,#0f
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           ""My lovely," Jamison says huskily. His eyes burn
intently, their blue like the sea on a summer day. A shiver of warmth flows
through you, and you tremble at his touch. The pirate's hands, warm and
exciting, caress you, searing through the thin linen of your chemise. His lips
near yours, his breath softly scented. "May I kiss you?""
       NEW_LINE        
       JUMP            L0014
L0012: JE              Gc6,#04 [FALSE] L0013
       PRINT           "Tender is his kiss, soft his lips as his body presses
hard against you. You drown in the tide of your passion, swept like the sea
against the rocks of the shore."
       NEW_LINE        
       JUMP            L0014
L0013: JE              Gc6,#05 [FALSE] L0014
       REMOVE_OBJ      "Captain Jamison"
       PRINT           "With a pent-up sigh, Nicholas forces himself away from
you. "Now is not the time or the place to advance my suit," he says, wistfully.
"But the night is still young and you are so beautiful! I must be gone, lest I
lose my soul in you.""
       PRINT_PADDR     G58
L0014: INC             Gc6
       RET             Gc6

Routine R0471, 0 locals ()

       PRINT_PADDR     Ge8
       RANDOM          #64 -> -(SP)
       JL              #41,(SP)+ [TRUE] L0002
       JL              Ga0,#03 [FALSE] L0002
       JZ              Ga0 [FALSE] L0001
       JZ              G30 [TRUE] L0001
       CALL            R0001 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       RTRUE           
L0001: LOADW           G8d,Ga0 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       INC             Ga0
       RET             Ga0
L0002: CALL            R0001 (Ga7) -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       RTRUE           

Routine R0472, 1 local (0000)

       JZ              L00 [TRUE] L0001
       JE              G00,#02 [FALSE] RFALSE
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT           "A rapier lies in the half-dark of a corner."
       RTRUE           
L0001: JE              G80,#6a [FALSE] L0004
       TEST_ATTR       "Captain Jamison",#05 [TRUE] L0002
       JIN             "Captain Jamison",G00 [FALSE] L0002
       PRINT_RET       "Jamison prevents you, "This is not a weapon for
ladies.""
L0002: JE              G00,#02 [FALSE] L0003
       JIN             "Crulley","Dungeon" [FALSE] L0003
       TEST_ATTR       "rapier",#13 [TRUE] L0003
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] L0003
       PRINT           "Taken. "
       PRINT_OBJ       "Crulley"
       PRINT_RET       " snorts, "Be careful, you might hurt yer dearie.""
L0003: JIN             "rapier","Cookie" [FALSE] RFALSE
       PRINT_OBJ       "Cookie"
       PRINT_RET       " objects. "It ain't fer a lady.""
L0004: JE              G80,#33,#31,#9c [FALSE] L0006
       JE              Gcf,#81 [TRUE] L0005
       JE              Gcf,#08 [FALSE] L0006
       TEST_ATTR       "Crulley",#0d [FALSE] L0006
L0005: PRINT_RET       "But you might need it later!"
L0006: JE              G80,#38 [FALSE] RFALSE
       PRINT           "Jamison's rapier is a dangerous looking sword with a
narrow pointed blade"
       JE              G00,#50,#4d [TRUE] L0007
       PRINT           ". It is decorated with a big floppy ribbon"
L0007: PRINT_PADDR     G51
       RTRUE           

Routine R0473, 0 locals ()

       JE              G80,#38 [FALSE] RFALSE
       JE              G00,#7b [FALSE] L0001
       CALL            R0018 (#38,#b6) -> -(SP)
       RET_POPPED      
L0001: CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_PADDR     G75
       PRINT           "see it from here"
       PRINT_PADDR     G51
       RTRUE           
L0002: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       JE              G00,#63,#94,#59 [TRUE] L0003
       JE              G00,#b2 [FALSE] L0004
L0003: PRINT           "St. Sinistra is blessed with lush tropical beauty,
jungle besieging the mansion atop the southern cliffs"
       PRINT_PADDR     G51
       RTRUE           
L0004: CALL            R0018 (#58) -> -(SP)
       RTRUE           

Routine R0474, 1 local (0000)

       JE              L00,#b7,#d4 [TRUE] RTRUE
       JE              L00,#30,#02 [TRUE] RTRUE
       JE              L00,#22,#3e,#ad [TRUE] RTRUE
       JE              L00,#9b,#b4,#1a [TRUE] RTRUE
       RFALSE          

Routine R0475, 1 local (0000)

       JE              L00,#03 [FALSE] L0004
       PRINT           "This is a tiny beach, at the base of vine-covered
cliffs. To the east,"
       TEST_ATTR       "Helena Louise",#0d [FALSE] L0001
       PRINT           " across the debris-ridden lagoon, black reefs speckle
the blue endless sea"
       JUMP            L0002
L0001: CALL            R0003 (#67) -> -(SP)
       PRINT           " floats serenely on the lagoon"
L0002: JZ              Gb3 [TRUE] L0003
       PRINT           ". Halfway out to the ship is a skiff crowded with men;
another skiff sits on the sand"
L0003: PRINT_PADDR     G51
       PRINT_PADDR     Ge8
       PRINT           "Immediately north of you, a rocky staircase is hewn
into the cliff. "
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] RTRUE
       PRINT           "A sizable number of dragoons huddle at the top."
       RTRUE           
L0004: JE              L00,#06 [FALSE] L0005
       JZ              Gb3 [TRUE] L0005
       TEST_ATTR       "stone",#13 [TRUE] L0005
       CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       INSERT_OBJ      "stone","Beach"
       SET_ATTR        "stone",#13
       PRINT_PADDR     Ge8
       PRINT           "You splash into the rising surf and pain needles up
your leg. Blood swirls out from your shoe in the shallow water, flowing over a
small pointed stone"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              L00,#01 [FALSE] L0006
       JE              G80,#23 [FALSE] L0006
       JE              G6e,#63 [FALSE] L0006
       CALL            R0300 (#1a) -> -(SP)
       RTRUE           
L0006: JE              L00,#02 [FALSE] RFALSE
       JIN             "Cookie","Lawn" [FALSE] RFALSE
       PRINT_RET       ""I know 'e ain't down there!" Cookie cries."

Routine R0476, 0 locals ()

       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           "You would be safer aboard"
       CALL            R0008 (#67) -> -(SP)
       RFALSE          
L0001: RET             #18

Routine R0477, 0 locals ()

       JE              G00,#49 [FALSE] L0001
       CALL            R0004 (#34) -> -(SP)
       PRINT           " is out of reach. Wade into the shallows"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G00,#b2 [FALSE] RFALSE
       JZ              Gd3 [FALSE] L0002
       PRINT_PADDR     G0e
       PRINT_OBJ       "skiff"
       PRINT           " here."
       NEW_LINE        
       RET             #08
L0002: JE              G80,#1a,#23 [FALSE] RFALSE
       CALL            R0300 (#15) -> -(SP)
       RET_POPPED      

Routine R0478, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "Jungle looms around this clipped lawn, a path
meandering westward into the dense undergrowth. To the east is a folly
entangled in blooming jasmine. The way to the beach is obscure, but visible to
the southeast. Behind the folly a thorny hedge blocks the cliff view of the
sea."
       JZ              Gb3 [FALSE] RTRUE
       NEW_LINE        
       PRINT_PADDR     Ge8
       PRINT           "Music and voices float from the veranda to the north."
       RTRUE           
L0001: JE              L00,#06 [FALSE] RFALSE
       TEST_ATTR       G00,#1f [TRUE] L0002
       SET_ATTR        G00,#1f
       PRINT_PADDR     Ge8
       PRINT_RET       "Two men stand whispering in the shadows. You catch an
occasional word, "Davis dead... girl... Falcon on Sinistra." The men separate,
the well-dressed one going into the ballroom as the other slinks into the
bushes. You see his face. Crulley!"
L0002: JZ              G2c [TRUE] RTRUE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      

Routine R0479, 0 locals ()

       JE              G00,#43 [FALSE] RFALSE
       RET             #9e

Routine R0480, 0 locals ()

       JE              G80,#69,#6a [FALSE] L0001
       TEST_ATTR       "flower",#17 [TRUE] L0001
       PRINT           "You can't bear to pick"
       CALL            R0008 (#9e) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#8a [FALSE] RFALSE
       PRINT           "Ah, jasmine! Mama grew this in her garden"
       PRINT_PADDR     G51
       RTRUE           

Routine R0481, 1 local (0000)

       JE              L00,#02 [FALSE] RFALSE
       TEST_ATTR       "Folly",#13 [TRUE] RFALSE
       TEST_ATTR       "Lafond's Bedroom",#13 [TRUE] RFALSE
       JIN             "your father","Cell" [FALSE] RFALSE
       STORE           Gc6,#01
       CALL            R0023 (#93de,#02) -> -(SP)
       RET_POPPED      

Routine R0482, 0 locals ()

       JE              G80,#23 [FALSE] L0003
       JE              G00,#8e [FALSE] L0001
       CALL            R0300 (#17) -> -(SP)
       RET_POPPED      
L0001: JE              G00,#18 [FALSE] L0002
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0002: PRINT_PADDR     Ga5
       RTRUE           
L0003: JE              G80,#38 [FALSE] RFALSE
       JE              G00,#8e [FALSE] L0004
       CALL            R0004 (#69) -> -(SP)
       PRINT           " is invisible beyond the leaves to the west"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G00,#43 [FALSE] L0005
       CALL            R0169 -> -(SP)
       RTRUE           
L0005: CALL            R0004 (#69) -> -(SP)
       PRINT           " is obscured by tangled vines"
       PRINT_PADDR     G51
       RTRUE           

Routine R0483, 0 locals ()

       JE              G80,#6a [FALSE] L0001
       JZ              Gc7 [FALSE] L0001
       PRINT           "Only the bottom of the slat is loose. The rest is
tightly woven into the frame of the folly"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#77,#a9 [FALSE] L0002
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#71,#3d,#63 [FALSE] L0004
       JZ              Gc7 [TRUE] L0003
       PRINT_PADDR     G19
       PRINT_RET       " done that."
L0003: STORE           Gc7,#01
       CLEAR_ATTR      "hole",#14
       SET_ATTR        "loose slat",#09
       PRINT           "You twist aside the "
       PRINT_OBJ       "loose slat"
       PRINT           ", wedging the end into the woven wall. The remaining
hole, just above the bench, looks big enough to snake "
       PRINT_OBJ       "yourself"
       PRINT           " through"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#38 [FALSE] RFALSE
       PRINT           "The bamboo slat at the back of the folly "
       TEST_ATTR       "loose slat",#09 [FALSE] L0005
       PRINT           "has been pulled aside, making a hole in the wall"
       PRINT_PADDR     G51
       RTRUE           
L0005: PRINT           "appears to be loose"
       PRINT_PADDR     G51
       RTRUE           

Routine R0484, 0 locals ()

       JE              G80,#23 [FALSE] L0001
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#31,#33,#9c [FALSE] L0004
       JE              G6e,#05 [FALSE] L0002
       PRINT_PADDR     G0c
       RTRUE           
L0002: JE              G6e,#df [TRUE] RFALSE
       CALL            R0362 -> -(SP)
       PRINT           " fall"
       TEST_ATTR       G6e,#02 [TRUE] L0003
       PRINT_CHAR      's'
L0003: PRINT           " through the hole"
       INSERT_OBJ      G6e,"In the Hedge"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#5b [FALSE] RFALSE
       PRINT_PADDR     G82
       PRINT           " a few leaves near to you, more fading into green
obscurity"
       PRINT_PADDR     G51
       RTRUE           

Routine R0485, 0 locals ()

       JZ              Gc7 [TRUE] L0002
       TEST_ATTR       "beautiful ball gown",#16 [TRUE] L0001
       RET             #8e
L0001: PRINT           "You might rip"
       CALL            R0008 (#c8) -> -(SP)
       RFALSE          
L0002: PRINT_PADDR     G49
       RET             #00

Routine R0486, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "You crouch in"
       CALL            R0003 (#7e) -> -(SP)
       PRINT           " by the house, twigs poking into you, the cliff
crumbling away to the east. "
       CALL            R0004 (#7e) -> -(SP)
       PRINT           " seems less dense to the south. A"
       CALL            R0353 (#8b,#01) -> -(SP)
       PRINT           " window is directly west of you."
       RTRUE           

Routine R0487, 1 local (0000)

       JE              L00,#03 [FALSE] L0005
       PRINT           "Steps lead south from this white marble veranda to a
clipped lawn. To the north"
       CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       PRINT           " the wreckage left by the duel is visible in the
ballroom."
       RTRUE           
L0001: TEST_ATTR       "french door",#10 [TRUE] L0002
       PRINT           ", beyond a closed glass door,"
L0002: JZ              Gb3 [TRUE] L0003
       PRINT           " is"
       JUMP            L0004
L0003: PRINT           " a line of people blocks your view of"
L0004: PRINT           " the ballroom."
       RTRUE           
L0005: JE              L00,#06 [FALSE] RFALSE
       JZ              G2c [TRUE] RFALSE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      

Routine R0488, 0 locals ()

       PRINT           "The gravel path is just wide enough for a cart to pass.
It bends around the west wing of the house, leading you to"
       PRINT_PADDR     G7e
       JE              G00,#44 [TRUE] L0001
       RET             #44
L0001: RET             #b3

Routine R0489, 1 local (0000)

       JE              L00,#06 [FALSE] RFALSE
       TEST_ATTR       "Forest",#06 [FALSE] RFALSE
       CALL            R0020 (#cd4f) -> -(SP)
       CLEAR_ATTR      "Forest",#06
       PRINT_PADDR     Ge8
       PRINT           "Two whispered voices come from the path ahead, one
reassuring, the other desperate -- they sound like"
       CALL            R0003 (#39) -> -(SP)
       PRINT_RET       " and Lucy. Peering over a bush, you see the couple
share a fond embrace before they meander off into the jungle."

Routine R0490, 1 local (0000)

       JE              L00,#01 [FALSE] RFALSE
       JE              G6e,#0a [TRUE] L0001
       JE              Gcf,#0a [FALSE] RFALSE
L0001: JE              G80,#5b,#38 [FALSE] L0002
       PRINT_PADDR     G82
       PRINT_RET       " only an embossed ceiling."
L0002: JE              G80,#23 [FALSE] L0003
       CALL            R0300 (#16) -> -(SP)
       RTRUE           
L0003: CALL            R0356 (#0a) -> -(SP)
       RET_POPPED      

Routine R0491, 0 locals ()

       JE              G00,#49 [FALSE] L0001
       JE              G80,#38 [TRUE] L0001
       CALL            R0356 (#36) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#6a [FALSE] L0002
       PRINT           "You tug, but are unable to get any substantial length
of vine"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#1e [FALSE] L0003
       JE              G00,#71 [FALSE] L0003
       CALL            R0300 (#16) -> -(SP)
       RTRUE           
L0003: JE              G80,#20,#1e [FALSE] RFALSE
       JE              G00,#92 [FALSE] RFALSE
       CALL            R0300 (#15) -> -(SP)
       RTRUE           

Routine R0492, 1 local (0000)

       JE              L00,#06 [FALSE] RFALSE
       JIN             "Lucy","Kitchen" [FALSE] RFALSE
       JZ              G99 [TRUE] L0001
       TEST_ATTR       "Lucy",#13 [TRUE] RFALSE
       SET_ATTR        "Lucy",#13
       CALL            R0023 (#cd05,#02) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT_RET       "The woman smiles uncertainly, then rushes over. "Are
you come from the village, boy? Dost know Lord Dimsford?" She sighs at your
surprise. "So he sent you -- I am his Lucy. It's been so long since I've seen
him. Lafond caught me eavesdropping and now I can't leave the grounds.""
L0001: TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0002
       PRINT_PADDR     Ge8
       PRINT           ""Milady," exclaims the woman. "Lafond's guests are
wisest not to stray. Maybe you should stay at the ball." You find "
       PRINT_OBJ       "yourself"
       PRINT           " ushered into a hallway"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#9f) -> -(SP)
       RET_POPPED      
L0002: PRINT_PADDR     Ge8
       PRINT           "The woman shrieks, pushing you out the door. "Has not
the governor made clear his position on light-skirts? Out, slattern, before I
report you!" Her voice drops to a whisper, "Sorry, but it's not safe around
here. Stay in the village." You find yourself outside"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#b3) -> -(SP)
       RET_POPPED      

Routine R0493, 0 locals ()

       CALL            R0293 (#58) -> -(SP)
       JE              (SP)+,G00 [FALSE] L0001
       CALL            R0295 (#58) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JIN             "Lucy",G00 [FALSE] L0001
       JIN             "your father",G00 [TRUE] L0001
       REMOVE_OBJ      "garter"
       CALL            R0020 (#cd05) -> -(SP)
       PRINT           "Lucy spits at you, "Yes, desert a helpless woman. Tell
Lafond I'm a spy. Dimsford will avenge me, runt!" She comes after you with a
rolling pin, pushing you out the door"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #b3
L0001: JIN             "Lucy",G00 [FALSE] L0002
       JIN             "your father",G00 [TRUE] L0002
       TEST_ATTR       "garter",#13 [FALSE] L0002
       PRINT           ""Don't forget -- tell Dimsford,""
       CALL            R0003 (#b1) -> -(SP)
       PRINT_PADDR     S116
L0002: JE              G35,#18 [TRUE] L0003
       RET             #b3
L0003: RET             #9f

Routine R0494, 0 locals ()

       JE              G00,#ab [FALSE] L0001
       TEST_ATTR       "french door",#10 [TRUE] L0001
       CALL            R0004 (#d9) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RFALSE          
L0001: JZ              Gb3 [TRUE] L0003
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_PADDR     G75
       PRINT           "force "
       PRINT_OBJ       "yourself"
       PRINT           " between the amazed spectators of the duel"
       PRINT_PADDR     G51
       RET             #00
L0002: RET             #a5
L0003: TEST_ATTR       "beautiful ball gown",#16 [TRUE] L0006
       PRINT           "Though you glimpse whirling bodies beyond, the
spectators fail to admit such a "
       JZ              G99 [TRUE] L0004
       PRINT           "grubby youth"
       JUMP            L0005
L0004: PRINT           "poorly dressed female"
L0005: PRINT           ".
"
       RET             #00
L0006: PRINT           "The sea of spectators parts to admit you, murmuring
approval"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #a5

Routine R0495, 1 local (0000)

       JE              L00,#06 [FALSE] L0005
       TEST_ATTR       "butler",#05 [TRUE] L0004
       JIN             "butler",G00 [FALSE] L0004
       TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0002
       TEST_ATTR       "Foyer",#06 [FALSE] L0001
       CLEAR_ATTR      "Foyer",#06
       REMOVE_OBJ      "butler"
       PRINT_PADDR     Ge8
       PRINT           ""Miss, the master has been expecting you, up in his
room. I did look for you." "
       CALL            R0004 (#4f) -> -(SP)
       PRINT_RET       " bows and leaves."
L0001: TEST_ATTR       "butler",#0d [FALSE] RFALSE
       PRINT_PADDR     Ge8
       PRINT_CHAR      '"'
       PRINT_PADDR     Ga8
       PRINT_PADDR     G4c
       NEW_LINE        
       CALL            R0284 (#44) -> -(SP)
       RET_POPPED      
L0002: JZ              G99 [TRUE] L0003
       CALL            R0377 -> -(SP)
       RET_POPPED      
L0003: PRINT_PADDR     Ge8
       PRINT           ""You may not ply your wares here, Paphian. Leave before
I have you thrown off the cliff!" You contemplate this pleasant prospect as you
are tossed onto the gravel drive."
       NEW_LINE        
       NEW_LINE        
       CALL            R0284 (#44) -> -(SP)
       RET_POPPED      
L0004: JZ              G2c [TRUE] RTRUE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      
L0005: JE              L00,#02 [FALSE] RFALSE
       TEST_ATTR       "butler",#05 [TRUE] RFALSE
       TEST_ATTR       "butler",#0c [TRUE] RFALSE
       CALL            R0023 (#ce8f,#03) -> -(SP)
       RET_POPPED      

Routine R0496, 0 locals ()

       TEST_ATTR       "butler",#0c [FALSE] L0005
       JE              G35,#18 [FALSE] L0001
       CALL            R0494 -> -(SP)
       RET_POPPED      
L0001: JE              G35,#17 [FALSE] L0002
       RET             #9f
L0002: JE              G35,#16 [FALSE] L0003
       RET             #1c
L0003: JE              G35,#1a,#16 [FALSE] RFALSE
       JIN             "butler",G00 [TRUE] L0004
       RET             #99
L0004: PRINT           ""No, ma'am, that way's private." The butler stops you"
       PRINT_PADDR     G51
       RFALSE          
L0005: CALL            R0022 (#ce8f) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       CALL            R0023 (#ce8f,#02) -> -(SP)
       PRINT           ""Excuse me!" The "
       PRINT_OBJ       "butler"
       PRINT           " pushes you back. "Your invitation, please!""
       NEW_LINE        
       RFALSE          
L0006: CALL            R0023 (#ce8f,#02) -> -(SP)
       STORE           G68,#01
       PRINT           "The butler prevents you. "Miss... your invitation?""
       NEW_LINE        
       RFALSE          

Routine R0497, 1 local (0000)

       JE              L00,#03 [FALSE] L0004
       JZ              Gb3 [TRUE] L0002
       CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0004 (#6e) -> -(SP)
       PRINT           "s stare amazed at Lafond's limp body, some
disbelieving, some hopeful, all stock still. The pirates have fled to the
darkness of the lawn"
       JUMP            L0003
L0001: PRINT           "All is chaos, screaming women fainting on terrified
men. Several of Jamison's scruffiest men round the dancers into a huddle in the
center of"
       PRINT_PADDR     S039
       JUMP            L0003
L0002: PRINT           "Lafond's party is well attended: you can hardly move
for the crush. However, the room is oddly silent, no talk interrupting the
musical efforts of"
       CALL            R0003 (#87) -> -(SP)
       PRINT           " to the west. Despite the heat, no one ventures south
to the veranda, nor through the opening east. The foyer is north of you"
L0003: PRINT_CHAR      '.'
       RTRUE           
L0004: JE              L00,#02 [FALSE] L0006
       TEST_ATTR       G00,#13 [TRUE] L0005
       STORE           Gc6,#01
       CALL            R0023 (#914b,#ffff) -> -(SP)
       RET_POPPED      
L0005: JZ              G98 [FALSE] RFALSE
       JE              G46,#be [FALSE] RFALSE
       JZ              Gb3 [FALSE] RFALSE
       STORE           G06,#01
       CALL            R0023 (#d455,#01) -> -(SP)
       RFALSE          
L0006: JE              L00,#01 [FALSE] L0010
       JE              #bf,G6e,Gcf [FALSE] L0007
       CALL            R0350 ("man",#bf) -> -(SP)
       JZ              (SP)+ [FALSE] L0007
       JE              G80,#13 [TRUE] L0007
       JE              G6e,#42,#be [TRUE] L0007
       TEST_ATTR       "Ballroom",#06 [TRUE] L0007
       PRINT_PADDR     G0e
       PRINT           "of Jamison's crew here"
       PRINT_PADDR     G51
       CALL            R0301 -> -(SP)
       RET_POPPED      
L0007: JE              G80,#14 [FALSE] L0008
       JIN             G6e,G00 [FALSE] L0008
       JE              Gcf,#a5 [FALSE] L0008
       CALL            R0018 (#2a,G6e) -> -(SP)
       RTRUE           
L0008: JE              G80,#31 [FALSE] L0009
       JE              Gcf,#a5 [FALSE] L0009
       CALL            R0018 (#30,G6e) -> -(SP)
       RTRUE           
L0009: JE              G98,#be,#42 [FALSE] RFALSE
       CALL            R0346 (#35) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT_OBJ       G98
       PRINT_RET       " sweeps you past."
L0010: JE              L00,#06 [FALSE] RFALSE
       JZ              G2c [TRUE] RFALSE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      

Routine R0498, 0 locals ()

       JE              G98,#be [FALSE] L0004
       PRINT           ""Would you rather not dance? "
       JE              G35,#18 [FALSE] L0001
       PRINT           "Apparently the guests have orders not to go outside."
Instead"
       CALL            R0003 (#be) -> -(SP)
       PRINT           " whirls and twirls you towards"
       CALL            R0008 (#87) -> -(SP)
       NEW_LINE        
       RET             #41
L0001: JE              G35,#1a [FALSE] L0002
       PRINT           "Hungry?" He guides you into the supper room, then tsks
in dismay. "They've cleared the food away already!""
       NEW_LINE        
       NEW_LINE        
       RET             #53
L0002: JE              G35,#17 [FALSE] L0003
       PRINT           "Let's listen to the music while we talk." He walks you
towards"
       CALL            R0008 (#87) -> -(SP)
       NEW_LINE        
       RET             #41
L0003: PRINT           "It wouldn't be wise to put ourselves into the butler's
sight, though." He escorts you into the supper-room instead"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #53
L0004: CALL            R0021 (#dd76) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       PRINT_OBJ       "Lafond"
       PRINT           " stops you. "Stay until we hear the sad news.""
       NEW_LINE        
       RFALSE          
L0005: JE              #42,G98 [FALSE] L0006
       PRINT           ""How dare you walk away!" Lafond grips your arm, so you
may not leave the floor"
       PRINT_PADDR     G51
       RFALSE          
L0006: CALL            R0022 (#d455) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       GET_PARENT      "Lafond" -> -(SP)
       JE              (SP)+,G00 [FALSE] L0007
       STORE           G10,#42
       PRINT           ""Your answer, cherie?" His twists your wrist
mercilessly"
       PRINT_PADDR     G51
       RFALSE          
L0007: JE              G35,#1c [FALSE] L0008
       RET             #70
L0008: JE              G35,#18 [FALSE] L0010
       TEST_ATTR       "french door",#10 [FALSE] L0009
       RET             #ab
L0009: CALL            R0004 (#d9) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RFALSE          
L0010: JE              G35,#17 [FALSE] L0011
       RET             #41
L0011: JE              G35,#1a [FALSE] RFALSE
       RET             #53

Routine R0499, 0 locals ()

       JE              G80,#47,#38 [FALSE] L0002
       JZ              Gb3 [TRUE] L0001
       PRINT           "The musicians are with"
       CALL            R0003 (#6e) -> -(SP)
       PRINT_RET       "s in the ballroom."
L0001: PRINT_RET       "The small band is made up of a virginal, bass and
treble viols, and several recorders. They are playing "I Want to Kiss Your
Hand," by J.S. Beatle."
L0002: CALL            R0366 -> -(SP)
       CALL            R0301 -> -(SP)
       RET_POPPED      

Routine R0500, 1 local (0000)

       JE              L00,#03 [FALSE] L0002
       JZ              Gb3 [TRUE] L0001
       CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       PRINT           "This end of the ballroom is empty of people."
       RTRUE           
L0001: PRINT           "A few older women and young girls sit near the small
orchestra assembled at this end of the ballroom."
       RTRUE           
L0002: JE              L00,#06 [FALSE] RFALSE
       JZ              G2c [TRUE] RFALSE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      

Routine R0501, 1 local (0000)

       JE              L00,#02 [FALSE] L0001
       INSERT_OBJ      "long table",G00
       RTRUE           
L0001: JE              L00,#06 [FALSE] RFALSE
       JZ              G2c [TRUE] RFALSE
       CALL            R0586 (#01) -> -(SP)
       RET_POPPED      

Routine R0502, 0 locals ()

       PRINT           "You scuttle underneath"
       CALL            R0008 (#98) -> -(SP)
       NEW_LINE        
       JE              G00,#99 [TRUE] L0001
       RET             #99
L0001: RET             #53

Routine R0503, 1 local (0000)

       JE              L00,#06 [FALSE] L0002
       TEST_ATTR       "butler",#05 [TRUE] L0002
       JIN             "butler","Foyer" [FALSE] L0002
       TEST_ATTR       "beautiful ball gown",#16 [TRUE] L0001
       CALL            R0377 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       "butler",#0c [TRUE] RFALSE
       PRINT_PADDR     Ge8
       PRINT           "A "
       PRINT_OBJ       "butler"
       PRINT           " takes your arm, pulling you into the foyer. "I have
not seen your "
       PRINT_OBJ       "invitation"
       PRINT           ", Miss.""
       NEW_LINE        
       NEW_LINE        
       CALL            R0284 (#70) -> -(SP)
       RET_POPPED      
L0002: JE              L00,#02 [FALSE] RFALSE
       INSERT_OBJ      "long table","East Hallway"
       RTRUE           

Routine R0504, 1 local (0000)

       JE              L00,#03 [FALSE] L0003
       PRINT           "Everything in this private office is larger than life.
A huge "
       PRINT_OBJ       "portrait"
       TEST_ATTR       "portrait",#10 [FALSE] L0001
       PRINT           ", slightly awry from the wall,"
L0001: PRINT           " decorates the north side, and black drapes mask the
east wall. Bookshelves tower over a cherry desk, and a massive wooden globe
squats in a corner."
       JZ              Gb3 [FALSE] L0002
       PRINT           " Music wafts distantly from the ballroom across the
hall to the south."
L0002: TEST_ATTR       "knob",#05 [TRUE] RTRUE
       NEW_LINE        
       PRINT_PADDR     Ge8
       PRINT           "A knob juts out of the wall."
       RTRUE           
L0003: JE              L00,#02 [FALSE] L0004
       JIN             "Cookie",G00 [FALSE] L0004
       TEST_ATTR       "Cookie",#06 [TRUE] L0004
       SET_ATTR        "Cookie",#06
       PRINT_PADDR     S171
       PRINT_OBJ       "Cookie"
       PRINT           " is here, studying the walls. "Cap'n said somethin'
about a secret door, mebbe.""
       NEW_LINE        
       NEW_LINE        
       RTRUE           
L0004: JE              L00,#06 [FALSE] RFALSE
       JIN             "your father",G00 [FALSE] L0006
       JE              G46,#42 [FALSE] L0005
       JZ              G67 [FALSE] L0005
       CALL            R0023 (#92d8,#02) -> -(SP)
L0005: CALL            R0023 (#cd4f,#19) -> -(SP)
       SET_ATTR        "Forest",#06
       SET_ATTR        "window",#10
       STORE           Gc7,#01
       CLEAR_ATTR      "hole",#14
       SET_ATTR        "loose slat",#09
       REMOVE_OBJ      "your father"
       REMOVE_OBJ      "Lucy"
       PRINT_PADDR     Ge8
       PRINT           ""A "
       PRINT_OBJ       "window"
       PRINT           "!" your father exclaims. "I shall creep out to the
kitchen. Get the Falcon." He climbs out"
       CALL            R0008 (#0a) -> -(SP)
       RET_POPPED      
L0006: JIN             "Cookie",G00 [FALSE] RFALSE
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       INSERT_OBJ      "Cookie","Gallery"
       REMOVE_OBJ      "pirate"
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Cookie"
       PRINT           " cocks his head. "What is that noise? Is Cap'n duelling
Lafond? There's no chance he could win as beaten as he is!" Cookie races out
towards the ballroom"
       PRINT_PADDR     G51
       RTRUE           

Routine R0505, 0 locals ()

       TEST_ATTR       "portrait",#0d [TRUE] L0001
       PRINT_PADDR     G49
       RFALSE          
L0001: TEST_ATTR       "portrait",#10 [TRUE] L0002
       CALL            R0004 (#37) -> -(SP)
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RFALSE          
L0002: CALL            R0295 (#85) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0285 -> -(SP)
       PRINT_PADDR     Ge8
L0003: PRINT           "You move beyond"
       CALL            R0003 (#37) -> -(SP)
       PRINT           " into the "
       JE              G00,#b7 [FALSE] L0004
       PRINT           "library"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #7b
L0004: JE              G00,#7b [FALSE] RFALSE
       PRINT           "flickering torchlight"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #b7

Routine R0506, 0 locals ()

       JE              G80,#5d [FALSE] L0002
       JE              G00,#b0 [FALSE] L0001
       PRINT_PADDR     G90
       PRINT           "interesting behind"
       CALL            R0008 (#9c) -> -(SP)
       RET_POPPED      
L0001: PRINT           "In the dark behind"
       CALL            R0003 (#9c) -> -(SP)
       PRINT           " is"
       CALL            R0007 (#0a) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#63,#71,#68 [FALSE] L0003
       PRINT_PADDR     G17
       NEW_LINE        
       RTRUE           
L0003: JE              G80,#25 [FALSE] L0005
       JE              G00,#7b [FALSE] L0004
       PRINT_PADDR     S049
       RTRUE           
L0004: PRINT_PADDR     Gde
       RTRUE           
L0005: JE              G80,#38 [FALSE] RFALSE
       JE              G00,#7b [FALSE] L0006
       PRINT           "Dark drapes cover an entire wall of the room"
       PRINT_PADDR     G51
       RTRUE           
L0006: PRINT           "The purple hangings are densely embroidered with gold"
       PRINT_PADDR     G51
       RTRUE           

Routine R0507, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       CALL            R0004 (#09) -> -(SP)
       PRINT_RET       " is flickering madly in the breeze."
L0001: JE              G80,#32,#31 [FALSE] L0002
       TEST_ATTR       Gcf,#1b [FALSE] L0002
       PRINT_RET       "Mama disapproved of pyromaniacs."
L0002: CALL            R0346 (#09) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT_PADDR     G75
       PRINT           "reach"
       CALL            R0003 (#09) -> -(SP)
       PRINT_RET       ". Ladies don't carry them anyway."

Routine R0508, 0 locals ()

       JE              G80,#38 [FALSE] L0003
       JE              G00,#7b [FALSE] L0002
       TEST_ATTR       "portrait",#10 [FALSE] L0001
       PRINT           "Cool air seeps out from"
       CALL            R0008 (#37) -> -(SP)
       RET_POPPED      
L0001: CALL            R0004 (#37) -> -(SP)
       PRINT           " seems familiar, and you realize it is exactly the
picture on the front of"
       CALL            R0003 (#ba) -> -(SP)
       CALL            R0003 (#42) -> -(SP)
       PRINT_RET       " sent you, same clothes, same surroundings, same pose."
L0002: PRINT_PADDR     G82
       PRINT_PADDR     G83
       CALL            R0008 (#37) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#5d [FALSE] L0005
       TEST_ATTR       "portrait",#10 [FALSE] L0004
       CALL            R0018 (#38,#37) -> -(SP)
       RTRUE           
L0004: CALL            R0004 (#37) -> -(SP)
       PRINT           " is firmly fastened to the wall"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#42,#43,#23 [FALSE] L0007
       TEST_ATTR       "portrait",#0d [TRUE] L0006
       PRINT           "This is a "
       PRINT_OBJ       "portrait"
       PRINT           ", not a looking glass"
       PRINT_PADDR     G51
       RTRUE           
L0006: CALL            R0300 (#14) -> -(SP)
       RET_POPPED      
L0007: JE              G80,#68 [FALSE] L0012
       TEST_ATTR       "portrait",#10 [FALSE] L0008
       PRINT_PADDR     Gd6
       RTRUE           
L0008: TEST_ATTR       "portrait",#0d [FALSE] L0011
       SET_ATTR        "portrait",#10
       JE              G00,#7b [FALSE] L0010
       PRINT           "Quickly you pull the book, joggle"
       CALL            R0003 (#da) -> -(SP)
       PRINT           " and touch"
       CALL            R0003 (#b6) -> -(SP)
       PRINT           ", and"
       CALL            R0003 (#37) -> -(SP)
       PRINT           " pops open."
       JIN             "Cookie",G00 [FALSE] L0009
       PRINT_PADDR     G4e
L0009: NEW_LINE        
       RTRUE           
L0010: PRINT           "You push outwards on the wall, opening"
       CALL            R0008 (#37) -> -(SP)
       RET_POPPED      
L0011: PRINT           "Open a "
       PRINT_OBJ       "portrait"
       PRINT_RET       "?!"
L0012: JE              G80,#25 [FALSE] RFALSE
       TEST_ATTR       "portrait",#0d [TRUE] L0013
       PRINT_PADDR     G0c
       RTRUE           
L0013: TEST_ATTR       "portrait",#10 [FALSE] RFALSE
       CLEAR_ATTR      "portrait",#10
       CLEAR_ATTR      "book",#06
       CLEAR_ATTR      "knob",#06
       CALL            R0004 (#37) -> -(SP)
       PRINT_RET       " swings shut with a tiny snap."

Routine R0509, 0 locals ()

       JE              G80,#71,#6b [TRUE] L0001
       JE              G80,#32 [FALSE] L0006
       JE              G6e,#05 [FALSE] L0006
L0001: PRINT           "You press the "
       CALL            R0350 ("sinist",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0350 ("island",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0002
       CALL            R0351 (#b0) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
L0002: PRINT           "painted island, and it sinks into the wooden sea."
       TEST_ATTR       "knob",#06 [FALSE] L0004
       TEST_ATTR       "book",#06 [FALSE] L0004
       TEST_ATTR       "portrait",#10 [TRUE] L0004
       SET_ATTR        "portrait",#10
       TEST_ATTR       "portrait",#0d [TRUE] L0003
       SET_ATTR        "portrait",#0d
       INC             G01
L0003: PRINT           " You hear a whirr and a click and"
       CALL            R0003 (#37) -> -(SP)
       PRINT           " pops open. A draft of sea-scented air flows in from
behind it."
       JIN             "Cookie",G00 [FALSE] L0004
       PRINT_PADDR     G4e
L0004: NEW_LINE        
       RTRUE           
L0005: PRINT_RET       "globe at random."
L0006: JE              G80,#a5,#6a [FALSE] L0007
       CALL            R0004 (#b6) -> -(SP)
       PRINT_RET       " is solidly fastened to the floor."
L0007: JE              G80,#40 [FALSE] L0009
       JE              Gcf,#b6 [FALSE] L0009
       CALL            R0350 ("sinist",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0008
       CALL            R0350 ("island",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0008
       CALL            R0351 (#b0) -> -(SP)
       JZ              (SP)+ [TRUE] L0009
L0008: PRINT_RET       "It is in the West Indies, surrounded by blue."
L0009: JE              G80,#38 [FALSE] RFALSE
       CALL            R0350 ("sinist",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       CALL            R0350 ("island",#b6) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       CALL            R0351 (#b0) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
L0010: PRINT           "A tiny replica of "
       PRINT_OBJ       "St. Sinistra"
       PRINT           " is painted on"
       CALL            R0003 (#b6) -> -(SP)
       PRINT           " in greater detail than any other country, showing even
the road from Santa Ananas to Lafond's mansion"
       PRINT_PADDR     G51
       RTRUE           
L0011: PRINT           "The massive wooden globe, painted in greens and blues
and white, describes the world as presently known"
       PRINT_PADDR     G51
       RTRUE           

Routine R0510, 0 locals ()

       JE              G80,#6a,#75,#5b [TRUE] L0001
       JE              G80,#68 [FALSE] L0002
L0001: PRINT           "You pick one at random. You always preferred horses to
reading, so you put it back"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#7e,#38 [FALSE] L0003
       PRINT           "Most of the books appear unread, their pages uncut, the
spines not yet creased. All except one, "Treatise of Power" by Sir Michael
Villiers"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#71,#63 [FALSE] RFALSE
       PRINT_PADDR     G0c
       RTRUE           

Routine R0511, 0 locals ()

       JE              G80,#7e,#5b,#38 [FALSE] L0001
       CALL            R0018 (#38,#a2) -> -(SP)
       RTRUE           
L0001: JE              G80,#a5,#71,#63 [FALSE] L0002
       STORE           Gc9,#03
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           "Why tamper with a "
       PRINT_OBJ       "bookcase"
       PRINT_RET       "? Searching for a secret door or some such?"
L0002: JE              G80,#25,#68 [FALSE] RFALSE
       CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0512, 0 locals ()

       JE              G80,#68,#6a,#75 [TRUE] L0001
       JE              G80,#3d,#63 [FALSE] L0004
L0001: PRINT           "You half tip"
       CALL            R0003 (#cc) -> -(SP)
       PRINT           " out of the shelf when it snaps surprisingly back into
place"
       TEST_ATTR       "book",#0d [TRUE] L0002
       SET_ATTR        "book",#0d
       INC             G01
L0002: TEST_ATTR       "book",#06 [TRUE] L0003
       SET_ATTR        "book",#06
       PRINT           ". There is a mysterious scraping sound from inside the
wall"
L0003: PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#38 [FALSE] RFALSE
       PRINT_RET       "You gaze at "Treatise of Power" without taking it. It
seems to be the only book that has been read in the library, the leather
creased and dull with use."

Routine R0513, 2 locals (0000, 0000)

       JE              G00,#7b [FALSE] RFALSE
       RET             #a2

Routine R0514, 0 locals ()

       JE              G80,#a5,#63,#71 [TRUE] L0001
       JE              G80,#3d,#5f [FALSE] L0003
L0001: TEST_ATTR       "knob",#06 [FALSE] L0002
       CALL            R0304 (S239) -> -(SP)
       RET_POPPED      
L0002: SET_ATTR        "knob",#06
       CALL            R0575 (S212) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#31,#32 [FALSE] L0006
       JE              G6e,#85 [FALSE] L0006
       TEST_ATTR       "knob",#05 [FALSE] L0004
       PRINT_PADDR     Gd6
       RTRUE           
L0004: CALL            R0295 (#85) -> -(SP)
       JZ              (SP)+ [FALSE] L0005
       PRINT_PADDR     G89
       CALL            R0008 (#85) -> -(SP)
       RET_POPPED      
L0005: SET_ATTR        "hat",#06
       SET_ATTR        "knob",#05
       INSERT_OBJ      "hat","Library"
       PRINT           "You prop"
       CALL            R0003 (#85) -> -(SP)
       PRINT           " back on"
       CALL            R0008 (#da) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#38 [FALSE] RFALSE
       TEST_ATTR       "knob",#05 [FALSE] RFALSE
       CALL            R0004 (#85) -> -(SP)
       PRINT           " is on"
       CALL            R0008 (#da) -> -(SP)
       RET_POPPED      

Routine R0515, 1 local (0000)

       JE              L00,#03 [FALSE] RFALSE
       PRINT           "The east-west hallway opens here to curve into a grand
staircase sweeping down to the foyer."
       RTRUE           

Routine R0516, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       PRINT           "Backless, upholstered in Oriental silk,"
       CALL            R0003 (#ae) -> -(SP)
       PRINT           " looks exotic and comfortable"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#23,#1f,#1a [FALSE] L0002
       PRINT_RET       "You haven't time to relax now."
L0002: CALL            R0366 -> -(SP)
       RET_POPPED      

Routine R0517, 0 locals ()

       CALL            R0346 (#07) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT_PADDR     G75
       PRINT           "reach them. Ladies don't carry "
       PRINT_OBJ       "pistol"
       PRINT_RET       "s, anyway."

Routine R0518, 2 locals (0000, 0000)

       JE              L00,#01 [FALSE] L0008
       JZ              G43 [TRUE] L0008
       JG              G06,#09 [FALSE] L0001
       JE              G6e,#19,#62 [TRUE] L0001
       JE              G80,#8e,#6a [FALSE] L0001
       JE              G80,#8e,#6a [FALSE] RTRUE
       PRINT_OBJ       "Lafond"
       PRINT           " stops you"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              Gcf,#66,#79 [TRUE] L0002
       JE              G6e,#66,#79 [FALSE] L0003
L0002: STORE           L01,#79
       JUMP            L0005
L0003: JE              G80,#6d,#ae,#31 [FALSE] RFALSE
       JE              #6b,G6e,Gcf [FALSE] L0004
       STORE           L01,#6b
       JUMP            L0005
L0004: JE              #c6,G6e,Gcf [FALSE] RFALSE
       STORE           L01,#c6
L0005: REMOVE_OBJ      L01
       PRINT           "Lafond bounds to your side, grabbing"
       CALL            R0003 (L01) -> -(SP)
       PRINT           " out of "
       PRINT_OBJ       "your hand"
       PRINT           " before you can use it. "What have we here? Trying to "
       JE              L01,#79 [FALSE] L0006
       PRINT           "poison "
       PRINT_OBJ       "yourself"
       PRINT           "? Or me?"
       JUMP            L0007
L0006: JE              L01,#6b,#c6 [FALSE] L0007
       PRINT           "signal for help? You are beyond help."
L0007: PRINT           "" He throws it out"
       CALL            R0008 (#d3) -> -(SP)
       RET_POPPED      
L0008: JE              L00,#02 [FALSE] L0010
       TEST_ATTR       "Lafond's Bedroom",#13 [TRUE] L0010
       SET_ATTR        "Lafond's Bedroom",#13
       INC             G01
       STORE           G06,#01
       CALL            R0023 (#d67e,#01) -> -(SP)
       PRINT           ""Welcome, ma petite"
       TEST_ATTR       "beautiful ball gown",#16 [TRUE] L0009
       PRINT           " -- but where is your "
       PRINT_OBJ       "beautiful ball gown"
       PRINT           "? Ah, chacun a son gout"
L0009: PRINT           "." Lafond bows you in"
       PRINT_PADDR     G51
       NEW_LINE        
       RTRUE           
L0010: JE              L00,#03 [FALSE] RFALSE
       PRINT_OBJ       "Lafond"
       PRINT           "'s bedroom shows all the outpourings of his
megalomania. Royal hues of purple and gold weigh down the hangings on the bed
and the eastward window, as if trying to smother the moonbeam shining in."
       RTRUE           

Routine R0519, 0 locals ()

       JZ              G43 [TRUE] L0001
       PRINT           "Lafond whirls you around. "My pretty, you came here
freely, but you may not leave freely.""
       NEW_LINE        
       RFALSE          
L0001: JIN             "butler",G00 [FALSE] L0002
       TEST_ATTR       "butler",#05 [TRUE] L0002
       CALL            R0004 (#4f) -> -(SP)
       PRINT           " stops you easily"
       PRINT_PADDR     G51
       RFALSE          
L0002: PRINT           "You "
       TEST_ATTR       "ornate door",#10 [TRUE] L0003
       SET_ATTR        "ornate door",#10
       PRINT           "open the door and "
L0003: TEST_ATTR       "butler",#05 [FALSE] L0004
       GET_PARENT      "Lafond" -> -(SP)
       JE              (SP)+,G00 [TRUE] L0004
       PRINT           "creep over the prostrate butler"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #1e
L0004: PRINT           "run out -- into"
       CALL            R0003 (#4f) -> -(SP)
       PRINT           "'s barrel chest and leering grin. You return to the
bedroom"
       JIN             "Lafond",G00 [FALSE] L0005
       PRINT_CHAR      '.'
       CALL            R0003 (#42) -> -(SP)
       PRINT           " acts as if nothing has happened"
       PRINT_PADDR     G51
       RFALSE          
L0005: INSERT_OBJ      "butler","Lafond's Bedroom"
       PRINT_CHAR      ','
       CALL            R0003 (#4f) -> -(SP)
       PRINT           " following. "The governor said you were not to leave
this room.""
       NEW_LINE        
       RFALSE          

Routine R0520, 0 locals ()

       JE              G80,#21,#39,#23 [TRUE] L0001
       JE              G80,#1a,#4d [FALSE] L0002
L0001: PRINT_RET       "One look at the sheer drop, from sill to hedge to
jagged rocks far below, is enough to dissuade you."
L0002: JE              G80,#5b [FALSE] L0005
       PRINT           "The full moon is high in the night sky. Some distance
out from the shallow curve of the island, "
       TEST_ATTR       "Helena Louise",#0d [FALSE] L0003
       PRINT           "black reefs catch the full force of the sea"
       JUMP            L0004
L0003: PRINT           "you see the slow swelling of sails, grey turning black
turning grey, on"
       CALL            R0003 (#67) -> -(SP)
L0004: PRINT_RET       "."
L0005: JE              G80,#38 [FALSE] L0006
       PRINT           "Old fashioned wooden "
       PRINT_OBJ       "shutters"
       PRINT           ", not glass, fill"
       CALL            R0003 (#0a) -> -(SP)
       PRINT           " frame. A dusty "
       PRINT_OBJ       "moonbeam"
       PRINT           " swirls in, setting alight threads of gold embroidered
in"
       CALL            R0008 (#9c) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#6c [FALSE] L0007
       JE              G6e,#67 [FALSE] L0007
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0007: JE              G80,#25 [FALSE] L0008
       PRINT_PADDR     Gde
       RTRUE           
L0008: JE              G80,#33 [FALSE] RFALSE
       JE              G6e,#05 [FALSE] L0009
       PRINT_PADDR     G0c
       RTRUE           
L0009: JE              G6e,#8d,#5a,#c7 [FALSE] L0010
       JIN             "Lafond",G00 [FALSE] L0010
       PRINT_OBJ       "Lafond"
       PRINT_RET       " stops you."
L0010: CALL            R0343 -> -(SP)
       RET_POPPED      

Routine R0521, 0 locals ()

       CALL            R0295 (#62) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       RET             #62
L0001: RET             #19

Routine R0522, 0 locals ()

       JE              G80,#6a [FALSE] L0002
       JIN             "pinch of spices","it" [FALSE] L0001
       PRINT_PADDR     G19
       CALL            R0007 (#62) -> -(SP)
       RET_POPPED      
L0001: INSERT_OBJ      "pinch of spices","it"
       SET_ATTR        "pinch of spices",#13
       STORE           G6c,#01
       CALL            R0023 (#a974,#03) -> -(SP)
       PRINT           "You take"
       CALL            R0002 (#62) -> -(SP)
       PRINT           " between your thumb and forefinger"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#38 [FALSE] L0005
       JIN             "pinch of spices","it" [FALSE] L0004
       PRINT           "You are holding"
       CALL            R0002 (#62) -> -(SP)
       PRINT           ". "
       CALL            R0295 (#c6,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       GET_PARENT      "spices" -> -(SP)
       JE              (SP)+,#04 [FALSE] L0003
       PRINT           "More is in"
       CALL            R0003 (#04) -> -(SP)
       PRINT           " of"
       CALL            R0008 (#c6) -> -(SP)
L0003: NEW_LINE        
       RTRUE           
L0004: CALL            R0018 (#38,#04) -> -(SP)
       RTRUE           
L0005: JE              G80,#34 [FALSE] L0006
       INSERT_OBJ      "pinch of spices","spices"
       PRINT           "Your eyes start to water"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G80,#8a [FALSE] L0007
       INSERT_OBJ      "pinch of spices","spices"
       PRINT           "You take a sharp sniff of"
       CALL            R0003 (#19) -> -(SP)
       PRINT           " and sneeze, until "
       PRINT_OBJ       "your eyes"
       PRINT           " fill with tears"
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              G80,#9c [FALSE] L0008
       JZ              Gcf [TRUE] L0008
       JE              Gcf,#19 [TRUE] L0008
       CALL            R0018 (#9e,G6e,Gcf) -> -(SP)
       RTRUE           
L0008: JE              G80,#9e,#32,#18 [FALSE] RFALSE
       JIN             "pinch of spices","it" [FALSE] L0017
       JE              Gcf,#4f [FALSE] L0009
       TEST_ATTR       "butler",#05 [TRUE] L0009
       PRINT           "You try to get close enough to"
       CALL            R0003 (#4f) -> -(SP)
       PRINT_RET       ", but he backs off. "That wouldn't be seemly, Miss.""
L0009: JE              Gcf,#0f [FALSE] L0010
       CALL            R0306 -> -(SP)
       RTRUE           
L0010: JE              Gcf,#39,#a3,#b1 [FALSE] L0011
       PRINT_PADDR     S047
       RTRUE           
L0011: JE              Gcf,#08 [FALSE] L0012
       GET_PARENT      "Crulley" -> -(SP)
       JE              (SP)+,#02 [FALSE] L0012
       PRINT_OBJ       "Crulley"
       PRINT_RET       " snaps the whip at your elbow. "Keep away from me!""
L0012: PRINT           "You blow"
       CALL            R0003 (#19) -> -(SP)
       PRINT           " off your fingertips"
       INSERT_OBJ      "pinch of spices","spices"
       JZ              Gcf [TRUE] L0013
       TEST_ATTR       Gcf,#05 [FALSE] L0014
L0013: PRINT_PADDR     G51
       RTRUE           
L0014: JE              Gcf,#42 [FALSE] L0016
       JE              G00,#b0 [FALSE] L0016
       INC             G01
       INSERT_OBJ      "pinch of spices","spices"
       REMOVE_OBJ      "Lafond"
       STORE           G43,#00
       CALL            R0020 (#d67e) -> -(SP)
       CALL            R0020 (#daf3) -> -(SP)
       CALL            R0023 (#a968,#0f) -> -(SP)
       SET_ATTR        "ornate door",#10
       REMOVE_OBJ      Gbf
       PRINT           ", directly into Lafond's face. He sneezes, his eyes
watering from the heat of the peppers. Reaching blindly for some wine, he
instead upsets the table, shattering a glass. Lafond stumbles cursing out of
the room, in search of relief"
       JG              G06,#0a [FALSE] L0015
       INSERT_OBJ      "it",G00
       INSERT_OBJ      "your reticule","it"
       INSERT_OBJ      "linen chemise","it"
       CLEAR_ATTR      "linen chemise",#06
       SET_ATTR        "linen chemise",#16
       INSERT_OBJ      "your kid slippers","it"
       SET_ATTR        "your kid slippers",#16
       PRINT           ". You stand up, quickly pulling on"
       CALL            R0003 (#11) -> -(SP)
L0015: PRINT_PADDR     G51
       RTRUE           
L0016: PRINT           " at"
       CALL            R0006 -> -(SP)
       PRINT           ". "
       PRINT_PADDR     Gc4
       RTRUE           
L0017: PRINT_PADDR     G89
       PRINT           " any "
       PRINT_OBJ       "spices"
       PRINT_PADDR     G51
       RTRUE           

Routine R0523, 0 locals ()

       JE              G00,#1e,#b0 [TRUE] L0001
       TEST_ATTR       "Helena Louise",#0d [FALSE] RFALSE
L0001: JIN             "Cookie",G00 [TRUE] RFALSE
       CALL            R0287 (S247) -> -(SP)
       RET_POPPED      

Routine R0524, 0 locals ()

       JIN             "pinch of spices","it" [FALSE] RFALSE
       INSERT_OBJ      "pinch of spices","spices"
       PRINT_PADDR     Ge8
       PRINT           "The spices dribble out from between your fingers"
       PRINT_PADDR     G51
       RTRUE           

Routine R0525, 0 locals ()

       JE              G80,#38 [FALSE] L0002
       PRINT           "Cabbage leaves are etched onto the mirror-bright "
       PRINT_OBJ       "silver tray"
       PRINT           ", forming a well in the center where the metallic
stalks meet."
       GET_PARENT      "cold chicken" -> -(SP)
       JE              (SP)+,#c6 [FALSE] L0001
       PRINT           " Some "
       PRINT_OBJ       "cold chicken"
       PRINT           " is heaped around the dry spices filling"
       CALL            R0008 (#04) -> -(SP)
       RET_POPPED      
L0001: NEW_LINE        
       RTRUE           
L0002: JE              G80,#6d,#31 [FALSE] L0003
       JE              Gcf,#dc,#d3,#67 [FALSE] L0003
       CALL            R0421 (#c6) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#35 [FALSE] L0004
       PRINT           "You have no other way of carrying"
       CALL            R0008 (#4c) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#32,#31 [FALSE] RFALSE
       JE              Gcf,#c6 [FALSE] RFALSE
       PRINT           "Because of the metal work, nothing sits flat on"
       CALL            R0008 (#c6) -> -(SP)
       RET_POPPED      

Routine R0526, 0 locals ()

       JE              G80,#5b,#38 [FALSE] L0002
       JIN             "spices","well" [FALSE] L0001
       CALL            R0004 (#04) -> -(SP)
       PRINT           " in"
       CALL            R0003 (#c6) -> -(SP)
       PRINT           " is filled with a mixture of salt and other spices,
predominantly red and black pepper"
       PRINT_PADDR     G51
       RTRUE           
L0001: PRINT_RET       "It is empty."
L0002: JE              G80,#6a [FALSE] RFALSE
       CALL            R0004 (#04) -> -(SP)
       PRINT_RET       " is part of the tray!"

Routine R0527, 0 locals ()

       JE              G80,#6a,#34 [FALSE] L0001
       PRINT           "You sprinkle some "
       PRINT_OBJ       "spices"
       PRINT           " on a wing and nibble at it. The peppery heat hits you
like a wave, leaving you gasping, eyes watering"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#38 [FALSE] L0003
       JIN             "cold chicken","silver tray" [FALSE] L0002
       CALL            R0018 (#38,#c6) -> -(SP)
       RTRUE           
L0002: CALL            R0004 (#4c) -> -(SP)
       PRINT           " looks tasty"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#32 [FALSE] L0004
       JE              G6e,#62,#19 [FALSE] L0004
       CALL            R0018 (#34,#4c) -> -(SP)
       RTRUE           
L0004: JE              G80,#31 [FALSE] RFALSE
       JE              G6e,#4c [FALSE] RFALSE
       CALL            R0018 (#34,#4c) -> -(SP)
       RTRUE           

Routine R0528, 0 locals ()

       JE              G80,#38,#5b,#7f [FALSE] L0001
       PRINT_RET       "Some wine sloshes around inside."
L0001: JE              G80,#6a [FALSE] L0002
       TEST_ATTR       "flagon",#11 [FALSE] L0002
       PRINT           "Lafond takes it from you, setting it on"
       CALL            R0008 (#4b) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#30 [FALSE] L0003
       JE              G00,#b0 [FALSE] L0003
       INSERT_OBJ      "flagon","table"
       PRINT           "You set"
       CALL            R0003 (#c7) -> -(SP)
       PRINT           " on"
       CALL            R0008 (#4b) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#9c,#35 [FALSE] L0004
       JE              G00,#b0 [FALSE] L0004
       JIN             "Lafond",G00 [FALSE] L0004
       CALL            R0289 (Gcc) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#2f [FALSE] RFALSE
       PRINT_PADDR     S047
       RTRUE           

Routine R0529, 0 locals ()

       JE              G80,#3b,#2e,#34 [TRUE] L0001
       JE              G80,#83 [FALSE] L0004
L0001: CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       CALL            R0530 (#5a) -> -(SP)
       RET_POPPED      
L0002: CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0530 (#8d) -> -(SP)
       RET_POPPED      
L0003: PRINT_PADDR     G89
       PRINT_RET       " a goblet of wine!"
L0004: JE              G6e,#16 [FALSE] L0010
       JE              G80,#6f [FALSE] L0010
       JZ              Gcf [FALSE] L0006
       JE              G81,"spill" [FALSE] L0005
       JE              G00,#b0 [FALSE] L0005
       JIN             "Lafond",G00 [FALSE] L0005
       CALL            R0289 (Gcc) -> -(SP)
       RET_POPPED      
L0005: CALL            R0188 (S259,G6e) -> -(SP)
       RET_POPPED      
L0006: JE              Gcf,#c7 [FALSE] L0007
       PRINT           "It's not sanitary to pour wine back into"
       CALL            R0008 (#c7) -> -(SP)
       RET_POPPED      
L0007: JE              Gcf,#8d,#5a [FALSE] L0009
       GET_PROP        Gcf,#0e -> -(SP)
       JE              (SP)+,#01,#03 [FALSE] L0008
       PRINT_RET       "It is already full!"
L0008: CALL            R0531 (Gcf) -> -(SP)
       RET_POPPED      
L0009: PRINT_PADDR     G8a
       RTRUE           
L0010: JE              G80,#6e,#70 [FALSE] L0011
       JE              G6e,#16 [FALSE] L0011
       CALL            R0188 (S259,G6e) -> -(SP)
       RET_POPPED      
L0011: JE              G80,#9c,#30 [FALSE] RFALSE
       JE              G00,#b0 [FALSE] L0012
       JIN             "Lafond",G00 [FALSE] L0012
       CALL            R0536 -> -(SP)
       RET_POPPED      
L0012: CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [TRUE] L0013
       GET_PROP        "blue goblet",#0e -> -(SP)
       JG              (SP)+,#00 [FALSE] L0013
       CALL            R0018 (#30,#5a) -> -(SP)
       RTRUE           
L0013: CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       GET_PROP        "green goblet",#0e -> -(SP)
       JG              (SP)+,#00 [FALSE] L0014
       CALL            R0018 (#30,#8d) -> -(SP)
       RTRUE           
L0014: PRINT_PADDR     G89
       PRINT_RET       " any wine!"

Routine R0530, 1 local (0000)

       GET_PROP        L00,#0e -> -(SP)
       JE              (SP)+,#00,#02 [FALSE] L0001
       PRINT           "There is no wine in"
       CALL            R0008 (L00) -> -(SP)
       RTRUE           
L0001: JE              G80,#83,#3b [FALSE] L0002
       CALL            R0018 (#3b,L00,Gcf) -> -(SP)
       RTRUE           
L0002: GET_PROP        L00,#0e -> -(SP)
       JE              (SP)+,#03 [FALSE] L0003
       CALL            R0021 (#ac18) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0023 (#ac18,#02) -> -(SP)
L0003: STORE           G3a,#01
       PUT_PROP        L00,#0e,#00
       PRINT           "You empty"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " of wine"
       PRINT_PADDR     G51
       RTRUE           

Routine R0531, 2 locals (0000, 0000)

       GET_PROP        "flagon",#0e -> -(SP)
       JE              (SP)+,#02 [FALSE] L0001
       PUT_PROP        L00,#0e,#03
       JUMP            L0002
L0001: GET_PROP        L00,#0e -> -(SP)
       ADD             (SP)+,#01 -> -(SP)
       PUT_PROP        L00,#0e,(SP)+
L0002: JZ              L01 [FALSE] RTRUE
       PRINT           "You fill"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " with wine"
       PRINT_PADDR     G51
       RTRUE           

Routine R0532, 0 locals ()

       JZ              G3c [TRUE] RFALSE
       JE              G3c,#4f [FALSE] L0004
       JE              Ga4,#02 [FALSE] L0004
       INC             G01
       SET_ATTR        "butler",#05
       JIN             "butler",G00 [TRUE] L0001
       PRINT_PADDR     Ge8
       PRINT           "You hear a "thump-phoosh," like someone slumping
against a wall"
       PRINT_PADDR     G51
       JUMP            L0003
L0001: JE              G00,#b0 [FALSE] L0003
       CALL            R0295 (#79,G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       REMOVE_OBJ      "leather bottle"
       PRINT_PADDR     Ge8
       PRINT           "With a grunt of anger, the butler realizes he has been
drugged. He grabs"
       CALL            R0003 (#79) -> -(SP)
       PRINT           " and throws it out"
       CALL            R0008 (#d3) -> -(SP)
L0002: PRINT_PADDR     Ge8
       CALL            R0004 (G3c) -> -(SP)
       LOADW           G1d,Ga4 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
L0003: STORE           G3c,#00
       RTRUE           
L0004: JIN             G3c,G00 [FALSE] L0005
       PRINT_PADDR     Ge8
       CALL            R0004 (G3c) -> -(SP)
       LOADW           G1d,Ga4 -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
L0005: CALL            R0023 (#ab95,#01) -> -(SP)
       INC             Ga4
       RET             Ga4

Routine R0533, 0 locals ()

       JE              G00,#30 [FALSE] L0001
       PRINT_PADDR     Ge8
       PRINT           "Without warning,"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           " relaxes, eyes closed, asleep."
       NEW_LINE        
L0001: INC             G01
       STORE           G85,#01
       STORE           Gea,#01
       RFALSE          

Routine R0534, 0 locals ()

       PRINT_PADDR     Ge8
       INC             Gdd
       LOADW           Gd7,Gdd -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       JL              Gdd,#04 [FALSE] L0001
       CALL            R0023 (#ac18,#02) -> -(SP)
       RET_POPPED      
L0001: JE              Gdd,#04 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       JE              G00,#b2,#cf [FALSE] L0002
       CALL            R0287 (S335) -> -(SP)
       RET_POPPED      
L0002: CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0021 (#837a) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0021 (#7569) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0003: CALL            R0287 (S292) -> -(SP)
       RET_POPPED      
L0004: PRINT           "You wake at sunrise"
       TEST_ATTR       "Lafond's Bedroom",#13 [TRUE] L0005
       PRINT           ", too late to save your father or his friend Jamison"
L0005: CALL            R0289 (S325) -> -(SP)
       RET_POPPED      

Routine R0535, 0 locals ()

       JE              G80,#5b,#38 [FALSE] L0001
       CALL            R0004 (G6e) -> -(SP)
       GET_PROP        G6e,#0e -> -(SP)
       LOADW           G5c,(SP)+ -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#25,#68 [FALSE] L0002
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#2f [FALSE] L0004
       JZ              Gcf [TRUE] L0003
       CALL            R0530 (Gcf) -> -(SP)
       RET_POPPED      
L0003: CALL            R0530 (G6e) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#3e [FALSE] L0005
       CALL            R0018 (#6f,#16,G6e) -> -(SP)
       RTRUE           
L0005: JE              G80,#30 [FALSE] L0006
       JE              G00,#b0 [FALSE] L0006
       INSERT_OBJ      G6e,"table"
       PRINT           "You set"
       CALL            R0005 -> -(SP)
       PRINT           " on"
       CALL            R0008 (#4b) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#9e,#2b,#9c [FALSE] L0007
       CALL            R0536 -> -(SP)
       RET_POPPED      
L0007: JE              G80,#6a [FALSE] RFALSE
       JE              G6e,#66 [FALSE] L0008
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0008: JE              G6e,#8d [FALSE] L0009
       JL              G06,#03 [FALSE] L0009
       JE              G00,#b0 [FALSE] L0009
       PRINT_OBJ       "Lafond"
       PRINT_RET       " stops you. "That is mine.""
L0009: CALL            R0295 (#5a) -> -(SP)
       JZ              (SP)+ [FALSE] L0010
       CALL            R0295 (#8d) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0010: PRINT_PADDR     G19
       PRINT           " a goblet"
       PRINT_PADDR     G51
       RTRUE           

Routine R0536, 0 locals ()

       JE              G6e,#5a,#8d [FALSE] L0001
       REMOVE_OBJ      G6e
       PUT_PROP        G6e,#0e,#00
       PRINT           "The delicate glass of"
       CALL            R0005 -> -(SP)
       PRINT           " shatters into pieces."
       NEW_LINE        
       JUMP            L0003
L0001: JE              G6e,#16 [FALSE] L0002
       PRINT           "You dash"
       CALL            R0003 (#16) -> -(SP)
       PRINT           " into Lafond's face."
       NEW_LINE        
       JUMP            L0003
L0002: CALL            R0307 -> -(SP)
L0003: JE              G00,#b0 [FALSE] RTRUE
       JIN             "Lafond",G00 [FALSE] RTRUE
       CALL            R0289 (Gcc) -> -(SP)
       RET_POPPED      

Routine R0537, 2 locals (0000, 0000)

       JE              L00,#01 [FALSE] L0009
       STORE           L01,#be
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L01,#42
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L01,#39
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L01,#b1
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L01,#a3
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       STORE           L01,#10
       CALL            R0346 (L01) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
L0001: CALL            R0356 (L01) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#9e [FALSE] L0003
       PRINT_RET       "You missed."
L0003: JE              G6e,#6d [FALSE] L0004
       JE              G80,#58,#38 [FALSE] L0004
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0004: JE              G6e,#a5 [FALSE] L0006
       JE              G80,#38 [FALSE] L0005
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0005: JE              G80,#4c,#23 [FALSE] RFALSE
       CALL            R0018 (#91,#38) -> -(SP)
       RTRUE           
L0006: JE              G80,#4d [FALSE] L0007
       CALL            R0018 (#91,#38) -> -(SP)
       RTRUE           
L0007: JE              G80,#91 [FALSE] L0008
       JE              G6e,#1f [FALSE] L0008
       CALL            R0018 (#91,#38) -> -(SP)
       RTRUE           
L0008: JE              G80,#99,#98,#13 [FALSE] RFALSE
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "No one is listening to you."
       NEW_LINE        
       CALL            R0301 -> -(SP)
       RTRUE           
L0009: JE              L00,#02 [FALSE] L0010
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0010
       SET_ATTR        "Captain Jamison",#09
       SET_ATTR        "Lafond",#09
       SET_ATTR        "Cookie",#09
       RTRUE           
L0010: JE              L00,#03 [FALSE] RFALSE
       PRINT           "You are on a wide balcony overlooking the ballroom. A
hallway lies to the north.
   Down on"
       PRINT_PADDR     S039
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0011
       CALL            R0003 (#6e) -> -(SP)
       PRINT           "s are pressed in a wide circle around Nicholas and
Lafond. Cookie stands anxiously in the door to the veranda, near"
       CALL            R0003 (#39) -> -(SP)
       PRINT           " and Lucy"
       JUMP            L0013
L0011: TEST_ATTR       "Ballroom",#06 [FALSE] L0012
       PRINT           " a small number of Jamison's scruffiest men are
corralling"
       CALL            R0003 (#6e) -> -(SP)
       PRINT           " into a screaming huddle in the center of the room"
       JUMP            L0013
L0012: PRINT           " you see myriad colors as the guests weave the
intricate steps of their dances"
L0013: PRINT_CHAR      '.'
       RTRUE           

Routine R0538, 1 local (0000)

       JZ              L00 [TRUE] L0001
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       CALL            R0539 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#38 [FALSE] L0002
       CALL            R0539 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#1f,#20,#91 [FALSE] L0014
       TEST_ATTR       "rope",#06 [FALSE] L0003
       CALL            R0004 (#38) -> -(SP)
       PRINT           " is looped over the railing -- you'd hang "
       PRINT_OBJ       "yourself"
       PRINT_PADDR     G51
       RTRUE           
L0003: JIN             "Cookie",G00 [FALSE] L0004
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [FALSE] L0004
       PRINT_OBJ       "Cookie"
       PRINT_RET       " grabs hold of you, "Ye lost yer mind, lass!""
L0004: PRINT           ""Aaieeee!" The cry comes uncalled to your lips as you
swoop down from the balcony"
       JZ              G99 [FALSE] L0005
       PRINT           ", petticoats flying,"
L0005: PRINT           " on the end of"
       CALL            R0008 (#38) -> -(SP)
       PRINT_PADDR     Ge8
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [TRUE] L0012
       JL              Gc6,#0f [FALSE] L0011
       CALL            R0020 (#dde3) -> -(SP)
       CLEAR_ATTR      "rapier",#09
       INSERT_OBJ      "Captain Jamison","Beach"
       CLEAR_ATTR      "Captain Jamison",#09
       INSERT_OBJ      "Lafond","Ballroom"
       CLEAR_ATTR      "Lafond",#09
       INSERT_OBJ      "your father","Beach"
       INSERT_OBJ      "Lucy","Beach"
       INSERT_OBJ      "Cookie","Beach"
       CLEAR_ATTR      "Cookie",#09
       CLEAR_ATTR      "Ballroom",#06
       SET_ATTR        "french door",#10
       SET_ATTR        "Lafond",#0d
       INC             G01
       JIN             "blue goblet","it" [FALSE] L0006
       REMOVE_OBJ      "blue goblet"
       JUMP            L0007
L0006: JIN             "green goblet","it" [FALSE] L0007
       REMOVE_OBJ      "green goblet"
L0007: JIN             "pinch of spices","it" [FALSE] L0008
       INSERT_OBJ      "pinch of spices","spices"
L0008: CALL            R0303 (#c0,#a5) -> -(SP)
       STORE           G06,#01
       CALL            R0023 (#e1c9,#06) -> -(SP)
       PRINT           "Your timing is perfect: you slam into Lafond just as he
steps into his lunge. His rapier stabs wildly, piercing Nicholas's shoulder,
missing his heart. You and Lafond roll into a snowball of "
       JZ              G99 [FALSE] L0009
       PRINT           "petticoats"
       JUMP            L0010
L0009: PRINT           "breeches"
L0010: PRINT           " and brocade, dropping everything between you."
       CALL            R0010 (#0f) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "Nicholas shouts, from far away, "Let me go! Let me
deliver Lafond to a 'better' world."
   "A gentleman can't kill an unconscious man!" That is Papa's voice. "And
you're in no shape to continue, Nicholas. Rodney -- help my daughter. I'll take
Nick."
   Cookie leans over you. "We must get back to the ship, Miss. Dragoons
surround the house." Nicholas, injured but still arguing, is already on the
veranda, half-forced, half-supported by your father, shadowed by Lucy. Cookie
helps you to your feet and rushes after them, expecting you to follow. Lafond
lies nearby, apparently unconscious"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#a5) -> -(SP)
       RET_POPPED      
L0011: CALL            R0287 (S293) -> -(SP)
       RET_POPPED      
L0012: TEST_ATTR       "Ballroom",#06 [FALSE] L0013
       CALL            R0287 (S105) -> -(SP)
       RET_POPPED      
L0013: CALL            R0289 (S294) -> -(SP)
       RET_POPPED      
L0014: JE              G80,#a2 [FALSE] L0016
       JE              Gcf,#2f [FALSE] L0016
       TEST_ATTR       "rope",#06 [FALSE] L0015
       PRINT_PADDR     Gd6
       RTRUE           
L0015: SET_ATTR        "rope",#06
       PRINT_RET       "Tied."
L0016: JE              G80,#77,#a9 [FALSE] L0018
       TEST_ATTR       "rope",#06 [FALSE] L0017
       CLEAR_ATTR      "rope",#06
       PRINT           "Untied. "
       CALL            R0004 (#3b) -> -(SP)
       PRINT_RET       " swings slightly, dribs of hot wax spilling to the
floor."
L0017: CALL            R0307 -> -(SP)
       RET_POPPED      
L0018: JE              G80,#6a [FALSE] L0021
       TEST_ATTR       "rope",#06 [FALSE] L0019
       CALL            R0357 (S340) -> -(SP)
       RET_POPPED      
L0019: TEST_ATTR       "rope",#05 [FALSE] L0020
       CALL            R0356 (#38) -> -(SP)
       RET_POPPED      
L0020: PRINT           "Pray describe what you intend to do with"
       CALL            R0008 (#38) -> -(SP)
       RET_POPPED      
L0021: JE              G80,#3d,#65,#63 [FALSE] RFALSE
       CALL            R0004 (#3b) -> -(SP)
       PRINT           " swings, but is too heavy for you to pull up"
       PRINT_PADDR     G51
       RTRUE           

Routine R0539, 0 locals ()

       PRINT           "A "
       PRINT_OBJ       "chandelier"
       PRINT           " is held above"
       PRINT_PADDR     S039
       PRINT           " by a rope and pulley system, so that the servants can
lower it to light and snuff its candles. Several feet of "
       PRINT_OBJ       "rope"
       PRINT           " hang down from the pulley, the "
       TEST_ATTR       "rope",#06 [FALSE] L0001
       PRINT           "excess tied around"
       JUMP            L0002
L0001: PRINT           "end resting on"
L0002: CALL            R0003 (#2f) -> -(SP)
       PRINT_CHAR      '.'
       JE              G80,#38 [FALSE] RTRUE
       NEW_LINE        
       RTRUE           

Routine R0540, 0 locals ()

       JE              G80,#19 [FALSE] L0001
       CALL            R0356 (#3b) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#38 [FALSE] L0002
       PRINT           "Held in place by a rope running through a pulley,"
       CALL            R0003 (#3b) -> -(SP)
       PRINT           " gently swings its one hundred candles over"
       PRINT_PADDR     S039
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#91,#a9 [FALSE] RFALSE
       CALL            R0017 (#38) -> -(SP)
       RET_POPPED      

Routine R0541, 0 locals ()

       JE              G80,#5b [FALSE] L0001
       CALL            R0018 (#38,#67) -> -(SP)
       RTRUE           
L0001: JE              G80,#1a,#1f,#23 [FALSE] RFALSE
       CALL            R0004 (#c5) -> -(SP)
       PRINT_RET       " is too narrow."

Routine R0542, 0 locals ()

       JE              G80,#35 [FALSE] L0001
       PRINT_RET       "You start to empty it, but reconsider."
L0001: JE              G80,#36 [FALSE] L0002
       JE              Gcf,#0e [FALSE] L0002
       CALL            R0018 (#35,#0e) -> -(SP)
       RTRUE           
L0002: JE              G80,#6a [FALSE] L0003
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] L0003
       TEST_ATTR       "powder horn",#13 [TRUE] L0003
       CLEAR_ATTR      "gunpowder",#14
       PRINT_RET       "Taken."
L0003: JE              G80,#3e [FALSE] L0004
       JE              G6e,#0e [FALSE] L0004
       CALL            R0348 (S163) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#31,#6f [FALSE] L0005
       JE              Gcf,#0e [FALSE] L0005
       CALL            R0018 (#3e,Gcf,G6e) -> -(SP)
       RTRUE           
L0005: JE              G80,#25,#68 [FALSE] L0006
       PRINT_PADDR     G0e
       PRINT_PADDR     Gbc
       RTRUE           
L0006: JE              G80,#5b,#38 [FALSE] L0007
       PRINT           "Almost triangular, with a little spout on top,"
       CALL            R0003 (#0e) -> -(SP)
       PRINT           " is similar to the one your father used to carry when
hunting. It is filled with a mixture of "
       PRINT_OBJ       "gunpowder"
       PRINT           " and shot"
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              G80,#6a [FALSE] RFALSE
       CALL            R0350 ("powder",#0e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0295 (#0e) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "You pour out some "
       PRINT_OBJ       "gunpowder"
       PRINT_RET       ". It blows away."

Routine R0543, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "Two exits lead from this cavernous room, north and
south. The walls drip with wet, forming a huge pool on the floor."
       RTRUE           
L0001: JE              L00,#06 [FALSE] RFALSE
       JZ              Ge3 [FALSE] L0005
       JIN             "your father",G00 [FALSE] L0005
       PRINT_PADDR     Ge8
       PRINT           "Your father stops, smiling at"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           ", "Hello, chum, how are you?" He bends over the
creature, and "
       JZ              G79 [TRUE] L0002
       STORE           Gc9,#06
       CALL            R0023 (#5073,#02) -> -(SP)
       INSERT_OBJ      "garter","your father"
       CLEAR_ATTR      "garter",#09
       PRINT           "laughs. "That's my Lucy! Never one to shirk belling the
cat. What a woman! Have you been to the kitchen, dear?" He slips off"
       CALL            R0003 (#58) -> -(SP)
       PRINT           " and"
       JUMP            L0003
L0002: JZ              G85 [TRUE] L0003
       PRINT           "scratches its bumpy snout, muttering, "Never seen you
sleep like this before." It stirs to life as "
       PRINT_OBJ       "your father"
L0003: PRINT           " walks over to you by the north entrance. The reptile"
       JZ              G85 [TRUE] L0004
       PRINT           ", waking,"
L0004: STORE           Ge3,#01
       STORE           Gea,#00
       STORE           G79,#00
       STORE           G85,#00
       CLEAR_ATTR      "garter",#11
       SET_ATTR        "garter",#17
       PRINT_RET       " lunges after him, choking on its chain."
L0005: JZ              G62 [FALSE] RFALSE
       JIN             "Cookie",G00 [FALSE] RFALSE
       STORE           G62,#01
       SET_ATTR        "crocodile",#09
       PRINT_PADDR     Ge8
       PRINT           "Cookie rushes at"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           ", crying, "I'll take care of this monster, sweetheart.
You run by and do what you must do." He dives headlong into"
       CALL            R0003 (#20) -> -(SP)
       JIN             "rapier","Cookie" [FALSE] L0006
       INSERT_OBJ      "rapier",G00
       PRINT           ", throwing free"
       CALL            R0003 (#10) -> -(SP)
L0006: PRINT_PADDR     G51
       RTRUE           

Routine R0544, 0 locals ()

       JZ              G62 [TRUE] L0001
       CALL            R0545 -> -(SP)
       RET_POPPED      
L0001: JZ              G79 [FALSE] L0002
       JZ              G85 [TRUE] L0003
L0002: PRINT           "You edge past the reptile"
       PRINT_PADDR     G51
       NEW_LINE        
       RET             #02
L0003: CALL            R0022 (#b539) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0020 (#b539) -> -(SP)
L0004: CALL            R0004 (#bb) -> -(SP)
       PRINT           " roars at you. You retreat to the north entrance and
the monster stills, waiting, chops open, almost smiling"
       PRINT_PADDR     G51
       RFALSE          

Routine R0545, 0 locals ()

       JZ              G62 [FALSE] L0001
       RET             #02
L0001: CLEAR_ATTR      "Dungeon",#13
       STORE           G41,#01
       TEST_ATTR       "Crulley",#0d [TRUE] L0004
       JZ              Gb7 [FALSE] L0004
       STORE           G9f,#01
       CALL            R0023 (#c67d,#ffff) -> -(SP)
       PRINT           "A whip cracks "
       JZ              Gaf [TRUE] L0002
       STORE           Gaf,#00
       PRINT           "the air. "Flogs me, will ye, Cap'n? Taste it "
       PRINT_OBJ       "yourself"
       PRINT           ", har." Jamison groans, half conscious"
       JUMP            L0003
L0002: PRINT           "against flesh"
L0003: PRINT           ". You rush in"
       PRINT_PADDR     G51
       NEW_LINE        
L0004: RET             #02

Routine R0546, 1 local (0000)

       JZ              L00 [TRUE] L0006
       JE              L00,#09 [TRUE] RTRUE
       TEST_ATTR       "crocodile",#13 [FALSE] L0001
       PRINT_PADDR     Ge8
       CALL            R0004 (#bb) -> -(SP)
       JUMP            L0002
L0001: SET_ATTR        "crocodile",#13
       PRINT_PADDR     Ge8
       PRINT           "A "
       PRINT_OBJ       "crocodile"
L0002: PRINT           " lies half in the pool, "
       JZ              G85 [TRUE] L0003
       PRINT           "sleeping."
       RTRUE           
L0003: PRINT           "gazing at you,"
       JZ              G79 [TRUE] L0004
       CALL            R0002 (#58) -> -(SP)
       PRINT           " around its snout."
       RTRUE           
L0004: JZ              Gea [TRUE] L0005
       PRINT           " mouth closed."
       RTRUE           
L0005: PRINT           " with baleful eyes, jaws wide open. Dagger-sharp teeth
glint in"
       CALL            R0003 (#09) -> -(SP)
       PRINT           "light."
       RTRUE           
L0006: JE              G80,#32 [FALSE] L0011
       JE              G6e,#58 [FALSE] L0011
       JZ              Ge3 [TRUE] L0007
       REMOVE_OBJ      G6e
       PRINT_PADDR     G14
       PRINT           "Screaming, you dash back, dropping"
       CALL            R0003 (#58) -> -(SP)
       PRINT           " into"
       CALL            R0008 (#20) -> -(SP)
       RET_POPPED      
L0007: JZ              Gea [TRUE] L0010
       INSERT_OBJ      "garter","crocodile"
       SET_ATTR        "garter",#09
       STORE           G79,#01
       SET_ATTR        "garter",#11
       CLEAR_ATTR      "garter",#17
       JZ              G85 [FALSE] L0009
       CALL            R0021 (#abfb) -> -(SP)
       JZ              (SP)+ [FALSE] L0008
       INC             G01
L0008: PRINT           "With great daring and greater speed, you slip"
       CALL            R0003 (#58) -> -(SP)
       PRINT           " around"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           "'s snout. "
       CALL            R0004 (#bb) -> -(SP)
       PRINT_RET       " thrashes about, unable to remove it."
L0009: CALL            R0004 (#58) -> -(SP)
       PRINT           " fits on its snout like a ring on a wedding finger"
       PRINT_PADDR     G51
       RTRUE           
L0010: CALL            R0004 (#58) -> -(SP)
       PRINT           " won't fit around that open maw"
       PRINT_PADDR     G51
       RTRUE           
L0011: JZ              G85 [TRUE] L0012
       JE              G80,#ac [FALSE] L0012
       PRINT_RET       "That is the last thing you want to do!"
L0012: JE              G80,#4b,#4f [FALSE] L0013
       PRINT_RET       "The very thought makes you shiver."
L0013: JE              G80,#6b,#32,#31 [TRUE] L0014
       JE              G80,#23 [FALSE] L0015
L0014: PRINT           "It would be safer to stay distant and throw things at"
       CALL            R0008 (#bb) -> -(SP)
       RET_POPPED      
L0015: CALL            R0350 ("mouth",#bb) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       LOADW           G57,#00 -> -(SP)
       JZ              (SP)+ [FALSE] L0016
       LOADW           G57,#01 -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
L0016: JE              G80,#66 [FALSE] L0017
       JE              Gcf,#58 [FALSE] L0017
       CALL            R0018 (#32,#58,#bb) -> -(SP)
       RTRUE           
L0017: JE              G80,#9f,#3b,#9c [TRUE] L0018
       JE              G80,#9e [FALSE] L0030
L0018: JZ              G62 [TRUE] L0019
       CALL            R0004 (#bb) -> -(SP)
       PRINT_RET       " is too busy fighting Cookie to notice."
L0019: JE              G6e,#79 [FALSE] L0020
       PRINT_RET       "You might need that later."
L0020: JE              G6e,#df [TRUE] RFALSE
       JZ              G85 [TRUE] L0022
       JE              G6e,#0b [FALSE] L0021
       JE              G80,#3b [FALSE] L0021
       CALL            R0018 (#ac,#bb,#0b) -> -(SP)
       RTRUE           
L0021: PRINT           "But"
       CALL            R0003 (#bb) -> -(SP)
       PRINT_RET       " is asleep."
L0022: JE              G6e,#62,#19 [FALSE] L0023
       JIN             "pinch of spices","it" [FALSE] L0023
       INSERT_OBJ      "pinch of spices","spices"
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " blinks its eyes once, but takes no other notice of"
       CALL            R0008 (#19) -> -(SP)
       RET_POPPED      
L0023: JZ              Ge3 [TRUE] L0024
       REMOVE_OBJ      G6e
       PRINT_PADDR     G14
       CALL            R0004 (G6e) -> -(SP)
       PRINT           " drops ignored into"
       CALL            R0008 (#20) -> -(SP)
       RTRUE           
L0024: JZ              G79 [TRUE] L0025
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " is helpless! "
       PRINT_PADDR     Gda
       RTRUE           
L0025: REMOVE_OBJ      G6e
       STORE           Gea,#01
       CALL            R0023 (#b539,#02) -> -(SP)
       CALL            R0004 (#bb) -> -(SP)
       PRINT           " snaps its jaws shut as"
       CALL            R0005 -> -(SP)
       JE              G6e,#0b [FALSE] L0026
       PRINT           " bounce"
       PRINT           " off its hide, sinking into"
       CALL            R0008 (#20) -> -(SP)
       RET_POPPED      
L0026: PRINT           " disappear"
       JE              G6e,#c2 [TRUE] L0027
       PRINT_CHAR      's'
L0027: PRINT           " into"
       JE              G6e,#64 [FALSE] L0029
       JZ              G4f [TRUE] L0028
       CALL            R0023 (#abfb,#03) -> -(SP)
L0028: PRINT_RET       " its maw."
L0029: CALL            R0008 (#20) -> -(SP)
       RET_POPPED      
L0030: JE              G80,#4c [FALSE] L0031
       PRINT_RET       "You can't jump that far."
L0031: JE              G80,#9e,#a0,#3c [FALSE] L0032
       CALL            R0018 (#9f,Gcf,#bb) -> -(SP)
       RTRUE           
L0032: JE              G80,#38 [FALSE] L0038
       JZ              G62 [TRUE] L0033
       CALL            R0004 (#20) -> -(SP)
       PRINT           " boils with the bodies of"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           " and"
       CALL            R0008 (#a3) -> -(SP)
       RET_POPPED      
L0033: JZ              G79 [TRUE] L0035
       CALL            R0004 (#bb) -> -(SP)
       PRINT           "'s snout is pinned closed by"
       CALL            R0002 (#58) -> -(SP)
       JZ              G85 [TRUE] L0034
       PRINT_PADDR     G1f
L0034: PRINT_PADDR     G51
       RTRUE           
L0035: JZ              Gea [TRUE] L0037
       PRINT           "Two gleaming teeth poke out of"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           "'s closed mouth"
       JZ              G85 [TRUE] L0036
       PRINT_PADDR     G1f
L0036: PRINT_PADDR     G51
       RTRUE           
L0037: CALL            R0004 (#bb) -> -(SP)
       PRINT           " smiles at you invitingly, white teeth shining in"
       CALL            R0003 (#09) -> -(SP)
       PRINT_RET       "light."
L0038: JE              G80,#4e,#2b,#16 [FALSE] RFALSE
       JZ              G62 [TRUE] L0039
       PRINT_OBJ       "Cookie"
       PRINT           " is seeing to"
       CALL            R0008 (#bb) -> -(SP)
       RET_POPPED      
L0039: JZ              G85 [TRUE] L0040
       PRINT           "Harm a sleeping animal! "
       PRINT_PADDR     Gda
       RTRUE           
L0040: JZ              G79 [TRUE] L0041
       PRINT           "The tear welling up in"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           "'s eye is rather poignant. You can't bear to hurt the
beast in this state"
       PRINT_PADDR     G51
       RTRUE           
L0041: PRINT           "You have no wish to get any closer to"
       CALL            R0008 (#bb) -> -(SP)
       RET_POPPED      

Routine R0547, 0 locals ()

       JZ              G79 [FALSE] RFALSE
       JIN             "crocodile",G00 [FALSE] RFALSE
       STORE           Gea,#00
       PRINT_PADDR     Ge8
       PRINT           "With an inaudible creak,"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           "'s mouth opens again"
       PRINT_PADDR     G51
       RTRUE           

Routine R0548, 0 locals ()

       JE              G80,#90,#24,#23 [FALSE] L0001
       PRINT           "You splash around at the outskirts of"
       CALL            R0008 (#20) -> -(SP)
       RET_POPPED      
L0001: JE              G80,#9e,#9f,#9c [FALSE] L0004
       JE              G6e,#64 [FALSE] L0002
       JZ              Gea [FALSE] L0002
       JZ              G85 [FALSE] L0002
       PRINT           "With a terrific splash,"
       CALL            R0003 (#bb) -> -(SP)
       PRINT           " throws itself after"
       CALL            R0005 -> -(SP)
       PRINT           ". "
       CALL            R0018 (#9c,#64,#bb) -> -(SP)
       RTRUE           
L0002: JE              G6e,#79 [FALSE] L0003
       CALL            R0018 (#9c,#79,#bb) -> -(SP)
       RTRUE           
L0003: REMOVE_OBJ      G6e
       CALL            R0004 (G6e) -> -(SP)
       PRINT           " splashes into"
       CALL            R0008 (#20) -> -(SP)
       RET_POPPED      
L0004: JE              G80,#5b [FALSE] L0005
       PRINT           "It's too murky to see anything"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#31 [FALSE] L0006
       REMOVE_OBJ      G6e
       CALL            R0004 (G6e) -> -(SP)
       PRINT_RET       " sinks from sight."
L0006: JE              G80,#2f,#2e [FALSE] RFALSE
       PRINT_RET       "Yechh!"

Routine R0549, 1 local (0000)

       JE              L00,#03 [FALSE] L0001
       PRINT           "You sense, rather than see, the rusty skeletons of old
cages and torture devices that line the walls of this cavernous room. One
flaming torch, high on a wall, casts mad licks of light into the darkness.
Passages lead north and west. Set deep in the rocky floor is a"
       CALL            R0353 (#81,#01) -> -(SP)
       PRINT_CHAR      ' '
       PRINT_OBJ       "trapdoor"
       PRINT_PADDR     G51
       PRINT_PADDR     Ge8
       CALL            R0552 -> -(SP)
       RET_POPPED      
L0001: JE              L00,#01 [FALSE] L0005
       JZ              Gb3 [TRUE] L0005
       JIN             "Crulley",G00 [FALSE] L0005
       TEST_ATTR       "Crulley",#0d [TRUE] L0005
       JE              #be,G6e,Gcf [FALSE] L0002
       CALL            R0331 -> -(SP)
       JZ              (SP)+ [FALSE] L0003
L0002: CALL            R0346 (#be) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       CALL            R0346 (#80) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
L0003: PRINT_OBJ       "Crulley"
       PRINT_RET       " growls, "Keep away from 'im.""
L0004: CALL            R0346 (#81) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       JE              G80,#1a,#23 [TRUE] RFALSE
       PRINT_OBJ       "Crulley"
       PRINT_RET       " barks, "Leave that alone.""
L0005: JE              L00,#06 [FALSE] RFALSE
       JZ              Gb7 [TRUE] RFALSE
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Crulley"
       PRINT           " jumps out of the shadows at you."
       CALL            R0287 (G74) -> -(SP)
       RET_POPPED      

Routine R0550, 0 locals ()

       CALL            R0022 (#c67d) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0020 (#c67d) -> -(SP)
       CLEAR_ATTR      "Crulley",#06
       PRINT           ""Come back 'ere, wench!""
       CALL            R0003 (#08) -> -(SP)
       PRINT_PADDR     S116
L0001: JE              G35,#17 [FALSE] L0002
       RET             #ad
L0002: JE              G35,#1c [FALSE] RFALSE
       RET             #30

Routine R0551, 0 locals ()

       JE              G80,#5b,#38 [FALSE] L0001
       CALL            R0552 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#25 [FALSE] L0003
       JZ              Gcf [TRUE] L0002
       CALL            R0018 (#32,#80,Gcf) -> -(SP)
       RTRUE           
L0002: CALL            R0344 (G6e,#00,S054) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#68 [FALSE] L0006
       TEST_ATTR       "pair of manacles",#10 [FALSE] L0004
       PRINT_RET       "They are already open!"
L0004: JE              Gcf,#6c [FALSE] L0005
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0005: PRINT           "It isn't that easy"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G80,#a7,#69 [FALSE] L0009
       JE              Gcf,#6c [FALSE] L0009
       PRINT           "You twist the pin of"
       CALL            R0003 (#6c) -> -(SP)
       PRINT           " in the "
       JIN             "Captain Jamison","pair of manacles" [FALSE] L0008
       INSERT_OBJ      "Captain Jamison",G00
       INC             G01
       SET_ATTR        "pair of manacles",#10
       PRINT           "locks, quickly freeing Nicholas. "
       TEST_ATTR       "Captain Jamison",#05 [FALSE] L0007
       PRINT           "He falls in a faint at your feet"
       PRINT_PADDR     G51
       RTRUE           
L0007: NEW_LINE        
       CALL            R0378 -> -(SP)
       RET_POPPED      
L0008: SET_ATTR        "pair of manacles",#10
       CLEAR_ATTR      "pair of manacles",#0a
       PRINT           "manacles until they pop open"
       PRINT_PADDR     G51
       RTRUE           
L0009: JE              G80,#a7 [FALSE] L0010
       PRINT           "That key is much too large to fit in"
       CALL            R0008 (#80) -> -(SP)
       RET_POPPED      
L0010: JE              G80,#8e,#74 [FALSE] L0011
       CALL            R0018 (#32,#80,#0f) -> -(SP)
       RTRUE           
L0011: JE              G80,#31 [FALSE] L0014
       JE              G6e,#0f [FALSE] L0012
       CALL            R0018 (#32,#80,#0f) -> -(SP)
       RTRUE           
L0012: JE              G6e,#73 [FALSE] L0013
       CALL            R0018 (#a7,#80) -> -(SP)
       RTRUE           
L0013: INSERT_OBJ      G6e,G00
       CALL            R0004 (G6e) -> -(SP)
       PRINT_RET       " drops to the floor."
L0014: JE              G80,#8e,#32 [TRUE] L0015
       JE              G80,#a2 [FALSE] RFALSE
       JE              G81,"fasten","secure","attach" [FALSE] RFALSE
L0015: JE              Gcf,#0f [FALSE] L0016
       PRINT           "Mama would not have praised your intelligence"
       PRINT_PADDR     G51
       RTRUE           
L0016: JE              Gcf,#39 [FALSE] L0017
       STORE           Gc9,#01
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "He wanders off before you can get them on him. "Oh
dear, you have learned atrocious manners these last few year in London!""
L0017: JE              Gcf,#be [FALSE] L0018
       PRINT_PADDR     G75
       PRINT_RET       "lift him high enough."
L0018: PRINT_PADDR     G75
       PRINT           "put that in "
       PRINT_OBJ       "pair of manacles"
       PRINT_RET       "!"

Routine R0552, 0 locals ()

       JIN             "Captain Jamison","pair of manacles" [FALSE] L0001
       PRINT           "Nicholas is spread-eagled against the wall, shackled in
the "
       PRINT_OBJ       "pair of manacles"
       PRINT_CHAR      '.'
       JUMP            L0003
L0001: JIN             "it","pair of manacles" [FALSE] L0002
       PRINT           "You lean against the wall, one arm raised above "
       PRINT_OBJ       "your head"
       PRINT           ", cuffed in a manacle."
       JUMP            L0003
L0002: PRINT           "A "
       PRINT_OBJ       "pair of manacles"
       PRINT           " hangs from iron chains attached high on the wall."
L0003: JE              G80,#5b,#38 [FALSE] RTRUE
       NEW_LINE        
       RTRUE           

Routine R0553, 0 locals ()

       JE              G00,#02 [FALSE] RFALSE
       RET             #81

Routine R0554, 0 locals ()

       JE              G80,#63,#65,#68 [TRUE] L0001
       JE              G80,#5f,#25 [FALSE] L0002
L0001: CALL            R0344 (#81,S090,#00) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#5b,#5c [FALSE] L0005
       TEST_ATTR       "trapdoor",#10 [FALSE] L0004
       JIN             "Crulley","trapdoor" [FALSE] L0003
       PRINT_OBJ       "Crulley"
       PRINT_RET       " is slowly climbing up the well."
L0003: PRINT           "You smell salt water and mold, but you can see nothing"
       PRINT_PADDR     G51
       RTRUE           
L0004: PRINT           "It"
       PRINT_PADDR     Gd8
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#8d,#1a,#23 [FALSE] L0008
       TEST_ATTR       "trapdoor",#10 [FALSE] L0006
       PRINT           "You start to climb down the well, but lose your footing
on the slimy rock."
       TEST_ATTR       "Crulley",#0d [FALSE] L0007
       PRINT           " At least you take"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " with you as you fall."
       JUMP            L0007
L0006: PRINT           "As you stand on"
       CALL            R0003 (#81) -> -(SP)
       PRINT           ", the rotted wood tears away."
L0007: CALL            R0287 (G74) -> -(SP)
       RET_POPPED      
L0008: JE              G80,#32 [FALSE] L0009
       TEST_ATTR       "trapdoor",#10 [FALSE] L0009
       CALL            R0018 (#9c,G6e,#81) -> -(SP)
       RTRUE           
L0009: JE              G80,#33,#31,#9c [TRUE] L0010
       JE              G80,#9e [FALSE] RFALSE
L0010: JE              G6e,#10 [FALSE] L0011
       PRINT_OBJ       "Captain Jamison"
       PRINT_RET       " would not thank you for doing that."
L0011: JE              G6e,#df [TRUE] RFALSE
       TEST_ATTR       "Crulley",#0d [FALSE] L0012
       CALL            R0018 (#9c,G6e,#08) -> -(SP)
       RTRUE           
L0012: REMOVE_OBJ      G6e
       PRINT           "You drop"
       CALL            R0005 -> -(SP)
       PRINT           " into the well. Several seconds later you hear a tiny
splash"
       PRINT_PADDR     G51
       RTRUE           

Routine R0555, 1 local (0000)

       JE              L00,#06 [FALSE] L0004
       TEST_ATTR       "your father",#13 [TRUE] L0004
       SET_ATTR        "your father",#13
       CLEAR_ATTR      "your father",#09
       INC             G01
       JE              G46,#42 [FALSE] L0001
       CALL            R0023 (#dc74,#0f) -> -(SP)
L0001: CALL            R0023 (#d115,#02) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "As you enter, a tall bony man moves out of the
darkness. "Papa," you cry, rushing into his arms.
   "Why, hullo, my dear." He hugs you tightly. "Nick certainly took his time
about fetching you."
       JZ              G99 [FALSE] L0002
       TEST_ATTR       "linen chemise",#06 [TRUE] L0003
L0002: PRINT           "" He squints in horror at your clothes. "I have always
found the London fashions quite abominable."
       TEST_ATTR       "linen chemise",#06 [TRUE] L0003
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           " Aren't you a trifle cold?"
L0003: PRINT_RET       """
L0004: JZ              L00 [FALSE] RFALSE
       RFALSE          

Routine R0556, 0 locals ()

       JE              G80,#1a,#23 [FALSE] L0003
       JE              G00,#9b,#b4,#1a [FALSE] L0001
       PRINT_PADDR     Ga5
       RTRUE           
L0001: JE              G00,#22,#3e [FALSE] L0002
       CALL            R0300 (#1a) -> -(SP)
       RET_POPPED      
L0002: JE              G00,#ad [FALSE] RFALSE
       CALL            R0300 (#1c) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#38,#58 [FALSE] RFALSE
       JE              G00,#9b,#b4,#1a [FALSE] L0004
       CALL            R0169 -> -(SP)
       RET_POPPED      
L0004: PRINT           "You would do better to enter it"
       PRINT_PADDR     G51
       RTRUE           

Routine R0557, 0 locals ()

       JE              G80,#32,#38,#6a [TRUE] L0001
       JE              G80,#8e [FALSE] RFALSE
L0001: JE              G00,#5c,#a9 [FALSE] L0002
       CALL            R0356 (G6e) -> -(SP)
       RET_POPPED      
L0002: CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] RFALSE
       REMOVE_OBJ      "pile of clothes"
       SET_ATTR        "pile of clothes",#13
       INSERT_OBJ      "shirt","it"
       INSERT_OBJ      "breeches","it"
       CLEAR_ATTR      "shirt",#09
       CLEAR_ATTR      "breeches",#09
       SET_ATTR        "shirt",#13
       SET_ATTR        "breeches",#13
       INC             G01
       JE              G80,#38 [FALSE] L0003
       PRINT           "To get a better look, y"
       JUMP            L0004
L0003: PRINT_CHAR      'Y'
L0004: PRINT           "ou pick up"
       CALL            R0003 (#7d) -> -(SP)
       PRINT           ". It separates into a pair of "
       PRINT_OBJ       "breeches"
       PRINT           " and"
       CALL            R0007 (#82) -> -(SP)
       RET_POPPED      

Routine R0558, 1 local (0000)

       LOADW           G26,#00 -> L00
       LOADW           G26,#01 -> -(SP)
       JE              "clothe",L00,(SP)+ [FALSE] L0003
       JE              G00,#7f [FALSE] L0001
       TEST_ATTR       "shirt",#13 [TRUE] L0001
       TEST_ATTR       "breeches",#13 [TRUE] L0001
       RET             #7d
L0001: JE              G80,#94,#77 [FALSE] RFALSE
       CALL            R0261 -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       RET             #aa
L0002: CALL            R0146 (#01) -> -(SP)
       RET             #aa
L0003: LOADW           G26,#00 -> L00
       LOADW           G26,#01 -> -(SP)
       JE              "dress",L00,(SP)+ [FALSE] RFALSE
       JE              G80,#94,#77 [FALSE] L0005
       CALL            R0261 -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       RET             #aa
L0004: CALL            R0146 (#01) -> -(SP)
       RET             #aa
L0005: JE              G80,#30 [FALSE] RFALSE
       TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0006
       CALL            R0295 (#54) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT_CHAR      '['
       PRINT_OBJ       "cotton frock"
       PRINT_CHAR      ']'
       NEW_LINE        
       RET             #54
L0006: TEST_ATTR       "cotton frock",#16 [FALSE] L0007
       CALL            R0295 (#c8) -> -(SP)
       JZ              (SP)+ [TRUE] L0007
       PRINT_CHAR      '['
       PRINT_OBJ       "beautiful ball gown"
       PRINT_CHAR      ']'
       NEW_LINE        
       RET             #c8
L0007: CALL            R0357 (S064) -> -(SP)
       RET             #aa

Routine R0559, 0 locals ()

       JE              G80,#38 [FALSE] L0009
       JE              G6e,#54 [FALSE] L0005
       JZ              Gdb [TRUE] L0001
       CALL            R0561 (#54) -> -(SP)
       RTRUE           
L0001: PRINT           "It is your favorite old frock, looking rather
bedraggled without its hoops"
       TEST_ATTR       "cotton frock",#06 [TRUE] L0002
       SET_ATTR        "cotton frock",#06
       PRINT           ", which you hadn't time to put on during the pirate
attack"
L0002: PRINT           ". "
       TEST_ATTR       "cotton frock",#0d [FALSE] L0003
       PRINT           "There is a tear out of the skirt"
       JUMP            L0004
L0003: PRINT           "The worn fabric of the skirt often catches on things,
tearing"
L0004: PRINT_PADDR     G51
       RTRUE           
L0005: JE              G6e,#c8 [FALSE] L0006
       PRINT           "Of cream silk, heavily embroidered on the stiffened
skirt and stomacher,"
       CALL            R0003 (#c8) -> -(SP)
       PRINT           " is a work of art"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G6e,#82 [FALSE] L0008
       CALL            R0004 (#82) -> -(SP)
       PRINT           " is clean and not too big"
       TEST_ATTR       "shirt",#0d [FALSE] L0007
       PRINT_PADDR     S320
L0007: PRINT_PADDR     G51
       RTRUE           
L0008: CALL            R0004 (#c2) -> -(SP)
       PRINT_RET       " are about your size."
L0009: JE              G80,#5c,#5b [FALSE] L0010
       TEST_ATTR       G6e,#16 [FALSE] L0010
       PRINT           "Just"
       CALL            R0002 (#11) -> -(SP)
       PRINT           ", and a couple fleas"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              G80,#8e [FALSE] L0021
       JE              G6e,#c8,#54 [FALSE] L0011
       TEST_ATTR       "shirt",#16 [TRUE] L0012
       TEST_ATTR       "breeches",#16 [TRUE] L0012
L0011: JE              G6e,#c2,#82 [FALSE] L0013
       TEST_ATTR       "cotton frock",#16 [TRUE] L0012
       TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0013
L0012: CALL            R0004 (G6e) -> -(SP)
       PRINT           " doesn't fit over what you are already wearing"
       PRINT_PADDR     G51
       RTRUE           
L0013: JZ              Gdb [TRUE] L0014
       JE              G6e,#54 [FALSE] L0014
       PRINT_RET       "The clammy cotton makes it too uncomfortable to wear."
L0014: SET_ATTR        G6e,#16
       INSERT_OBJ      G6e,"it"
       JE              G6e,#82,#c2 [FALSE] L0015
       JIN             "pile of clothes","Sleeping Cupboard" [FALSE] L0015
       SET_ATTR        "pile of clothes",#13
       REMOVE_OBJ      "pile of clothes"
       INC             G01
L0015: JE              G6e,#c2 [FALSE] L0017
       PRINT           "You tuck"
       CALL            R0003 (#11) -> -(SP)
       TEST_ATTR       "shirt",#16 [FALSE] L0016
       STORE           G99,#01
       SET_ATTR        "linen chemise",#06
       PRINT           " and"
       CALL            R0003 (#82) -> -(SP)
L0016: PRINT           " into the pants. You look a little fat, but now you can
move freely"
       PRINT_PADDR     G51
       RTRUE           
L0017: JE              G6e,#82 [FALSE] L0019
       TEST_ATTR       "breeches",#16 [FALSE] L0018
       SET_ATTR        "linen chemise",#06
       STORE           G99,#01
L0018: PRINT           "It fits loosely, masking your figure"
       PRINT_PADDR     G51
       RTRUE           
L0019: SET_ATTR        "linen chemise",#06
       JZ              G91 [FALSE] L0020
       JE              G6e,#c8 [FALSE] L0020
       STORE           G91,#01
       INC             G01
       CALL            R0004 (#c8) -> -(SP)
       PRINT           " fits perfectly, the creamy silk bringing a glow to
your cheeks. You comb your hair with your fingers and bite your lips to make
them red"
       PRINT_PADDR     G51
       RTRUE           
L0020: PRINT           "You don"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0021: JE              G80,#77,#94 [FALSE] L0027
       TEST_ATTR       G6e,#16 [FALSE] L0027
       JE              G6e,#54 [FALSE] L0022
       CLEAR_ATTR      G6e,#16
       CLEAR_ATTR      "linen chemise",#06
       PRINT           "You take off"
       CALL            R0003 (#54) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           
L0022: JE              G6e,#c2,#82 [FALSE] L0023
       STORE           G99,#00
L0023: CLEAR_ATTR      G6e,#16
       CLEAR_ATTR      "linen chemise",#06
       PRINT           "You remove"
       CALL            R0005 -> -(SP)
       PRINT           ", exposing your "
       JE              G6e,#c2 [FALSE] L0024
       PRINT           "ankles"
       JUMP            L0026
L0024: JE              G6e,#82 [FALSE] L0025
       PRINT           "elbows"
       JUMP            L0026
L0025: PRINT_OBJ       "linen chemise"
L0026: PRINT_PADDR     G51
       RTRUE           
L0027: JE              G80,#79 [TRUE] L0028
       JE              G80,#89 [FALSE] L0039
       CALL            R0295 (#2a) -> -(SP)
       JZ              (SP)+ [TRUE] L0039
L0028: JE              G6e,#54 [FALSE] L0037
       GET_PARENT      "rag" -> -(SP)
       JZ              (SP)+ [FALSE] L0035
       INSERT_OBJ      "rag","it"
       JE              Gdb,#a6 [FALSE] L0029
       STORE           G5e,#a6
       JUMP            L0031
L0029: JE              Gdb,#8c [FALSE] L0030
       STORE           G5e,#8c
       JUMP            L0031
L0030: STORE           G5e,#00
L0031: SET_ATTR        "rag",#13
       TEST_ATTR       "cotton frock",#0d [TRUE] L0032
       SET_ATTR        "cotton frock",#0d
L0032: PRINT           "You "
       JE              G80,#89 [FALSE] L0033
       INSERT_OBJ      "dagger","it"
       PRINT           "cut"
       JUMP            L0034
L0033: PRINT           "rip"
L0034: PRINT           " a large rag out of"
       CALL            R0008 (#54) -> -(SP)
       RET_POPPED      
L0035: CALL            R0295 (#ca) -> -(SP)
       JZ              (SP)+ [FALSE] L0036
       PRINT           "There already is a rag around here somewhere"
       PRINT_PADDR     G51
       RTRUE           
L0036: PRINT_PADDR     G19
       CALL            R0007 (#ca) -> -(SP)
       RET_POPPED      
L0037: JE              G6e,#c8 [FALSE] L0038
       CALL            R0004 (#c8) -> -(SP)
       PRINT           " is too fine to ruin"
       PRINT_PADDR     G51
       RTRUE           
L0038: PRINT           "The fabric is too tightly woven"
       PRINT_PADDR     G51
       RTRUE           
L0039: JE              G80,#6a [FALSE] RFALSE
       JE              G6e,#c2,#82 [FALSE] RFALSE
       JIN             "pile of clothes",G00 [FALSE] RFALSE
       CALL            R0018 (#6a,#7d) -> -(SP)
       RTRUE           

Routine R0560, 0 locals ()

       JE              G80,#8b [FALSE] L0003
       JE              G00,#59,#94,#63 [TRUE] L0001
       JE              G00,#49,#97 [FALSE] L0002
L0001: CALL            R0438 -> -(SP)
       RET_POPPED      
L0002: CALL            R0367 -> -(SP)
       RET_POPPED      
L0003: CALL            R0351 (#de) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       JZ              G5e [FALSE] L0004
       PRINT_PADDR     G0e
       PRINT           "wet rag here"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#38 [FALSE] L0006
       JZ              G5e [FALSE] L0005
       PRINT           "It is a fairly hefty scrap of fabric"
       PRINT_PADDR     G51
       RTRUE           
L0005: CALL            R0561 (#ca) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#79 [FALSE] L0007
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0007: JE              G80,#a2 [FALSE] L0008
       PRINT           "It won't stay tied"
       PRINT_PADDR     G51
       RTRUE           
L0008: JE              G80,#31 [FALSE] L0010
       JE              Gcf,#27,#6f [FALSE] L0009
       CALL            R0307 -> -(SP)
       RET_POPPED      
L0009: JE              Gcf,#bc [FALSE] RFALSE
       CALL            R0367 -> -(SP)
       RET_POPPED      
L0010: JE              G80,#9c [FALSE] RFALSE
       JE              Gcf,#bc [FALSE] RFALSE
       CALL            R0018 (#a1,#ca,#6f) -> -(SP)
       RTRUE           

Routine R0561, 1 local (0000)

       PRINT           "The "
       PRINT_OBJ       L00
       PRINT           " is soaked and dripping with "
       JE              L00,#ca [FALSE] L0001
       JE              G5e,#8c [TRUE] L0002
L0001: JE              L00,#54 [FALSE] L0003
       JE              Gdb,#8c [FALSE] L0003
L0002: PRINT           "rum"
       JUMP            L0006
L0003: JE              L00,#ca [FALSE] L0004
       JE              G5e,#a6 [TRUE] L0005
L0004: JE              L00,#54 [FALSE] L0006
       JE              Gdb,#a6 [FALSE] L0006
L0005: PRINT           "water"
L0006: PRINT_PADDR     G51
       RTRUE           

Routine R0562, 0 locals ()

       JE              G80,#38 [FALSE] L0004
       JE              G6e,#11 [FALSE] L0003
       TEST_ATTR       "linen chemise",#06 [FALSE] L0001
       PRINT           "It's covered by other clothes"
       PRINT_PADDR     G51
       RTRUE           
L0001: CALL            R0004 (#11) -> -(SP)
       PRINT           ", kneelength and sleeveless, clings damply to your legs
and torso"
       TEST_ATTR       "linen chemise",#0d [FALSE] L0002
       PRINT_PADDR     S320
L0002: PRINT_PADDR     G51
       RTRUE           
L0003: JE              G6e,#0d [FALSE] RFALSE
       PRINT           "They are dainty yet practical kidskin shoes"
       PRINT_PADDR     G51
       RTRUE           
L0004: JE              G80,#5c,#5b [FALSE] L0006
       JE              G6e,#11 [FALSE] L0005
       PRINT           "Just you and your "
       PRINT_OBJ       "unmentionables"
       PRINT_PADDR     G51
       RTRUE           
L0005: PRINT           "Your feet are in"
       CALL            R0008 (#0d) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#77,#94 [FALSE] L0009
       PRINT           "But"
       JE              G6e,#0d [FALSE] L0007
       CALL            R0005 -> -(SP)
       PRINT           " are so comfortable"
       JUMP            L0008
L0007: PRINT           " that wouldn't be decent"
L0008: PRINT_RET       "!"
L0009: JE              G80,#89,#79 [FALSE] RFALSE
       PRINT_PADDR     G75
       PRINT           "bring yourself to ruin"
       CALL            R0008 (#11) -> -(SP)
       RET_POPPED      

Routine R0563, 0 locals ()

       JE              G80,#8e [FALSE] L0003
       JZ              G79 [TRUE] L0001
       CALL            R0018 (#6a,#58) -> -(SP)
       RTRUE           
L0001: TEST_ATTR       "breeches",#16 [FALSE] L0002
       PRINT           "One doesn't wear"
       CALL            R0002 (#58) -> -(SP)
       PRINT           " over "
       PRINT_OBJ       "breeches"
       PRINT_RET       "!"
L0002: SET_ATTR        "garter",#16
       INSERT_OBJ      "garter","it"
       PRINT           "You slide"
       CALL            R0003 (#58) -> -(SP)
       PRINT           " up around your thigh"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#6a,#77 [FALSE] L0005
       JZ              G79 [TRUE] L0005
       JZ              G85 [FALSE] L0004
       PRINT           "The reptile surges forward as you remove"
       CALL            R0003 (#58) -> -(SP)
       CALL            R0287 (S127) -> -(SP)
       RET_POPPED      
L0004: STORE           G79,#00
       CLEAR_ATTR      "garter",#11
       SET_ATTR        "garter",#17
       INSERT_OBJ      "garter","it"
       PRINT_RET       "You slip it off the scaly snout."
L0005: JE              G80,#6a [FALSE] L0007
       TEST_ATTR       "garter",#13 [TRUE] L0006
       JE              G00,#15 [FALSE] L0006
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] L0006
       PRINT           "Taken.
   Lucy kisses "
       PRINT_OBJ       "your head"
       PRINT           " and returns to the fire, humming"
       PRINT_PADDR     G51
       RTRUE           
L0006: JIN             "garter","your father" [FALSE] RFALSE
       INSERT_OBJ      "garter","it"
       PRINT_RET       ""Take it, dear," Papa says."
L0007: JE              G80,#32,#31 [FALSE] L0013
       JE              Gcf,#58 [FALSE] L0013
       JIN             "garter","it" [TRUE] L0008
       PRINT_PADDR     G89
       CALL            R0008 (#58) -> -(SP)
       RET_POPPED      
L0008: JE              G81,"throw" [FALSE] L0009
       JE              G6e,#8f [FALSE] L0009
       CALL            R0018 (#9c,#8f,#58) -> -(SP)
       RTRUE           
L0009: JE              G6e,#8f [FALSE] L0012
       TEST_ATTR       "garter",#16 [FALSE] L0010
       PRINT           "Not while you're wearing"
       CALL            R0008 (#58) -> -(SP)
       RET_POPPED      
L0010: INSERT_OBJ      "stone","garter"
       JZ              G6d [FALSE] L0011
       STORE           G6d,#01
       INC             G01
L0011: PRINT           "You slip"
       CALL            R0003 (#8f) -> -(SP)
       PRINT           " into"
       CALL            R0008 (#58) -> -(SP)
       RET_POPPED      
L0012: PRINT           "It falls through"
       CALL            R0008 (#58) -> -(SP)
       RET_POPPED      
L0013: JE              G80,#16 [FALSE] L0015
       TEST_ATTR       G6e,#1f [TRUE] L0014
       JE              G6e,#bb [FALSE] L0015
L0014: CALL            R0367 -> -(SP)
       RET_POPPED      
L0015: JE              G80,#81,#9c [FALSE] L0019
       JIN             "stone","garter" [FALSE] L0017
       JZ              Gcf [FALSE] L0016
       CALL            R0018 (#81,#8f) -> -(SP)
       RTRUE           
L0016: CALL            R0307 -> -(SP)
       RET_POPPED      
L0017: JZ              Gcf [FALSE] L0018
       JE              G80,#9c [FALSE] L0018
       INSERT_OBJ      "garter",G00
       PRINT_RET       "Thrown."
L0018: JE              G6e,#8f [FALSE] RFALSE
       CALL            R0357 (S295,#58) -> -(SP)
       RET_POPPED      
L0019: JE              G80,#82 [FALSE] L0020
       JE              G6e,#58 [FALSE] L0020
       CALL            R0295 (#8f) -> -(SP)
       JZ              (SP)+ [TRUE] L0020
       CALL            R0018 (#81,Gcf,#8f) -> -(SP)
       RTRUE           
L0020: JE              G80,#38 [FALSE] RFALSE
       CALL            R0004 (#58) -> -(SP)
       PRINT           " is "
       JZ              G79 [TRUE] L0021
       PRINT           "stretched taut around the jaws of"
       CALL            R0003 (#bb) -> -(SP)
       PRINT_PADDR     G51
       RTRUE           
L0021: PRINT           "made of abnormally strong, red, stretchy lace"
       PRINT_PADDR     G51
       RTRUE           

Routine R0564, 0 locals ()

       PRINT           "Shh! Why do you think they're called "
       PRINT_OBJ       "unmentionables"
       PRINT_RET       "?"

Routine R0565, 0 locals ()

       JE              G80,#31,#77,#30 [TRUE] L0001
       JE              G80,#72,#33,#32 [TRUE] L0001
       JE              G80,#9f,#9e,#9c [TRUE] L0001
       JE              G80,#3b [FALSE] L0002
L0001: JE              G6e,#df [FALSE] L0002
       PRINT           "A lady is never without her reticule"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#31 [FALSE] L0003
       JE              G6e,#10,#45 [FALSE] L0003
       CALL            R0004 (G6e) -> -(SP)
       PRINT           " won't fit in"
       CALL            R0008 (#df) -> -(SP)
       RET_POPPED      
L0003: JE              G80,#38 [FALSE] RFALSE
       PRINT           "You and Mama made the little drawstring bag a few
months before she passed on. It's amazing how much it can hold"
       PRINT_PADDR     G51
       RTRUE           

Routine R0566, 0 locals ()

       JE              G80,#38 [FALSE] L0001
       PRINT           "This is"
       CALL            R0003 (#ba) -> -(SP)
       CALL            R0355 -> -(SP)
       RET_POPPED      
L0001: JE              G80,#6d,#ae [FALSE] RFALSE
       JIN             "butler",G00 [FALSE] RFALSE
       TEST_ATTR       "butler",#05 [TRUE] RFALSE
       CALL            R0593 (G6e) -> -(SP)
       RET_POPPED      

Routine R0567, 1 local (0000)

       JE              G80,#8a [FALSE] L0001
       PRINT           "You jerk"
       CALL            R0003 (#0b) -> -(SP)
       PRINT           " away from your nose after one brief ammoniac whiff.
Your burning nostrils make you feel more alert"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#ae [FALSE] L0003
       JE              G00,#02 [FALSE] L0002
       TEST_ATTR       "Captain Jamison",#05 [FALSE] L0002
       CALL            R0018 (#ac,#be,#0b) -> -(SP)
       RTRUE           
L0002: CALL            R0018 (#8a,#0b) -> -(SP)
       RTRUE           
L0003: JE              G80,#aa [FALSE] L0007
       JZ              Gcf [FALSE] L0005
       CALL            R0298 (G00,#1f,S235) -> L00
       JZ              L00 [TRUE] L0004
       JE              L00,#08 [TRUE] L0004
       CALL            R0018 (#ac,L00,#0b) -> -(SP)
       RTRUE           
L0004: CALL            R0018 (#8a,#0b) -> -(SP)
       RTRUE           
L0005: TEST_ATTR       Gcf,#1f [FALSE] L0006
       CALL            R0018 (#ac,Gcf,#0b) -> -(SP)
       RTRUE           
L0006: PRINT_PADDR     G0c
       RTRUE           
L0007: JE              G80,#32,#72 [FALSE] L0008
       TEST_ATTR       Gcf,#1f [FALSE] L0008
       CALL            R0018 (#ac,Gcf,#0b) -> -(SP)
       RTRUE           
L0008: JE              G80,#3b [FALSE] L0009
       CALL            R0018 (#ac,Gcf,#0b) -> -(SP)
       RTRUE           
L0009: JE              G80,#3c,#ac [FALSE] L0014
       JE              G6e,#be [FALSE] L0010
       CALL            R0568 -> -(SP)
       RET_POPPED      
L0010: JE              G6e,#0f [FALSE] L0011
       CALL            R0018 (#8a,#0b) -> -(SP)
       RTRUE           
L0011: JE              G6e,#4f [FALSE] L0012
       TEST_ATTR       "butler",#05 [FALSE] L0012
       PRINT_PADDR     G75
       PRINT           "wake him"
       PRINT_PADDR     G51
       RTRUE           
L0012: JE              G6e,#08 [FALSE] L0013
       TEST_ATTR       "Crulley",#05 [FALSE] L0013
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "Are you sure that's really wise?"
L0013: CALL            R0362 -> -(SP)
       PRINT           " doesn't need reviving"
       PRINT_PADDR     G51
       RTRUE           
L0014: JE              G80,#38 [FALSE] L0015
       PRINT           "You always carry your "
       PRINT_OBJ       "smelling salts"
       PRINT           ", for emergencies. There is a small tag on one side of
them"
       PRINT_PADDR     G51
       RTRUE           
L0015: JE              G80,#75 [FALSE] RFALSE
       PRINT_RET       "It says, "For cases of vapors, hysteria or collapse,
revive persons with the smelling salts.""

Routine R0568, 0 locals ()

       TEST_ATTR       "Captain Jamison",#05 [FALSE] L0003
       INC             G01
       CLEAR_ATTR      "Captain Jamison",#05
       PRINT           "You wave"
       CALL            R0003 (#0b) -> -(SP)
       PRINT           " under Nicholas's nose. He stirs, sneezes and looks at
you blearily. "How --?" he says, bewildered. "Lafond, did he --?" He "
       TEST_ATTR       "linen chemise",#06 [TRUE] L0001
       PRINT           "looks at you in growing horror, glancing from your
chemise to your face, and "
L0001: PRINT           "straightens. "Darling, you are an angel, to have gone
through all this and then rescue me. Your ravisher will not go unpunished." He
squares his shoulders. "For my brother, his wife, and your honor, I will kill
Jean Lafond.""
       NEW_LINE        
       JIN             "Captain Jamison","pair of manacles" [FALSE] L0002
       STORE           Gc9,#0d
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT_RET       "He tugs at his chains with a wry smile. "But I must get
free first. Have you the key?""
L0002: CALL            R0378 -> -(SP)
       RET_POPPED      
L0003: PRINT_RET       "Jamison brushes you away, "Thank you, but I'm not
having the vapors.""

Routine R0569, 0 locals ()

       JE              G80,#25,#68 [FALSE] L0001
       PRINT           "This is a squeezable bottle. You don't need to open or
close it"
       PRINT_PADDR     G51
       RTRUE           
L0001: JE              G80,#6a [FALSE] L0002
       TEST_ATTR       "leather bottle",#13 [TRUE] L0002
       CALL            R0272 (#00) -> -(SP)
       JE              (SP)+,#08,#00 [TRUE] L0002
       INC             G01
       PRINT_RET       "Taken."
L0002: JE              G80,#31,#6f [FALSE] L0003
       JE              Gcf,#79 [FALSE] L0003
       CALL            R0018 (#3e,#79,G6e) -> -(SP)
       RTRUE           
L0003: JE              G80,#6e,#2f [FALSE] L0004
       JE              G6e,#79 [FALSE] L0004
       CALL            R0571 -> -(SP)
       RET_POPPED      
L0004: JE              G80,#6e,#70 [FALSE] L0005
       JE              G6e,#66 [FALSE] L0005
       CALL            R0188 (S272,#66) -> -(SP)
       RET_POPPED      
L0005: JE              G80,#2f [FALSE] L0006
       CALL            R0018 (#6e,#66,#91) -> -(SP)
       RTRUE           
L0006: JE              G80,#3e [FALSE] L0008
       JE              Gcf,#79 [FALSE] L0007
       CALL            R0018 (#6f,Gcf,G6e) -> -(SP)
       RTRUE           
L0007: PRINT_PADDR     G75
       PRINT           "get anything into"
       CALL            R0008 (#79) -> -(SP)
       RET_POPPED      
L0008: JE              G80,#5b,#38 [FALSE] L0010
       PRINT           "It's a small leather bottle, with a tiny label on one
side"
       JG              G70,#00 [FALSE] L0009
       PRINT           ". It appears to be almost empty"
L0009: PRINT_PADDR     G51
       RTRUE           
L0010: JE              G80,#75 [FALSE] RFALSE
       PRINT_RET       "The label reads, "Laudanum drops. Squeeze into a glass
of wine to sleep free of pain and mental anguish.""

Routine R0570, 0 locals ()

       JE              G80,#6e,#31,#6f [TRUE] L0001
       JE              G80,#32 [FALSE] L0002
L0001: JE              G6e,#66 [FALSE] L0002
       CALL            R0571 -> -(SP)
       RET_POPPED      
L0002: JE              G80,#6a [FALSE] L0003
       PRINT           "If you intend to drink"
       CALL            R0003 (#66) -> -(SP)
       PRINT_RET       ", say so."
L0003: JE              G80,#2e,#34 [FALSE] L0004
       CALL            R0018 (#6e,#79,#0f) -> -(SP)
       RTRUE           
L0004: JE              G6e,#66 [FALSE] L0005
       CALL            R0017 (#79,Gcf) -> -(SP)
       RTRUE           
L0005: JE              Gcf,#66 [FALSE] RFALSE
       CALL            R0017 (G6e,#79) -> -(SP)
       RTRUE           

Routine R0571, 0 locals ()

       JE              Gcf,#79 [FALSE] L0001
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0001: TEST_ATTR       Gcf,#1f [FALSE] L0002
       PRINT_PADDR     Gd5
       RTRUE           
L0002: JE              Gcf,#bb [FALSE] L0003
       CALL            R0018 (#31,#79,#bb) -> -(SP)
       RTRUE           
L0003: JL              G70,#03 [FALSE] L0004
       JE              G00,#b0 [TRUE] L0004
       PRINT_RET       "You stop, deciding you might need some later."
L0004: DEC             G70
       JG              G70,#00 [FALSE] RFALSE
       INSERT_OBJ      "leather bottle","it"
       JE              Gcf,#0f [FALSE] L0005
       CALL            R0023 (#ac18,#02) -> -(SP)
       PUT_PROP        "yourself",#0e,#02
       PRINT_PADDR     Gc3
       PRINT           "into"
       CALL            R0003 (#91) -> -(SP)
       PRINT_CHAR      '.'
       JUMP            L0009
L0005: JE              Gcf,#c7 [FALSE] L0006
       PUT_PROP        "flagon",#0e,#02
       CALL            R0572 -> -(SP)
       JUMP            L0009
L0006: JE              Gcf,#64 [FALSE] L0007
       STORE           G4f,#01
       PRINT_PADDR     Gc3
       PRINT           "onto"
       CALL            R0003 (#64) -> -(SP)
       PRINT           ". A patch of salt dissolves as"
       CALL            R0003 (#66) -> -(SP)
       PRINT           " absorbs into the meat."
       JUMP            L0009
L0007: JE              Gcf,#8d,#5a [FALSE] L0008
       GET_PROP        Gcf,#0e -> -(SP)
       ADD             (SP)+,#02 -> -(SP)
       PUT_PROP        Gcf,#0e,(SP)+
       CALL            R0572 -> -(SP)
       JUMP            L0009
L0008: PRINT_PADDR     Gc3
       PRINT           "into"
       CALL            R0006 -> -(SP)
       PRINT_CHAR      '.'
       TEST_ATTR       Gcf,#15 [FALSE] L0009
       PRINT           " It evaporates quickly."
L0009: JZ              G70 [FALSE] L0010
       PRINT_RET       " From the feel of it, the bottle is now empty."
L0010: NEW_LINE        
       RTRUE           

Routine R0572, 0 locals ()

       STORE           Gdf,#01
       PRINT_PADDR     Gc3
       PRINT           "into"
       CALL            R0006 -> -(SP)
       PRINT_CHAR      '.'
       JIN             "Lafond",G00 [FALSE] RTRUE
       PRINT           " You sense Lafond hesitate, then continue primping."
       RTRUE           

Routine R0573, 0 locals ()

       JE              G80,#8e [TRUE] L0001
       JE              G80,#32 [FALSE] L0002
       JE              Gcf,#0f [FALSE] L0002
L0001: CALL            R0004 (#6c) -> -(SP)
       PRINT           " won't stay clasped"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#38 [FALSE] L0003
       PRINT           "All diamonds winking fire, tears of sapphire and
crushed rubies in an oval setting, it is a pity that the clasp of"
       CALL            R0003 (#6c) -> -(SP)
       PRINT           " has broken. The gold pin at the back swings about
uselessly"
       PRINT_PADDR     G51
       RTRUE           
L0003: JE              G80,#41 [FALSE] RFALSE
       PRINT_RET       "That will have to be done by a goldsmith."

Routine R0574, 1 local (0000)

       JZ              L00 [TRUE] L0001
       TEST_ATTR       "hat",#06 [FALSE] RFALSE
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT           "An expensive hat is hanging on"
       CALL            R0002 (#da) -> -(SP)
       PRINT_CHAR      '.'
       RTRUE           
L0001: JE              G80,#38 [FALSE] L0003
       CALL            R0350 ("quill",#85) -> -(SP)
       JZ              (SP)+ [TRUE] L0002
       PRINT_RET       "It's a curling ostrich plume."
L0002: PRINT_RET       "It is a crimson tricorne with a curling ostrich plume
stuck in the crown."
L0003: JE              G80,#8e,#6a [FALSE] L0006
       CALL            R0350 ("quill",#85) -> -(SP)
       JZ              (SP)+ [TRUE] L0004
       CALL            R0004 (#85) -> -(SP)
       PRINT_RET       " looks so drab without its plume that you cannot bear
to."
L0004: TEST_ATTR       "hat",#06 [FALSE] RFALSE
       CLEAR_ATTR      "knob",#05
       SET_ATTR        "knob",#06
       CLEAR_ATTR      "hat",#06
       INSERT_OBJ      "hat","it"
       SET_ATTR        "hat",#13
       JE              G80,#8e [FALSE] L0005
       SET_ATTR        "hat",#16
L0005: CALL            R0575 (S213) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#94,#77 [FALSE] L0007
       TEST_ATTR       "hat",#16 [FALSE] L0007
       CLEAR_ATTR      "hat",#16
       PRINT           "Doffed"
       PRINT_PADDR     G51
       RTRUE           
L0007: JE              G80,#32 [FALSE] RFALSE
       JE              G6e,#85 [FALSE] RFALSE
       JE              Gcf,#26,#0f [FALSE] L0008
       CALL            R0018 (#8e,#85) -> -(SP)
       RTRUE           
L0008: TEST_ATTR       Gcf,#1f [FALSE] L0011
       TEST_ATTR       Gcf,#05 [FALSE] L0009
       PRINT_RET       "It slides off."
L0009: CALL            R0004 (#85) -> -(SP)
       PRINT           " doesn't go with what "
       JE              Gcf,#b1 [FALSE] L0010
       PRINT_CHAR      's'
L0010: PRINT_RET       "he's wearing."
L0011: CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0575, 1 local (0000)

       PRINT_PADDR     L00
       PRINT           " knob on the wall, a low vibration tingles up your legs
from the floor"
       PRINT_PADDR     G51
       RTRUE           

Routine R0576, 2 locals (0000, 0000)

       JZ              L00 [TRUE] L0004
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       JE              G00,#49 [FALSE] L0002
       PRINT_OBJ       "Crulley"
       PRINT           " stands"
       JG              G06,#06 [FALSE] L0001
       PRINT           ", pistol ready,"
       PRINT_PADDR     G2a
       RTRUE           
L0001: PRINT           " with the dragoons."
       RTRUE           
L0002: JE              G00,#50 [FALSE] RFALSE
       PRINT_OBJ       "Crulley"
       PRINT           " the pirate"
       TEST_ATTR       "Crulley",#05 [FALSE] L0003
       PRINT           " lies unconscious on the floor."
       RTRUE           
L0003: PRINT           ", hook raised, leering, comes toward you."
       RTRUE           
L0004: JE              #08,Gb9 [FALSE] L0013
       TEST_ATTR       "Crulley",#05 [FALSE] L0005
       PRINT_PADDR     G12
       RTRUE           
L0005: JE              G80,#99 [FALSE] L0010
       JE              G6e,#0f [FALSE] L0010
       CALL            R0350 ("hook",#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT           "He snarls at the memory, "'Twere bit off by a monster
crocodile.""
       NEW_LINE        
       JUMP            L0009
L0006: JE              Gcf,#42 [FALSE] L0008
       PRINT           ""'E's a hard 'un, who won't take no guff. But 'e pays
well"
       TEST_ATTR       "Beach",#13 [TRUE] L0007
       PRINT           " -- er, so I hear"
L0007: PRINT           ".""
       NEW_LINE        
       JUMP            L0009
L0008: PRINT_OBJ       "Crulley"
       PRINT           " ignores you"
       PRINT_PADDR     G51
L0009: CALL            R0301 -> -(SP)
       RET_POPPED      
L0010: JE              G80,#48 [FALSE] L0011
       PRINT_RET       ""Har-har.""
L0011: JE              G80,#4f [FALSE] L0012
       JE              G6e,#0f [FALSE] L0012
       PRINT_RET       ""Wi' a wannion! I likes me ladies forward!""
L0012: CALL            R0600 (#08) -> L01
       JZ              L01 [TRUE] RFALSE
       JE              L01,#08 [TRUE] RFALSE
       RTRUE           
L0013: JE              G80,#89,#16 [FALSE] L0024
       TEST_ATTR       "Crulley",#05 [FALSE] L0014
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0014: JZ              Gcf [TRUE] L0015
       JE              Gcf,#05 [FALSE] L0019
L0015: JE              G81,"slap" [FALSE] L0016
       PRINT           "Slap! The pirate fingers the red welt left by"
       CALL            R0003 (#05) -> -(SP)
       PRINT_RET       ", and laughs."
L0016: JIN             "coffer","it" [FALSE] L0017
       JZ              Gcf [FALSE] L0017
       CALL            R0018 (#16,#08,#45) -> -(SP)
       RTRUE           
L0017: JIN             "rapier","it" [FALSE] L0018
       JZ              Gcf [FALSE] L0018
       CALL            R0018 (#16,#08,#10) -> -(SP)
       RTRUE           
L0018: CALL            R0373 (S164) -> -(SP)
       RET_POPPED      
L0019: JE              Gcf,#45 [FALSE] L0020
       INC             G6b
       STORE           Gd9,#01
       PRINT           "With all your strength you whack the pirate"
       PRINT_PADDR     Gc1
       CALL            R0008 (Gcf) -> -(SP)
       INSERT_OBJ      "it",G00
       CALL            R0020 (#c510) -> -(SP)
       CALL            R0577 -> -(SP)
       RET_POPPED      
L0020: JE              Gcf,#10 [FALSE] L0023
       TEST_ATTR       "Crulley",#06 [FALSE] L0022
       TEST_ATTR       "Crulley",#0d [FALSE] L0021
       PRINT_PADDR     G75
       PRINT           "very well reach"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " when he's down in"
       CALL            R0008 (#04) -> -(SP)
       RET_POPPED      
L0021: CALL            R0020 (#c67d) -> -(SP)
       INC             G01
       STORE           G9f,#01
       CALL            R0023 (#c6e7,#02) -> -(SP)
       SET_ATTR        "Crulley",#0d
       SET_ATTR        "Crulley",#09
       INSERT_OBJ      "Crulley","trapdoor"
       REMOVE_OBJ      "whip"
       PRINT           "You flick"
       CALL            R0003 (#10) -> -(SP)
       PRINT           " across his chest, barely scratching him. He cries,
"Avast me! Pricked by a woman!" and trips into"
       CALL            R0008 (#81) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "You peer down the hole to find "
       PRINT_OBJ       "Crulley"
       PRINT           " hanging in midair, his hook caught in the rocks a few
yards down. He curses and starts to climb up the sheer slimy walls of"
       CALL            R0008 (#04) -> -(SP)
       RET_POPPED      
L0022: SET_ATTR        "Crulley",#06
       PRINT_OBJ       "Crulley"
       PRINT           " seems more amazed than frightened of your attack,
guessing correctly that you hardly know the tip from the hilt of"
       CALL            R0003 (#10) -> -(SP)
       PRINT           ". He steps sideways in surprise, so he stands at"
       PRINT_PADDR     S038
       CALL            R0008 (#81) -> -(SP)
       RET_POPPED      
L0023: PRINT           "You slap"
       CALL            R0003 (#08) -> -(SP)
       PRINT_PADDR     Gc1
       CALL            R0006 -> -(SP)
       PRINT           ", to no effect"
       PRINT_PADDR     G51
       RTRUE           
L0024: JE              G80,#4f [FALSE] L0025
       STORE           Gb9,#08
       CALL            R0018 (#4f,#0f) -> -(SP)
       STORE           Gb9,#c0
       RTRUE           
L0025: JE              G80,#4e [FALSE] L0026
       CALL            R0373 (S273) -> -(SP)
       RET_POPPED      
L0026: JE              G80,#32,#31,#9c [TRUE] L0027
       JE              G80,#9e [FALSE] L0030
L0027: TEST_ATTR       "Crulley",#0d [FALSE] L0029
       JE              G6e,#10 [FALSE] L0028
       CALL            R0018 (#31,#10,#81) -> -(SP)
       RTRUE           
L0028: JE              G6e,#df [TRUE] RFALSE
       REMOVE_OBJ      G6e
       PRINT_OBJ       "Crulley"
       PRINT           " curses as"
       CALL            R0005 -> -(SP)
       PRINT           " sails past him down into"
       CALL            R0008 (#04) -> -(SP)
       RET_POPPED      
L0029: JE              G6e,#45 [FALSE] RFALSE
       CALL            R0018 (#16,#08,G6e) -> -(SP)
       RET_POPPED      
L0030: JE              G80,#7e [FALSE] L0033
       TEST_ATTR       "Crulley",#05 [FALSE] L0031
       PRINT_RET       "And dirty your lily hands? Never!"
L0031: TEST_ATTR       "Crulley",#0d [FALSE] L0032
       CALL            R0356 (#08) -> -(SP)
       RET_POPPED      
L0032: PRINT_RET       "You are uncomfortably sure he would love to have you
frisk him."
L0033: JE              G80,#3b [FALSE] L0034
       JE              G6e,#ba [FALSE] L0034
       JE              G00,#49 [TRUE] L0034
       PRINT           "He takes it, smiling blackly"
       PRINT_PADDR     G51
       RTRUE           
L0034: JE              G80,#38 [FALSE] RFALSE
       CALL            R0350 ("hook",#08) -> -(SP)
       JZ              (SP)+ [TRUE] L0035
       PRINT_RET       "The hook replaces one of his hands."
L0035: PRINT           "The pirate's unsavory face is crisscrossed with scars,
and those not from shaving nicks, to judge by his scruffy beard. A hook
replaces one of his hands at the end of a torn black sleeve"
       PRINT_PADDR     G51
       RTRUE           

Routine R0577, 0 locals ()

       PRINT_PADDR     Ge8
       JZ              G6b [FALSE] L0001
       TEST_ATTR       "Crulley",#13 [TRUE] L0001
       CALL            R0023 (#8ced,#02) -> -(SP)
       SET_ATTR        "Crulley",#13
       INSERT_OBJ      "Crulley","Cabin"
       CALL            R0023 (#c510,#ffff) -> -(SP)
       SET_ATTR        "door",#0d
       PRINT           "Crash! You whirl around to see"
       CALL            R0003 (#d9) -> -(SP)
       PRINT           " shatter, kicked by a hulking man, his twisted visage
blackened with soot and blood. "
       JUMP            L0002
L0001: JE              G6b,#01 [FALSE] L0002
       PRINT           "The pirate stumbles, dizzy. "
L0002: JE              G6b,#02 [FALSE] L0003
       SET_ATTR        "Crulley",#05
       PRINT_PADDR     G9e
       PRINT_PADDR     G51
       JUMP            L0004
L0003: CALL            R0578 -> -(SP)
L0004: INC             G9f
       RET             G9f

Routine R0578, 0 locals ()

       PRINT_CHAR      '"'
       LOADW           G4d,G9f -> -(SP)
       PRINT_PADDR     (SP)+
       PRINT           "," "
       JE              G6b,#01 [FALSE] L0001
       PRINT           "slurs"
       JUMP            L0002
L0001: PRINT           "sniggers"
L0002: PRINT           " the pirate"
       JE              G9f,#01 [FALSE] L0003
       PRINT           ". His breath is heavy with rum"
       JUMP            L0004
L0003: RANDOM          #64 -> -(SP)
       JL              #3c,(SP)+ [TRUE] L0004
       PRINT           ", advancing toward you"
L0004: PRINT_PADDR     G51
       RTRUE           

Routine R0579, 0 locals ()

       JE              G00,#c1 [FALSE] RFALSE
       STORE           G03,#01
       SET_ATTR        "anchor",#0d
       SET_ATTR        "lever",#0d
       CALL            R0023 (#c618,#14) -> -(SP)
       CALL            R0023 (#837a,#0a) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           ""I gotta let"
       CALL            R0003 (#42) -> -(SP)
       PRINT           " know 'e's comin'.""
       CALL            R0003 (#08) -> -(SP)
       PRINT           " stands on deck above, talking to himself, his voice
floating down through"
       CALL            R0002 (#17) -> -(SP)
       PRINT           " in"
       CALL            R0003 (#b5) -> -(SP)
       PRINT           ". "First, I do in the mates aboard-ship, with this and
t'other mischief," he grunts, and you hear a snapping noise, like a taut rope
being cut. "Now to warn the boss and collect me pay. Off I go, har." He dives
into"
       CALL            R0008 (#60) -> -(SP)
       RET_POPPED      

Routine R0580, 0 locals ()

       CALL            R0382 (G00) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       CALL            R0383 (G00) -> -(SP)
       JZ              (SP)+ [FALSE] L0003
       PRINT_PADDR     Ge8
       PRINT           "Your eyes are drawn to a flicker of light off the sea.
Squinting, you see a man swimming to shore, moonlight flashing off his hook."
       JE              G00,#b9,#bd,#97 [TRUE] L0001
       JE              G00,#72 [FALSE] L0002
L0001: PRINT_RET       " A wisp of breeze brings an odor of onions and rum, and
the occasional gargling chuckle, "...mischief, har...reefs.""
L0002: NEW_LINE        
       RTRUE           
L0003: CALL            R0023 (#c618,#03) -> -(SP)
       RET_POPPED      

Routine R0581, 0 locals ()

       JL              G9f,#07 [FALSE] L0004
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Crulley"
       JE              G9f,#01 [FALSE] L0001
       PRINT           " steps leering out of the shadows and"
L0001: PRINT           " cracks"
       CALL            R0003 (#06) -> -(SP)
       PRINT           " near you, hopping you towards the open "
       PRINT_OBJ       "trapdoor"
       PRINT           ". ""
       JZ              Gd9 [TRUE] L0002
       JE              G9f,#01 [FALSE] L0002
       CALL            R0023 (#5073,#02) -> -(SP)
       STORE           Gc9,#11
       PRINT           "Come to hit me agin, are ye?"
       JUMP            L0003
L0002: STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       CALL            R0001 (G7f) -> -(SP)
       PRINT_PADDR     (SP)+
L0003: PRINT_CHAR      '"'
       NEW_LINE        
       JUMP            L0005
L0004: PRINT_PADDR     Ge8
       PRINT_OBJ       "Crulley"
       PRINT           " snaps"
       CALL            R0003 (#06) -> -(SP)
       PRINT           " around your neck, jerking you sideways and down
through"
       CALL            R0003 (#81) -> -(SP)
       PRINT_CHAR      '.'
       CALL            R0287 (G74) -> -(SP)
L0005: INC             G9f
       RET             G9f

Routine R0582, 0 locals ()

       CALL            R0023 (#c6e7,#ffff) -> -(SP)
       INC             G9f
       JE              G9f,#0a [FALSE] L0004
       STORE           Gb7,#01
       CLEAR_ATTR      "Crulley",#09
       CALL            R0020 (#c6e7) -> -(SP)
       JE              G00,#02 [TRUE] L0001
       CLEAR_ATTR      "Crulley",#0d
       INSERT_OBJ      "Crulley","Dungeon"
       RFALSE          
L0001: TEST_ATTR       "trapdoor",#10 [TRUE] L0002
       PRINT_PADDR     Ge8
       PRINT           "Roaring with anger,"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " slaps"
       CALL            R0003 (#81) -> -(SP)
       PRINT           " back on its hinges and"
       JUMP            L0003
L0002: PRINT_PADDR     Ge8
       PRINT_OBJ       "Crulley"
L0003: PRINT           " leaps out of"
       CALL            R0003 (#04) -> -(SP)
       PRINT           ", seizing you."
       CALL            R0287 (G74) -> -(SP)
       RET_POPPED      
L0004: RANDOM          #64 -> -(SP)
       JL              #32,(SP)+ [TRUE] RFALSE
       JE              G00,#02 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       PRINT           "Sounds of scraping hook against stone and curses echo
out of"
       CALL            R0003 (#04) -> -(SP)
       TEST_ATTR       "trapdoor",#10 [TRUE] L0005
       PRINT           ", muffled by"
       CALL            R0003 (#81) -> -(SP)
L0005: PRINT_PADDR     G51
       RTRUE           

Routine R0583, 0 locals ()

       JE              G80,#6a [FALSE] RFALSE
       PRINT_OBJ       "Crulley"
       PRINT           " snaps"
       CALL            R0003 (#06) -> -(SP)
       PRINT_RET       " near you. "Get away wit' ye.""

Routine R0584, 0 locals ()

       JE              G80,#2b,#4e,#16 [TRUE] L0001
       JE              G80,#4f [FALSE] L0002
L0001: PRINT_OBJ       "Davis"
       PRINT_RET       " dodges."
L0002: JE              G80,#38 [FALSE] L0003
       PRINT_OBJ       "Davis"
       PRINT_RET       " is ugly with fear."
L0003: JE              #d7,Gb9 [FALSE] RFALSE
       CALL            R0614 -> -(SP)
       RET_POPPED      

Routine R0585, 2 locals (0000, 0000)

       JZ              L00 [TRUE] L0007
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       JE              G00,#86 [FALSE] L0001
       PRINT           "An entirely bald man sits here, carving into his peg
leg"
       JUMP            L0006
L0001: JZ              G62 [TRUE] L0002
       PRINT           "The pool is roily with the writhing bodies of"
       CALL            R0003 (#a3) -> -(SP)
       PRINT           " and"
       CALL            R0003 (#bb) -> -(SP)
       JUMP            L0006
L0002: CALL            R0021 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0005
       JE              G00,#49 [FALSE] L0005
       TEST_ATTR       "Cookie",#05 [FALSE] L0004
       PRINT           "Lucy cleans the sand from Quick's quiescent face, as
Papa "
       TEST_ATTR       "Lafond",#05 [FALSE] L0003
       PRINT           "sneaks up the cliff stairs"
       JUMP            L0006
L0003: PRINT           "stands nearby"
       JIN             "garter","your father" [FALSE] L0006
       PRINT           ", holding"
       CALL            R0003 (#58) -> -(SP)
       JUMP            L0006
L0004: PRINT_OBJ       "Cookie"
       PRINT           ", Lucy and your father are moving towards"
       CALL            R0003 (#34) -> -(SP)
       JUMP            L0006
L0005: PRINT_OBJ       "Cookie"
       PRINT           " chews anxiously at a cheroot"
L0006: PRINT_CHAR      '.'
       RTRUE           
L0007: JE              #a3,Gb9 [FALSE] L0025
       TEST_ATTR       "Cookie",#05 [FALSE] L0008
       PRINT_PADDR     G12
       RTRUE           
L0008: JE              G80,#75 [FALSE] L0009
       PRINT_RET       ""I can't read! I'm a cook, not a gentleman!""
L0009: JE              G80,#48 [FALSE] L0010
       PRINT           ""Hullo -- boy!" He winks at you"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              G80,#4a,#49 [FALSE] L0012
       JE              G00,#86 [FALSE] L0011
       PRINT           ""Eh? Don't be panicking. We'll be fine." He carves a
smile into his leg"
       PRINT_PADDR     G51
       RTRUE           
L0011: PRINT_OBJ       "Cookie"
       PRINT_RET       " grumbles, "What d'ye think I'm trying to do!""
L0012: JE              G80,#41 [FALSE] L0013
       JE              G6e,#2a [FALSE] L0013
       PRINT_RET       ""I never was able to sharpen that dagger.""
L0013: JE              G80,#99 [FALSE] L0020
       JE              G6e,#0f [FALSE] L0020
       JE              Gcf,#be [FALSE] L0015
       JIN             "Captain Jamison","pair of manacles" [FALSE] L0014
       PRINT           ""I'm tryin' to find him!""
       NEW_LINE        
       JUMP            L0019
L0014: PRINT           ""The Cap'n? I been with him since the war. Then came
Lafond.""
       NEW_LINE        
       JUMP            L0019
L0015: JE              Gcf,#a3 [FALSE] L0016
       PRINT           ""'Rodney Quick's me name, cookin's me game.
Lost me leg in sixty-eight, 'tis why I bake.
Losin' me hearin' in every fight, but I've got me sight --
And come our Good Lord's 1701, I'll lose me life to a ruffian's gun.'
-- Old dame told me that. Leastways, I've several years left.""
       NEW_LINE        
       JUMP            L0019
L0016: JE              Gcf,#42 [FALSE] L0017
       PRINT           ""He murdered Cap'n's brother and family these three
year'n past. Cap'n's been searching for a time to avenge the dead ones, and now
he's found it.""
       NEW_LINE        
       JUMP            L0019
L0017: JE              Gcf,#08 [FALSE] L0018
       PRINT           ""Don't trust 'im. Never 'ave.""
       NEW_LINE        
       JUMP            L0019
L0018: PRINT_OBJ       "Cookie"
       PRINT           " cocks an ear, "Eh, what's that?""
       NEW_LINE        
L0019: CALL            R0301 -> -(SP)
       RET_POPPED      
L0020: JE              G80,#3b [FALSE] L0021
       JE              G6e,#0f [FALSE] L0021
       JIN             "rapier","Cookie" [FALSE] L0021
       CALL            R0018 (#6a,#10) -> -(SP)
       RTRUE           
L0021: JE              G80,#27 [FALSE] L0023
       JE              G6e,#0f [FALSE] L0023
       PRINT           ""Foller you?"
       JE              G00,#86 [TRUE] L0022
       PRINT           " Anywheres"
L0022: PRINT_RET       "!""
L0023: JE              G80,#6a [FALSE] L0024
       JE              G6e,#07 [FALSE] L0024
       JE              G00,#5e [FALSE] L0024
       PRINT_RET       ""No, lass. A lady don't use guns, and I've no need for
one.""
L0024: CALL            R0600 (#a3) -> L01
       JZ              L01 [TRUE] RFALSE
       JE              L01,#08 [TRUE] RFALSE
       RTRUE           
L0025: JE              G80,#38 [FALSE] L0026
       PRINT_OBJ       "Cookie"
       PRINT_RET       " is a grizzled old man with a peg-leg."
L0026: JE              G80,#99 [FALSE] L0034
       CALL            R0350 ("gunpow",#77) -> -(SP)
       JZ              (SP)+ [TRUE] L0027
       PRINT_RET       ""Clam chowder? Never make it -- too fancy.""
L0027: JE              Gcf,#24 [FALSE] L0028
       PRINT_RET       ""We dropped the sea anchor -- no need to fear.""
L0028: JE              Gcf,#77 [FALSE] L0029
       PRINT_RET       ""Aye, you must mean the supplies in the hold. Yep,
that's where we store them.""
L0029: JE              Gcf,#cd,#65 [FALSE] L0030
       PRINT_RET       ""Fire for the cold? I think it be too warm...""
L0030: JE              Gcf,#bc [FALSE] L0031
       PRINT_RET       ""Lose sommat? I be always losing things. Think there be
thieves aboard.""
L0031: JE              Gcf,#be [FALSE] RFALSE
       JZ              G62 [TRUE] L0032
       CALL            R0614 -> -(SP)
       RET_POPPED      
L0032: CALL            R0295 (#be,#02) -> -(SP)
       JZ              (SP)+ [TRUE] L0033
       PRINT           ""Well, show me, lass!" he grumbles"
       PRINT_PADDR     G51
       RTRUE           
L0033: PRINT           ""He's a fine man, is Cap'n," he smiles"
       PRINT_PADDR     G51
       RTRUE           
L0034: JE              G80,#4f [FALSE] L0035
       PRINT_RET       ""Nah, me pretty, ye belong to Cap'n.""
L0035: JE              G80,#3b [FALSE] L0036
       JE              G6e,#ba [FALSE] L0036
       PRINT           ""I hain't no need fer that kind of money," he waves
away your offer"
       PRINT_PADDR     G51
       RTRUE           
L0036: JE              G80,#89,#2b,#16 [FALSE] RFALSE
       TEST_ATTR       "Cookie",#05 [FALSE] L0037
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0037: PRINT_RET       "He holds you off, "'Ere now, there's no call for
that!""

Routine R0586, 1 local (0000)

       JZ              L00 [TRUE] L0003
       STORE           G2c,#00
       STORE           G10,#a3
       STORE           Gc9,#0a
       CALL            R0023 (#5073,#02) -> -(SP)
       JZ              G23 [TRUE] L0001
       PUSH            #01
       JUMP            L0002
L0001: PUSH            #02
L0002: CALL            R0023 (#ca92,(SP)+) -> -(SP)
       INSERT_OBJ      "Cookie",G00
       SET_ATTR        "Cookie",#0d
       STORE           G9f,#00
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Cookie"
       PRINT           " rushes up to you, looking worried. "Miss, we must find
the Cap'n. Have ye any idea where to look?""
       NEW_LINE        
       JUMP            L0010
L0003: JIN             "Cookie",G00 [TRUE] L0004
       CALL            R0020 (#ca92) -> -(SP)
       JUMP            L0010
L0004: JE              G3a,#01 [TRUE] L0005
       JE              G80,#42 [FALSE] L0006
L0005: PRINT_PADDR     Ge8
       PRINT_OBJ       "Cookie"
       PRINT           " grins broadly, "I knew we could depend on you, lass.
Lead on!""
       NEW_LINE        
       JUMP            L0010
L0006: JE              G9f,#02 [FALSE] L0009
       INSERT_OBJ      "Cookie","Library"
       JE              G3a,#ffff [FALSE] L0007
       PRINT_PADDR     Ge8
       PRINT           ""Hell and damnation, I was afraid of that"
       JUMP            L0008
L0007: PRINT_PADDR     Ge8
       PRINT           "He harrumphs. "So ye do not care fer him after all"
L0008: PRINT           "!" "
       PRINT_OBJ       "Cookie"
       PRINT           " orders the men to search, moving off himself.
"
       JUMP            L0010
L0009: STORE           G10,#a3
       STORE           Gc9,#0a
       CALL            R0023 (#5073,#02) -> -(SP)
       CALL            R0023 (#ca92,#01) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Cookie"
       PRINT           " urges you, "Think agin. Any idea?""
       NEW_LINE        
L0010: INC             G9f
       RET             G9f

Routine R0587, 0 locals ()

       JE              #bf,Gb9 [FALSE] L0009
       JE              G80,#48 [FALSE] L0001
       PRINT           "He grins at you toothlessly"
       PRINT_PADDR     G51
       JUMP            L0008
L0001: JZ              Gb3 [TRUE] L0002
       JE              G80,#40,#b1 [FALSE] L0002
       JE              G6e,#be,#a3 [FALSE] L0002
       CALL            R0018 (#99,#0f,G6e) -> -(SP)
       RTRUE           
L0002: JE              G80,#99 [FALSE] L0007
       JE              G6e,#0f [FALSE] L0007
       JZ              Gb3 [TRUE] L0005
       JE              Gcf,#be,#a3 [FALSE] L0005
       JE              Gcf,#a3 [FALSE] L0003
       PRINT           ""'E went"
       JUMP            L0004
L0003: PRINT           ""Cookie be"
L0004: PRINT           " a-lookin' for Cap'n.""
       NEW_LINE        
       JUMP            L0008
L0005: JE              Gcf,#42 [FALSE] L0006
       PRINT           ""'E be an evil man, I do hear.""
       NEW_LINE        
       JUMP            L0008
L0006: CALL            R0614 -> -(SP)
       JUMP            L0008
L0007: PRINT           ""I'm busy. Do it yerself, boy." He cuffs you aside."
       NEW_LINE        
L0008: CALL            R0301 -> -(SP)
       RET_POPPED      
L0009: JE              G80,#38 [FALSE] RFALSE
       PRINT_OBJ       "Captain Jamison"
       PRINT           "'s crew are a ragged, toothless bunch, all sporting
jagged scars. Despite their abhorrent appearances, they call friendlily to each
other"
       PRINT_PADDR     G51
       RTRUE           

Routine R0588, 1 local (0000)

       JZ              L00 [TRUE] L0005
       JE              L00,#09 [TRUE] RTRUE
       JE              G00,#15 [FALSE] RFALSE
       PRINT_PADDR     Ge8
       TEST_ATTR       "Lucy",#13 [FALSE] L0001
       PRINT_OBJ       "Lucy"
       JUMP            L0002
L0001: PRINT           "A blond woman"
L0002: CALL            R0022 (#cd05) -> -(SP)
       JZ              (SP)+ [TRUE] L0003
       PRINT           " stands talking to you"
       JUMP            L0004
L0003: PRINT           " huddles alone by the fire, as if cold"
L0004: PRINT_CHAR      '.'
       RTRUE           
L0005: JE              #b1,Gb9 [FALSE] L0012
       JE              G80,#99 [FALSE] L0009
       JE              G6e,#0f [FALSE] L0009
       CALL            R0350 ("librar",#47) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
       PRINT           ""I ain't allowed in that wing of"
       CALL            R0008 (#47) -> -(SP)
       JUMP            L0008
L0006: JE              Gcf,#42 [FALSE] L0007
       PRINT           ""He's a regular lout who don't like my cooking.""
       NEW_LINE        
       JUMP            L0008
L0007: CALL            R0614 -> -(SP)
L0008: CALL            R0301 -> -(SP)
       RET_POPPED      
L0009: JE              G80,#48 [FALSE] L0010
       PRINT           "She smiles"
       PRINT_PADDR     G51
       RTRUE           
L0010: JE              G80,#4f [FALSE] L0011
       JE              G6e,#0f [FALSE] L0011
       PRINT_RET       ""I hardly know you!" she gasps."
L0011: CALL            R0600 (#b1) -> L00
       JZ              L00 [TRUE] RFALSE
       JE              L00,#08 [TRUE] RFALSE
       RTRUE           
L0012: JE              G80,#99 [FALSE] L0014
       JE              Gcf,#39 [FALSE] L0014
       TEST_ATTR       "your father",#13 [FALSE] L0013
       PRINT_RET       ""Yes, he told me.""
L0013: STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_RET       "She yelps, "Dear Dimsy, how can I save him?""
L0014: JE              G80,#3b [FALSE] L0016
       JE              G6e,#58 [FALSE] L0015
       TEST_ATTR       "garter",#14 [TRUE] L0015
       PRINT_OBJ       "Lucy"
       PRINT_RET       " frowns. "No, you silly boy! Give that to Dimsford!""
L0015: JE              G6e,#ba [FALSE] RFALSE
       PRINT_OBJ       "Lucy"
       PRINT_RET       " slaps you hard across the face. "I'm not that sort of
girl!""
L0016: JE              G80,#47 [FALSE] L0018
       CALL            R0022 (#cd05) -> -(SP)
       JZ              (SP)+ [TRUE] L0017
       PRINT_RET       "You are listening to her!"
L0017: PRINT           "She talks a lot, but doesn't say much"
       PRINT_PADDR     G51
       RTRUE           
L0018: JE              G80,#14 [FALSE] L0019
       JE              Gcf,#58 [FALSE] L0019
       CALL            R0018 (#6a,#58) -> -(SP)
       RTRUE           
L0019: JE              G80,#38 [FALSE] RFALSE
       PRINT           "Lucy is a very pretty woman, a few years your senior,
her yellow hair neatly arranged. She wears a cook's apron"
       PRINT_PADDR     G51
       RTRUE           

Routine R0589, 0 locals ()

       CLEAR_ATTR      "garter",#14
       CALL            R0025 (#58) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           ""I haven't found Lafond's papers, I'm watched too
closely. Tell Dimsford that I -- I'm scared, and I want him to come get me.
Give this to him -- he'll recognize it." Lucy slides"
       CALL            R0002 (#58) -> -(SP)
       PRINT           " down her leg and holds it out to you"
       PRINT_PADDR     G51
       RTRUE           

Routine R0590, 0 locals ()

       CLEAR_ATTR      "Forest",#06
       RTRUE           

Routine R0591, 2 locals (0000, 0000)

       JZ              L00 [TRUE] L0004
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       CALL            R0004 (#4f) -> -(SP)
       TEST_ATTR       "butler",#05 [TRUE] L0002
       PRINT           " stands near the entrance to "
       JE              G00,#70 [FALSE] L0001
       PRINT           "the ballroom"
       JUMP            L0003
L0001: PRINT           "the hallway"
       JUMP            L0003
L0002: PRINT           " lies on the floor, prone and snoring loudly"
L0003: PRINT_CHAR      '.'
       RTRUE           
L0004: JE              #4f,Gb9 [FALSE] L0014
       TEST_ATTR       "butler",#05 [FALSE] L0005
       PRINT_PADDR     G12
       RTRUE           
L0005: JE              G80,#48 [FALSE] L0006
       PRINT           "He bows"
       PRINT_PADDR     G51
       RTRUE           
L0006: JE              G80,#6a [FALSE] L0008
       JE              G6e,#5a,#ba,#af [TRUE] L0007
       JE              G6e,#8d [FALSE] L0008
L0007: STORE           Gb9,#c0
       CALL            R0018 (#3b,G6e,#4f) -> -(SP)
       STORE           Gb9,#4f
       RTRUE           
L0008: JE              G80,#99 [FALSE] L0013
       JE              G6e,#0f [FALSE] L0013
       JE              Gcf,#42 [FALSE] L0013
       CALL            R0021 (#dc74) -> -(SP)
       JZ              (SP)+ [FALSE] L0009
       TEST_ATTR       "ornate door",#0a [TRUE] L0011
L0009: JE              G00,#b0 [FALSE] L0010
       PRINT_RET       ""He's gone for water, Miss.""
L0010: PRINT           ""He's awaiting you now, Miss. In his room.""
       NEW_LINE        
       INSERT_OBJ      "Lafond","Lafond's Bedroom"
       RTRUE           
L0011: JE              G46,#42 [FALSE] L0012
       PRINT_RET       ""He has retired to his room, and requests not to be
disturbed.""
L0012: PRINT_RET       ""The governor is in the ballroom, Miss.""
L0013: CALL            R0600 (#4f) -> L00
       JZ              L00 [TRUE] RFALSE
       JE              L00,#08 [TRUE] RFALSE
       RTRUE           
L0014: JE              G80,#38 [FALSE] L0016
       CALL            R0004 (#4f) -> -(SP)
       PRINT           ", scarred and burly, looks uncomfortable in his formal
blacks, as if he'd prefer the rags of a pirate"
       TEST_ATTR       "butler",#05 [FALSE] L0015
       PRINT           ". He lies snoring on the floor"
L0015: PRINT_PADDR     G51
       RTRUE           
L0016: TEST_ATTR       "butler",#05 [FALSE] L0018
       JE              G80,#7e [FALSE] L0017
       PRINT_PADDR     G63
       RTRUE           
L0017: JE              G80,#48,#13,#98 [TRUE] RFALSE
       PRINT_PADDR     G12
       RTRUE           
L0018: JE              G80,#83,#3b [FALSE] L0022
       JE              G6e,#ba,#af [FALSE] L0019
       CALL            R0593 (G6e) -> -(SP)
       RET_POPPED      
L0019: JE              G6e,#8d,#5a [FALSE] RFALSE
       PRINT           "He looks pleased"
       GET_PROP        G6e,#0e -> -(SP)
       JE              (SP)+,#00,#02 [FALSE] L0020
       PRINT_RET       ", then disappointed. "There's no wine in that glass,
Ma'am.""
L0020: GET_PROP        G6e,#0e -> -(SP)
       JE              (SP)+,#03 [FALSE] L0021
       STORE           G3c,#4f
       CALL            R0023 (#ab95,#02) -> -(SP)
L0021: INSERT_OBJ      G6e,"butler"
       PUT_PROP        G6e,#0e,#00
       PRINT           ". "I am rather parched, Ma'am," he says, taking and
emptying"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0022: JE              G81,"tip" [FALSE] RFALSE
       CALL            R0295 (#ba) -> -(SP)
       JZ              (SP)+ [TRUE] L0023
       CALL            R0593 (#ba) -> -(SP)
       RET_POPPED      
L0023: PRINT_RET       "You have nothing to do that with."

Routine R0592, 1 local (0000)

       INC             Gce
       JZ              L00 [TRUE] L0001
       CALL            R0023 (#ce8f,#02) -> -(SP)
       JUMP            L0002
L0001: CALL            R0023 (#ce8f,#ffff) -> -(SP)
L0002: JE              G00,#70 [TRUE] L0003
       STORE           G68,#00
       CALL            R0020 (#ce8f) -> -(SP)
       RFALSE          
L0003: TEST_ATTR       "beautiful ball gown",#16 [FALSE] RFALSE
       JZ              L00 [FALSE] L0004
       PRINT_PADDR     Ge8
       PRINT_CHAR      '"'
L0004: JE              Gce,#03 [FALSE] L0005
       CALL            R0020 (#ce8f) -> -(SP)
       SET_ATTR        "butler",#0d
       PRINT_PADDR     G08
       PRINT           "hope to be invited to the next party," smirks"
       CALL            R0003 (#4f) -> -(SP)
       PRINT_PADDR     G4c
       NEW_LINE        
       CALL            R0284 (#44) -> -(SP)
       RET_POPPED      
L0005: PRINT           "Your invitation, Miss?" says"
       CALL            R0003 (#4f) -> -(SP)
       JE              Gce,#04 [FALSE] L0006
       PRINT           " snapping his fingers"
       JUMP            L0007
L0006: PRINT           " bowing"
L0007: PRINT_PADDR     G51
       RTRUE           

Routine R0593, 1 local (0000)

       INSERT_OBJ      L00,"butler"
       TEST_ATTR       "butler",#0c [FALSE] L0002
       PRINT           "He takes"
       CALL            R0003 (L00) -> -(SP)
       PRINT           " and bows. "Thank you, Miss"
       JE              L00,#af [FALSE] L0001
       PRINT           " Davis"
L0001: PRINT_RET       ".""
L0002: SET_ATTR        "butler",#0c
       CLEAR_ATTR      "butler",#0d
       CALL            R0020 (#ce8f) -> -(SP)
       INC             G01
       CALL            R0004 (#4f) -> -(SP)
       PRINT           " takes"
       CALL            R0003 (L00) -> -(SP)
       JE              L00,#ba [FALSE] L0003
       PRINT           " and secrets it away"
L0003: PRINT           ". "Enjoy the dance, Miss"
       JE              L00,#af [FALSE] L0004
       PRINT           " Davis"
L0004: PRINT_RET       ".""

Routine R0594, 0 locals ()

       JE              #6e,Gb9 [FALSE] L0005
       JZ              Gb3 [TRUE] L0001
       CALL            R0004 (#6e) -> -(SP)
       PRINT_RET       " looks away, terrified."
L0001: JE              G80,#48 [FALSE] L0002
       PRINT           "A dancer smiles nervously and looks away"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              G80,#99 [FALSE] RFALSE
       JE              G6e,#0f [FALSE] RFALSE
       JE              Gcf,#42 [FALSE] L0003
       PRINT           ""He's such a good host! I've never been to such a fine
party! I'm so glad he is our governor." You have never seen anyone so nervous
before"
       PRINT_PADDR     G51
       JUMP            L0004
L0003: PRINT           "Nobody seems inclined to chat with you"
       PRINT_PADDR     G51
L0004: CALL            R0301 -> -(SP)
       RET_POPPED      
L0005: JE              G80,#2a [TRUE] L0006
       JE              G80,#14 [FALSE] L0007
       JE              Gcf,#a5 [FALSE] L0007
L0006: PRINT_RET       "A man regretfully shakes his head. "We haven't been
introduced by the governor.""
L0007: JE              G80,#14 [FALSE] L0008
       JE              Gcf,#a5 [FALSE] L0008
       CALL            R0018 (#2a,#6e) -> -(SP)
       RTRUE           
L0008: JE              G80,#38 [FALSE] RFALSE
       CALL            R0004 (#6e) -> -(SP)
       PRINT           "s are dressed in powdered wigs and heavy jewels. All
seem paler than fashion and the tropics would decree, and rather nervous"
       PRINT_PADDR     G51
       RTRUE           

Routine R0595, 1 local (0000)

       JZ              L00 [TRUE] L0001
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT           "Your father calmly stands nearby."
       RTRUE           
L0001: JE              #39,Gb9 [FALSE] L0011
       JE              G80,#99 [FALSE] L0004
       JE              G6e,#0f [FALSE] L0004
       JE              Gcf,#58 [FALSE] L0002
       PRINT           ""That belongs to -- a friend.""
       NEW_LINE        
       JUMP            L0003
L0002: PRINT           ""My dear," he says rather impatiently, "There are
people waiting for our help -- I haven't time to answer your questions just
now.""
       NEW_LINE        
L0003: CALL            R0301 -> -(SP)
       RET_POPPED      
L0004: JE              G80,#04 [FALSE] L0008
       JE              Gcf,#7c [FALSE] L0005
       PRINT_PADDR     G8e
       RTRUE           
L0005: JE              Gcf,#be [FALSE] L0006
       PRINT_RET       ""I hoped you would," he smiles."
L0006: JE              Gcf,#42 [FALSE] L0007
       PRINT_RET       ""My poor doomed daughter!""
L0007: CALL            R0614 -> -(SP)
       RET_POPPED      
L0008: JE              G80,#27 [FALSE] L0009
       JE              G6e,#0f [FALSE] L0009
       PRINT_RET       ""Lead on, daughter!""
L0009: JE              G80,#48 [FALSE] L0010
       PRINT_PADDR     G8e
       RTRUE           
L0010: CALL            R0600 (#39) -> L00
       JZ              L00 [TRUE] RFALSE
       JE              L00,#08 [TRUE] RFALSE
       RTRUE           
L0011: JE              G80,#14 [FALSE] L0012
       JE              Gcf,#58 [FALSE] L0012
       CALL            R0018 (#6a,#58) -> -(SP)
       RTRUE           
L0012: JE              G80,#99 [FALSE] L0015
       JE              Gcf,#b1 [FALSE] L0013
       PRINT_RET       "He listens intently, and laughs, "What a delightful
girl she is, to be sure!""
L0013: JE              Gcf,#be [FALSE] RFALSE
       CALL            R0022 (#d115) -> -(SP)
       JZ              (SP)+ [TRUE] L0014
       CALL            R0020 (#d115) -> -(SP)
       CALL            R0596 (#01) -> -(SP)
       RET_POPPED      
L0014: STORE           Gc9,#10
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           ""So you like him?" he asks, smiling"
       PRINT_PADDR     G51
       RTRUE           
L0015: JE              G80,#83,#3b [FALSE] L0017
       JE              G6e,#ba [FALSE] L0016
       REMOVE_OBJ      "banknote"
       PRINT           ""Do not stain yourself with that dirty money," he
takes"
       CALL            R0003 (#ba) -> -(SP)
       PRINT           " and rips it up"
       PRINT_PADDR     G51
       RTRUE           
L0016: JE              G6e,#58 [FALSE] RFALSE
       PRINT_RET       "He smiles dreamily at a memory."
L0017: JE              G80,#38 [FALSE] RFALSE
       PRINT           "Prison has only added a peppery beard to your father's
handsome features. His green eyes still twinkle, his wrists still poke bonily
out of his shirt cuffs"
       PRINT_PADDR     G51
       RTRUE           

Routine R0596, 1 local (0000)

       JZ              L00 [FALSE] L0001
       PRINT_PADDR     Ge8
L0001: PRINT_RET       "You briefly explain the current situation to your
father.
   "I knew Falcon would do his best to rescue me, once you were safe," he
responds. "Now to rescue Lucy -- Nicholas will have told you about her. You get
him while I get Lucy, and the four of us will meet down at the beach. Just show
me the way out of this maze, and we'll get started.""

Routine R0597, 1 local (0000)

       JZ              L00 [TRUE] L0004
       JE              L00,#09 [TRUE] RTRUE
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Lafond"
       TEST_ATTR       "Lafond",#0d [FALSE] L0001
       PRINT_PADDR     S178
       RTRUE           
L0001: TEST_ATTR       "Lafond",#05 [FALSE] L0002
       PRINT           " is slumped in the sand, dead."
       RTRUE           
L0002: JE              G00,#49 [FALSE] L0003
       PRINT           " stands"
       PRINT_PADDR     G2a
       RTRUE           
L0003: PRINT           " is leering, lip curled."
       RTRUE           
L0004: JE              #42,Gb9 [FALSE] L0008
       CALL            R0022 (#dde3) -> -(SP)
       JZ              (SP)+ [FALSE] L0005
       CALL            R0022 (#e1c9) -> -(SP)
       JZ              (SP)+ [TRUE] L0006
L0005: TEST_ATTR       "Lafond",#05 [TRUE] L0006
       PRINT_RET       "He ignores you."
L0006: JE              G80,#99 [FALSE] L0007
       JE              G6e,#0f [FALSE] L0007
       JE              Gcf,#d1 [FALSE] L0007
       STORE           Gb9,#c0
       CALL            R0018 (#6a,#d1) -> -(SP)
       STORE           Gb9,#42
       RTRUE           
L0007: CALL            R0600 (#42) -> L00
       JZ              L00 [TRUE] RFALSE
       JE              L00,#08 [TRUE] RFALSE
       RTRUE           
L0008: JE              G80,#6f [FALSE] L0009
       JE              G6e,#16 [FALSE] L0009
       TEST_ATTR       "Lafond",#05 [TRUE] L0009
       CALL            R0289 (Gcc) -> -(SP)
       RET_POPPED      
L0009: JE              G80,#2a [FALSE] L0011
       JE              G00,#a5 [FALSE] L0011
       JE              G98,#42 [FALSE] L0010
       PRINT_PADDR     S069
       RTRUE           
L0010: CALL            R0022 (#d455) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       PRINT           "You curtsey and walk to"
       PRINT_PADDR     S039
       PRINT_PADDR     G51
       STORE           G3a,#01
       RET             G3a
L0011: JE              G80,#4e,#17,#16 [FALSE] L0016
       TEST_ATTR       "Lafond",#0d [FALSE] L0012
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0012: JE              G00,#a5 [FALSE] L0013
       STORE           Gc9,#02
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_PADDR     Ge1
       PRINT_PADDR     G18
       PRINT_RET       "whirling blur through your tears as he leads you around
the floor. "Ma petite, a ball is not the right place to kill me. What would my
guests think?!""
L0013: JZ              G77 [FALSE] L0015
       STORE           G77,#01
       PRINT_PADDR     Ge1
       PRINT           "Twisting your wrist, pain stabbing down your arm, he
forces his mouth on yours, hard, thrusting, cutting your lips. He releases you"
       JZ              Gcf [TRUE] L0014
       JE              Gcf,#df [TRUE] L0014
       TEST_ATTR       Gcf,#16 [TRUE] L0014
       INSERT_OBJ      Gcf,"Lafond"
       PRINT           ", taking"
       CALL            R0006 -> -(SP)
L0014: PRINT_RET       ". "Let that be a warning to you, my love.""
L0015: CALL            R0287 (S326) -> -(SP)
       RET_POPPED      
L0016: JE              G80,#6b [FALSE] L0017
       TEST_ATTR       "Lafond",#05 [TRUE] L0017
       PRINT_RET       "He smiles."
L0017: JE              G80,#3b [FALSE] L0020
       JE              G6e,#8d,#5a [FALSE] L0020
       JIN             "blue goblet","Lafond" [TRUE] L0018
       JIN             "green goblet","Lafond" [FALSE] L0019
L0018: PRINT_RET       ""I already have a glass, thank you.""
L0019: INSERT_OBJ      G6e,"Lafond"
       PRINT           "He takes"
       CALL            R0008 (G6e) -> -(SP)
       RET_POPPED      
L0020: JE              G80,#4f [FALSE] L0023
       JE              G00,#b0 [FALSE] L0022
       JG              G06,#0a [FALSE] L0021
       PRINT_RET       "Queasy, you turn up your face to be kissed. His lips
are cold, dry."
L0021: PRINT_RET       "He laughs. "Not yet, petite.""
L0022: PRINT           "You shudder at the thought"
       PRINT_PADDR     G51
       RTRUE           
L0023: JE              G80,#38 [FALSE] RFALSE
       CALL            R0022 (#d67e) -> -(SP)
       JZ              (SP)+ [TRUE] L0024
       JG              G06,#0b [FALSE] L0024
       PRINT           "You turn away in modesty after a brief glimpse of pasty
pink flesh"
       PRINT_PADDR     G51
       RTRUE           
L0024: TEST_ATTR       "Lafond",#0d [FALSE] L0025
       PRINT_OBJ       "Lafond"
       PRINT_PADDR     S178
       NEW_LINE        
       RTRUE           
L0025: JZ              Gb3 [FALSE] L0026
       CALL            R0022 (#d67e) -> -(SP)
       JZ              (SP)+ [TRUE] L0027
       JG              G06,#04 [FALSE] L0027
L0026: PRINT           "Lafond is dressed in a rich brocade robe"
       PRINT_PADDR     G51
       RTRUE           
L0027: PRINT           "Wigged in dark brown curls, dressed in velvets and
brocade, he is warmly attractive. Until you meet his eyes, stone gray and cold"
       PRINT_PADDR     G51
       RTRUE           

Routine R0598, 0 locals ()

       CALL            R0350 ("latin",#d1) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       CALL            R0350 ("latin",#57) -> -(SP)
       JZ              (SP)+ [FALSE] L0001
       JE              G80,#75 [FALSE] L0002
L0001: CALL            R0369 (S189) -> -(SP)
       RET_POPPED      
L0002: JE              G80,#38 [FALSE] L0005
       JE              G6e,#d1 [FALSE] L0003
       PRINT           "It's an ancient gold band, with"
       JUMP            L0004
L0003: PRINT           "Made of copper,"
       CALL            R0003 (#57) -> -(SP)
       PRINT           " has"
L0004: PRINT           " a curious design of gargoyles, curled tongues
extended, on its flat face, with "Sal Sapit Omnia" engraved at the bottom"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G80,#6a [FALSE] RFALSE
       JE              G6e,#d1 [FALSE] L0007
       JIN             "gold ring","Lafond" [FALSE] L0007
       TEST_ATTR       "Lafond",#0d [FALSE] L0006
       PRINT_OBJ       "Lafond"
       PRINT           "'s fingers are curled tight in a fist. You cannot get
it"
       PRINT_PADDR     G51
       RTRUE           
L0006: PRINT_RET       ""It is an impressive crest, no? I've thought of making
it my own.""
L0007: TEST_ATTR       "Captain Jamison",#05 [FALSE] L0008
       CALL            R0371 (S205) -> -(SP)
       RET_POPPED      
L0008: PRINT_OBJ       "Captain Jamison"
       PRINT           " curls his fist around it. "This is "
       JIN             "new ring","Captain Jamison" [FALSE] L0009
       PRINT           "a copy of "
L0009: PRINT_RET       "the family ring lost with my brother.""

Routine R0599, 0 locals ()

       RET             #57

Routine R0600, 1 local (0000)

       JE              G80,#49 [FALSE] L0003
       JE              L00,#42 [FALSE] L0001
       PRINT_RET       "He snickers, "So I shall, petite.""
L0001: JE              L00,#08 [FALSE] L0002
       PRINT_RET       ""An' what'll I get fer it?" he says, eying your body."
L0002: PRINT_RET       ""I'm doing all I can.""
L0003: JE              G80,#4f [FALSE] L0004
       JE              G6e,#0f [FALSE] L0004
       STORE           Gb9,#c0
       CALL            R0018 (#4f,L00) -> -(SP)
       STORE           Gb9,L00
       RTRUE           
L0004: JE              G80,#42 [FALSE] L0005
       PRINT_RET       ""After you!""
L0005: JE              G80,#27 [FALSE] L0006
       JE              G6e,#0f [FALSE] L0006
       PRINT_RET       ""Anywhere!""
L0006: JE              G80,#48 [FALSE] L0007
       PRINT_RET       ""Hello!""
L0007: JE              G80,#b0 [FALSE] L0008
       CALL            R0018 (#99,#0f,G6e) -> -(SP)
       RTRUE           
L0008: JE              G80,#3b [FALSE] L0009
       JE              Gcf,#0f [FALSE] L0009
       STORE           Gb9,#c0
       CALL            R0018 (#14,L00,G6e) -> -(SP)
       STORE           Gb9,L00
       RTRUE           
L0009: JE              G80,#3c [FALSE] L0010
       RET             #08
L0010: JE              G80,#67,#b5 [FALSE] L0011
       STORE           Gb9,#c0
       CALL            R0017 -> -(SP)
       STORE           Gb9,L00
       RTRUE           
L0011: CALL            R0614 -> -(SP)
       JE              G80,#2e [FALSE] L0012
       STORE           G3a,#ffff
L0012: CALL            R0301 -> -(SP)
       RTRUE           

Routine R0601, 0 locals ()

       JE              G00,#a5 [TRUE] L0001
       CALL            R0020 (#d455) -> -(SP)
       RET_POPPED      
L0001: JE              G06,#01 [FALSE] L0002
       INSERT_OBJ      "Lafond",G00
       CALL            R0023 (#d455,#ffff) -> -(SP)
       STORE           Gc9,#0b
       CALL            R0023 (#5073,#02) -> -(SP)
       STORE           G10,#42
       STORE           G46,#42
       PRINT_PADDR     Ge8
       PRINT           "A fashionably bewigged man stalks up to you and bows
deeply. "Will you dance?" he asks, with a light French accent. "Not that you
have much choice. If you turn me down,"
       CALL            R0003 (#39) -> -(SP)
       PRINT           " dies.""
       NEW_LINE        
       JUMP            L0018
L0002: JE              G06,#02 [FALSE] L0004
       JE              G3a,#01 [FALSE] L0003
       STORE           G98,#42
       INC             G06
       PRINT_PADDR     Ge8
       PRINT           ""I am, of course, Lafond." "
       PRINT_PADDR     G7d
       JUMP            L0018
L0003: STORE           G10,#42
       STORE           Gc9,#0b
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "The man's smile hardens. "You have"
       CALL            R0003 (#39) -> -(SP)
       PRINT           "'s eyes. I am Lafond --  I have recently become
intimate with that gentleman." He slightly stresses the word "intimate."
   "Now, tell me 'yes.' And remember, I am a man of my word.""
       NEW_LINE        
       JUMP            L0018
L0004: JE              G06,#03 [FALSE] L0006
       JE              G3a,#ffff,#00 [FALSE] L0005
       CALL            R0020 (#d455) -> -(SP)
       CALL            R0023 (#dd76,#02) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           ""A mistake, ma petite." Lafond gestures to a shadowy
figure, who disappears into the east wing. "Say adieu to your dear Papa.""
       NEW_LINE        
       JUMP            L0018
L0005: STORE           G98,#42
       PRINT_PADDR     G7d
       JUMP            L0018
L0006: JE              G06,#04 [FALSE] L0009
       CALL            R0023 (#d455,#ffff) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           ""So you know I am not your father's friend," Lafond
says, offering a hand for the promenade. "Unfortunately, you are in my power, "
       JZ              G67 [TRUE] L0007
       PRINT           "the Falcon is with my dragoons"
       JUMP            L0008
L0007: PRINT           "he is in my dungeon"
L0008: PRINT           " and I am still King of these waters." A gold ring
flashes on his hand. It seems vaguely familiar"
       PRINT_PADDR     G51
       JUMP            L0018
L0009: JE              G06,#05 [FALSE] RFALSE
       TEST_ATTR       "your father",#13 [FALSE] L0011
       JZ              G67 [FALSE] L0010
       CALL            R0023 (#92d8,#03) -> -(SP)
L0010: CALL            R0023 (#dc74,#05) -> -(SP)
L0011: INC             G01
       CALL            R0020 (#d455) -> -(SP)
       REMOVE_OBJ      "Lafond"
       STORE           G98,#00
       PRINT_PADDR     Ge8
       PRINT_OBJ       "Lafond"
       PRINT           "'s eyes rake your body. "When I am ready,"
       CALL            R0003 (#4f) -> -(SP)
       PRINT           " will summon you to sup with me in my room"
       TEST_ATTR       "your father",#13 [TRUE] L0012
       PRINT           "; it may be some time"
L0012: PRINT           ". We will find much in common before dawn, I am sure.
Then I may free your "
       JZ              G67 [TRUE] L0013
       PRINT           "lover"
       JUMP            L0014
L0013: PRINT           "father"
L0014: PRINT           ".""
       CALL            R0003 (#42) -> -(SP)
       PRINT           " bows as the dance ends, and kisses "
       PRINT_OBJ       "your hand"
       PRINT           ". "
       TEST_ATTR       "your father",#13 [TRUE] L0015
       PRINT           "He cocks his head, curious, "You have far less spirit
than"
       CALL            R0003 (#39) -> -(SP)
       PRINT           " credited you. He swore you would have him freed in no
time at all. A pity, I prefer doyennes with mettle." "
L0015: PRINT           "He moves to speak with"
       CALL            R0003 (#4f) -> -(SP)
       PRINT           ", then "
       CALL            R0021 (#dc74) -> -(SP)
       JZ              (SP)+ [TRUE] L0016
       PRINT           "heads upstairs."
       JUMP            L0017
L0016: PRINT           "drifts into the crowd."
L0017: NEW_LINE        
L0018: INC             G06
       RET             G06

Routine R0602, 0 locals ()

       STORE           Gc9,#0c
       CALL            R0023 (#5073,#01) -> -(SP)
       PRINT_PADDR     Ge8
       JE              G06,#01 [FALSE] L0001
       INSERT_OBJ      "Lafond",G00
       INSERT_OBJ      "blue goblet","it"
       PUT_PROP        "blue goblet",#0e,#01
       INSERT_OBJ      "green goblet","Lafond"
       INSERT_OBJ      "flagon","table"
       CLEAR_ATTR      "ornate door",#10
       CALL            R0023 (#daf3,#01) -> -(SP)
       PRINT           ""Have some wine." Lafond pours wine into two glasses,
giving a blue one to you. "Drink this down. We have a long night ahead of us."
He drains his own"
       PRINT_PADDR     G51
       JUMP            L0032
L0001: JE              G06,#02 [FALSE] L0002
       INSERT_OBJ      "green goblet","table"
       INSERT_OBJ      "butler","Upstairs Hall"
       INSERT_OBJ      "Captain Jamison","pair of manacles"
       SET_ATTR        "Captain Jamison",#05
       SET_ATTR        "Captain Jamison",#09
       SET_ATTR        "trapdoor",#10
       CLEAR_ATTR      "portrait",#10
       CLEAR_ATTR      "knob",#06
       CLEAR_ATTR      "book",#06
       INSERT_OBJ      "rapier","Dungeon"
       CLEAR_ATTR      "rapier",#09
       CLEAR_ATTR      "pair of manacles",#10
       SET_ATTR        "pair of manacles",#0a
       SET_ATTR        "Crulley",#09
       INSERT_OBJ      "Crulley","Dungeon"
       INSERT_OBJ      "whip","Crulley"
       CALL            R0023 (#d67e,#ffff) -> -(SP)
       CLEAR_ATTR      "flagon",#11
       STORE           G43,#00
       PRINT           "Suddenly, the door slams open. It is Jamison, coatless,
sword bared, his shirt ripped. "Thank God I am not too late. Leave, darling,
before I skewer this dog to his bedposts," he cries. The scar on his cheek
gleams coldly.
   With a yell,"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " and"
       CALL            R0003 (#4f) -> -(SP)
       PRINT           " jump out of the darkness behind him. Nicholas
struggles, but soon lies unconscious on the floor.
   "Take him to the dungeon," Lafond says, setting down his glass. "You,
butler, stay nearby. I do not wish to be disturbed again.
   "Now that we are rid of that intrusion, cherie, I will change into something
more comfortable. Pour me more wine." He crosses to the wardrobe removing his
coat and vest, turned slightly away from you"
       PRINT_PADDR     G51
       JUMP            L0032
L0002: JE              G06,#03 [FALSE] L0003
       PRINT           ""In private, call me Jean, or whatever endearment you
choose, once I have approved it." Lafond is looking into the wardrobe"
       PRINT_PADDR     G51
       JUMP            L0032
L0003: JE              G06,#04 [FALSE] L0004
       INSERT_OBJ      "silver tray","table"
       CALL            R0004 (#4f) -> -(SP)
       PRINT           " enters, laying"
       CALL            R0002 (#c6) -> -(SP)
       PRINT           " of "
       PRINT_OBJ       "cold chicken"
       PRINT           " on"
       CALL            R0003 (#4b) -> -(SP)
       PRINT           ". "The kitchen wench has gone, your grace. I took the
liberty of fetching these myself." He bows and leaves the room.
   "Sprinkle some spices on the fowl, ma petite," Lafond says, donning a long
brocade robe, his back to you. "They are hot, but delicious.""
       NEW_LINE        
       JUMP            L0032
L0004: JE              G06,#05 [FALSE] L0005
       PRINT           ""Tsk. The cook has gone too far. She shall be 'leaving
us' tomorrow." Lafond adjusts the lace at his neck"
       PRINT_PADDR     G51
       JUMP            L0032
L0005: JE              G06,#06 [FALSE] L0012
       STORE           G10,#42
       STORE           G43,#01
       PRINT_OBJ       "Lafond"
       PRINT           " strolls to"
       GET_PARENT      "green goblet" -> -(SP)
       JE              (SP)+,#4b [FALSE] L0006
       CALL            R0003 (#4b) -> -(SP)
       JUMP            L0007
L0006: PRINT           " you,"
L0007: PRINT           " smiling slyly"
       GET_PROP        "blue goblet",#0e -> -(SP)
       JE              (SP)+,#02,#00 [TRUE] L0008
       GET_PROP        "green goblet",#0e -> -(SP)
       JE              (SP)+,#02,#00 [FALSE] L0010
L0008: PRINT           ". "But you haven't finished pouring the wine." He tops
off both glasses"
       GET_PROP        "blue goblet",#0e -> -(SP)
       JE              (SP)+,#02,#00 [FALSE] L0009
       CALL            R0531 (#5a,#01) -> -(SP)
L0009: GET_PROP        "green goblet",#0e -> -(SP)
       JE              (SP)+,#02,#00 [FALSE] L0010
       CALL            R0531 (#8d,#01) -> -(SP)
L0010: JZ              Gdf [TRUE] L0011
       PRINT           ". "Which glass was mine? I seem to have forgotten." He
points at"
       CALL            R0003 (#8d) -> -(SP)
       PRINT           " and smiles in a way that does not grant you
confidence. "Is this it?""
       NEW_LINE        
       JUMP            L0032
L0011: INC             G06
       PRINT           ".
   Lafond takes"
       CALL            R0003 (#8d) -> -(SP)
       PRINT           " and salutes you, gulping down the contents"
       PRINT_PADDR     G51
       JUMP            L0032
L0012: JE              G06,#07 [FALSE] L0020
       STORE           G10,#42
       PRINT           ""Ah yes, of course." Lafond obligingly takes"
       JZ              Gdf [TRUE] L0017
       JE              G3a,#01 [FALSE] L0013
       CALL            R0603 (#8d) -> -(SP)
       JUMP            L0017
L0013: JE              G3a,#ffff [FALSE] L0014
       CALL            R0603 (#5a) -> -(SP)
       JUMP            L0017
L0014: GET_PROP        "blue goblet",#0e -> -(SP)
       JG              (SP)+,#01 [FALSE] L0015
       GET_PROP        "green goblet",#0e -> -(SP)
       JE              (SP)+,#01 [FALSE] L0015
       CALL            R0603 (#5a) -> -(SP)
       JUMP            L0016
L0015: CALL            R0603 (#8d) -> -(SP)
L0016: PRINT_PADDR     G66
L0017: PRINT_PADDR     G51
       PRINT_PADDR     Ge8
       CALL            R0020 (#d67e) -> -(SP)
       CALL            R0023 (#daf3,#01) -> -(SP)
       PRINT           "He inhales deeply of the bouquet of his wine, then
turns to you. "You must think me very naive to fall for such a trick. I saw you
pour something into one of these glasses -- although "
       JZ              G96 [TRUE] L0018
       PRINT           "you have tried to cover the scent with"
       CALL            R0003 (#19) -> -(SP)
       JUMP            L0019
L0018: PRINT           "I cannot smell it"
L0019: PRINT           "." He switches goblets, setting"
       CALL            R0003 (Gcd) -> -(SP)
       PRINT           " into your nerveless grasp and taking up the other,
smiling evilly. "Now you will drink from the cup intended for me.""
       NEW_LINE        
       JUMP            L0032
L0020: JE              G06,#08 [FALSE] L0021
       CALL            R0023 (#d67e,#ffff) -> -(SP)
       PRINT_OBJ       "Lafond"
       PRINT           " draws near, whispering indecencies. He caresses your
lily white neck, his fingers ice-cold despite the tropic heat"
       PRINT_PADDR     G51
       JUMP            L0032
L0021: JE              G06,#09 [FALSE] L0022
       CALL            R0303 (#c0,#b0) -> -(SP)
       PRINT_OBJ       "Lafond"
       PRINT           " slides his hand up your neck and into your hair,
letting it fall down your back in thick waves and tresses. He lays everything
you carry on the floor"
       PRINT_PADDR     G51
       JUMP            L0032
L0022: JE              G06,#0a [FALSE] L0027
       PRINT           "One by one Lafond undoes your buttons. He pulls open
your "
       TEST_ATTR       "shirt",#16 [FALSE] L0023
       PRINT           "shirt"
       JUMP            L0026
L0023: TEST_ATTR       "beautiful ball gown",#16 [TRUE] L0024
       TEST_ATTR       "cotton frock",#16 [FALSE] L0025
L0024: PRINT           "bodice"
       JUMP            L0026
L0025: PRINT           "chemise"
L0026: CALL            R0146 -> -(SP)
       CLEAR_ATTR      "linen chemise",#16
       SET_ATTR        "linen chemise",#06
       CLEAR_ATTR      "your kid slippers",#16
       CALL            R0303 (#c0,#b0) -> -(SP)
       INSERT_OBJ      "your reticule","Lafond's Bedroom"
       CALL            R0303 (#42,#b0) -> -(SP)
       PRINT           ". Your clothes float to the floor"
       PRINT_PADDR     G51
       JUMP            L0032
L0027: JE              G06,#0b [FALSE] L0028
       PRINT_OBJ       "Lafond"
       PRINT           " runs his fingers down your naked spine, and
compliments your body. He removes his dressing gown"
       PRINT_PADDR     G51
       JUMP            L0032
L0028: JE              G06,#0c [FALSE] L0029
       PRINT_OBJ       "Lafond"
       PRINT           " kisses your shoulder, your neck, your ear. "Close your
eyes, if you will," he taunts, "and pretend I am your dearest"
       CALL            R0003 (#be) -> -(SP)
       PRINT           ". But I am greater than he will ever be." He kisses
you, his lips thin and cold"
       PRINT_PADDR     G51
       JUMP            L0032
L0029: JE              G06,#0d [FALSE] L0031
       JIN             "it","bed" [FALSE] L0030
       STORE           G06,#0e
       CALL            R0602 -> -(SP)
       JUMP            L0032
L0030: INSERT_OBJ      "Lafond","bed"
       INSERT_OBJ      "it","bed"
       PRINT_OBJ       "Lafond"
       PRINT           " leads you over to the bed"
       PRINT_PADDR     G51
       JUMP            L0032
L0031: JE              G06,#0e [FALSE] L0032
       CALL            R0289 (S327) -> -(SP)
L0032: INC             G06
       RET             G06

Routine R0603, 1 local (0000)

       JE              L00,#8d [FALSE] L0001
       STORE           Gbf,#5a
       STORE           Gcd,#8d
       JUMP            L0002
L0001: STORE           Gbf,#8d
       STORE           Gcd,#5a
L0002: INSERT_OBJ      Gcd,"it"
       INSERT_OBJ      Gbf,"Lafond"
       CALL            R0003 (L00) -> -(SP)
       RET_POPPED      

Routine R0604, 1 local (0000)

       JG              G06,#07 [FALSE] L0001
       STORE           L00,#01
L0001: INC             G64
       STORE           G10,#42
       STORE           Gc9,#0c
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT_PADDR     Ge8
       JE              G3a,#ffff [TRUE] L0005
       JE              G6e,Gcd [FALSE] L0002
       JE              G80,#2f [TRUE] L0003
L0002: JE              G6e,#16 [FALSE] L0005
       JE              G80,#2f,#2e,#34 [TRUE] L0003
       JE              G80,#6f [FALSE] L0005
       JE              Gcf,#0f,#91 [FALSE] L0005
L0003: PUT_PROP        Gcd,#0e,#00
       PRINT           ""Good girl," he says"
       JZ              L00 [TRUE] L0004
       PRINT           ". "
       CALL            R0605 -> -(SP)
       RET_POPPED      
L0004: PRINT           ", "Let's see more cooperation of this sort.""
       NEW_LINE        
       CALL            R0602 -> -(SP)
       RET_POPPED      
L0005: JG              G64,#02 [FALSE] L0008
       CALL            R0023 (#d67e,#01) -> -(SP)
       JZ              L00 [TRUE] L0007
       PRINT           "Lafond grows suddenly violent. "I will not have
insubordination. You shall cooperate, minx." He forces"
       CALL            R0003 (#16) -> -(SP)
       PRINT           " down your throat"
       PRINT_PADDR     G51
       GET_PROP        Gcd,#0e -> -(SP)
       JG              (SP)+,#01 [FALSE] L0006
       CALL            R0021 (#ac18) -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       CALL            R0023 (#ac18,#02) -> -(SP)
L0006: PUT_PROP        Gcd,#0e,#00
       PRINT_PADDR     Ge8
       CALL            R0605 -> -(SP)
       RET_POPPED      
L0007: INSERT_OBJ      Gcd,"table"
       PUT_PROP        Gcd,#0e,#00
       PRINT           "He angrily takes"
       CALL            R0003 (Gcd) -> -(SP)
       PRINT           " and sets it on"
       CALL            R0003 (#4b) -> -(SP)
       PRINT           ". "
       CALL            R0004 (#16) -> -(SP)
       PRINT_RET       " slops a dark stain across the lace. "Do not try my
patience, little one. I have those you love, remember.""
L0008: CALL            R0023 (#daf3,#01) -> -(SP)
       JE              G64,#01 [FALSE] L0009
       PRINT_OBJ       "Lafond"
       PRINT           " waits impatiently for you to drink"
       PRINT_PADDR     G51
       RTRUE           
L0009: JE              G64,#02 [FALSE] RFALSE
       PRINT           ""Drink. We must not waste all night.""
       CALL            R0003 (#42) -> -(SP)
       PRINT           " pushes the glass toward "
       PRINT_OBJ       "your mouth"
       PRINT_PADDR     G51
       RTRUE           

Routine R0605, 0 locals ()

       GET_PROP        Gbf,#0e -> -(SP)
       JG              (SP)+,#01 [FALSE] L0001
       STORE           G3c,#4f
       CALL            R0023 (#ab95,#01) -> -(SP)
L0001: PUT_PROP        Gbf,#0e,#00
       STORE           G70,#00
       CALL            R0023 (#d67e,#01) -> -(SP)
       CALL            R0293 (#79) -> -(SP)
       JE              (SP)+,G00 [FALSE] L0002
       REMOVE_OBJ      "leather bottle"
       PRINT           "Lafond takes"
       CALL            R0003 (#79) -> -(SP)
       PRINT           " and drops it out the window. "You shall not need this.
You may suffer no headaches in my employ.""
       NEW_LINE        
       PRINT_PADDR     Ge8
L0002: PRINT           "He lifts his glass to drink, but stops. "Your father,
for all his idiotic meddling in other people's business, is not a fool. I doubt
you are, either." He calls in"
       CALL            R0003 (#4f) -> -(SP)
       PRINT           ", ordering him to empty"
       CALL            R0003 (Gbf) -> -(SP)
       PRINT           ". The man reports no odd taste and returns to his post"
       PRINT_PADDR     G51
       RTRUE           

Routine R0606, 0 locals ()

       CLEAR_ATTR      "ornate door",#0a
       INSERT_OBJ      "Lafond","Lafond's Bedroom"
       JE              G00,#7b [FALSE] L0005
       JIN             "your father",G00 [FALSE] L0001
       CALL            R0023 (#dc74,#02) -> -(SP)
       RTRUE           
L0001: PRINT_PADDR     Ge8
       CALL            R0004 (#4f) -> -(SP)
       PRINT           " enters the room"
       TEST_ATTR       "portrait",#10 [FALSE] L0002
       PRINT           ", sees the open "
       PRINT_OBJ       "portrait"
       PRINT           ", and seizes your arms, pinning them behind your back.
"
       CALL            R0289 (G38) -> -(SP)
       RET_POPPED      
L0002: REMOVE_OBJ      "butler"
       PRINT           ". "Excuse me for interrupting, Miss, but the master
requests your company in his room." He "
       TEST_ATTR       "knob",#06 [TRUE] L0003
       TEST_ATTR       "book",#06 [FALSE] L0004
L0003: CLEAR_ATTR      "knob",#06
       CLEAR_ATTR      "book",#06
       PRINT           "moves around the room, straightening things, then "
L0004: PRINT           "guides you back to the foyer. "The governor's "
       PRINT_OBJ       "quarters"
       PRINT           " are in the east wing."
       PRINT_PADDR     G4b
       NEW_LINE        
       CALL            R0284 (#70) -> -(SP)
       RET_POPPED      
L0005: JE              G00,#a5,#53,#41 [TRUE] L0006
       JE              G00,#9f,#70,#99 [TRUE] L0006
       JE              G00,#92,#6d,#5e [TRUE] L0006
       JE              G00,#44,#ab,#15 [TRUE] L0006
       JE              G00,#1c,#d0,#1e [FALSE] L0014
L0006: TEST_ATTR       "beautiful ball gown",#16 [FALSE] L0012
       REMOVE_OBJ      "butler"
       PRINT_PADDR     Ge8
       CALL            R0004 (#4f) -> -(SP)
       PRINT_PADDR     G0a
       JE              G00,#1e [FALSE] L0007
       PRINT           "to"
       CALL            R0003 (#dd) -> -(SP)
       PRINT           ", unlocks it"
       JUMP            L0011
L0007: JE              G00,#1c,#d0,#5e [TRUE] L0008
       JE              G00,#92 [FALSE] L0009
L0008: PRINT           "to the east"
       JUMP            L0011
L0009: JE              G00,#6d [FALSE] L0010
       PRINT           "to the north"
       JUMP            L0011
L0010: PRINT           "up"
       CALL            R0003 (#9d) -> -(SP)
       PRINT_CHAR      's'
L0011: PRINT_RET       ", bows, and leaves."
L0012: SET_ATTR        "Foyer",#06
       PRINT_PADDR     Ge8
       CALL            R0004 (#4f) -> -(SP)
       PRINT           ", who looks like he is seeking someone, grabs your
collar, "Who invited beggars? Get back to the village where you belong.""
       JE              G00,#44 [TRUE] L0013
       PRINT           " He escorts you out of the house"
       PRINT_PADDR     G51
       NEW_LINE        
       CALL            R0284 (#44) -> -(SP)
       RET_POPPED      
L0013: NEW_LINE        
       RTRUE           
L0014: SET_ATTR        "Foyer",#06
       RTRUE           

Routine R0607, 0 locals ()

       JE              G00,#a5,#70 [TRUE] L0001
       JE              G00,#53,#41 [FALSE] RFALSE
L0001: PRINT_PADDR     Ge8
       PRINT           "You see"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " come in from the east wing and beckon to Lafond. "'E's
gone"
       TEST_ATTR       "your father",#13 [FALSE] L0002
       CALL            R0023 (#d455,#02) -> -(SP)
       REMOVE_OBJ      "Captain Jamison"
       PRINT           "! The cocky crupper 'as disappeared!" Lafond looks
around angrily, eyes narrowed, "Then get his compatriot. Take Falcon.""
       CALL            R0003 (#08) -> -(SP)
       PRINT           " runs out the front door, reappearing a moment later
with help"
       PRINT_PADDR     G51
       CALL            R0469 (#01) -> -(SP)
       JUMP            L0003
L0002: CALL            R0288 (S055,#01) -> -(SP)
L0003: INC             G9f
       RET             G9f

Routine R0608, 0 locals ()

       CALL            R0609 -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       JL              Gc6,#10 [TRUE] L0013
L0001: JL              Gc6,#0c [FALSE] L0003
       PRINT_PADDR     Ge8
       JE              G00,#6d [FALSE] L0002
       PRINT           "Nicholas and Lafond circle each other intently, the one
breathing hard, the other casual, sword tips almost touching. Jamison has lost
copious amounts of blood and is no match for Lafond, cool and competent."
       NEW_LINE        
L0002: CALL            R0001 (Gaa) -> -(SP)
       PRINT_PADDR     (SP)+
       NEW_LINE        
       JUMP            L0013
L0003: JE              Gc6,#0c [FALSE] L0005
       PRINT_PADDR     Ge8
       PRINT           "Someone calls out, "We've got the Dimsford girl,
Governor" -- lying, of course, since you're obviously free"
       JE              G00,#6d [FALSE] L0004
       PRINT           ". But Nick glances towards the voice, missteps, and
slips in his own blood, falling backwards to the floor, his rapier skittering
aside"
L0004: PRINT_PADDR     G51
       JUMP            L0013
L0005: JE              Gc6,#0d [FALSE] L0008
       PRINT_PADDR     Ge8
       JE              G00,#6d [FALSE] L0006
       PRINT_OBJ       "Lafond"
       PRINT           " leaps to Jamison's side, placing one heeled boot on
the prostrate man's throat, the tip of his sword over Nick's heart. He sneers
then, one eyebrow tilted, and moves to plunge in the sword. Nicholas cannot
move."
       JUMP            L0007
L0006: STORE           Gc6,#0f
       PRINT           "One of the duellists falls heavily to the floor, his
sword skittering away. All is silence for a moment, broken once by a low
chuckle. Then a woman screams, someone gasps, and Jean Lafond's wicked laugh
blasts your ears, "Who else cares to taste my blade?""
L0007: NEW_LINE        
       JUMP            L0013
L0008: JE              Gc6,#0e [FALSE] L0009
       JE              G00,#6d [FALSE] L0013
       PRINT_PADDR     Ge8
       PRINT           "The sword plunges down into Jamison's heart, a red
stain flowing up to meet it on his breast. Nicholas draws his last breath, his
tortured gaze drawn heavenwards, to your face. He reaches for you, his hand
dripping his own blood, and breathes your name...
   Nicholas's hand falls limply to the swelling pool of wine red blood and
silence pounds on your ears"
       PRINT_PADDR     G51
       JUMP            L0013
L0009: JE              Gc6,#0f [FALSE] L0011
       JE              G00,#6d [FALSE] L0010
       PRINT_PADDR     Ge8
       PRINT           "Lafond wipes his sword on your lover's inert body,
ordering someone to drag away the corpse. Suddenly there are sounds of fighting
all about, and you realize dragoons surround the house"
       PRINT_PADDR     G51
       JUMP            L0013
L0010: PRINT           "Time has stopped. Silence reigns."
       NEW_LINE        
       JUMP            L0013
L0011: JE              Gc6,#10 [FALSE] L0013
       CALL            R0609 -> -(SP)
       JZ              (SP)+ [FALSE] L0012
       PRINT_PADDR     Ge8
       PRINT           ""Find the girl and bring her to me," Lafond orders."
       NEW_LINE        
L0012: PRINT_PADDR     Ge8
       PRINT_PADDR     S024
       CALL            R0289 (G38) -> -(SP)
L0013: INC             Gc6
       RET             Gc6

Routine R0609, 0 locals ()

       JE              G00,#1e,#1c,#9f [TRUE] RFALSE
       JE              G00,#70,#7b,#99 [TRUE] RFALSE
       JE              G00,#ab,#6d [TRUE] RFALSE
       RTRUE           

Routine R0610, 0 locals ()

       JE              G80,#3e [FALSE] L0006
       JZ              Gcf [FALSE] L0002
       JE              G81,"load" [FALSE] L0002
       CALL            R0295 (#90) -> -(SP)
       JZ              (SP)+ [TRUE] L0001
       CALL            R0018 (#3e,#5b,#90) -> -(SP)
       RTRUE           
L0001: PRINT_PADDR     G89
       PRINT           " any "
       PRINT_OBJ       "gunpowder"
       PRINT_PADDR     G51
       RTRUE           
L0002: JE              Gcf,#90 [FALSE] L0005
       JZ              G33 [TRUE] L0003
       PRINT_PADDR     G19
       PRINT           " loaded"
       CALL            R0008 (#5b) -> -(SP)
       RET_POPPED      
L0003: STORE           G33,#01
       INSERT_OBJ      "powder horn","it"
       JZ              G6d [FALSE] L0004
       STORE           G6d,#01
       INC             G01
L0004: PRINT           "You pour a lumpy stream of"
       CALL            R0003 (#90) -> -(SP)
       PRINT           " mixture into the barrel of"
       CALL            R0003 (#5b) -> -(SP)
       PRINT           " tamping it as best you can"
       PRINT_PADDR     G51
       RTRUE           
L0005: JE              G6e,#5b [FALSE] RFALSE
       PRINT_PADDR     G75
       PRINT           "put that into"
       CALL            R0007 (#5b) -> -(SP)
       RET_POPPED      
L0006: JE              G80,#6f,#31 [FALSE] L0008
       JE              Gcf,#5b [FALSE] L0008
       JE              G6e,#90 [FALSE] L0007
       CALL            R0018 (#3e,#5b,G6e) -> -(SP)
       RTRUE           
L0007: PRINT_PADDR     G0c
       RTRUE           
L0008: JE              G80,#38 [FALSE] L0010
       PRINT           "One of"
       CALL            R0002 (#07) -> -(SP)
       PRINT           ", the gun is "
       JZ              G33 [TRUE] L0009
       PRINT_RET       "primed and ready to fire."
L0009: PRINT_RET       "not loaded."
L0010: JE              G80,#16 [FALSE] L0011
       CALL            R0018 (#81,G6e,Gcf) -> -(SP)
       RTRUE           
L0011: JE              G80,#81 [FALSE] L0021
       JZ              G33 [FALSE] L0012
       PRINT           "But"
       CALL            R0003 (#5b) -> -(SP)
       PRINT_RET       " is not loaded."
L0012: JZ              Gcf [TRUE] L0013
       JE              G6e,#03 [FALSE] L0014
L0013: INC             G01
       PRINT           "You fire"
       CALL            R0003 (#5b) -> -(SP)
       PRINT           " into the air. Startled by the loud report,"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " jerks his pistol and fires, aiming not at Nicholas,
but at you. You hear a distant scream, your own, and watch, as through from
afar,"
       CALL            R0003 (#39) -> -(SP)
       PRINT           " wrestle"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " to"
       CALL            R0003 (#a8) -> -(SP)
       PRINT           ". You feel only numbness as loving arms take you up,
and Nicholas kisses you into death, his tears damp on your cheek."
       PRINT_PADDR     Gb5
       STORE           Ge9,#02
       CALL            R0091 -> -(SP)
       RET_POPPED      
L0014: JE              G6e,#b8,#23 [FALSE] L0015
       PRINT_RET       "They are out of range."
L0015: JE              G6e,#08 [FALSE] L0016
       INC             G01
       PRINT           "Trembling, you fire the heavy pistol. You hear its loud
report over roaring surf. Crulley staggers, hit, and falls from the cliff. The
gun falls from your nerveless hands.
   Time stops as you and Nicholas gaze at one another, adoring and amazed.
Slowly he bows and offers his hand.
   "
       PRINT_PADDR     G28
       PRINT           "His eyes, twin seas of blue, devour you with a love
deep and true-hearted, and you are pulled into his embrace, your mouth on his,
lips parted, thirsting, arching into his kiss..."
       NEW_LINE        
       CALL            R0612 -> -(SP)
       RET_POPPED      
L0016: JE              G6e,#5b [FALSE] L0017
       CALL            R0306 -> -(SP)
       RET_POPPED      
L0017: TEST_ATTR       G6e,#05 [FALSE] L0018
       CALL            R0370 -> -(SP)
       RET_POPPED      
L0018: TEST_ATTR       G6e,#1f [FALSE] L0019
       PRINT           "You wouldn't kill"
       CALL            R0005 -> -(SP)
       PRINT_RET       "!"
L0019: JIN             G6e,G00 [TRUE] L0020
       CALL            R0004 (#5b) -> -(SP)
       PRINT           " can't fire that far"
       PRINT_PADDR     G51
       RTRUE           
L0020: CALL            R0307 -> -(SP)
       RET_POPPED      
L0021: JE              G6e,#8f [FALSE] RFALSE
       JE              G80,#82 [FALSE] RFALSE
       CALL            R0307 -> -(SP)
       RET_POPPED      

Routine R0611, 0 locals ()

       JE              G00,#94,#59 [FALSE] L0002
       JG              G06,#01 [FALSE] L0002
       STORE           G01,#19
       PRINT_PADDR     Ge8
       PRINT           "You hear distant shots and screams, and gaze back
across the restless waves to the massacre on the beach. The sight blurs with
your tears of shame, tears for the father and the lover you left behind."
       NEW_LINE        
       CALL            R0010 (#0f) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "The tale you tell Jamison's crew, of rapine and blood,
of your heroic attempt to save their captain, and of your own escape after his
death in your arms, is not so far from the truth that you cannot appear
sincere. Cannily, you take advantage of their temporary grief, select a private
guard, and teach the rest the discipline of the whip."
       STORE           Ge9,#03
       JL              G06,#07 [FALSE] L0001
       PRINT           " You have started on the ruthless road to revenge. You
intend to meet Lafond again, and that time, you intend to win."
L0001: NEW_LINE        
       CALL            R0091 -> -(SP)
       RFALSE          
L0002: PRINT_PADDR     Ge8
       JE              G06,#01 [FALSE] L0004
       JE              G00,#49,#63,#94 [TRUE] L0003
       CALL            R0289 (S032) -> -(SP)
       JUMP            L0015
L0003: CALL            R0023 (#e1c9,#ffff) -> -(SP)
       INSERT_OBJ      "Lafond","Beach"
       CLEAR_ATTR      "Lafond",#0d
       INSERT_OBJ      "Crulley","Beach"
       CLEAR_ATTR      "Crulley",#0d
       PRINT           "A shot rings out over the roar of the surf. Turning,
you see that Lafond stands at the top of the cliff, a pistol in each hand.
"Trying to sneak out the back, cowards? You will die like your brother, Falcon.
Snivelling for mercy." He hands one gun to "
       PRINT_OBJ       "Crulley"
       PRINT           ", standing nearby, and levels the other at Jamison"
       PRINT_PADDR     G51
       JUMP            L0015
L0004: JE              G06,#02 [FALSE] L0005
       SET_ATTR        "Cookie",#05
       STORE           G10,#be
       STORE           Gc9,#09
       CALL            R0023 (#5073,#02) -> -(SP)
       PRINT           "As the gun fires, Cookie throws himself before his
captain. He cries out, blood blossoming on his shoulder, and falls face first
into the sand. Lucy runs to him.
   Jamison yells up the cliff, brandishing his sword. "Fight like a man,
Lafond. You have drawn my blood once tonight -- let me draw yours."
   Lafond sneers. "On one condition. If I win, your lady comes to me. You will
have no need of her when you are dead."
   Nicholas stiffens, glances at the dragoons on the cliff above, and turns
slowly to you. He says nothing, his face hard, but his eyes tell you what you
want to know. "Answer, my darling. Yes or no?""
       NEW_LINE        
       JUMP            L0015
L0005: JE              G06,#03,#04 [FALSE] L0010
       STORE           G10,#be
       STORE           Gc9,#09
       CALL            R0023 (#5073,#02) -> -(SP)
       CALL            R0331 -> -(SP)
       JZ              (SP)+ [FALSE] L0006
       JE              G80,#b5 [FALSE] L0008
L0006: SET_ATTR        "rapier",#09
       SET_ATTR        "Lafond",#09
       CLEAR_ATTR      "Crulley",#09
       INSERT_OBJ      "pistol","Beach"
       STORE           G06,#04
       PRINT           "Nicholas looks determined. "I accept. So long as my
people go free if I win. Order your dragoons to obey us, then." In answer,
Lafond jumps off the cliff like a huge brocaded bat to land in front of"
       CALL            R0003 (#be) -> -(SP)
       PRINT           ". "Die then, fool!"
   "
       CALL            R0004 (#5b) -> -(SP)
       PRINT           ", spinning from Lafond's grip, drops to the sand "
       JE              G00,#49 [FALSE] L0007
       PRINT           "nearby."
       NEW_LINE        
       JUMP            L0015
L0007: PRINT           "of the beach."
       NEW_LINE        
       JUMP            L0015
L0008: JZ              G3a [FALSE] L0009
       JE              G06,#03 [FALSE] L0009
       PRINT           "Lafond calls down to you, "My pretty doxy, do make up
your mind. Yes or no?""
       NEW_LINE        
       JUMP            L0015
L0009: CALL            R0287 (S328) -> -(SP)
       JUMP            L0015
L0010: JE              G06,#05 [FALSE] L0011
       PRINT_OBJ       "Lafond"
       PRINT           " immediately takes the advantage, forcing Nicholas in a
retreat towards the foaming surf. But Nicholas fights hard, jaw set, ignoring
his wounds. Lafond finally loses his smile.
   Behind the duellists, far away atop the cliff, you notice "
       PRINT_OBJ       "Crulley"
       PRINT           " madly reloading the pistol"
       PRINT_PADDR     G51
       JUMP            L0015
L0011: JE              G06,#06 [FALSE] L0012
       CLEAR_ATTR      "Lafond",#09
       REMOVE_OBJ      "new ring"
       INSERT_OBJ      "gold ring","Captain Jamison"
       CLEAR_ATTR      "rapier",#09
       SET_ATTR        "Lafond",#05
       PRINT           "Suddenly the force of the duel turns, Nicholas
advancing against Lafond's retreat. Their blades silently flash in the
moonlight. Lafond is pressed back into the shadow of the cliff, sweat beading
on his forehead. Abruptly, Jamison leaps forward, metal scrapes, and his rapier
licks neatly into Lafond's ribs, like a snake slipping into its burrow. The
body of the governor of St. Sinistra convulses, as in amazement, then sags dead
on the sword.
   Nicholas removes"
       CALL            R0002 (#d1) -> -(SP)
       PRINT           " from the dead man's finger, throwing his own cheap
copy into the surf.
   Far above him,"
       CALL            R0003 (#08) -> -(SP)
       PRINT           " moves down the stairs."
       NEW_LINE        
       JUMP            L0015
L0012: JE              G06,#07 [FALSE] L0013
       PRINT_OBJ       "Crulley"
       PRINT           " is levelling"
       CALL            R0003 (#5b) -> -(SP)
       PRINT           ", feet apart, braced by the cliff wall."
       NEW_LINE        
       JUMP            L0015
L0013: JE              G06,#08 [FALSE] L0014
       PRINT_OBJ       "Crulley"
       PRINT           " carefully aims"
       CALL            R0003 (#5b) -> -(SP)
       PRINT           ", a triumphal grin benighting his face. Nicholas turns
and walks smiling towards you, oblivious to his danger"
       PRINT_PADDR     G51
       JUMP            L0015
L0014: JE              G06,#09 [FALSE] L0015
       CALL            R0287 (S165) -> -(SP)
L0015: INC             G06
       RET             G06

Routine R0612, 0 locals ()

       INSERT_OBJ      "Captain Jamison","Forecastle"
       CALL            R0010 (#0f) -> -(SP)
       STORE           G41,#00
       CALL            R0284 (#72) -> -(SP)
       PRINT_PADDR     Ge8
       PRINT           "As dawn breaks over the eastern seas, you stand with
Nicholas on his ship, looking north. "I have nothing left in England," he says.
"There I am but a destitute gentleman, wanted for piracy. Here -- this isle
holds too many memories"
       TEST_ATTR       "your father",#05 [FALSE] L0001
       STORE           Ge9,#01
       PRINT           " --" he pauses, gazing into your tear-filled eyes with
compassion. ""
       JUMP            L0002
L0001: STORE           Ge9,#04
       PRINT           "; your father may have it. "
L0002: PRINT           "Mayhap my brother's wife yet lives. I must try to find
her, either way." He takes you into his arms. "Come with me, my love? To
America -- they tell of endless fertile fields and strange beasts in that wild
land. It won't be easy, but we will have each other. Together, shall we carve a
kingdom blessed with fair children and freedom?"
   You wrap your arms about his waist and lean into him, and smile at the
rising sun"
       PRINT_PADDR     G51
       CALL            R0091 -> -(SP)
       RET_POPPED      

Routine R0613, 0 locals ()

       JE              #23,Gb9 [FALSE] L0001
       PRINT_RET       "A rough voice yells to leave them alone."
L0001: CALL            R0346 (#23) -> -(SP)
       JZ              (SP)+ [TRUE] RFALSE
       CALL            R0356 (#23) -> -(SP)
       RET_POPPED      

Routine R0614, 0 locals ()

       JE              Gb9,#b1 [FALSE] L0001
       PRINT           "Sh"
       JUMP            L0002
L0001: PRINT_CHAR      'H'
L0002: PRINT           "e fails to notice you've spoken"
       PRINT_PADDR     G51
       RTRUE           

[End of code]

[Start of text]

S001: " has no desirable effect."
S002: "You have lost your mind."
S003: "You haven't the strength.
"
S004: "Chestnut hair, tousled by the wind, frames the tanned oval of his face.
"
S005: ""I wish you would call me 'Nicholas' -- I feel I know you much better
than our brief acquaintance would allow." He presses your hand"
S006: "Death lies that way, my lady."
S007: "A tall hedge prevents you from going around the east wing of the house."
S008: " has a small pool of liquid at the bottom"
S009: "You hear metal scrape metal. A woman gasps."
S010: "You hear a piece of furniture being knocked over."
S011: "You hear a duellist leap forward, and swords clash, parrying."
S012: "PRSO"
S013: "   The tides are against you, however, and carry you out to sea. Days
later you collapse, exhausted, to wake in the heaven on earth of a Swedish
merchant marine. A midshipman, an ice-eyed blond with Viking physique and no
English, nurses you back to health; in a moment of weakness you thank him in
the only language all men and women share."
S014: ".
"
S015: "Nothing happens.
"
S016: "Preaction"
S017: "A lace-covered table crouches beside a wing-backed chair in one corner."
S018: "sound"
S019: "Pulling"
S020: "pick"
S021: "

      ***   You have died   ***

"
S022: "rief descriptions.
"
S023: "   Lafond smacks you hard across the face with the back of his hand,
"Fool." He casts aside all formalities."
S024: "Dragoons surround you. "
S025: "He laughs triumphantly and pulls you into the dance.
"
S026: ""It's not safe down there," the Falcon calls."
S027: "With a creak and a crash, somewhere a mast falls to the deck"
S028: "Dragoons guard the gate."
S029: "Dragoons, conversing quietly, patrol the other side of the gate."
S030: "words"
S031: "with"
S032: "Dragoons surround you, appearing from nowhere. They show you no mercy,
though they let you survive."
S033: ""Help me!" you cry, hoping someone will help you."
S034: "It doesn't look like"
S035: "...

"
S036: "look inside"
S037: "Dagger sharpening"
S038: " the edge of"
S039: " the dance floor"
S040: "You might be able to squeeze past it.
"
S041: "You might fight your way a few feet into the thorns but you'd only tear
your clothes."
S042: "ends"
S043: " and collapses.
   You were warned, of course, but did not listen. A stray keg pushes you off
the deck into the sea."
S044: "Love Transcending Death"
S045: "That is a waste of time."
S046: "That seems a useless idea."
S047: "That is thoroughly unladylike behavior.
"
S048: "That wouldn't be polite.
"
S049: "They already are.
"
S050: "No expense has been spared to make this long dim hallway anything but a
servant's corridor. The foyer is east, a kitchen north of you."
S051: "They calls me Andy, but I'm really randy"
S052: "drop"
S053: " Lafond's dragoons deal with you quickly."
S054: "They clamp shut"
S055: ". Visiting that Neptune you tol' me about. Gone to sea, poor man," he
laughs, and returns to lurking around the doorway."
S056: "Think again, guv'nor."
S057: "You'll have to "
S058: "The ballroom is a "
S059: "You'll have to row that way."
S060: "The blue of the captain's eyes seems to deepen, looking at you"
S061: "Biting"
S062: "wear"
S063: "posi"
S064: "remove"
S065: " Suddenly, an offshore current pulls you past the reefs into the open
sea. You haven't the strength to row back."
S066: "finely woven"
S067: "This is no time to get hysterical."
S068: "What an odd thing to attempt."
S069: "You pace out the steps.
"
S070: "You pull the cloth aside momentarily."
S071: " do you want to "
S072: "This reveals nothing new.
"
S073: "This is a gloomy, damp area at the bottom of the Helena Louise. To the
fore there seems to be a little more light, or you can climb up some steep
stairs."
S074: "This tiny kitchen smells of old stew and yeast. A low door to starboard
shows the way out."
S075: "You perch on a platform high above the deck, giving a view of the
endless sea and the southernmost cliffs of the island, where a house pokes out
of the vegetation. It gives off a general glow, but no lights can be seen in
any of the second story windows. A tiny beach nestles into the base of the
cliff."
S076: "What the devil are you doing here! Lafond is a dangerous man to play
with!" Jamison "
S077: "The carpeted hallway turns from west to north here, extending into the
east wing. A long table blocks the way south."
S078: "Lit only with moonlight through the open window, tonight this room is
serving as a ladies' dressing room. An exit lies to the north."
S079: "This room is exotically furnished with a Turkey divan and chairs. The
exit is south."
S080: "This tiny cell is airless and shivering cold, entirely empty of anything
but darkness. A wooden door leads west."
S081: "This short passage turns from east to north to stop abruptly at an iron
door."
S082: "talk to characters."
S083: "begins"
S084: "Knocking on"
S085: "talk to"
S086: "be holding"
S087: "The door at the top of the stairs won't open."
S088: "The door is barred."
S089: "blow"
S090: "The door creaks open to reveal a black well, water hushing deep within"
S091: "Completely common looking "
S092: "You recognize a voice from far away, "Don't take that! Look in the cabin
at the stern -- you'll find some fun there!" It sounds like Davis"
S093: "A bench is built into the wall, circling the folly."
S094: "You shake your head"
S095: "A sinewy arm encircles you, "Stay, my lady.""
S096: "A bit of canvas sail "
S097: "You stop at a steep cliff-face."
S098: "The front door stands open to the south, light splayed out onto a drive
stretching north into the jungle. A path leads around the western wing of the
house; jutting out from the east wing is a tall hedge."
S099: "You stand in a carpeted hallway, leading east to a stair landing. Rooms
lie north and south of you."
S100: "You stand in a carpeted hallway, leading west to a stair landing. To the
north is an ornately carved door. From the south comes the impression of light
and air."
S101: "You stare into space for a long, thoughtless moment. It seems very hard
to think, you think, but you aren't sure."
S102: "You squeeze three colorless drops "
S103: "Ye're a tasty doxy to let slip, but no 'elp fer it."
S104: "Not Here"
S105: "You sweep down into the ballroom, felling dancer and pirate alike.
Unfortunately, one of Jamison's crew, mistaking your shortcut for an attack,
greets you with a sharpened dagger."
S106: "mutters something to himself. You hear an occasional "Zounds!""
S107: " squeeze through the opening between cupboard and wall"
S108: "Failed.
"
S109: "The grate is too small."
S110: ""The Falcon! The Falcon conquers!" yells someone"
S111: "ask"
S112: "You're not holding"
S113: "You're already "
S114: "That's not done in polite society.
"
S115: "You're holding it!
"
S116: " calls after you.

"
S117: "One bamboo slat at the back seems to be loose."
S118: "A strong wet breeze blows from a low doorway to the east. A circle of
light leads west. The passageway continues south."
S119: "Out of the smoke staggers Davis, tugging a bloodied knife from the back
of a pirate. Davis's eyes gleam white from a face blackened and bloody, his
lips dark red as if he has been drinking blood. He turns to face you."
S120: "look"
S121: "to"
S122: "Look around you.
"
S123: "But it's such a beautiful night!
"
S124: ""Cap'n Jamison! We've got 'em!" cries a rough voice"
S125: ", shrugging off your lack of cooperation"
S126: "   It's been rather a long time since any of the crew have dealt with
the fairer sex, and they are a bit rough, despite Rodney Quick's exhortations."
S127: ". You are pulled struggling into the pool."
S128: "Something cracks over your head, knocking you unconscious.
   You awaken, cuddled in a huge purple and gold curtained bed, with a shocking
migraine. The man lying next to you pays no heed to your complaints, and
commands you in French when you try to defend yourself. He tires of you within
a few weeks, but lets you work the streets of Santa Ananas."
S129: "A grate blocks your way."
S130: "A grandiose staircase splits and twists up to the next floor here,
framing the entrance south to the ballroom. Long hallways lead east and west;
cool night air drifts in through the front door, north of you."
S131: "Pushing"
S132: "A plank of wood "
S133: " is brimming with wine"
S134: " only darkness beyond"
S135: " is closed"
S136: " only the back of"
S137: " walks up to you. "M. Lafond requests your presence in his room
immediately, Miss." He points "
S138: "A dagger is driven into the wooden floorboards."
S139: "Draped across the bed is a lovely cream colored watered silk gown. It
looks about your size."
S140: "Actor"
S141: "A large one rolls into you, stumbling you through the railing into the
sea."
S142: "PLUNDERED HEARTS"
S143: "The monster lunges at you, chain rattling, roaring and angry. "
S144: ""We have anchored off St. Sinistra," says Captain Jamison, "and I must
look like a guest at Lafond's dance tonight. I will find and free your father,
and then finally wreak my revenge on Lafond." He half draws his rapier from its
scabbard."
S145: "Kicked into a far corner is a pile of clothes."
S146: "get into"
S147: "light"
S148: "get in"
S149: "stand up"
S150: "It's Bedlam for you!"
S151: "It's not worth it. Believe me."
S152: " A tangled mass of rigging hangs down from the mast, like many rope
ladders woven together."
S153: "It's too dark to see a thing."
S154: " halfway up the cliff stairs."
S155: "What, afrighted of a lick o' the whip?"
S156: "Rapiers click and slide. "Bad parry, Captain," Lafond says."
S157: "enters just a few steps behind you."
S158: "The pirate captain "
S159: "Perfumed by the heady odor of the night-blooming jasmine entwined in the
bamboo latticework, this folly is a cool, dark haven."
S160: "A rutted drive runs north-south here, from a high spiked gate through
the jungle to Lafond's mansion. You hide in the bushes nearby."
S161: "close"
S162: "search"
S163: "put anything into"
S164: "dainty fists"
S165: "The pistol fires with a deafening roar, spraying shot into Nicholas.
Time stops as he falls, reaching for you, your name his last breath.
   The battle afterwards is short and bloody. Spurred by grief, you fight hard,
yet greet benumbing death thankfully."
S166: "climb into"
S167: "climb onto"
S168: "open"
S169: "move"
S170: "way to do that.
"
S171: "To your surprise, "
S172: "The reefs seem a little larger than you thought before"
S173: "The reefs are definitely getting larger"
S174: "Jamison touches your hair softly"
S175: "Jamison grins down at you, a dazzling white smile"
S176: "Nicholas's hands are smooth and cool"
S177: "One long table set across the north entrance indicates that supper was
served here earlier. West of you is the ballroom."
S178: ", his wig awry, sprawls across the parquet floor."
S179: "M-Beg"
S180: "letters"
S181: "Kicking"
S182: "Shaking"
S183: "Nicholas stops at your cry, and turns, curious, to face Crulley just as
the pistol sprays shot into his chest."
S184: " accomplishes nothing."
S185: "The ship is floating midway between the island and a line of reefs"
S186: "The sound of splintering wood reverberates through the ship as it drifts
onto the reefs"
S187: "The steps lead south."
S188: "He kisses your forehead.
"
S189: "The study of Latin"
S190: "Although the lagoon is warm and clear, it is much too deep.
"
S191: "There's nothing "
S192: "Some bloodied flesh "
S193: ""I am sorry you have been confined down here, but I don't trust my
lonely crew with such beauty. Crulley isn't the only man aboard with few
principles." He smiles at you, eyes lingering, and takes your hand. You feel
your color rising. "If anything goes wrong, turn to Cookie. He is quite deaf,
but capable. He'll see you through.""
S194: "Would yer like a taste o' water?"
S195: "get onto"
S196: "burn"
S197: "get on"
S198: "get off"
S199: "get out of"
S200: "The Falcon follows a step behind."
S201: "The undergrowth is much too thick to enter."
S202: "The underbrush is much too thick to enter."
S203: "A pair of duelling pistols is mounted high on one wall."
S204: "   Suddenly you appreciate what it is to be a ball in an exploding
cannon. The intense heat, the push of fire, and the sense of release when spit
from the cannon's mouth -- these you feel when the lighted fuse finally burns
up to the largest keg of gunpowder in the hold."
S205: "steal jewelry"
S206: " drips off your fingers.
"
S207: "He doesn't respond.
"
S208: "A firepit in the floor smokes badly, fogging up the depths of this large
kitchen, somehow not escaping through either the south or west doors."
S209: "AGAIN"
S210: "read"
S211: "return it to"
S212: "As you fiddle with the"
S213: "As you lift the hat from its"
S214: " is not flush against the doorsill. "
S215: "Bswish! Waves smash against the reefs nearby"
S216: "The west wall of the house is that way."
S217: "The windows overlooking the veranda do not open."
S218: " Cookie harrumphs, surprised."
S219: "Once a cell, now, with the door missing, made into a guard's bunkroom,
this room is distinctly uncomfortable. Gasps of air are forced through a crack
in the seaward wall of the room. The way out is west of you."
S220: "drink"
S221: "drink from"
S222: "Playing in this way with"
S223: "follows you."
S224: "An eerie battle cry arises on the wind, from all sides of the house"
S225: "'s eyes are getting heavier"
S226: " collapses, head back, snoring loudly"
S227: " is ornate and expensive"
S228: "Swords engage and disengage."
S229: "leave the game"
S230: "have hysterics"
S231: "Swimming"
S232: "do that to"
S233: "His eyes twinkle, like moonlight on the sea"
S234: ""You must ... pay ... for your actions!" Nicholas gasps."
S235: "on"
S236: " With an engaging smile he bows and leaves the folly.
"
S237: ""I haven't found your father. We've long suspected a passage under the
library, but I cannot find an entrance," says Jamison"
S238: "Flickering torchlight lights the bottom of a spiral staircase. A draft
blows from the east; a passage leads south."
S239: "Fiddling with"
S240: "Trying to destroy"
S241: "Trying to muzzle"
S242: "Firing cannon"
S243: "launch"
S244: "If you wish to go to the Poop, go AFT."
S245: " seems to be having some problems stifling a yawn"
S246: "Sleep overtakes you and you slump into unconsiousness."
S247: "   Roaring anger and revenge, Lafond runs in, pouncing upon you. Your
death, when it comes, is wished for."
S248: "It seems that"
S249: "Steep stairs descend "
S250: "Stunned, Crulley collapses at your feet, his eyes rolling"
S251: " his eyes rake over your inadequately dressed body, the damp chemise
clinging to your legs and heaving bosom, your gleaming hair"
S252: "Happily Ever After"
S253: "It is thoroughly unladylike to "
S254: "Suicide is not the answer.
"
S255: "His look darkens. "You should know why I hate Lafond: Some years ago, as
my brother and his bride sailed to a new life in Virginia, pirates struck.
Their ship was boarded, looted and burned, the women taken, never to be seen
again. A sailor, the one survivor, watched as a man of Lafond's description
shot my brother in the back as he tried to save the women. Lafond has now
bought respectability, but he shall never buy peace." Jamison straightens
resolutely, bows, and departs."
S256: ""If there is any trouble, and I am unable to help -- a signal from an
upstairs seaward window will bring my men. They can be here in moments," the
Captain says"
S257: "Your face convulses in a prodigious yawn."
S258: "Your eyes are extraordinarily dry. You blink to moisten them, and snort
awake a minute later, drool dripping down your chin."
S259: "pour"
S260: "Turning"
S261: "Your battered hands can take no more. Your grip loosens and the sea
comes up to break your fall."
S262: "[Press RETURN or ENTER to "
S263: "Sorry, no loitering," says the butler"
S264: "extinguish"
S265: "Caressing"
S266: "Pirate Queen"
S267: "A tiny glow of fire creeps across a stretch of floor -- inside the cage
full of ammunition"
S268: "Buried in the subtropical undergrowth, you lose all sense of being on
someone's private estate; jungle seems to extend for miles on all sides of you.
A footworn path curves from east to north here, and the vegetation lessens to
the northeast."
S269: "Avast me, but ain't ye a beauty"
S270: "Leave yer honey be, wench. He'll join ye anon."
S271: "nega"
S272: "put"
S273: "slippered toes"
S274: "Don't be absurd."
S275: "Don't dally around."
S276: "Don't bother."
S277: "You aren't "
S278: "You already have"
S279: "[There seems to be a noun missing in that sentence.]
"
S280: "Pardon?
"
S281: "It already is.
"
S282: "[There was no verb in that sentence!]
"
S283: "You are in an officer's cabin, lit by the firelight glowing through a
porthole. A door is to starboard. Except for the built-in bed, the room seems
to have been emptied thoroughly, if hurriedly."
S284: "Cannon line the deck, aimed at open sea and the island."
S285: "Don't push your luck too far."
S286: "You are misted in the spray of waves hitting the reefs. The island is
far away"
S287: "You are on a well-trampled lawn at the side of the house, one low
doorway leading in to the east. Gravelled paths lead north and south into the
undergrowth."
S288: "You are in a small clearing under the western side of the house. Heavy
vines creep up the wall past a second floor window, open to the night air.
Southwest is an opening in the bushes."
S289: "You are at the far end of a dank passageway heading north. A wooden door
leads east."
S290: "A small bottle has been dropped nearby."
S291: "in front of"
S292: "You awake too late to save the ship -- or rather, you never wake at
all."
S293: "Startled, Lafond raises his sword and you fly onto the blade. You fall
over your lover's body and expire, your lips on his in a kiss outlasting
death."
S294: "Other cries rise to match yours as you sweep down the center of the
ballroom in an avalanche of dancers, knocking yourself unconscious against the
far wall. You awaken the next morning, in the village, embarrassed and alone."
S295: "put the stone in"
S296: "A chipped piece of mirror sits propped on a shoulder-high timber."
S297: ". "Hey, boy! Get away from those. It ain't safe!" yells a sailor."
S298: "" The butler points up the stairs.
"
S299: "PRSI"
S300: "OOPS"
S301: "You can't go that way."
S302: "You can see"
S303: "You can't see any "
S304: "You can't "
S305: "You can't do that from here.
"
S306: "You can't go that way.
"
S307: "   "
S308: "You can't swim, and decide not to jump."
S309: "You crouch in the green rustlings of the hedge. Not far east, wind keens
up the cliff, high above swells breaking against a rocky shore. You know the
folly is somewhere to the west. North, the hedge is somewhat less dense."
S310: "You can't see any way to get past into the folly."
S311: "Cool salt air, blowing past a torch on a spiral staircase below you,
ruffles your hair and circles south into the library."
S312: "restart"
S313: "Orphan"
S314: "You dip the oars and pull them towards you. The "
S315: " over the head with"
S316: " over your white linen chemise. Mama would say you belonged in a
brothel.
"
S317: "Eyes closed, his skin with the pallor of death, Nick looks entirely
spent.
"
S318: "A canvas cot is shoved against a wall."
S319: ". The monster snorts in its sleep"
S320: ". There is a tear at the bottom"
S321: "Me name's Andy Crulley, and ladies learn to love me"
S322: "Lafond grabs your hair and pulls your head sharply back, clinching your
arms to your sides. "
S323: "Lafond's voice is cold, lazy, "You will die, you know, Jamison.""
S324: ". The next few minutes last forever as havoc breaks out. Grabbing a
plank, you manage to stay afloat, but you are washed out to sea. A brig,
Portuguese by its sails, rescues you. The sailors are brown skinned and smooth,
and the first mate, the ship's and yours, is gentle. They leave you in Rio,
alone and forgotten."
S325: ". The governor of St. Sinistra provides you with food and shelter; at
least, until he grows tired of your body and your presence."
S326: "Lafond hits you back. The end is not sweet and not fast."
S327: "Lafond pulls the sheets up to cover you both, pressing his long flaccid
body against yours. Waves crash against the base of the cliff."
S328: "Lafond cries, "No deal then. Take them, men!" The dragoons pour down the
cliff."
S329: " The fall to the bottom of the well is endless; you've lost
consciousness by the time the water overtakes you."
S330: ", pushing you out of the house.
"
S331: "Aye-aye.
"
S332: "marrying"
S333: "soak"
S334: " The blade bites less then you expected."
S335: "Too drugged to keep your grip on the ropes, you slip into the sea."
S336: " doesn't do anything."
S337: "You find yourself speechless with dread.
"
S338: ""Aaieeee!" echoes a scream, followed by several grunts and thumps"
S339: "Hewn from dense rock, the cell is a stagnant burrow. Except for the
tiniest glow of light from the torch two rooms away, it is pitch black."
S340: "untie it"
S341: "Mama would have been shocked.
"
S342: "A powder horn hangs on a long strap from the wall."
S343: "thick"

[End of text]

[End of file]
