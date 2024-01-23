CREATE OR REPLACE FUNCTION DEMO_SHOP.salutation 
   (this_firstname IN VARCHAR2, 
    this_surname IN VARCHAR2, 
    this_title IN VARCHAR2,
    this_sex IN VARCHAR2)
RETURN VARCHAR2    
IS
   sal_sex VARCHAR2(10);
   myexception EXCEPTION;
   temp NUMBER(10);
BEGIN
   
   IF this_firstname IS NULL OR this_surname IS NULL or this_sex IS NULL
   THEN
      RAISE_APPLICATION_ERROR(-20101,'My exception');
   END IF;

  SELECT COUNT(*) INTO temp FROM PERSONLIST WHERE firstname = this_firstname AND lastname = this_surname;
    IF NOT temp > 0 THEN
      RETURN 'not found';
   END IF;
   
   CASE 
     WHEN this_sex IN ('m','M') THEN
       sal_sex := 'Mr.';
     WHEN this_sex IN ('f','F') THEN
       sal_sex := 'Ms.';
     ELSE
       RAISE_APPLICATION_ERROR(-20102,'My exception');
   END CASE;   

   RETURN sal_sex || ' ' || this_title || ' ' || this_firstname || ' ' || this_surname;
END salutation;
/
