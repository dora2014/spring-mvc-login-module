package co.bluecake.service.demo;

import java.util.ArrayList;
import java.util.List;

public class WelcomeService implements GenericWelcomeService {

	public List<String> getWelcomeMsg(String theName) {
		
		List<String> theList = new ArrayList<String>();
		
		theList.add("Welcome ");
		theList.add("to Disney World! ");
		theList.add(theName);
		
		return theList;
		
	}
	
}

