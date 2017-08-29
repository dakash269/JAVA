import java.util.Date;
import java.util.Scanner;
import java.util.Collections;
import java.util.ArrayList;
import java.net.InetAddress;
class PingTime {
	public static void main (String[] args) {
           Scanner scanner = new Scanner(System.in);
           int n = scanner.nextInt();
           ArrayList<Long> numArray = new ArrayList<Long>();
           for(int i=0 ; i<n ; i++)
           numArray.add(ping("10.0.0.13")); 
           Collections.sort(numArray);
           double median = 0;
	   if (n % 2 == 0) {
	 	    median = ((double)numArray.get(n/2) + (double) numArray.get((n/2 - 1)))/2;
           }
 	   else {
	            median = (double) numArray.get(n/2);
           }
	   System.out.println(median); 
	}
       	public static long ping (String entryIpAddress){
            long pingtime = 0;
	    try {    
                 InetAddress inetAddress = InetAddress.getByName(entryIpAddress);
                 Date start = new Date();
			if (inetAddress.isReachable(1000)) {
				Date stop = new Date();
                                pingtime = stop.getTime() - start.getTime();
				System.out.println(stop.getTime() - start.getTime());
			}
                 return pingtime;
	    }
            catch(Exception e) {
              System.out.println(e);
            }
            return 0;
         }
}

