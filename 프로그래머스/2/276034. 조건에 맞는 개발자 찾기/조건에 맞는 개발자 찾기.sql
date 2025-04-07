SELECT D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
FROM DEVELOPERS D,
    (SELECT SUM(S.CODE) AS CODE
        FROM SKILLCODES S
        WHERE S.NAME IN ('C#', 'Python')
    ) C
WHERE
    (D.SKILL_CODE & C.CODE) > 0
ORDER BY D.ID ASC;
