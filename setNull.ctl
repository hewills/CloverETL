//#CTL2
/*******************
setNull(<input in any data type>, [string], [string], [integer])
If input is null, returns default NULL value based on data type of input

Arguments:
(1) - input field (overloaded for every data type except byte/cbyte)
(2) - (optional) default value for String  (ex. '-')
(3) - (optional) default value for dates   (ex. '1753-01-01')
(4) - (optional) default value for numbers (ex. 0)

If default values aren't specified a standard value is assigned.
Note: Default date returns as 'YYYY-MM-DD'
*******************/

// String value
function string setNull(string data, string str, string dt, integer num)
{
   return data==null ? str:data;
}

// String value with default
function string setNull(string data)
{
   return data==null ? "-":data;
}

// String value with passed default
function string setNull(string data, string str)
{
   return data==null ? str:data;
}


// Date value
function date setNull(date data, string str, string dt, integer num)
{
   return data==null ? str2date(dt,"yyyy-MM-dd"):data;
}

// Date value with default
function date setNull(date data)
{
   return data==null ? str2date("1753-01-01","yyyy-MM-dd"):data;
}

// Date value with passed default
function date setNull(date data, string dt)
{
   return data==null ? str2date(dt,"yyyy-MM-dd"):data;
}


// Integer value
function integer setNull(integer data, string str, string dt, integer num)
{
   return data==null ? num:data;
}

// Integer value with default
function integer setNull(integer data)
{
   return data==null ? 0:data;
}

// Integer value with passed default
function integer setNull(integer data, integer num)
{
   return data==null ? num:data;
}


// Decimal value
function decimal setNull(decimal data, string str, string dt, integer num)
{
   return data==null ? num:data;
}

// Decimal value with default
function decimal setNull(decimal data)
{
   return data==null ? 0:data;
}

// Decimal value with passed default
function decimal setNull(decimal data, integer num)
{
   return data==null ? num:data;
}

// Long value
function long setNull(long data, string str, string dt, integer num)
{
   return data==null ? num:data;
}

// Long value with default
function long setNull(long data)
{
   return data==null ? 0:data;
}

// Long value with passed default
function long setNull(long data, integer num)
{
   return data==null ? num:data;
}

// Number value
function number setNull(number data, string str, string dt, integer num)
{
   return data==null ? num:data;
}

// Number value with default
function number setNull(number data)
{
   return data==null ? 0:data;
}

// Number value with passed default
function number setNull(number data, integer num)
{
   return data==null ? num:data;
}

// Boolean value
function boolean setNull(boolean data, string str, string dt, integer num)
{
   return data = null;
}

// Boolean value with default
function boolean setNull(boolean data)
{
   return data = null;
}

