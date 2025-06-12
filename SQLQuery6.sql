USE [Transport management application];

--create the vechicles table
CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY IDENTITY(1,1),
    Model VARCHAR(255) NOT NULL,
    Capacity DECIMAL(10,2) NOT NULL,
    Type VARCHAR(50),
    Status VARCHAR(50) CHECK (Status IN ('Available', 'On Trip', 'Maintenance'))
);

--create the routes table
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY IDENTITY(1,1),
    StartDestination VARCHAR(255) NOT NULL,
    EndDestination VARCHAR(255) NOT NULL,
    Distance DECIMAL(10,2) NOT NULL
);

--create the trips table
CREATE TABLE Trips (
    TripID INT PRIMARY KEY IDENTITY(1,1),
    VehicleID INT NOT NULL,
    RouteID INT NOT NULL,
    DepartureDate DATETIME NOT NULL,
    ArrivalDate DATETIME NOT NULL,
    Status VARCHAR(50) CHECK (Status IN ('Scheduled', 'In Progress', 'Completed', 'Cancelled')),
    TripType VARCHAR(50) DEFAULT 'Freight',
    MaxPassengers INT,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);

--create the passengers table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(255) NOT NULL,
    Gender VARCHAR(255),
    Age INT,
    Email VARCHAR(255) UNIQUE,
    PhoneNumber VARCHAR(50)
);

--create the bookings table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY IDENTITY(1,1),
    TripID INT NOT NULL,
    PassengerID INT NOT NULL,
    BookingDate DATETIME NOT NULL,
    Status VARCHAR(50) CHECK (Status IN ('Confirmed', 'Cancelled', 'Completed')),
    FOREIGN KEY (TripID) REFERENCES Trips(TripID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

select * from vehicles;
select * from routes;
select * from trips;
select * from passengers;
select * from bookings;

