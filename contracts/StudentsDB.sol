// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;



contract StudentDatabase{

    struct Student{
        string name;
        uint256 rollno;
        uint256 age;
        string course;
    }

    mapping(uint256=>Student)students;

    function addstudent(string memory _name, uint256 _rollno, uint256 _age, string memory _course) public {students[_rollno]=Student(_name,_rollno,_age,_course);
    }

    function getStudent(uint256 _rollno) public view returns (string memory, uint256,uint256,string memory){
        Student memory student = students[_rollno];
        return(student.name, student.rollno,student.age,student.course);
    }
}