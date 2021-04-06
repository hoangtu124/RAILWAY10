-- Lấy ra tên các phòng ban 
SELECT 
    *
FROM
    Department;

-- Lấy ra id của phòng ban "Sale"
SELECT 
    DepartmentID
FROM
    Department
WHERE
    DepartmentName = 'Sale';

-- Lấy ra thông tin account có full name dài nhất và sắp xếp chúng theo thứ tự giảm dần 
SELECT 
    *
FROM
    `Account`
WHERE
    LENGTH(FullName) = (SELECT 
            MAX(LENGTH(FullName))
        FROM
            `Account`)
ORDER BY FullName DESC;

-- Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có ID = 3
SELECT 
    *
FROM
    `Account`
WHERE
    LENGTH(FullName) = (SELECT 
            MAX(LENGTH(FullName))
        FROM
            `Account`)
        AND DepartmentID = 3;

-- Lấy ra tên group đã tham gia trước ngày 20/12/2019 
SELECT 
    GroupName
FROM
    `Group`
WHERE
    CreateDate < '20/12/2019';

-- Lấy ra ID của Question có nhiều hơn hoặc bằng 4 câu trả lời
 SELECT 
    QuestionID
FROM
    Answer
GROUP BY QuestionID
HAVING COUNT(QuestionID) >= 4;

-- Lấy ra các mã đề thi có thời gian thi lớn hơn hoặc bằng 60 phút và được tạo trước ngày 20/12/2019
SELECT 
    `Code`
FROM
    Exam
WHERE
    Duration >= 60
        AND CreateDate < '2019-12-20'; 
        
-- Lấy ra 5 group đc tạo gần đây nhất 
SELECT 
    *
FROM
    `Group`
ORDER BY CreateDate DESC
LIMIT 5;
        
-- Đếm số nhân viên thuộc Department có ID = 2
SELECT 
    COUNT(AccountID) AS 'So nhan vien'
FROM
    `Account`
WHERE
    DepartmentID = 2;
    
-- Lấy ra nhân viên có tên bắt đầu bằng chữ "D" Và kết thúc bằng chữ "O"
SELECT 
    FullName
FROM
    `Account` 
WHERE
     FullName like 'D%O';
    
-- Xóa tất cả các axem được tạo trước ngày 20/12/2019
DELETE FROM Exam 
WHERE
    CreateDate < '2019-12-20';
    
-- xóa tất cả các account có FullName bắt đầu bằng 2 từ "Nguyễn Hải"
DELETE FROM `Account` WHERE FullName like 'Nguyễn Hải%';        

-- update thông tin của account có ID = 5 thành tên " Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account` SET FullName = 'Nguyễn Bá Lộc' ,  Email = 'loc.nguyenba@vti.com.vn' WHERE AccountID=5;
