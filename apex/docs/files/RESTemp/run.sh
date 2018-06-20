# Set the APEX URI. Edit this if you want to use a different service.
APEX_REST_SAMPLE_BASE_URI=http://localhost:8888/apex/hr/
export APEX_REST_SAMPLE_BASE_URI
echo The URI to your RESTful Web Service is $APEX_REST_SAMPLE_BASE_URI.

# Set the classpath
CLASSPATH=lib/httpclient-4.2.3.jar:lib/httpcore-4.2.2.jar:lib/java-json.jar:lib/commons-logging-1.1.1.jar:lib/jackson-databind-2.1.4.jar:lib/jackson-core-2.1.4.jar:lib/jackson-annotations-2.1.4.jar:lib
export CLASSPATH

java RESTEmp $1 $2
