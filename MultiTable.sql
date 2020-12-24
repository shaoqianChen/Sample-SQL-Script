SELECT 
    C.COMPANY_CODE,
    C.FOUNDER,
    COUNT(DISTINCT L.lead_manager_code),
    COUNT(DISTINCT S.senior_manager_code),
    COUNT(DISTINCT M.manager_code),
    COUNT(DISTINCT E.employee_code)
    FROM COMPANY AS C, LEAD_MANAGER AS L, Senior_Manager AS S, MANAGER AS M,EMPLOYEE AS E
    WHERE
        C.COMPANY_CODE = L.COMPANY_CODE AND
        L.COMPANY_CODE = S.COMPANY_CODE AND 
        S.COMPANY_CODE = M.COMPANY_CODE AND 
        M.COMPANY_CODE = E.COMPANY_CODE
    GROUP BY C.COMPANY_CODE, C.FOUNDER
    ORDER BY C.COMPANY_CODE ASC





SELECT 
    c.company_code, 
    c.founder, 
    COUNT(DISTINCT l.lead_manager_code), 
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code), 
    COUNT(DISTINCT e.employee_code)
FROM Company as c 
        JOIN Lead_Manager as l ON c.company_code = l.company_code 
        JOIN Senior_Manager as s ON l.lead_manager_code = s.lead_manager_code 
        JOIN Manager as m ON s.senior_manager_code = m.senior_manager_code 
        JOIN Employee as e ON m.manager_code = e.manager_code   
GROUP BY c.company_code, c.founder ORDER BY c.company_code;


/*
id, age, coins_needed, power of the wands
ORDER BY power DESC, age DESC
*/
SELECT 
    id, 
    age, 
    m.coins_needed, 
    m.power 
    FROM (SELECT code, power, MIN(coins_needed) AS coins_needed FROM Wands GROUP BY code, power) AS m
    JOIN Wands AS w ON 
        m.code = w.code AND 
        m.power = w.power AND 
        m.coins_needed = w.coins_needed
    JOIN Wands_Property AS p ON 
        m.code = p.code
    WHERE P.IS_EVIL = 0
    ORDER BY M.POWER DESC, AGE DESC




5120 Julia 50 
18425 Anna 50 
20023 Brian 50 
33625 Jason 50 
41805 Benjamin 50 
52462 Nicholas 50 
64036 Craig 50 
69471 Michelle 50 
77173 Mildred 50 
94278 Dennis 50 
96009 Russell 50 
96716 Emily 50 
72866 Eugene 42 
37068 Patrick 41 
12766 Jacqueline 40 
86280 Beverly 37 
19835 Joyce 36 
38316 Walter 35 
29483 Jeffrey 34 
23428 Arthur 33 
95437 George 32 
46963 Barbara 31 
87524 Norma 30 
84085 Johnny 29 
39582 Maria 28 
65843 Thomas 27 
5443 Paul 26 
52965 Bobby 25 
77105 Diana 24 
33787 Susan 23 
45855 Clarence 22 
33177 Jane 21 
7302 Victor 20 
54461 Janet 19 
42277 Sara 18 
99388 Mary 16 
31426 Carlos 15 
95010 Victor 14 
27071 Gerald 10 
90267 Edward 9 
72609 Bobby 8