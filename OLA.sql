Create Database Ola;
Use Ola;
#1. Retrieve all successful bookings:
Create View Successful_Bookings As
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

select * from Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as 
select Vehicle_Type, avg(Ride_Distance) as avg_distance FROM bookings
group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
select count(*) from bookings 
where Cancelled_Rides_by_Customer = 1 ;

select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
create view top_5_customers_booked_highest_number_of_rides as
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

select * from top_5_customers_booked_highest_number_of_rides;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_cancelled_by_drivers_due_to_personal_and_car_issues as
select count(Customer_ID) from bookings 
where Cancelled_Rides_by_Driver = 1 and
Reason_for_cancelling_by_Driver = 'Personal & Car related issues';

select * from rides_cancelled_by_drivers_due_to_personal_and_car_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating;

#7 Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

select * from AVG_Cust_Rating;
#8. Calculate the total booking value of rides completed successfully:
create view total_successfull_ride_value as
select sum(Booking_Value) as total_successfull_ride_value
from bookings 
where Booking_Status = 'Success';

select * from total_successfull_ride_value;

#9. List all incomplete rides along with the reason:
create view incomplete_rides as
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides= 1 ;

select * from incomplete_rides;

#1. Retrieve all successful bookings:
Select * From successful_bookings;
#2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;
#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;
#4. List the top 5 customers who booked the highest number of rides:
Select * from top_5_customers_booked_highest_number_of_rides;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from rides_cancelled_by_drivers_due_to_personal_and_car_issues;
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Driver_Rating;
#7. Find the average customer rating per vehicle type:
Select * from AVG_Cust_Rating;
#8. Calculate the total booking value of rides completed successfully:
Select * from total_successfull_ride_value;
#9. List all incomplete rides along with the reason:
Select * from incomplete_rides;
