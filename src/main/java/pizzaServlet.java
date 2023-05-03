import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "pizzaServlet", urlPatterns = "/mvc")
public class pizzaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String pizza_size = request.getParameter("pizza_size");
        String pizza_sauce = request.getParameter("pizza_sauce");
        String pizza_crust = request.getParameter("pizza_crust");
        String pizza_meats = request.getParameter("pizza_meats");
        String pizza_veggies = request.getParameter("pizza_veggies");

        String address_street = request.getParameter("address_street");
        String address_street2 = request.getParameter("address_street2");
        String address_city = request.getParameter("address_city");
        String address_state = request.getParameter("address_state");
        String address_zip = request.getParameter("address_zip");


        request.setAttribute("pizza_size" , pizza_size);
        request.setAttribute("pizza_sauce" , pizza_sauce);
        request.setAttribute("pizza_crust" , pizza_crust);
        request.setAttribute("pizza_meats" , pizza_meats);
        request.setAttribute("pizza_veggies" , pizza_veggies);

        request.setAttribute("address_street" , address_street);
        request.setAttribute("address_street2" , address_street2);
        request.setAttribute("address_city" , address_city);
        request.setAttribute("address_state" , address_state);
        request.setAttribute("address_zip" , address_zip);

        request.getRequestDispatcher("/pizza-order.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String pizza_size = request.getParameter("pizza_size");
        String pizza_sauce = request.getParameter("pizza_sauce");
        String pizza_crust = request.getParameter("pizza_crust");
        String pizza_meats = request.getParameter("pizza_meats");
        String pizza_veggies = request.getParameter("pizza_veggies");

        String address_street = request.getParameter("address_street");
        String address_street2 = request.getParameter("address_street2");
        String address_city = request.getParameter("address_city");
        String address_state = request.getParameter("address_state");
        String address_zip = request.getParameter("address_zip");


        request.setAttribute("pizza_size" , pizza_size);
        request.setAttribute("pizza_sauce" , pizza_sauce);
        request.setAttribute("pizza_crust" , pizza_crust);
        request.setAttribute("pizza_meats" , pizza_meats);
        request.setAttribute("pizza_veggies" , pizza_veggies);

        request.setAttribute("address_street" , address_street);
        request.setAttribute("address_street2" , address_street2);
        request.setAttribute("address_city" , address_city);
        request.setAttribute("address_state" , address_state);
        request.setAttribute("address_zip" , address_zip);

        request.getRequestDispatcher("/pizza-order.jsp").forward(request,response);
    }
}
