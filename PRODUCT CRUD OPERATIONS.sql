SELECT * FROM ZOMATO.PRODUCT;
INSERT INTO ZOMATO.PRODUCT(PNAME,PPRICE,PQUALITY,PDETAILS)
VALUE('GARINER',50,'GOOD','IT IS A INDIA PRODUCT'),
('SUNSHINE',60,'BETTER','IT IS A GOOD PRODUCT');

UPDATE ZOMATO.PRODUCT SET PNAME='PONDS' WHERE PQUALITY='GOOD';

DELETE FROM ZOMATO.PRODUCT WHERE PNAME='GARNIER';