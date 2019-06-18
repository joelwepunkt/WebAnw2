
package de.he;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.util.Vector;

public class SQLite {
    private Connection connect() throws ClassNotFoundException {
        System.out.println("1");

        Class.forName("org.sqlite.JDBC");
        System.out.println("2");

        Connection conn = null;
        try {
            String sqlPath = "he.sqlite";
            boolean initDatabase = (new File(sqlPath).exists());
            if(initDatabase){
                System.out.println("okay");
            }
            else
                System.out.println("sieht schlecht aus lol");

            conn = DriverManager.getConnection("jdbc:sqlite:C:/tmp/he.sqlite");

        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

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
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public CPU selectCPU(int artNr) {
        String sql = "SELECT * FROM Article INNER JOIN Processor ON Article.ArtNr = Processor.ArtNr";
        CPU cpu = new CPU(0, 0, "", "", 0, 0, 0, 0, 0, "", 0, "", "");
        try (Connection conn = this.connect();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                if (rs.getInt("ArtNr") == artNr) {
                    CPU cpu1 = new CPU(rs.getFloat("Price"), rs.getInt("ArtNr"), rs.getString("Manufacturer"), rs.getString("ArtName"), rs.getInt("ArtCount"), rs.getInt("Cores"), rs.getInt("Threads"), rs.getFloat("Frequenzy"), rs.getFloat("Turbo"), rs.getString("Socket"), rs.getInt("TDP"), rs.getString("description"), rs.getString("bild"));
                    cpu = cpu1;
                    break;
                }
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return cpu;
    }

    public Vector<CPU> getAllCpus() {
        String sql = "SELECT * FROM Article INNER JOIN Processor ON Article.ArtNr = Processor.ArtNr";
        Vector<CPU> cpus = new Vector<>();
        try (Connection conn = this.connect();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                CPU newCpu = new CPU(rs.getFloat("Price"), rs.getInt("ArtNr"), rs.getString("Manufacturer"), rs.getString("ArtName"), rs.getInt("ArtCount"), rs.getInt("Cores"), rs.getInt("Threads"), rs.getFloat("Frequenzy"), rs.getFloat("Turbo"), rs.getString("Socket"), rs.getInt("TDP"), rs.getString("decription"), rs.getString("bild"));
                cpus.add(newCpu);
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return cpus;
    }

    public Vector<Cart> getCart(String id) {
        String sql = "SELECT * FROM Cart";
        Vector<Cart> cart = new Vector<Cart>();
        System.out.println("cart");

        try (Connection conn = this.connect();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                if (rs.getString("SID") == id) {
                    Cart newCart = new Cart(rs.getInt("CID"), rs.getString("SID"), rs.getInt("ArtNr"), rs.getInt("Count"));
                    cart.add(newCart);
                }
            }
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return cart;
    }

    public int setCart(String id, int ArtNr, int Count) {
        String sql = "INSERT INTO (Cart SID, ArtNr, Count) VALUES(?,?,?)";
        try (Connection conn = this.connect();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, id);
            ps.setInt(2, ArtNr);
            ps.setInt(3, Count);

            ps.executeUpdate();
            return 0;
        }
        catch (SQLException e) {
            System.out.println(e.getMessage());
            return -1;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
