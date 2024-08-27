
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {
    struct Record {
        uint256 attendance;
        uint256 marks;
        uint256 feesPaid;
        string certificationHash;
    }

    mapping(address => Record) private studentRecords;
    mapping(address => bool) private administrators;

    modifier onlyAdmin() {
        require(administrators[msg.sender], "Not an admin");
        _;
    }

    constructor() {
        administrators[msg.sender] = true; // Contract creator is an admin
    }

    function addAdmin(address _admin) public onlyAdmin {
        administrators[_admin] = true;
    }

    function removeAdmin(address _admin) public onlyAdmin {
        administrators[_admin] = false;
    }

    function updateAttendance(address _student, uint256 _attendance) public onlyAdmin {
        studentRecords[_student].attendance = _attendance;
    }

    function updateMarks(address _student, uint256 _marks) public onlyAdmin {
        studentRecords[_student].marks = _marks;
    }

    function updateFeesPaid(address _student, uint256 _feesPaid) public onlyAdmin {
        studentRecords[_student].feesPaid = _feesPaid;
    }

    function issueCertification(address _student, string memory _certificationHash) public onlyAdmin {
        studentRecords[_student].certificationHash = _certificationHash;
    }

    function getRecord(address _student) public view returns (Record memory) {
        return studentRecords[_student];
    }
}
