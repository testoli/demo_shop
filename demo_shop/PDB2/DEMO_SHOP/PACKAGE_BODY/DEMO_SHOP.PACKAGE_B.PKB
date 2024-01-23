CREATE OR REPLACE PACKAGE BODY DEMO_SHOP.Package_B AS
  FUNCTION Function_B1 RETURN VARCHAR2 IS
  BEGIN
    RETURN 'Package_B - Function_B1';
  END Function_B1;

  FUNCTION Function_B2 RETURN VARCHAR2 IS
    result_from_A VARCHAR2(100);
  BEGIN
    -- Verweis auf Function_A1 aus Package_A
    result_from_A := Package_A.Function_A1;
    RETURN 'Package_B - Function_B2, calls: ' || result_from_A;
  END Function_B2;
END Package_B;
/
