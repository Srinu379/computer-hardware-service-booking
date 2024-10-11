package hardware.service.booking.servicelayer;

public class ValidateOtp {

	public boolean valid(String otp,String userOtp)
	{
		if(otp.equals(userOtp))
			return true;
		else
			return false;
	}
	
}
