SELECT I.ANIMAL_ID, I.ANIMAL_TYPE, I.NAME#, I.SEX_UPON_INTAKE, O.SEX_UPON_OUTCOME
FROM ANIMAL_INS I
JOIN ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE SUBSTRING_INDEX(I.SEX_UPON_INTAKE, ' ', 1) = 'Intact'
AND SUBSTRING_INDEX(O.SEX_UPON_OUTCOME, ' ', 1) != 'Intact'