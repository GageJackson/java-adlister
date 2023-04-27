import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="HelloWorldServlet", urlPatterns = "/hello")
//servlet is responsible for ANY requests sent to
//baseURLpattern/hello-world
//for out local machines:
//localhost:8080/hello-world //8080 is a http port
public class HelloWorldServlet extends HttpServlet {
    //@Override
    int count = 0;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        count += 1;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String sayHelloTo = request.getParameter("name");

        if(sayHelloTo != null && sayHelloTo.equals("zero")){
            count = 0;
            out.println("<h1>Goodbye, Cruel World</h1>");
            out.println("<p>" + count + "</p>");
        } else {
            out.println("<h1>Hello, World</h1>");
            out.println("<p>" + sayHelloTo + "</p>");
            out.println("<p>" + count + "</p>");
        }
    }
}
