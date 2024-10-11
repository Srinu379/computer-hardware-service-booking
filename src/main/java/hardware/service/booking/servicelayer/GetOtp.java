package hardware.service.booking.servicelayer;

import java.security.SecureRandom;

public class GetOtp {

	public String getOtp() 
	{
		SecureRandom secureRandom = new SecureRandom();
		Integer otp = secureRandom.nextInt(10000);
		return otp.toString();
	}

}
