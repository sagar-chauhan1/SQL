1.
grant select, update, insert, drop
on myemp
to demo;

2.
grant select, insert, update, delete
on countries
to demo;

3.
revoke select, update, insert, drop
on myemp
to demo;

4.
revoke select, insert, update, delete
on countries
to demo;
