package com.ipartek.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;

import org.apache.log4j.Logger;

/**
 * Application Lifecycle Listener implementation class ContadorSesionesListener
 *
 */
@WebListener
public class ContadorSesionesListener implements HttpSessionAttributeListener {
	
	private final static Logger LOG = Logger.getLogger(ContadorSesionesListener.class);

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    	LOG.debug("attributeAdded " + event.getName() + " " + event.getValue());
    	if ("usuarioLogeado".equals(event.getName())) {
    		ServletContext sc = event.getSession().getServletContext();
        	int numeroUsuarios = (int)sc.getAttribute("numeroUsuariosConectados");
        	numeroUsuarios++;
        	sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);
		}
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
    	LOG.debug("attributeAdded " + event.getName() + " " + event.getValue() );
    	if ("usuarioLogeado".equals(event.getName())) {
    		ServletContext sc = event.getSession().getServletContext();
        	int numeroUsuarios = (int)sc.getAttribute("numeroUsuariosConectados");
        	numeroUsuarios--;
        	sc.setAttribute("numeroUsuariosConectados", numeroUsuarios);
		}
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent event)  { 
    	LOG.debug("attributeAdded " + event.getName() + " " + event.getValue() );
    }

}
