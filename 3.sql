select * from route;
select * from vehicle;
select * from user_reg_table;
select * from transaction;
/*
available buss
*/
SELECT DISTINCT name FROM vehicle where type='buss';
/*
available micro
*/
SELECT DISTINCT name FROM vehicle where type='micro';
/*
available number vehicles 
*/
select count(plate_no) from vehicle;
/*
available busses dhaka-khulna route
*/
select name from vehicle where route_id in ( select  route_id from route where destination='dhaka' and cityname='khulna' or destination='khulna' and cityname='dhaka');

/*
micro and buss numbers using group by
*/
select count(type),type from vehicle group by type ;

/*
shows all  the route and corresponding vehicle name using join operation
*/
select  route.destination, route.cityname, vehicle.name from route  inner join vehicle  on route.route_id=vehicle.route_id;