BTW Brennan Huber
BTW HW5

HAI
   CAN I HAS STDIO?
   CAN I HAS STRING?

   BTW = Problem 1, DONE
   HOW DUZ I yourname
      FOUND YR "Brennan Huber:)"
   IF U SAY SO

   BTW = Problem 2, DONE
   BTW = looks like arguments are stored on a stack..
   HOW DUZ I axb YR b AN YR x AN YR a

      I HAS A ax ITZ PRODUKT OF a AN x
      I HAS A total ITZ SUM OF ax AN b

    FOUND YR total
   IF U SAY SO

   BTW = Problem 3
   HOW DUZ I distance YR p1 AN YR p2
      I HAS A first ITZ 0
      I HAS A second ITZ findNextSpace p1 AN first

      I HAS A x1 ITZ getWord p1 first second
      first R second
      second R DIFF OF LEN OF p1 AN 1
      I HAS A y1 ITZ getWord p1 first second

      second R findNextSpace p2 AN first

      I HAS A x2 ITZ getWord p1 first second
      first R second
      second R DIFF OF LEN OF p2 AN 1
      I HAS A y2 ITZ getWord p2 first second

      x1 IS NOW A NUMBAR
      y1 IS NOW A NUMBAR
      x2 IS NOW A NUMBAR
      y2 IS NOW A NUMBAR

      BTW do the distance formula.

      I HAS A lh
      I HAS A rh

      lh R DIFF OF x2 AN x1
      lh R PRODUKT OF lh AN lh

      rh R DIFF OFF y2 AN y1
      rh R PRODUKT OF rh AN rh

      I HAVE A ans

      ans R SUM OF lh AN rh
      ans R sqrt ans

      FOUND YR ans

   IF U SAY SO

   BTW since there is no freakin library have to write everything by hand.
   HOW DUZ I sqrt YR x
      I HAS A xn ITZ 10
      I HAS A lim ITZ 100
      I HAS A i ITZ 0

      IM IN YR LOOP UPPIN YR i WILE i SMALLR THAN lim
         I HAS A ans ITZ QUOSHUNT OF x AN xn

         ans R SUM OF sn AN ans
         ans R QUOSHUNT OF ans AN 2

         xn R ans
      IM OUTTA YR LOOP

      FOUND YR xn
   IF U SAY SO


   BTW = Problem 4,
   HOW DUZ I purge YR match AN YR lst

   IF U SAY SO

   BTW = Problem 5,
   HOW DUZ I countTrues YR lst
     I HAS A trues ITZ 0

     I HAS A first ITZ -1
     I HAS A second ITZ 0
     I HAS A i ITZ 0
     I HAS A word ITZ ""
     I HAS A var

     second R findNextSpace lst first

     IM IN YR LOOP UPPIN YR i TIL BOTH SAEM i AN LEN OF lst
        BTW create a word
        word R getWord lst first second
        VISIBLE word

        BTW check if it is a literal 0
        BOTH SAEM word AN "0", O RLY?
           NO WAI
              trues R SUM OF trues AN 1
        OIC

        BTW cast as a troof
        var R word
        var IS NOW A TROOF

        BTW if it is true increment trues
        var, O RLY?
           YA RLY
              trues R SUM OF trues AN 1
        OIC

        BTW reset word to empty string
        word R ""

        BTW calculate new first and second
        first R second
        second R findNextSpace lst first
     IM OUTTA YR LOOP

     FOUND YR trues
   IF U SAY SO

   BTW = Problem 6,
   HOW DUZ I buildlist YR n

   IF U SAY SO

   BTW = Problem 7,
   HOW DUZ I dotproduct YR v1 AN YR v2

   IF U SAY SO

   BTW = Problem 8,
   HOW DUZ I multiples YR base AN YR N

   IF U SAY SO

   BTW = Problem 9,
   HOW DUZ I runcmd YR opname AN YR lst
      I HAS A i ITZ 0
      I HAS A length, BTW size of the list
      I HAS A var ITZ 0

      opcode, WTF?
         OMG "plus"
            IM IN YR LOOP UPPIN i TIL BOTH SAEM i AN length
               var R SUM OF var AN lst!i  BTW var = var + lst[i]
            IM OUTTA YR LOOP

            FOUND YR var
         OMG "times"
            var R 1
            IM IN YR LOOP UPPIN i TIL BOTH SAEM i AN length
               var R PRODUKT OF var AN lst!i  BTW var = var * lst[i]
            IM OUTTA YR LOOP

            FOUND YR var
         OMG "append"
            I HAS A str ITZ ""
            IM IN YR LOOP UPPIN i TIL BOTH SAEM i AN length
               SMOOSH str AN lst!i  MKAY BTW append list[i] onto the string.
            IM OUTTA YR LOOP
         OMG "cdr"
            BTW do scheme cdr here
         OMGWTF
            FOUND YR FAIL
      OIC

   IF U SAY SO

   BTW = Problem 10,
   HOW DUZ I charflip YR str
      BTW === main part of this function =======
      I HAS A i ITZ 0
      I HAS A new_str ITZ ""
      IM IN YR LOOP UPPIN i TIL BOTH SAEM i AN LEN OF str
         isLower str!i, O RLY?
            YA RLY
               SMOOSH new_str AN up str!i MKAY
            NO WAI
               SMOOSH new_str AN low str!i MKAY
         OIC
      IM OUTTA YR LOOP

      FOUND YR new_str

   IF U SAY SO

   BTW charflip helper: if it is lower case, up it
   HOW DUZ I up YR char
      I HAS A i ITZ 0
      I HAS A upper "QWERTYUIOPASDFGHJKLZXCVBNM"
      I HAS A lower "qwertyuiopasdfghjklzxcvbnm"

      IM IN YR LOOP YR i TILL BOTH SAEM i AN LEN OF upper
         BOTH SAEM lower!i AN char, O RLY?
            YA RLY
               FOUND YR upper!i
         OIC
      IM OUTTA YR LOOP

   IF U SAY SO

   BTW charflip helper: if it is upper case, lower it.
   HOW DUZ I low YR char
      I HAS A i ITZ 0
      I HAS A upper "QWERTYUIOPASDFGHJKLZXCVBNM"
      I HAS A lower "qwertyuiopasdfghjklzxcvbnm"

      IM IN YR LOOP YR i TILL BOTH SAEM i AN LEN OF upper
         BOTH SAEM upper!i AN char, O RLY?
            YA RLY
               FOUND YR lower!i
         OIC
      IM OUTTA YR LOOP

   IF U SAY SO

   BTW charflip helper: test to see if the character is lower case.
   HOW DUZ I isLower YR char
      I HAS A i ITZ 0

      IM IN YR LOOP UPPIN YR i TILL BOTH SAEM i AN LEN OF upper
         BOTH SAEM lower!i AN character, O RLY?
            YA RLY
               FOUND YR WIN
         OIC
      IM OUTTA YR LOOP

      FOUND YR FAIL

   IF U SAY SO

   BTW: creates a word from the two spaces given.
   HOW DUZ I getWord YR lst YR first YR second
      I HAS A i ITZ SUM OF first AN 1
      I HAS A word ITZ ""

      IM IN YR LOOP UPPIN YR i TIL BOTH SAEM i AN second
         word R SMOOSH word AN lst!i MKAY
      IM OUTTA YR LOOP

      FOUND YR word
    IF U SAY SO

   BTW takes the current space, and returns the next space, or the length of the string.
   HOW DUZ I findNextSpace YR lst YR second
      I HAS A i ITZ SUM OF second AN 1

      IM IN YR LOOP UPPIN YR i TILL BOTH SAEM i AN LEN OF lst
         BOTH SAEM lst!i AN " ", O RLY?
            YA RLY
               FOUND YR i
         OIC
      IM OUTTA YR LOOP

      FOUND YR LEN OF lst
    IF U SAY SO


   BTW ========================= main ==================

   VISIBLE yourname
   VISIBLE axb 5 6 1
   VISIBLE
   VISIBLE
   VISIBLE
   VISIBLE
   VISIBLE
   VISIBLE
   VISIBLE
   VISIBLE charflip "Brennan Huber tESTING LOLcode"

KTHXBYE
