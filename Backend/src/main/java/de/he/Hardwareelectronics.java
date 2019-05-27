package de.he;

import org.glassfish.jersey.server.mvc.Viewable;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.Hashtable;
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


@Path("/")
public class Hardwareelectronics {

    private Connection connect() {
        Connection conn = null;
        try {
            String sqlPath = "";
            conn = DriverManager.getConnection("jdbc:sqlite:" + sqlPath);
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    @GET
    public Viewable Template() throws Exception {
        // This method is only here to deliver the base HTML
        // which then includes the needed client side javascript to fetch JSON data.
        return new Viewable("/index.jsp");
    }

    public CPU selectCPU(int artNr) {
        String sql = "SELECT (ArtNr,Manufacturer,ArtName,Price,ArtCount,Cores,Threads,Frequenzy,Turbo,Socket,TDP) FROM Article INNER JOIN Processor ON Article.ArtNr = Processor.ArtNr)";
        CPU cpu = new CPU(0, 0, "", "", 0, 0, 0, 0, 0, "", 0);
        try (Connection conn = this.connect();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                if (rs.getInt("ArtNr") == artNr) {
                    CPU cpu1 = new CPU(rs.getFloat("Price"), rs.getInt("ArtNr"), rs.getString("Manufacturer"), rs.getString("ArtName"), rs.getInt("ArtCount"), rs.getInt("Cores"), rs.getInt("Threads"), rs.getFloat("Frequenzy"), rs.getFloat("Turbo"), rs.getString("Socket"), rs.getInt("TDP"));
                    cpu = cpu1;
                    break;
                }
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return cpu;
    }

    @POST
    public int insertCPU(CPU cpu) {
        String sqlArt = "INSERT INTO Article(ArtNr,Manufacturer,ArtName,Price,ArtCount) VALUES (?,?,?,?,?)";
        String sqlCPU = "INSERT INTO Processor(ArtNr,Cores,Threads,Frequenzy,Turbo,Socket,TDP) VALUES (?,?,?,?,?,?,?)";
        try (Connection conn = this.connect();
             PreparedStatement psArt = conn.prepareStatement(sqlArt);
             PreparedStatement psCPU = conn.prepareStatement(sqlCPU)) {
            psArt.setInt(1, cpu.getArtNr());
            psArt.setString(2, cpu.getManufact());
            psArt.setString(3, cpu.getArtName());
            psArt.setFloat(4, cpu.getPrice());
            psArt.setInt(5, cpu.getArtCount());

            psCPU.setInt(1, cpu.getArtNr());
            psCPU.setInt(2, cpu.getCore());
            psCPU.setInt(3, cpu.getThreads());
            psCPU.setFloat(4, cpu.getFrequency());
            psCPU.setFloat(5, cpu.getTurbo());
            psCPU.setString(6, cpu.getSocket());
            psCPU.setInt(7, cpu.getTdp());

            psArt.executeUpdate();
            psCPU.executeUpdate();

            return 0;
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());

            return -1;
        }
    }

    @GET
    @Path("/cpus.json")
    // Tell Jersey we want to return JSON
    //@Produces(MediaType.APPLICATION_JSON)
    public String cpusJSON() throws Exception {
        //Vector<CPU> entries = getAllCpus();   //Activate when Joels method is ready to return vector
        CPU cpus = getAllCpus();

        // By setting our Vector<EntryModel> into the entity method
        // Jersey now tries to convert our POJO (Plain Old Java Object) into JSON
        //return Response.status(200).entity(cpus).build();
        return "<html>Hallo Welt!</html>";
    }

    //only test until joels method is done
    public CPU getAllCpus() {
        //Aufruf von Joels methode um die objekte aus der db zu ziehen
        CPU cpus = new CPU(120, 1, "AMD", "Ryzen 6", 12, 4, 2, 1000, 1, "AM4", 2);

        //String header = "<html>Hallo Welt!</html>";
        return cpus;
    }
}