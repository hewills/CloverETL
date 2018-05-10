# CloverETL
Helpful graphs and functions for use in CloverETL   
   
## Files ##   
   
date2SID.ctl - Convert date (mm-dd-yyyy) to a SID (long)   
   
setNull.ctl - If field is null, it returns the default NULL replacement, based on its type
   
   
## Function Usage ##   
   
Save functions in the CloverETL sandbox **trans** folder   
   
![function usage](/docs/example1.png)   
   
Import the function, to use in CTL2 transformations   
   
`import "trans/date2SID.ctl";`   

https://github.com/hewills/CloverETL/blob/dev_0510/docs/example1.png