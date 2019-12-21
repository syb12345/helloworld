import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.student;
public class SecondServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        student stu=(student)request.getServletContext().getAttribute("syb");
        response.setContentType("text/html;charset=gb2312");
        PrintWriter out=response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("</head");
        out.println("<body>");
        out.println("学号"+stu.getSno());
        out.println("<br>");
        out.println("姓名"+stu.getName());
        out.println("<br>");
        out.println("<a href='http://localhost:8088/input.html'>返回</a>");
        out.println("</body>");
                out.println("</html>");
//
    }
}
