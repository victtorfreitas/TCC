package br.com.web.ifto.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

@Controller
public class IndexController implements iController {
	
	@Path(value="/", priority=1)
	@Override
	public void index() {}
}
