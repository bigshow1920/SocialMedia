create database webbangiay
use webbangiay

create table product_converse
(
	ID int primary key ,
	Ten Varchar (40),
	Img varchar(60),
	Gia int,
	MoTa varchar(100)
)
create table product_vans
(
	ID int primary key ,
	Ten Varchar (40),
	Img varchar(60),
	Gia int,
	MoTa varchar(100)
)
create table product_adidas
(
	ID int primary key ,
	Ten Varchar (40),
	Img varchar(60),
	Gia int,
	MoTa varchar(100)
)

create table Users 
(
username varchar(20) primary key ,
password varchar(20),
email varchar(30),
moneyy int
)

insert into Users values('user1',123456,'duy@gmail.com',2000000);
insert into product_converse values (1, 'Chuck70Black', 'images\Converse\Chuck70Black.png', 200000,'Giay the thao dep, sang trong'  )
insert into product_converse values (2, 'Chuck Taylor All Star', 'images\Converse\ChuckTaylorAllStar1970sWhite-Hi.png', 200000,'Giay the thao dep, sang trong'  )
insert into product_converse values (3, 'Chuck 70 FlameLow', 'images\Converse\Chuck70FlameLow.jpg', 190000,'Giay the thao dep, sang trong'  )
insert into product_converse values (4, 'Chuck Taylor All Star CX Ice Blue', 'images\Converse\ChuckTaylorAllStarCXIB.jpg', 230000,'Giay the thao dep, sang trong'  )
insert into product_converse values (5, 'Chuck Taylor AllStar LogoPlay', 'images\Converse\ChuckTaylorAllStarLogoPlay.jpg', 200000,'Giay the thao dep, sang trong'  )
insert into product_converse values (6, 'All Star Disrupt CX', 'images\Converse\AllStarDisruptCX.jpg"', 300000,'Giay the thao dep, sang trong'  )
insert into product_converse values (7, 'Fear Of God Essentials', 'images\Converse\FearOfGodEssentials.jpg', 570000,'Giay the thao dep, sang trong'  )
insert into product_converse values (8, 'Chuck 70 High xPLAY', 'images\Converse\Chuck70HighxPLAY.jpeg', 580000,'Giay the thao dep, sang trong'  )

insert into product_adidas values (1, 'Superstar1', 'images\Adidas\superstar.jpg', 168000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (2, 'Superstar2', 'images\Adidas\woman superstar.jpg', 168000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (3, 'NMD R1', 'images\Adidas\nmd_r1.jpg', 340000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (4, 'Ultraboost DNA city', 'images\Adidas\ultraboost dna cty.jpg', 420000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (5, 'Ultraboost Summer RDY', 'images\Adidas\ultraboost summer.rdy.jpg', 500000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (6, 'Ultra4D', 'images\Adidas\ultra4d.jpg', 500000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (7, 'Ultraboost 20', 'images\Adidas\ultraboost 20.jpg', 500000,'Giay the thao dep, sang trong'  )
insert into product_adidas values (8, '$D Run 1.0', 'images\Adidas\4d-run-1.0.jpg', 550000,'Giay the thao dep, sang trong'  )

insert into product_vans values (1, 'Checkerboarb Classic Slip On', 'images\Vans\CHECKERBOARDCLASSICSLIPON.webp', 140000,'Giay the thao dep, sang trong'  )
insert into product_vans values (2, 'Old Skool', 'images\Vans\OldSkool.webp', 136000,'Giay the thao dep, sang trong'  )
insert into product_vans values (3, 'Sk8-Hi', 'images\Vans\Sk8Hi.jpg', 138000,'Giay the thao dep, sang trong'  )
insert into product_vans values (4, 'Pig Suede Sk8-Hi', 'images\Vans\PigSuedeSk8Hi.webp', 162000,'Giay the thao dep, sang trong'  )
insert into product_vans values (5, 'Mix & Match Old Skool', 'images\Vans\Mix&MatchOldSkool.jpg', 136000,'Giay the thao dep, sang trong'  )
insert into product_vans values (6, 'Leather Lowland CC', 'images\Vans\LeatherLowlandCC.webp', 197700,'Giay the thao dep, sang trong'  )
insert into product_vans values (7, 'Lowland CC', 'images\Vans\LowlandCC.webp', 207000,'Giay the thao dep, sang trong'  )
insert into product_vans values (8, 'Mix & Match Classic Slip On', 'images\Vans\MixMatchClassicSlipOn.webp', 123000,'Giay the thao dep, sang trong'  )
