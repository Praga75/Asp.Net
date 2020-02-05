use TicketBookingDatabase

CREATE TABLE UserDetail 
(
UserName varchar(10) Primary Key,
Password varchar(10),
ConfirmPassword varchar(10),
Name varchar(20),
MailId varchar(20),
Dateofbirth DateTime,
Gender varchar(10),
MobileNumber bigint,
Nationality varchar(20)
);

select * from UserDetail


CREATE Procedure sp_UserDetail

@UserName varchar(10),
@Password varchar(10),
@ConfirmPassword varchar(10),
@Name varchar(20),
@MailId varchar(20),
@Dateofbirth DateTime,
@Gender varchar(10),
@MobileNumber bigint,
@Nationality varchar(20)
as
begin
Insert into UserDetail(UserName,Password,ConfirmPassword, Name,MailId,Dateofbirth, Gender, MobileNumber, Nationality)
values(@UserName,@Password,@ConfirmPassword,@Name,@MailId,@Dateofbirth,@Gender, @MobileNumber, @Nationality);
end

Insert into UserDetail(UserName,Password,ConfirmPassword, Name,MailId,Dateofbirth, Gender, MobileNumber, Nationality)
values('User','1234','1234','Student','user@gmail.com','12/12/2012','Male',1234567890, 'Indian');

CREATE PROCEDURE sp_CheckUser
@UserName varchar(10),
@Password varchar(10)
AS
BEGIN
SET NOCOUNT ON
IF EXISTS(SELECT * FROM UserDetail WHERE UserName = @username AND Password = @password)
    SELECT 'true' AS UserExists
ELSE
    SELECT 'false' AS UserExists
END

exec sp_CheckUser @UserName='User' , @Password = '1234'
