# Copyright 2013-2018, Innoaus Inc., All rights reserved.

find_library (mariadbclient_LIBRARY  libmariadbclient.a HINTS "/usr/lib" "/usr/lib64" "/usr/local/lib")
find_path (mariadbclient_INCLUDE mysql/mysql.h HINTS "/usr/include")

if (mariadbclient_INCLUDE AND mariadbclient_LIBRARY)
    set (MARIADBCLIENTL_FOUND TRUE)
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

	message (STATUS "${Green}Found mariadbclient library at: ${mariadbclient_LIBRARY}${RESET}")
	message (STATUS "${Green}Found mariadbclient include at: ${mariadbclient_INCLUDE}${Reset}")
else ()
    message (FATAL_ERROR "${Red}Failed to locate mariadbclient dependency.${Reset}")
endif ()
