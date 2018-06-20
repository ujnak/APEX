import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

import java.util.Iterator;

import org.apache.http.HttpResponse;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

import org.json.JSONObject;

public class RESTEmp {
     public static void main(String[] args) throws IOException{
        // The main class starts by checking to make sure that the employee id
        // has been passed as a parameter
        if (args.length < 1) {
             System.out.println("Error - missing required argument.");
             return;
        }

        // The APEX_REST_SAMPLE_BASE_URI is set with a macro in the calling environment.
        // This code works when this class is called from the command line.
        String baseuri = System.getenv("APEX_REST_SAMPLE_BASE_URI");

        // Check if the user wants to do a select or an insert
        if (args[0].equals("S")) {
            if (args.length < 2) {
                System.out.println("Error - missing required argument.");
                return;
            }
            String request = baseuri + "employees/" + args[1];
            System.out.println("The request prior to the call: " + request);

            // Invoke the method to fetch the employee details
            SelectEmp(request);
        } else if (args[0].equals("I")) {
            String request = baseuri + "employees";
            System.out.println("The request prior to the call: " + request);

            // Invoke the method to get the employee details and insert it
            InsertEmp(request);
        } else {
            System.out.println("Unknown request.");
        }
     }

     private static void SelectEmp(String uristring) {
        DefaultHttpClient httpclient = new DefaultHttpClient();
        // Invoke the REST API using a GET.
        HttpGet methodGet = new HttpGet(uristring);

        try{
            // Execute the method and report the HTTP status
            HttpResponse responseGet = httpclient.execute(methodGet);
            System.out.println(responseGet.getStatusLine());

            // Read the response
            BufferedReader br = new BufferedReader(new InputStreamReader((responseGet.getEntity().getContent())));
            String line;
            StringBuilder sb = new StringBuilder();
            while((line = br.readLine()) != null){
                sb.append(line);
            }

            // Convert the response string into a JSONObject
            JSONObject employee = new JSONObject(sb.toString());
            Iterator keys = employee.keys();
            while (keys.hasNext()) {
                String key = (String)keys.next();
                System.out.println(key + " : " + employee.get(key).toString());
            }
        } catch (Exception e) {
            System.out.println("The GET request failed.");
        }
    }

    private static void InsertEmp(String uristring) throws IOException {
        // Read data from the command line
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        // Get the new employee details
        // Get the first name
        System.out.print("Enter the first name: ");
        String firstName = br.readLine();

        // Get the last name
        System.out.print("Enter the last name: ");
        String lastName = br.readLine();

        // Get the email address
        System.out.print("Enter the email address: ");
        String email = br.readLine();

        // Get the hiredate
        System.out.print("Enter the hiredate (DD-MM-YYYY): ");
        String hireDate = br.readLine();

        // Get the job id
        System.out.print("Enter the job id: ");
        String jobId = br.readLine();

        try {
            DefaultHttpClient httpclient = new DefaultHttpClient();

            // Invoke the REST method using a POST
            HttpPost methodPost = new HttpPost(uristring);
            methodPost.setHeader("Content-Type", "application/json");

            // Create the request
            JSONObject emp = new JSONObject();
            emp.put("first_name", firstName);
            emp.put("last_name", lastName);
            emp.put("email", email);
            emp.put("hire_date", hireDate);
            emp.put("job_id", jobId);
            methodPost.setEntity(new StringEntity(emp.toString()));

            // Execute the POST request
            HttpResponse responsePut = httpclient.execute(methodPost);
            System.out.println(responsePut.getStatusLine());

            // Display the new employee id
            System.out.println("Employee id of new employee is " + responsePut.getFirstHeader("employee_id").getValue());
        } catch (Exception e) {
            System.out.println("The POST request failed");
        }
    }
}
