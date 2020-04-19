package pe.ricardomarcelo.ventas.services.impl;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import pe.ricardomarcelo.ventas.model.Cliente;
import pe.ricardomarcelo.ventas.services.ClienteService;
@Service
public class ClienteServiceImpl implements ClienteService{

    @Autowired
    private RestTemplate restTemplate;
    
    @Value("${ventas.clientes.url}")
    private String url;
	
	@Override
	public String crear(Cliente cliente) {
		
		ResponseEntity<Map> response = restTemplate.postForEntity(url, 
				cliente, Map.class);
		
		return response.getBody().get("resultado").toString();
	}

	@Override
	public List<Cliente> consultarTodo() {
		HttpHeaders headers = new HttpHeaders();
		headers.setAccept(Arrays.asList(new MediaType[] { MediaType.APPLICATION_JSON }));
	  	
        HttpEntity<String> request = new HttpEntity<String>(headers);
		
	    ResponseEntity<List<Cliente>> response = restTemplate.exchange(url, HttpMethod.GET,
	    		request, new ParameterizedTypeReference<List<Cliente>>() {});

		return response.getBody();
				
	}

}
