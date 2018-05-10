//#CTL2
/*******************
Return a long (SID) value, based on the date passed in (Argument 1)
If the date isn't valid, the default date is returned (Argument 2)

long date2SID([date], [date] optional)

If no arguments are passed, the default date is returned
If a default date isn't specified, the return default value '1753-01-01' is used

Arguments:
(1) - date to convert
(2) - default date to use, if converted date is invalid

Usage:
In Transform CTL code, import the function:
   import "trans/date2SID.ctl";

Use function with any date field:
ex.   $out.0.BIRTH_DT_SID = date2SID($in.0.BIRTHDATE);
*******************/

// Return default date sid if no arguments are used
function long date2SID()
{
   return str2long(date2str(1753-01-01,"yyyyMMdd"));
}

// Return long (SID) version of date
function long date2SID(date data)
{
   // If Date is not Valid, set it to Default '1753-01-01'
   if (data > 2500-01-01 || data < 1900-01-01) {
	  	
	   return str2long(date2str(1753-01-01,"yyyyMMdd"));
   }
   else {
   	   return str2long(date2str(data,"yyyyMMdd"));
   }	  

}

// Return long version of date, with default date provided
function long date2SID(date data, date default_data)
{
   // If Date is not Valid, set it to Default provided in second argument
   if (data > 2500-01-01 || data < 1900-01-01) {
	  	
	   return str2long(date2str(default_data,"yyyyMMdd"));
   }
   else {
   	   return str2long(date2str(data,"yyyyMMdd"));
   }	  

}

