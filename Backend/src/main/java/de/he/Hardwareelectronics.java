package de.he;

import org.glassfish.jersey.server.mvc.Viewable;

import java.io.Reader;
import java.util.Vector;


import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import javax.json.Json;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("")
public class Hardwareelectronics {
    @GET
    public Viewable Template() throws Exception {
        // This method is only here to deliver the base HTML
        // which then includes the needed client side javascript to fetch JSON data.
        return new Viewable("/index.jsp");
    }

    @GET
    @Path("Cpudetail")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cpuJSON() throws Exception {
        Vector<CPU> cpus = getAllCpus();   //Method should return selected Cpu!

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return Response.status(Response.Status.OK).entity(cpus).build();
    }

    @GET
    @Path("cpus")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cpusJSON() throws Exception {
        Vector<CPU> cpus = getAllCpus();   //Method should return all Cpus we offer!

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return Response.status(Response.Status.OK).entity(cpus).build();
    }

    //only test until joels method is done
    public Vector<CPU> getAllCpus() {
        //Aufruf von Joels methode um die objekte aus der db zu ziehen
        CPU cpus = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);
        CPU cpu = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);
        //String header = "<html>Hallo Welt!</html>";
        Vector cpuu = new Vector<CPU>();
        cpuu.add(cpus);
        cpuu.add(cpus);
        return cpuu;
    }
}
