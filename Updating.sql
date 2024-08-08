USE PeopleDB;

CALL Show_Table;

CALL UpdatingName(1, 'Wanda');

CALL UpdatingLastName(1, 'Maximoff');

CALL UpdatingFirstNameLastName(2, 'Bruce', 'Banner');

CALL UpdatingEmail(1, 'wanda.maxioff@example.com');

CALL UpdateAge(44, 1);