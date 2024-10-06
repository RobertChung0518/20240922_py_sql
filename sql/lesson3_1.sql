SELECT code,name
FROM taipeistation;

SELECT *
FROM taipeistation;

SELECT code as 代碼
FROM taipeistation;

SELECT code as 代碼,name as 車站名稱
FROM taipeistation;

SELECT code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM taipeistation;

SELECT code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM taipeistation
WHERE code = '1001';

SELECT code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM taipeistation
WHERE code = '1001' or code = '1006';

SELECT code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM taipeistation
WHERE code IN ('1001','1006');

SELECT code as 代碼,name as 車站名稱,e_name as 英文名稱
FROM taipeistation
WHERE code = '1001' or name = '南港';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE name LIKE '台_';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE name LIKE '台%';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE name LIKE '%中';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE name LIKE '_____';

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE id <=10;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE id <=50 and id >=40;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE id <10 or id >20;

SELECT id as 序號,code as 代碼, name as 車站名稱, e_name as 英文名稱
FROM taipeistation
WHERE id BETWEEN 10 AND 20;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
WHERE id NOT BETWEEN 10 AND 20;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY id;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY id DESC;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY code;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY code DESC;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY e_name;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY e_name DESC;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
WHERE id BETWEEN 17 AND 33
ORDER BY e_name;

SELECT id as 序號_id,code as 代碼_code, name as 車站名稱_name, e_name as 英文名稱_e_name
FROM taipeistation
ORDER BY e_name
limit 10;

