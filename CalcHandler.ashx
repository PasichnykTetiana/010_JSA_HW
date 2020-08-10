<%@ WebHandler Language="C#" Class="CalcHandler" %>

using System;
using System.Web;

// Данный обработчик используется в домашнем задании.

public class CalcHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        try
        {                
        int aParam = Convert.ToInt32(context.Request.QueryString["a"]);
        int bParam = Convert.ToInt32(context.Request.QueryString["b"]);
        int cParam = aParam+bParam;
        context.Response.Write(cParam);
        }
        catch
        {
            context.Response.Write("Ошибка, handler не обработал запрос.");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}