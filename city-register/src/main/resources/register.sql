CREATE TABLE cr_district (
district_code integer not null,
district_name varchar (300),
PRIMARY KEY (district_code)
);
CREATE TABLE jc_street(
street_code integer not null,
street_name varchar (300),
PRIMARY KEY (street_code)
);
CREATE TABLE cr_address(
address code SERIAL,
district_code integer not null,
street_code integer not null,
building varchar (10) not null,
extension varchar (10),
apartment varchar (10),
PRIMARY KEY (address_id),
FOREIGN KEY (district_code) REFERENCES cr_district (district_code) ON delete RESTRICT,
FOREIGN KEY (street_code) REFERENCES cr_street (street_code) ON delete RESTRICT
);
CREATE TABLE cr_person (
sur_name varchar(100) not null,
given_name varchar(100) not null,
patronymic varchar(100) not null,
date_of_birth date not null,
passport_seria varchar(10),
passport_number varchar(10),
passport_date date not null,
certificate_number varchar (10) null,
certificate_date date null,
)

3. Адрес - район, улица, дом, корпус, квартира
4. Персона - ФИО, дата рождения, Паспорт (серия/номер/дата выдачи),
Свидетельство о рождении (номер/дата выдачи)
5. Связь персоны и адреса - Персона, Адрес и диапазон дат, вид регистрации


DDD - Domain Driven Developer