using {com.sap.timesheet as timesheet} from '../db/schema';

@path: 'service/timesheet'
service TimesheetService {
    entity Employee    as projection on timesheet.Employee;
    annotate Employee with @odata.draft.enabled;

    entity ReportingTo as projection on timesheet.ReportingTo;
    annotate ReportingTo with @odata.draft.enabled;

    entity Timesheet    as projection on timesheet.Timesheet;
    annotate Timesheet with @odata.draft.enabled;

    entity Tasks    as projection on timesheet.Tasks;
    annotate Tasks with @odata.draft.enabled;
}
