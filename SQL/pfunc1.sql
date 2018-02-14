
INSERT INTO CMSoptions (currentFiscalYear, security, addDate, updateDate)
Values('2018', 'LDAP', sysdate, NULL);

INSERT INTO CMScampaigns (shortName, Descript, fullName, notes, purchases, successRating, addDate, updateDate)
Values('manual', 'Sales person manual contacts', 'Manual Contact by Sales', NULL, 0, 0, sysdate, NULL);

INSERT INTO CMScustomer (name, address, address2, city, state, zipCode, phone, email, updateDate)
Values(sysdate, 'JonB', 1, 'Test company', '123 main st', 'Dept 5', 'Anytown', '84000', 801-000-0000', 'jon.bushey@imail.org', sysdate);

INSERT INTO CMScustCont (addDate, contactType, sysnum_c, sysnum_a, results, contactBy, followUp, notes, updateDate)
Values(sysdate, 'email', 1, 1, 0, 'system', NULL, 'Test notes', sysdate);
