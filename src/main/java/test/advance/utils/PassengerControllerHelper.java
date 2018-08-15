package test.advance.utils;

import java.util.Collections;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import test.advance.model.Passenger;

public class PassengerControllerHelper {
	static String basicURL = "http://localhost:8091/Passengers";

	public static Passenger loadPassengerRESTHandler(Integer profileId) {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>("parameters", headers);
		ResponseEntity<Passenger> responseEntity = restTemplate.exchange(basicURL + "/" + profileId, HttpMethod.GET,
				entity, Passenger.class);
		if (responseEntity.getStatusCode() == HttpStatus.OK)
			return responseEntity.getBody();
		else
			return null;
	}

	public static void deleteCustomerRESTHandler(Integer profileId) {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.delete(basicURL + "/delete/" + profileId);
	}

	public static Passenger addCustomerRESTHandler(Passenger passenger) {
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Passenger> entity = new HttpEntity<Passenger>(passenger);
		ResponseEntity<Passenger> responseEntity = restTemplate.exchange(basicURL, HttpMethod.POST, entity,
				Passenger.class);
		if (responseEntity.getStatusCode() == HttpStatus.CREATED) {
			System.out.println("Customer data created successfully, id: " + responseEntity.getBody().getProfileId());
			return responseEntity.getBody();
		} else {
			return null;
		}
	}

	public static Passenger updateCustomerRESTHandler(Passenger passenger) {
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<Passenger> entity = new HttpEntity<Passenger>(passenger);
		ResponseEntity<Passenger> responseEntity = restTemplate.exchange(basicURL + "/update", HttpMethod.PUT, entity,
				Passenger.class);
		if (responseEntity.getStatusCode() == HttpStatus.ACCEPTED) {
			return responseEntity.getBody();
		} else {
			return null;
		}
	}
}
