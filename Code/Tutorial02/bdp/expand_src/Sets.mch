﻿/* Sets
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE Sets
    SETS
        PEOPLE ;
        ANSWER = { yes , no } ;
        CURSOR_KEY = { Up_Key , Down_Key , Left_Key , Right_Key } ;
        DIRECTION = { North , South , East , West }

    CONCRETE_CONSTANTS
        Jim , Sue

    PROPERTIES
        Jim : PEOPLE & Sue : PEOPLE & Jim /= Sue

    ABSTRACT_VARIABLES
        dirs , keys , pointing

    INVARIANT
        dirs <: DIRECTION & keys <: CURSOR_KEY & pointing : dirs

    INITIALISATION
        dirs , keys , pointing
            := { North , South } , { Up_Key , Down_Key } , North


END
