package test.advance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.advance.model.Passenger;
import test.advance.utils.PassengerControllerHelper;

@Controller
@RequestMapping("/Passengers")
public class PassengerController {
	
   @RequestMapping(method = RequestMethod.GET)
	public ModelAndView initloadForm() {
	   return new ModelAndView("addpassenger", "passenger", new Passenger());
	}
   
   @RequestMapping(value="/add", method = RequestMethod.POST)
   public String processCreationForm(@ModelAttribute("passenger")Passenger passenger, Model model) {
	 Passenger ret=PassengerControllerHelper.addCustomerRESTHandler(passenger);
	     if(ret!=null)
	     {
	      model.addAttribute("passenger",ret);
	      return "passengerdisplay";
	     }
	     return "error";
   }
   
   @RequestMapping(value="/loadmenu", method = RequestMethod.GET)
  	public String loadMenuPassenger() {
         return "loadpassenger";
  	}
     
     @RequestMapping(value="/deletemenu", method = RequestMethod.GET)
  	public String deleteMenuPassenger() {
  		 return "deletepassenger";
  	}
   
   @RequestMapping(value="/update", method=RequestMethod.GET)
  	public ModelAndView updateCustomerMenu() {
	   return new ModelAndView("updatepassenger", "passenger", new Passenger());
  	}
   
   @RequestMapping(value="/updated", method=RequestMethod.POST)
 	public ModelAndView updateCustomer(@ModelAttribute("passenger")Passenger passenger, Model model) {
	   Passenger ret= PassengerControllerHelper.updateCustomerRESTHandler(passenger);
	      ModelAndView mdv=new ModelAndView("passengerdisplay");
	      mdv.addObject(passenger);
	      return mdv;
 	}
   
   @RequestMapping(value="/list", method=RequestMethod.GET)
	public String loadPassengerList() {
		return "passengerdisplay";
	}
   
   @RequestMapping(value="/load", method= {RequestMethod.GET, RequestMethod.POST})
	public String loadCustomer(@RequestParam(value="profileId" ,required=false)Integer profileId, Model model) {
	   Passenger ret= PassengerControllerHelper.loadPassengerRESTHandler(profileId);
	    if(ret!=null)
	     {
	      model.addAttribute("passenger",ret);
	      return "passengerdisplay";
	     }
	     return "error";
	}
   
   @RequestMapping(value="/delete", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteCustomer(@RequestParam(value="profileId")Integer profileId, Model model) {
		 ModelAndView modelandView = new ModelAndView("deletepassenger");
		PassengerControllerHelper.deleteCustomerRESTHandler(profileId);
		 return modelandView;
	}
}
