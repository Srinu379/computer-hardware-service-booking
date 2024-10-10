package hardware.service.booking.servicelayer;

import java.security.SecureRandom;

public class GetOtp {

	public int getOtp() 
	{
		SecureRandom secureRandom = new SecureRandom();
		int otp = secureRandom.nextInt(10000);
		
		return otp;
	}

}
