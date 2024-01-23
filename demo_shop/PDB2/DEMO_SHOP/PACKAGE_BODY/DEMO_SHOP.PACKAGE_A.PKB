CREATE OR REPLACE PACKAGE BODY DEMO_SHOP.Package_A AS
  FUNCTION Function_A1 RETURN VARCHAR2 IS
  BEGIN
    RETURN 'Package_A - Function_A1';
  END Function_A1;

  FUNCTION Function_A2 RETURN VARCHAR2 IS
    result_from_B VARCHAR2(100);
  BEGIN
    -- Verweis auf Function_B1 aus Package_B
    result_from_B := Package_B.Function_B1;
    RETURN 'Package_A - Function_A2, calls: ' || result_from_B;
  END Function_A2;
END Package_A;
/
