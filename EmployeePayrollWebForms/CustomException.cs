using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmployeePayrollWebForms
{
    public class CustomException:Exception
    {
        public enum ExceptionType
        {
            NullMessage,
            EmptyMessage,
            No_Such_Class,
            No_Such_Method,
            No_Such_Field,
            No_Such_Property,
            No_Such_Enum,
            No_Such_Exception,
            No_Such_Constructor,
        }
    }
}