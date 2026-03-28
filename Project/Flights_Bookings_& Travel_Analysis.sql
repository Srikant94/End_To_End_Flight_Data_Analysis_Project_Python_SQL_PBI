SELECT * FROM flight_bookings.flight_bookings_sample;


# Total Bookings

select count(distinct(Booking_ID)) as Total_Bookings
from flight_bookings_sample ;


# Total Ticket Price

select round(sum(Ticket_Price), 2) as Total_Ticket_Price
from flight_bookings_sample ;


# Average Passenger Age

select round(avg(Passenger_Age), 2) as Average_Passenger_Age
from flight_bookings_sample ; 


# Total Distance

select round(sum(Distance_km), 2) as Total_Distance
from flight_bookings_sample ;


# Average Flight Duration

select round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration
from flight_bookings_sample ;


# Average Ticket Price

select round(avg(Ticket_Price), 2) as Average_Ticket_Price
from flight_bookings_sample ;


# Total Ticket Price By Airline

select Airline,
	  round(sum( Ticket_Price ), 2) as Total_Ticket_Price
from flight_bookings_sample
group by Airline
order by Total_Ticket_Price desc ;


# Total Ticket Price By Departure City

select Departure_City,
	   round( sum(Ticket_Price), 2) as Total_Ticket_Price
from flight_bookings_sample
group by Departure_City
order by Total_Ticket_Price desc ; 


# Total Bookings By Travel Class

select Travel_Class,
	   count(distinct(Booking_ID)) as Total_Bookings
from flight_bookings_sample
group by Travel_Class
order by Total_Bookings desc ;


# Total Ticket Price By Payment Method

select Payment_Method,
	   round(sum(Ticket_Price), 2) as Total_Ticket_Price
from flight_bookings_sample
group by Payment_Method
order by Total_Ticket_Price desc ;


# Total Bookings By Payment Method

select Payment_Method,
	   count(distinct(Booking_ID)) as Total_Bookings
from flight_bookings_sample
group by Payment_Method
order by Total_Bookings desc ;


# Total Ticket Price By Passenger Age

select 
		case
			when Passenger_Age between 0 and 20 then '0-20'
            when Passenger_Age between 21 and 40 then '21-40'
            when Passenger_Age between 41 and 60 then '41-60'
            when Passenger_Age between 61 and 80 then '61-80'
            when Passenger_Age between 81 and 100 then '81-100'
		end as Passenger_Age_Group,
        round(sum(Ticket_Price), 2) as Total_Ticket_Price
from flight_bookings_sample
group by Passenger_Age_Group
order by Total_Ticket_Price desc ;


# Flight Duration Consistency

select round(stddev_pop(Flight_Duration_hr), 2) as Variation_In_Flight_Duration # using std_pop --> standard deviation of whole population
from flight_bookings_sample ;


# Total Flight Duration

select round(sum(Flight_Duration_hr),2) as Total_Flight_Duration
from flight_bookings_sample ;


# Average Flight Duration By Airline

select Airline,
		round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration
from flight_bookings_sample 
group by Airline
order by Average_Flight_Duration desc ;


# Average Flight Duration By Payment Method

select Payment_Method,
		round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration
from flight_bookings_sample
group by Payment_Method
order by Average_Flight_Duration desc ;


# Average Flight Duration By Passenger Age

select 
		case
			when Passenger_Age between 0 and 20 then '0 - 20'
            when Passenger_Age between 21 and 40 then '21 - 40'
            when Passenger_Age between 41 and 60 then '41 - 60'
            when Passenger_Age between 61 and 80 then '61 - 80'
            when Passenger_Age between 81 and 100 then '81 - 100'
        end as Passenger_Age_Group,
        round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration
from flight_bookings_sample
group by Passenger_Age_Group
order by Average_Flight_Duration desc ;


# Flight Duration & Variation By City

select Departure_City,
		round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration,
        round(stddev_pop(Flight_Duration_hr), 2) as Flight_Duration_Variation
from flight_bookings_sample
group by Departure_City
order by Flight_Duration_Variation desc, Average_Flight_Duration desc ;


# Relationship Between Flight Duration & Ticket Price

select corr( Flight_Duration_hr, Ticket_Price ) as Correlation
from flight_bookings_sample ;
# not doable in sql


# Average Flight Duration By Travel Class

select Travel_Class,
		round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration
from flight_bookings_sample
group by Travel_Class
order by Average_Flight_Duration desc ;


# Average Revenue Per Booking

select round(( sum(Ticket_Price) / count(distinct(Booking_ID)) ), 2) as Average_Revenue_Per_Booking
from flight_bookings_sample ;

# Test to verify if one row has one booking. If both the results are same then it means one row has one booking
# If one row equals one booking then average ticket price equals average revenue per booking

select count(*) as Total_Rows,
		count(distinct(Booking_ID)) as Total_Booknigs
from flight_bookings_sample ;

# hence we can remove the kpi - Averge_Ticket_Price as they both are giving same results


# Average Distance Per Flight

select round(sum(Distance_km) / count(distinct(Booking_ID)), 2) as Average_Distance_Per_Flight
from flight_bookings_sample ;


# Price per KM

select round(sum(Ticket_Price) / sum(Distance_km), 2) as Total_Price_Per_Km
from flight_bookings_sample ;


# Flight Duration & Variation By City

select Airline,
		round(avg(Flight_Duration_hr), 2) as Average_Flight_Duration,
        round(stddev_pop(Flight_Duration_hr), 2)
        as Flight_Duration_Variation
from flight_bookings_sample
group by Airline
order by Flight_Duration_Variation desc, Average_Flight_Duration desc ;