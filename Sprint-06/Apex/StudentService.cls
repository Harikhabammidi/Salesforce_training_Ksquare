public with sharing class StudentService {

    public static Student__c getStudent(Id studentId) {

        Student__c student = [
            SELECT Id,
                   Name,
                   Roll_no__c,
                   CGPA__c,
                   Branch__c,
                   Backlogs__c
            FROM Student__c
            WHERE Id = :studentId
        ];

        return student;
    }
}

/* Execute Anonymous window /*
Student__c student = [
    SELECT Id, Name, CGPA__c, Branch__c, Backlogs__c
    FROM Student__c
    LIMIT 1
];
System.debug(Student);
