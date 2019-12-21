
import com.student;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.*;

public class FirstServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name1 = request.getParameter("name");
        response.setContentType("text/html;charset=gb2312");
        String sno1 = request.getParameter("sno");
        student syb = new student(sno1, name1);
        PrintWriter out=response.getWriter();
       request.getServletContext().setAttribute("syb",syb);
   request.getRequestDispatcher("/SecondServlet").forward(request, response);
    }
}


