package de.he;

import org.glassfish.jersey.server.mvc.Viewable;

import java.io.Reader;
import java.util.Vector;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import javax.json.Json;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("")
public class Hardwareelectronics {
    HttpSession session;

    @Context
    HttpServletRequest request;

    public String id() {
        String session = request.getSession().getId();
        return session;
    }

    @GET
    public Viewable Template() throws Exception {
        session = request.getSession(true);
        System.out.println("session erstellt");
        System.out.println(id());
        session.setAttribute("Hallo", 13);
        System.out.println(session.getAttribute("Hallo"));
        // This method is only here to deliver the base HTML
        // which then includes the needed client side javascript to fetch JSON data.
        return new Viewable("/index.jsp");
    }

    @POST
    @Path("cpus/setsession")
    public void session(@FormParam("pid") String id, @FormParam("pcount") String count) {
        System.out.println("session");
        System.out.println(request.getSession().getId());
        request.getSession().setAttribute("id", id);
        request.getSession().setAttribute("pcount", count);
        System.out.println(request.getSession().getAttribute("Felix"));
        System.out.println(request.getSession().getAttribute("Hallo"));
        System.out.println("fertig");
        //return new Viewable("/index.jsp");
    }

    @GET
    @Path("cpus/{pathID}")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cpuJSON(@PathParam("pathID") String strID) throws Exception {
        int intID = Integer.parseInt(strID);
        System.out.println("Tobis schuld");
        SQLite s = new SQLite();
        CPU cpus = s.selectCPU(intID);   //Method should return selected Cpu!

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
        System.out.println("okay");

        SQLite s = new SQLite();
        Vector<CPU> cpus = s.getAllCpus();   //Method should return all Cpus we offer!

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return Response.status(Response.Status.OK).entity(cpus).build();
    }

    @GET
    @Path("card")
    // Tell Jersey we want to return JSON
    @Produces(MediaType.APPLICATION_JSON)
    public Response cardJSON() throws Exception {
        System.out.println("okay");

        SQLite s = new SQLite();

        Vector<Cart> cart = s.getCart(id()); //Method should return Cart of current session

        return Response.status(Response.Status.OK).entity(cart).build();
    }
}
