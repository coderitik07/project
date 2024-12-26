// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HealthTracker {
    // Struct to store health record
    struct HealthRecord {
        uint256 timestamp;
        uint256 weight;
        uint256 bloodPressureSystolic;
        uint256 bloodPressureDiastolic;
        uint256 heartRate;
        string notes;
    }

    // Mapping to store health records for each user
    mapping(address => HealthRecord[]) private userHealthRecords;

    // Event to log when a new health record is added
    event HealthRecordAdded(
        address indexed user, 
        uint256 timestamp, 
        uint256 weight, 
        uint256 bloodPressureSystolic, 
        uint256 bloodPressureDiastolic, 
        uint256 heartRate
    );

    // Function to add a new health record
    function addHealthRecord(
        uint256 weight, 
        uint256 bloodPressureSystolic, 
        uint256 bloodPressureDiastolic, 
        uint256 heartRate, 
        string memory notes
    ) public {
        // Validate input parameters
        require(weight > 0, "Weight must be greater than zero");
        require(bloodPressureSystolic > 0 && bloodPressureDiastolic > 0, "Blood pressure must be greater than zero");
        require(heartRate > 0, "Heart rate must be greater than zero");

        // Create a new health record
        HealthRecord memory newRecord = HealthRecord({
            timestamp: block.timestamp,
            weight: weight,
            bloodPressureSystolic: bloodPressureSystolic,
            bloodPressureDiastolic: bloodPressureDiastolic,
            heartRate: heartRate,
            notes: notes
        });

        // Add the record to the user's health records
        userHealthRecords[msg.sender].push(newRecord);

        // Emit an event for the new health record
        emit HealthRecordAdded(
            msg.sender, 
            newRecord.timestamp, 
            weight, 
            bloodPressureSystolic, 
            bloodPressureDiastolic, 
            heartRate
        );
    }

    // Function to retrieve all health records for the caller
    function getHealthRecords() public view returns (HealthRecord[] memory) {
        return userHealthRecords[msg.sender];
    }

    // Function to get the latest health record
    function getLatestHealthRecord() public view returns (HealthRecord memory) {
        HealthRecord[] memory records = userHealthRecords[msg.sender];
        require(records.length > 0, "No health records found");
        return records[records.length - 1];
    }

    // Function to get the number of health records
    function getHealthRecordCount() public view returns (uint256) {
        return userHealthRecords[msg.sender].length;
    }
}