SELECT last_name,TO_CHAR(commission_pct) || NVL2(commission_pct,' ','No commission') comm
FROM employees;