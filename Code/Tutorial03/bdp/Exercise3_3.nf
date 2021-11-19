﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Exercise3_3))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Exercise3_3))==(Machine(Exercise3_3));
  Level(Machine(Exercise3_3))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Exercise3_3)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Exercise3_3))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Exercise3_3))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Exercise3_3))==(?);
  List_Includes(Machine(Exercise3_3))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Exercise3_3))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Exercise3_3))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Exercise3_3))==(?);
  Context_List_Variables(Machine(Exercise3_3))==(?);
  Abstract_List_Variables(Machine(Exercise3_3))==(?);
  Local_List_Variables(Machine(Exercise3_3))==(magazineHouses,houseset);
  List_Variables(Machine(Exercise3_3))==(magazineHouses,houseset);
  External_List_Variables(Machine(Exercise3_3))==(magazineHouses,houseset)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Exercise3_3))==(?);
  Abstract_List_VisibleVariables(Machine(Exercise3_3))==(?);
  External_List_VisibleVariables(Machine(Exercise3_3))==(?);
  Expanded_List_VisibleVariables(Machine(Exercise3_3))==(?);
  List_VisibleVariables(Machine(Exercise3_3))==(?);
  Internal_List_VisibleVariables(Machine(Exercise3_3))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Exercise3_3))==(btrue);
  Gluing_List_Invariant(Machine(Exercise3_3))==(btrue);
  Expanded_List_Invariant(Machine(Exercise3_3))==(btrue);
  Abstract_List_Invariant(Machine(Exercise3_3))==(btrue);
  Context_List_Invariant(Machine(Exercise3_3))==(btrue);
  List_Invariant(Machine(Exercise3_3))==(houseset <: NAT1 & magazineHouses <: NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Exercise3_3))==(btrue);
  Abstract_List_Assertions(Machine(Exercise3_3))==(btrue);
  Context_List_Assertions(Machine(Exercise3_3))==(btrue);
  List_Assertions(Machine(Exercise3_3))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Exercise3_3))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Exercise3_3))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Exercise3_3))==(houseset,magazineHouses:={},{});
  Context_List_Initialisation(Machine(Exercise3_3))==(skip);
  List_Initialisation(Machine(Exercise3_3))==(houseset:={} || magazineHouses:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Exercise3_3))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Exercise3_3))==(btrue);
  List_Constraints(Machine(Exercise3_3))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Exercise3_3))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery);
  List_Operations(Machine(Exercise3_3))==(add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery)
END
&
THEORY ListInputX IS
  List_Input(Machine(Exercise3_3),add)==(new);
  List_Input(Machine(Exercise3_3),number)==(?);
  List_Input(Machine(Exercise3_3),getsPapers)==(houseNumber);
  List_Input(Machine(Exercise3_3),cancelPapers)==(houseNumber);
  List_Input(Machine(Exercise3_3),firsthouse)==(houseNumber);
  List_Input(Machine(Exercise3_3),lasthouse)==(houseNumber);
  List_Input(Machine(Exercise3_3),haspaper)==(houseNumber);
  List_Input(Machine(Exercise3_3),stopdelivery)==(houseNumber)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Exercise3_3),add)==(?);
  List_Output(Machine(Exercise3_3),number)==(ans);
  List_Output(Machine(Exercise3_3),getsPapers)==(ans);
  List_Output(Machine(Exercise3_3),cancelPapers)==(?);
  List_Output(Machine(Exercise3_3),firsthouse)==(firstHouseNumber);
  List_Output(Machine(Exercise3_3),lasthouse)==(lastHouseNumber);
  List_Output(Machine(Exercise3_3),haspaper)==(message);
  List_Output(Machine(Exercise3_3),stopdelivery)==(outcome)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Exercise3_3),add)==(add(new));
  List_Header(Machine(Exercise3_3),number)==(ans <-- number);
  List_Header(Machine(Exercise3_3),getsPapers)==(ans <-- getsPapers(houseNumber));
  List_Header(Machine(Exercise3_3),cancelPapers)==(cancelPapers(houseNumber));
  List_Header(Machine(Exercise3_3),firsthouse)==(firstHouseNumber <-- firsthouse(houseNumber));
  List_Header(Machine(Exercise3_3),lasthouse)==(lastHouseNumber <-- lasthouse(houseNumber));
  List_Header(Machine(Exercise3_3),haspaper)==(message <-- haspaper(houseNumber));
  List_Header(Machine(Exercise3_3),stopdelivery)==(outcome <-- stopdelivery(houseNumber))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Exercise3_3),add)==(new: NAT1 & new/:houseset);
  List_Precondition(Machine(Exercise3_3),number)==(btrue);
  List_Precondition(Machine(Exercise3_3),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_3),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_3),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_3),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset);
  List_Precondition(Machine(Exercise3_3),haspaper)==(houseNumber: NAT1);
  List_Precondition(Machine(Exercise3_3),stopdelivery)==(houseNumber: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Exercise3_3),stopdelivery)==(houseNumber: NAT1 | houseNumber: houseset ==> houseset,outcome:=houseset-{houseNumber},NoMoreDeliveries [] not(houseNumber: houseset) ==> outcome:=NotDeliveredTo);
  Expanded_List_Substitution(Machine(Exercise3_3),haspaper)==(houseNumber: NAT1 | houseNumber: houseset ==> message:=yes [] not(houseNumber: houseset) ==> message:=no);
  Expanded_List_Substitution(Machine(Exercise3_3),lasthouse)==(houseNumber: NAT1 & houseNumber: houseset | lastHouseNumber:=max(houseset));
  Expanded_List_Substitution(Machine(Exercise3_3),firsthouse)==(houseNumber: NAT1 & houseNumber: houseset | firstHouseNumber:=min(houseset));
  Expanded_List_Substitution(Machine(Exercise3_3),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseset | houseset:=houseset-{houseNumber});
  Expanded_List_Substitution(Machine(Exercise3_3),getsPapers)==(houseNumber: NAT1 & houseNumber: houseset | ans:=1);
  Expanded_List_Substitution(Machine(Exercise3_3),number)==(btrue | ans:=card(houseset));
  Expanded_List_Substitution(Machine(Exercise3_3),add)==(new: NAT1 & new/:houseset | houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_3),add)==(houseset:=houseset\/{new});
  List_Substitution(Machine(Exercise3_3),number)==(ans:=card(houseset));
  List_Substitution(Machine(Exercise3_3),getsPapers)==(ans:=1);
  List_Substitution(Machine(Exercise3_3),cancelPapers)==(houseset:=houseset-{houseNumber});
  List_Substitution(Machine(Exercise3_3),firsthouse)==(firstHouseNumber:=min(houseset));
  List_Substitution(Machine(Exercise3_3),lasthouse)==(lastHouseNumber:=max(houseset));
  List_Substitution(Machine(Exercise3_3),haspaper)==(IF houseNumber: houseset THEN message:=yes ELSE message:=no END);
  List_Substitution(Machine(Exercise3_3),stopdelivery)==(IF houseNumber: houseset THEN houseset:=houseset-{houseNumber} || outcome:=NoMoreDeliveries ELSE outcome:=NotDeliveredTo END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Exercise3_3))==(?);
  Inherited_List_Constants(Machine(Exercise3_3))==(?);
  List_Constants(Machine(Exercise3_3))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Exercise3_3),ANSWER)==({yes,no});
  Context_List_Enumerated(Machine(Exercise3_3))==(?);
  Context_List_Defered(Machine(Exercise3_3))==(?);
  Context_List_Sets(Machine(Exercise3_3))==(?);
  List_Valuable_Sets(Machine(Exercise3_3))==(?);
  Inherited_List_Enumerated(Machine(Exercise3_3))==(?);
  Inherited_List_Defered(Machine(Exercise3_3))==(?);
  Inherited_List_Sets(Machine(Exercise3_3))==(?);
  List_Enumerated(Machine(Exercise3_3))==(ANSWER,OUTCOME);
  List_Defered(Machine(Exercise3_3))==(?);
  List_Sets(Machine(Exercise3_3))==(ANSWER,OUTCOME);
  Set_Definition(Machine(Exercise3_3),OUTCOME)==({NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Exercise3_3))==(?);
  Expanded_List_HiddenConstants(Machine(Exercise3_3))==(?);
  List_HiddenConstants(Machine(Exercise3_3))==(?);
  External_List_HiddenConstants(Machine(Exercise3_3))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Exercise3_3))==(btrue);
  Context_List_Properties(Machine(Exercise3_3))==(btrue);
  Inherited_List_Properties(Machine(Exercise3_3))==(btrue);
  List_Properties(Machine(Exercise3_3))==(ANSWER: FIN(INTEGER) & not(ANSWER = {}) & OUTCOME: FIN(INTEGER) & not(OUTCOME = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Exercise3_3),add)==(?);
  List_ANY_Var(Machine(Exercise3_3),number)==(?);
  List_ANY_Var(Machine(Exercise3_3),getsPapers)==(?);
  List_ANY_Var(Machine(Exercise3_3),cancelPapers)==(?);
  List_ANY_Var(Machine(Exercise3_3),firsthouse)==(?);
  List_ANY_Var(Machine(Exercise3_3),lasthouse)==(?);
  List_ANY_Var(Machine(Exercise3_3),haspaper)==(?);
  List_ANY_Var(Machine(Exercise3_3),stopdelivery)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Exercise3_3)) == (ANSWER,OUTCOME,yes,no,NoMoreDeliveries,NotDeliveredTo,NotDeliveringPaperAndMagazine | ? | magazineHouses,houseset | ? | add,number,getsPapers,cancelPapers,firsthouse,lasthouse,haspaper,stopdelivery | ? | ? | ? | Exercise3_3);
  List_Of_HiddenCst_Ids(Machine(Exercise3_3)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Exercise3_3)) == (?);
  List_Of_VisibleVar_Ids(Machine(Exercise3_3)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Exercise3_3)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Exercise3_3)) == (Type(ANSWER) == Cst(SetOf(etype(ANSWER,0,1)));Type(OUTCOME) == Cst(SetOf(etype(OUTCOME,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Exercise3_3)) == (Type(yes) == Cst(etype(ANSWER,0,1));Type(no) == Cst(etype(ANSWER,0,1));Type(NoMoreDeliveries) == Cst(etype(OUTCOME,0,2));Type(NotDeliveredTo) == Cst(etype(OUTCOME,0,2));Type(NotDeliveringPaperAndMagazine) == Cst(etype(OUTCOME,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Exercise3_3)) == (Type(magazineHouses) == Mvl(SetOf(btype(INTEGER,?,?)));Type(houseset) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Exercise3_3)) == (Type(stopdelivery) == Cst(etype(OUTCOME,?,?),btype(INTEGER,?,?));Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(cancelPapers) == Cst(No_type,btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type);Type(add) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(Exercise3_3)) == (Type(haspaper) == Cst(etype(ANSWER,?,?),btype(INTEGER,?,?));Type(lasthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(firsthouse) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(number) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
