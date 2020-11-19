{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import Convert
import PreludeGlaArray
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 (Seq (Ptr Exp))
	| HappyAbsSyn9 (Seq [Ptr Exp])
	| HappyAbsSyn10 ((Token,Seq (Ptr Exp)))
	| HappyAbsSyn11 ([Exp])

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,193) ([30720,0,10,0,1024,512,0,0,0,0,0,0,0,62208,3,0,6,0,0,0,0,0,0,0,0,0,0,0,0,32768,7,0,960,0,0,0,64,256,0,0,0,0,0,0,7680,0,0,15,0,1920,0,49152,3,0,480,0,61440,0,0,120,0,15360,0,0,30,0,3840,0,0,0,64,64,0,0,0,2,16,0,30720,0,0,12288,0,0,24,0,3072,0,0,6,0,768,0,32768,1,0,768,0,32768,1,0,0,0,0,0,0,0,32768,7,0,0,2048,0,0,0,0,0,30720,0,0,0,0,7680,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","P","B","E","T","F","Apps","Dec","Args","idT","numT","boolT","\"(\"","\")\"","\"[\"","\"]\"","\"[]\"","\";\"","\":\"","\"+\"","\"-\"","\"/\"","\"*\"","\"==\"","\"/=\"","\">\"","\"<\"","\">=\"","\"<=\"","\"=\"","\"else\"","\"if\"","\"in\"","\"let\"","\"then\"","\"end\"","%eof"]
        bit_start = st * 39
        bit_end = (st + 1) * 39
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..38]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (34) = happyShift action_13
action_0 (36) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (36) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (12) = happyShift action_29
action_2 (10) = happyGoto action_28
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (39) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 (22) = happyShift action_20
action_5 (23) = happyShift action_21
action_5 (26) = happyShift action_22
action_5 (27) = happyShift action_23
action_5 (28) = happyShift action_24
action_5 (29) = happyShift action_25
action_5 (30) = happyShift action_26
action_5 (31) = happyShift action_27
action_5 _ = happyReduce_10

action_6 (24) = happyShift action_18
action_6 (25) = happyShift action_19
action_6 _ = happyReduce_13

action_7 (12) = happyShift action_9
action_7 (13) = happyShift action_10
action_7 (14) = happyShift action_11
action_7 (15) = happyShift action_12
action_7 (16) = happyReduce_23
action_7 (22) = happyReduce_23
action_7 (23) = happyReduce_23
action_7 (24) = happyReduce_23
action_7 (25) = happyReduce_23
action_7 (26) = happyReduce_23
action_7 (27) = happyReduce_23
action_7 (28) = happyReduce_23
action_7 (29) = happyReduce_23
action_7 (30) = happyReduce_23
action_7 (31) = happyReduce_23
action_7 (33) = happyReduce_23
action_7 (35) = happyReduce_23
action_7 (37) = happyReduce_23
action_7 (39) = happyReduce_23
action_7 (8) = happyGoto action_16
action_7 (9) = happyGoto action_17
action_7 _ = happyReduce_23

action_8 _ = happyReduce_21

action_9 _ = happyReduce_20

action_10 _ = happyReduce_18

action_11 _ = happyReduce_19

action_12 (12) = happyShift action_9
action_12 (13) = happyShift action_10
action_12 (14) = happyShift action_11
action_12 (15) = happyShift action_12
action_12 (5) = happyGoto action_15
action_12 (6) = happyGoto action_5
action_12 (7) = happyGoto action_6
action_12 (8) = happyGoto action_7
action_12 (9) = happyGoto action_8
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_9
action_13 (13) = happyShift action_10
action_13 (14) = happyShift action_11
action_13 (15) = happyShift action_12
action_13 (5) = happyGoto action_14
action_13 (6) = happyGoto action_5
action_13 (7) = happyGoto action_6
action_13 (8) = happyGoto action_7
action_13 (9) = happyGoto action_8
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (37) = happyShift action_44
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (16) = happyShift action_43
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (8) = happyGoto action_16
action_16 (9) = happyGoto action_17
action_16 _ = happyReduce_23

action_17 (12) = happyReduce_22
action_17 (13) = happyReduce_22
action_17 (14) = happyReduce_22
action_17 (15) = happyReduce_22
action_17 (16) = happyReduce_22
action_17 (22) = happyReduce_22
action_17 (23) = happyReduce_22
action_17 (24) = happyReduce_22
action_17 (25) = happyReduce_22
action_17 (26) = happyReduce_22
action_17 (27) = happyReduce_22
action_17 (28) = happyReduce_22
action_17 (29) = happyReduce_22
action_17 (30) = happyReduce_22
action_17 (31) = happyReduce_22
action_17 (33) = happyReduce_22
action_17 (35) = happyReduce_22
action_17 (37) = happyReduce_22
action_17 (39) = happyReduce_22
action_17 _ = happyReduce_22

action_18 (12) = happyShift action_9
action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (8) = happyGoto action_42
action_18 (9) = happyGoto action_8
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_9
action_19 (13) = happyShift action_10
action_19 (14) = happyShift action_11
action_19 (15) = happyShift action_12
action_19 (8) = happyGoto action_41
action_19 (9) = happyGoto action_8
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_9
action_20 (13) = happyShift action_10
action_20 (14) = happyShift action_11
action_20 (15) = happyShift action_12
action_20 (7) = happyGoto action_40
action_20 (8) = happyGoto action_7
action_20 (9) = happyGoto action_8
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (12) = happyShift action_9
action_21 (13) = happyShift action_10
action_21 (14) = happyShift action_11
action_21 (15) = happyShift action_12
action_21 (7) = happyGoto action_39
action_21 (8) = happyGoto action_7
action_21 (9) = happyGoto action_8
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_9
action_22 (13) = happyShift action_10
action_22 (14) = happyShift action_11
action_22 (15) = happyShift action_12
action_22 (6) = happyGoto action_38
action_22 (7) = happyGoto action_6
action_22 (8) = happyGoto action_7
action_22 (9) = happyGoto action_8
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (12) = happyShift action_9
action_23 (13) = happyShift action_10
action_23 (14) = happyShift action_11
action_23 (15) = happyShift action_12
action_23 (6) = happyGoto action_37
action_23 (7) = happyGoto action_6
action_23 (8) = happyGoto action_7
action_23 (9) = happyGoto action_8
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_9
action_24 (13) = happyShift action_10
action_24 (14) = happyShift action_11
action_24 (15) = happyShift action_12
action_24 (6) = happyGoto action_36
action_24 (7) = happyGoto action_6
action_24 (8) = happyGoto action_7
action_24 (9) = happyGoto action_8
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (12) = happyShift action_9
action_25 (13) = happyShift action_10
action_25 (14) = happyShift action_11
action_25 (15) = happyShift action_12
action_25 (6) = happyGoto action_35
action_25 (7) = happyGoto action_6
action_25 (8) = happyGoto action_7
action_25 (9) = happyGoto action_8
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (12) = happyShift action_9
action_26 (13) = happyShift action_10
action_26 (14) = happyShift action_11
action_26 (15) = happyShift action_12
action_26 (6) = happyGoto action_34
action_26 (7) = happyGoto action_6
action_26 (8) = happyGoto action_7
action_26 (9) = happyGoto action_8
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (12) = happyShift action_9
action_27 (13) = happyShift action_10
action_27 (14) = happyShift action_11
action_27 (15) = happyShift action_12
action_27 (6) = happyGoto action_33
action_27 (7) = happyGoto action_6
action_27 (8) = happyGoto action_7
action_27 (9) = happyGoto action_8
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (35) = happyShift action_32
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (12) = happyShift action_31
action_29 (11) = happyGoto action_30
action_29 _ = happyReduce_26

action_30 (32) = happyShift action_48
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (12) = happyShift action_31
action_31 (11) = happyGoto action_47
action_31 _ = happyReduce_26

action_32 (12) = happyShift action_9
action_32 (13) = happyShift action_10
action_32 (14) = happyShift action_11
action_32 (15) = happyShift action_12
action_32 (5) = happyGoto action_46
action_32 (6) = happyGoto action_5
action_32 (7) = happyGoto action_6
action_32 (8) = happyGoto action_7
action_32 (9) = happyGoto action_8
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (22) = happyShift action_20
action_33 (23) = happyShift action_21
action_33 _ = happyReduce_9

action_34 (22) = happyShift action_20
action_34 (23) = happyShift action_21
action_34 _ = happyReduce_8

action_35 (22) = happyShift action_20
action_35 (23) = happyShift action_21
action_35 _ = happyReduce_7

action_36 (22) = happyShift action_20
action_36 (23) = happyShift action_21
action_36 _ = happyReduce_6

action_37 (22) = happyShift action_20
action_37 (23) = happyShift action_21
action_37 _ = happyReduce_5

action_38 (22) = happyShift action_20
action_38 (23) = happyShift action_21
action_38 _ = happyReduce_4

action_39 (24) = happyShift action_18
action_39 (25) = happyShift action_19
action_39 _ = happyReduce_12

action_40 (24) = happyShift action_18
action_40 (25) = happyShift action_19
action_40 _ = happyReduce_11

action_41 (12) = happyShift action_9
action_41 (13) = happyShift action_10
action_41 (14) = happyShift action_11
action_41 (15) = happyShift action_12
action_41 (16) = happyReduce_23
action_41 (22) = happyReduce_23
action_41 (23) = happyReduce_23
action_41 (24) = happyReduce_23
action_41 (25) = happyReduce_23
action_41 (26) = happyReduce_23
action_41 (27) = happyReduce_23
action_41 (28) = happyReduce_23
action_41 (29) = happyReduce_23
action_41 (30) = happyReduce_23
action_41 (31) = happyReduce_23
action_41 (33) = happyReduce_23
action_41 (35) = happyReduce_23
action_41 (37) = happyReduce_23
action_41 (39) = happyReduce_23
action_41 (8) = happyGoto action_16
action_41 (9) = happyGoto action_17
action_41 _ = happyReduce_23

action_42 (12) = happyShift action_9
action_42 (13) = happyShift action_10
action_42 (14) = happyShift action_11
action_42 (15) = happyShift action_12
action_42 (16) = happyReduce_23
action_42 (22) = happyReduce_23
action_42 (23) = happyReduce_23
action_42 (24) = happyReduce_23
action_42 (25) = happyReduce_23
action_42 (26) = happyReduce_23
action_42 (27) = happyReduce_23
action_42 (28) = happyReduce_23
action_42 (29) = happyReduce_23
action_42 (30) = happyReduce_23
action_42 (31) = happyReduce_23
action_42 (33) = happyReduce_23
action_42 (35) = happyReduce_23
action_42 (37) = happyReduce_23
action_42 (39) = happyReduce_23
action_42 (8) = happyGoto action_16
action_42 (9) = happyGoto action_17
action_42 _ = happyReduce_23

action_43 _ = happyReduce_17

action_44 (12) = happyShift action_9
action_44 (13) = happyShift action_10
action_44 (14) = happyShift action_11
action_44 (15) = happyShift action_12
action_44 (5) = happyGoto action_45
action_44 (6) = happyGoto action_5
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (33) = happyShift action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_1

action_47 _ = happyReduce_25

action_48 (12) = happyShift action_9
action_48 (13) = happyShift action_10
action_48 (14) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (5) = happyGoto action_49
action_48 (6) = happyGoto action_5
action_48 (7) = happyGoto action_6
action_48 (8) = happyGoto action_7
action_48 (9) = happyGoto action_8
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_24

action_50 (12) = happyShift action_9
action_50 (13) = happyShift action_10
action_50 (14) = happyShift action_11
action_50 (15) = happyShift action_12
action_50 (5) = happyGoto action_51
action_50 (6) = happyGoto action_5
action_50 (7) = happyGoto action_6
action_50 (8) = happyGoto action_7
action_50 (9) = happyGoto action_8
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_2

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (mkLet happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (mkIf happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 Equ happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 NEq happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 GT happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 LT happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 GTE happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 LTE happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  6 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 Add happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  6 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 Sub happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 Mul happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (mkOp happy_var_1 Quo happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 (HappyTerminal (Number happy_var_1))
	 =  HappyAbsSyn5
		 (mkNum happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyTerminal (Boolean happy_var_1))
	 =  HappyAbsSyn5
		 (mkBool happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  8 happyReduction_20
happyReduction_20 (HappyTerminal (Ident happy_var_1))
	 =  HappyAbsSyn5
		 (newPtr (mkVar happy_var_1)
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn5
		 (mkApps happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  9 happyReduction_22
happyReduction_22 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (mkApp happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (mkAtom happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 4 10 happyReduction_24
happyReduction_24 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	(HappyTerminal (Ident happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 ((happy_var_1, mkFun happy_var_1 happy_var_2 happy_var_4)
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_2  11 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_2)
	(HappyTerminal (Ident happy_var_1))
	 =  HappyAbsSyn11
		 (mkVar happy_var_1 : happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_0  11 happyReduction_26
happyReduction_26  =  HappyAbsSyn11
		 ([]
	)

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Ident happy_dollar_dollar -> cont 12;
	Number happy_dollar_dollar -> cont 13;
	Boolean happy_dollar_dollar -> cont 14;
	LeftBracket -> cont 15;
	RightBracket -> cont 16;
	LeftSquare -> cont 17;
	RightSquare -> cont 18;
	EmptyList -> cont 19;
	SemiColon -> cont 20;
	Colon -> cont 21;
	Infix "+" -> cont 22;
	Infix "-" -> cont 23;
	Infix "/" -> cont 24;
	Infix "*" -> cont 25;
	Infix "==" -> cont 26;
	Infix "/=" -> cont 27;
	Infix ">" -> cont 28;
	Infix "<" -> cont 29;
	Infix ">=" -> cont 30;
	Infix "<=" -> cont 31;
	Builtin "=" -> cont 32;
	Builtin "else" -> cont 33;
	Builtin "if" -> cont 34;
	Builtin "in" -> cont 35;
	Builtin "let" -> cont 36;
	Builtin "then" -> cont 37;
	Builtin "end" -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> happyError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


happyError :: Text a => a -> b
happyError x = error ("Parse error, line " ++ show x ++ "\n")
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
