/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.fatec.servlets;
import br.com.fatec.conta.Conta;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lab6aluno
 */
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nome = request.getParameter("nome");
        String v_saque = request.getParameter("saque");
        String v_deposito = request.getParameter("deposito");
                
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>BANCO JAVA: OPERAÇÃO</title>");            
            out.println("</head>");
            out.println("<body>");
            
            //CONVERSÃO
            double saque_conta = Double.parseDouble(v_saque);
            double deposito_conta = Double.parseDouble(v_deposito);
                        
            Conta minhaConta;
            minhaConta = new Conta();
            
            double aux_saque = minhaConta.getSaldo_inicial();
            
            //SACA
            minhaConta.saca(saque_conta);
            
            String saldo_atual_saque = String.valueOf(aux_saque);
            
            //DEPOSITA
            minhaConta.deposito(deposito_conta);
            
            double aux_deposito = minhaConta.getSaldo_inicial();
            
            String saldo_atual_deposito = String.valueOf(aux_deposito);
            
            /*conversão de String para double
            desc = Double.parseDouble(renda);
            
            desc = desc*0.2;
            
            renda = String.valueOf(desc);
            */
            
            out.println("<h1>Nome: " + nome + "</h1>");
            out.println("<h1>Saldo Anterior: R$ " + saldo_atual_saque + "</h1>");
            out.println("<h1>Valor de Saque: R$ " + saque_conta + "</h1>");
            out.println("<h1>Valor de Depósito: R$ " + deposito_conta + "</h1>");
            out.println("<h1>Saldo Atual: R$ " + saldo_atual_deposito + "</h1>");
            
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
