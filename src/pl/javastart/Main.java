package pl.javastart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/table")
public class Main extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        ArrayList<Product> listOfProducts = new ArrayList();

        for(int i=1;i<=4;i++) {
            if(request.getParameter("product" + i)!="" && request.getParameter("price" + i)!="") {
                Product product = new Product(request.getParameter("product" + i),Double.valueOf(request.getParameter("price" + i)));
                listOfProducts.add(product);
            }
        }

        if (listOfProducts.isEmpty()) {
            response.sendRedirect("empty.jsp");
        } else {
            request.setAttribute("products",listOfProducts);
            request.setAttribute("summary", Calculations.sumPrice(listOfProducts));
            request.setAttribute("avg", Calculations.avPrice(listOfProducts));
            request.getRequestDispatcher("table.jsp").forward(request, response);

        }
    }





}



