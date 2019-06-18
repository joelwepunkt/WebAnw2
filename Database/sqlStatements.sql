Create table Article(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY UNIQUE,
Manufacturer TEXT NOT NULL,
ArtName TEXT NOT NULL,
Price REAL NOT NULL,
ArtCount INTEGER NOT NULL,
Description TEXT NOT NULL,
Bild TEXT NOT NULL
);

Create table Cart(
CID INTEGER IDENTITY(1,1) PRIMARY KEY,
CNR INTEGER,
ArtNr INTEGER,
Count INTEGER NOT NULL,
FOREIGN KEY(CNR) references Customer(CNR),
FOREIGN KEY(ArtNR) references Article(ArtNr)
);

Create table Customer(
CNR INTEGER IDENTITY(1,1) PRIMARY KEY,
Email TEXT,
Name TEXT,
Street TEXT,
City TEXT
);

Create table Purchase(
OID INTEGER IDENTITY(1,1) PRIMARY KEY,
CNR INTEGER,
Payment TEXT,
FOREIGN KEY(CNR) references Customer(CNR)
);

Create table PurchCart(
PID INTEGER IDENTITY(1,1) PRIMARY KEY,
OID INTEGER,
ArtNr INTEGER,
Count INTEGER,
FOREIGN KEY(OID) references Purchase(OID),
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table Rating(
RID INTEGER IDENTITY(1,1) PRIMARY KEY,
ArtNr INTEGER,
CNR INTEGER,
Rating INTEGER,
Text VARCHAR,
FOREIGN KEY(ArtNr) references Article(ArtNr),
FOREIGN KEY(CNR) references Customer(CNR)
);

Create table HardDrive(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Capacity INTEGER,
Read INTEGER,
Write INTEGER,
Accesstime FLOAT,
Format TEXT,
Interface TEXT,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table HDD(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
RPM INTEGER,
Cache INTEGER,
FOREIGN KEY(ArtNr) references HardDrive(ArtNr)
);

Create table SSD(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Chiptype TEXT,
Lifetime INTEGER,
FOREIGN KEY(ArtNr) references HardDrive(ArtNr)
);

Create table Processor(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY UNIQUE,
Cores INTEGER,
Threads INTEGER,
Frequenzy REAL,
Turbo REAL,
L2Cache INTEGER,
L3Cache INTEGER,
Socket TEXT,
TDP INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table GraphicsCard(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Frequenzy REAL,
Turbo REAL,
Streamp INTEGER,
Port TEXT,
Memorysize INTEGER,
Memorytype TEXT,
Memoryfrequency	INTEGER,
TDP INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table RAM(
ArtNr INTEGER IDENTITY(1,1) PRIMARY KEY,
Capacity INTEGER,
NumberOfModul INTEGER,
CapacityType INTEGER,
MemoryType TEXT,
Voltage REAL,
Latency INTEGER,
tRCD INTEGER,
tRP INTEGER,
tRAS INTEGER,
FOREIGN KEY(ArtNr) references Article(ArtNr)
);

Create table CustomerDatas(
CNR INTEGER IDENTITY(1,1) PRIMARY KEY,
Email TEXT NOT NULL,
Firstname TEXT NOT NULL,
Lastname TEXT NOT NULL,
Adress TEXT NOT NULL,
City TEXT NOT NULL
)

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description, Bild) VALUES (1,'AMD', 'Athlon 200GE', 42.00, 10, 'TestTextTestText', '../Backend/src/main/webapp/Pictures');
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES ( 1,2, 4, 3.20, 4.50, 'So.AM4', 35 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description) VALUES (2,'AMD', 'Ryzen 1300X', 84.90, 6);
INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (2,4, 4, 3.40, 3.70, 'So.AM4', 65);

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description) VALUES (3, 'AMD', '1600X', 124.00, 4);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (3, 6, 12, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description) VALUES (4, 'AMD', '1800X', 220.00, 5);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES(4, 8, 16, 3.60, 4.00, 'So.AM4', 95 );

INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount, Description) VALUES (5, 'AMD', '2200G', 85.00, 3);
INSERT INTO Processor (ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (5, 4, 4, 3.50, 3.70, 'So.AM4', 65 );

INSERT INTO CustomerDatas(CNR, Firstname, Lastname, Adress, City) VALUES (1,'tobsi@gmx.de', 'Fälix', 'JoEl', 'Poststraße 8', 'Ebingen' );
