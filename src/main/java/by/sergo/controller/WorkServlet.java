package by.sergo.controller;

import by.sergo.models.User;
import by.sergo.service.NewsService;
import by.sergo.service.UserService;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "")
public class WorkServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User attribute = (User) session.getAttribute("currentUser");

        if (attribute != null){
            req.setAttribute("news", NewsService.getInstance().getNews(attribute.getName()));
            req.getRequestDispatcher("/gallery.jsp").forward(req, resp);

        } else {
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }


    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User userByPassAndName = UserService.getInstance().getUserByNameAndPass(req.getParameter("password"),
                req.getParameter("name"));
        HttpSession session = req.getSession();


        if (userByPassAndName != null){
            req.getSession().setAttribute("loggedUser", userByPassAndName.toString());
            req.getSession().setAttribute("currentUser", userByPassAndName);
            req.setAttribute("news", NewsService.getInstance().getNews(userByPassAndName.getName()));
            req.getRequestDispatcher("/gallery.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }


    }




}
