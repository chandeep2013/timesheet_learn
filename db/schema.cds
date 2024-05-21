namespace com.sap.timesheet;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Employee : managed {
    key EmployeeID      : String(10);
        FirstName       : String(30);
        LastName        : String(30);
        MailID          : String(50);
        EmployeeType    : String(1);
        ReportingTo     : String(10);
        ReportingToName : String(20);
}

entity ReportingTo : managed {
    key ReportingToID : String(10);
        FirstName     : String(30);
        LastName      : String(30);
        MailID        : String(50);
}

entity Timesheet : managed {
    key TimesheetID  : UUID;
        EmployeeID   : String(10);
        EmployeeName : String(20);
        Date         : String(10);
        TotalHours   : String(5);
        TaskID       : String(10);
        TaskName     : String(20);
}

entity Tasks : cuid {
    key TaskId   : UUID;
        TaskName : String(100);
}
