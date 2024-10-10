package hardware.service.booking.servicelayer;

public class ValidateOtp {

	public boolean valid(int otp,int userOtp)
	{
		if(otp==userOtp)
			return true;
		else
			return false;
	}
	
}
