SELECT Firstname, Lastname, City, State
FROM easy.Person175 p JOIN easy.Address175 a 
ON p.Personid = a.PersonId;