
#assume all CPU_TYPEs have AT prefix for what we do here
string(TOUPPER ${CPU_TYPE} _AT_CPU_TYPE_UPPER)
add_definitions(-D__${_AT_CPU_TYPE_UPPER}__)

string(REGEX REPLACE "^AT" "" _NONAT_CPU_TYPE_UPPER ${_AT_CPU_TYPE_UPPER})
add_definitions(-D__${_NONAT_CPU_TYPE_UPPER}__)


