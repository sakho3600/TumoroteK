package tumorotekrest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/tumorotek")
public class tumorotektest
{
   @GET
   @Path("/simple")
   @Produces(MediaType.TEXT_PLAIN)
   public String simple(){
      return "OUSSAMA";
   }

   @GET
   @Path("/simple1")
   @Produces(MediaType.TEXT_XML)
   public String AvecXML(){
      return "<?xml version=\"1.0\"?>" + "<hello> Hello OUSSAMA" + "</hello>";
   }

   @GET
   @Path("/simple2")
   @Produces(MediaType.TEXT_HTML)
   public String AvecHTML(){
      return "<html> " + "<title>" + "Hello " + "</title>" + "<body><h1>" + "Hello OUSSAMA" + "</body></h1>" + "</html> ";
   }

}
