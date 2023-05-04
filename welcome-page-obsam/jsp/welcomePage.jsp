<!DOCTYPE html>
<html>


<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="java.util.ResourceBundle"%>
<%@ page import="org.exoplatform.portal.branding.BrandingService"%>
<%@ page import="java.util.*" %>
<%@ page import="org.exoplatform.container.PortalContainer"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<portlet:defineObjects />
<%
	String contextPath = request.getContextPath();
 	
  ResourceBundle resource = portletConfig.getResourceBundle(request.getLocale());

	String yourOtherJSP= getInitParameter("your-other-jsp");

	PortalContainer portalContainer = PortalContainer.getCurrentInstance(session.getServletContext());
	BrandingService brandingService = portalContainer.getComponentInstanceOfType(BrandingService.class);
	String companyName = brandingService.getCompanyName();
	String logo = "";
	if (brandingService.getLogo() != null) {
		byte[] logoData = brandingService.getLogo().getData();
		byte[] encodedLogoData = Base64.getEncoder().encode(logoData);
		logo = "data:image/png;base64," + new String(encodedLogoData, "UTF-8");
	}


	%>

<head>
<title>Coopere</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<meta property="og:title" content="Coopere" />
<meta property="og:description" content="Comunidade de Práticas em Saúde Mental" />
<meta property="og:url" content="https://coopere.obsam.unb.br/portal/dw" />
<meta property="og:title" content="Coopere" />
<meta property="og:description" content="Comunidade de Práticas em Saúde Mental" />
<meta property="og:url" content="https://coopere.obsam.unb.br/portal/dw" />
<meta property="og:image" content="https://coopere.obsam.unb.br/welcome-page-obsam/skin/imgs/logo-thumb-coopere.png" />


<link rel="stylesheet" type="text/css" href="<%=contextPath%>/skin/Stylesheet.css"/>
<link href="<%=contextPath%>/skin/imgs/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>

<body>

  <div class="cards">  
    <div class="frame1card1">
      <span style="font-size: 48px;font-weight: bolder;padding-top: 10px;">Coopere</span>

      <br><br>

      <h3>
      
        A Coopere é uma comunidade de práticas em      
        saúde mental desenvolvida para       
        fortalecer e compartilhar vivências e        
        conhecimentos com foco na Rede de
        Atenção Psicossocial.

        <br><br>
      
        Se você tem interesse em conhecer
        experiências, acessar conteúdo e
        participar de ciclos de debate sobre
        diferentes temas do campo saúde
        mental, esse é o seu lugar.
        Seja bem-vinde à Coopere!

        <br><br>

        Conecte,
        <br>
        Compartilhe,
        <br>
        Coopere!

        <br><br>
      
      </h3>

      <p style="text-align: right;">
         
          <a href="#cardSobre" class="buttonOrange"  style="text-decoration: none;">
            Saiba mais 
          </a>
        
      </p>
      

    </div>  
    <div class="cards1Line">
      
      <div class="frameTopLogin">

        <span style="color: white;white-space: nowrap">
          Faça parte da Coopere      
          <a href="#cardLogin" class="buttonWhite" style="text-decoration: none;">
            &nbsp;&nbsp;LOGIN&nbsp;&nbsp; 
          </a>
        </span>



      </div>
      
      <div class="frame1card2">
          <iframe width="75%" height="250"      
          src="https://www.youtube.com/embed/R9v617HoUUw?rel=0&amp;controls=1&amp;showinfo=0&amp;autoplay=1&amp;mute=1&amp;playlist=R9v617HoUUw&amp;loop=1" 
          title="Vídeo de Apresentação - Coopere" 
          frameborder="0" 
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; loop" 
          allowfullscreen 
          style="border: 1px solid black;">
        </iframe>  
      </div>
    </div>
  </div>


  <!-- Card: News -->

  <div class="cards1Line">
    <div class="frameNewscard1">
      <div>
        <span id="cardNews" style="font-size: 48px;font-weight: bolder;padding-top: 10px;line-height: normal;padding: 20px;">
          Notícias
        </span>
      </div>
  
        <br><br>

      
      <iframe src="https://coopere.obsam.unb.br/portal/dw/public-news-page" width="100%" height="100%" frameborder="0" scrolling="no"></iframe>
     

    </div>

  </div>
    <!-- End Card: News -->
  
    



  <!-- Card: Sobre -->
  <div class="cards1Line">
  <div class="frame2card1">
      <span id="cardSobre" style="font-size: 48px;font-weight: bolder;padding-top: 10px;line-height: normal;">
        Sobre a Coopere
      </span>

      <br><br>
      
      <img src="<%=contextPath%>/skin/imgs/icon-graph.png"  style="float:     right;">
         

      <p style="font-size: 25px;line-height:normal;text-align: justify;">
        A comunidade de práticas Coopere integra o projeto "Saúde Mental:   Ferramentas para contribuir com a otimização dos processos de trabalho dos Centros de Atenção Psicossocial” desenvolvido pela Sala de Situação de Saúde da Faculdade de Ciências da Saúde da Universidade de Brasília com apoio do Ministério da Saúde. 
        
        <br><br>
        
        O projeto teve início em maio de 2021 com o término previsto para junho de 2023. O projeto está dividido em duas grandes metas. A primeira é a criação da comunidade de práticas, a Coopere, voltada ao fortalecimento da Rede de Atenção Psicossocial.

<br><br>
A segunda incorpora a construção e o aprimoramento de soluções tecnológicas. O uso de ferramentas de Business Intelligence (BI) tem-se difundido como estratégia de avaliação de serviços e programas. A criação e implementação de uma ferramenta de BI que dê apoio à gestão e ao processo de trabalho nos CAPS, levando em conta seu contexto, realidade e especificidades territoriais, é importante para o melhor desempenho dos serviços e assistência prestados. Uma plataforma para análise de dados baseada em painéis de monitoramento (dashboard) para vigilância de saúde mental criada por meio da validação do modelo lógico e indicadores, construída com a participação de profissionais a fim de adequar a ferramenta às necessidades de seu processo de trabalho.

      
    </p>

    </div>
    </div>
  <!-- End Card: Sobre -->

  

  <!-- Card: Equipe Coopere -->

  <div class="cards1Line">
      <div class="frame3card1">
          <span id="cardSobre" style="font-size: 48px;font-weight: bolder;padding-top: 10px;line-height: normal;">
            Equipe Coopere
          </span>
    
          <br><br>

          <div class="cards" style="background-color: white;">
          <div class="desc-foto">
             
             <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/jonas.jpeg" 
             class="foto">
              <strong> Jonas Lotufo
              Brant de
              Carvalho
              </strong>
              <br>
              Coordenador
            
          </div>
          <div class="desc-foto">
             
            <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/alisson.jpg" 
            class="foto">
             <strong> Alisson
              Fernandes Bolina
             </strong>
             <br>
             Pesquisador
           
         </div>
         <div class="desc-foto">
             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/anaju.jpeg" 
          class="foto">
           <strong> Ana Julia Santos
           </strong>
           <br>
           Bolsista graduação
         
       </div>
       <div class="desc-foto">             
            <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/bruna.jpg" 
            class="foto">
            <strong> Bruna Paes de
              Oliveira
            </strong>
            <br>
            Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/chris.jpeg" 
          class="foto">
          <strong> Christiane
            Kanzler Barbosa
            Nunes
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Daniel.jpeg" 
          class="foto">
          <strong> Daniel Erick
            Sanchez Trujillo
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Eduarda.jpeg" 
          class="foto">
          <strong> Eduarda Grillo
            Cunha
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Gabriel.jpeg" 
          class="foto">
          <strong> Gabriel Nazareno
            Halabi
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/gleyton.jpg" 
          class="foto">
          <strong> Gleyton de
            Castro Lima
          </strong>
          <br>
          Pesquisador          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/joao.jpg" 
          class="foto">
          <strong> João Paulo
            Fernandes da
            Silva
          </strong>
          <br>
          Pesquisador          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/joyce.jpeg" 
          class="foto">
          <strong> Joyce Miranda
            dos Santos
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Bruno.jpeg" 
          class="foto">
          <strong> Luis Bruno
            Fidelis Gomes
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Marcela.jpg" 
          class="foto">
          <strong> Marcela Lopes
            Santos
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/girl.png" 
          class="foto">
          <strong> Maria Aparecida
            Gussi
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/girl.png" 
          class="foto">
          <strong> Maria da Gloria
            Lima
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/mari.jpeg" 
          class="foto">
          <strong> Mariana
            Bernardes de
            Araújo
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/mlopes.jpg" 
          class="foto">
          <strong> Mariana Ferreira
            Lopes
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/mirella.jpeg" 
          class="foto">
          <strong> Mirella dos
            Santos Jacinto
            Soares
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Suamir.png" 
          class="foto">
          <strong> Suamir Jorge de
            Azevedo
            Campos
          </strong>
          <br>
          Gestor substituto          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Vanessa.jpeg" 
          class="foto">
          <strong> Vanessa Torales
            Porto
          </strong>
          <br>
          Pesquisadora          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/vitor.jpeg" 
          class="foto">
          <strong> Vitor Padilha
            Gonçalves
          </strong>
          <br>
          Pesquisador          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/Lara.jpeg" 
          class="foto">
          <strong> Lara Borges
            Larroyed
          </strong>
          <br>
          Bolsista graduação          
        </div>
        <div class="desc-foto">             
          <img src="/welcome-page-obsam/skin/imgs/fotos-equipe/girl.png" 
          class="foto">
          <strong> Paula Gabriela
            de Souza Pinto
          </strong>
          <br>
          Pesquisadora egressa          
        </div>

     
          
        </div>

          
      </div>    
    </div>

  <!-- End Card: Equipe Coopere -->

  <!-- Card: Login -->

    <div class="cards" id="cardLogin">  
      
      <div class="frame4card1">

        <h1>
          Conecte-se à Coopere, sua
          comunidade de práticas em saúde
          mental!
        </h1>

        <br>

        <h3>  
          Para o seu primeiro acesso, acompanhe o tutorial de cadastro:
        </h3>

        <br> 
        
        <iframe width="75%" height="250"      
         src="https://www.youtube.com/embed/G9mpEdcU93U?rel=0&amp;controls=1&amp;showinfo=0&amp;autoplay=1&amp;mute=1&amp;playlist=G9mpEdcU93U&amp;loop=1" 
          title="Vídeo de Apresentação - Coopere" 
          frameborder="0" 
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; loop" 
          allowfullscreen 
          style="border: 1px solid black;">
        </iframe> 

        
        <div>
          <p style="text-align: center;">
            <a href="/portal/" target="_top"><img src="<%=contextPath%>/skin/imgs/coopere-fundo-branco.png"  style="height: 65px;width: 90px;"></a><a href="https://coopere.sds.unb.br/" target="_top"><img src="<%=contextPath%>/skin/imgs/icon-sds.png"  style="height: 80px;width: 100px;"></a>
        </p>
        </div>

        

      

        

      </div>
    
      <div class="frame4card2">
          
        <section class="content-box-login" >
          <div>
            <a href="/portal/" target="_top">
              <img src="<%=contextPath%>/skin/imgs/coopere-logo.png" class="brandingImage"  style="outline: none;"></a>
          </div>
  
          <div class="titleLogin" ></div>
  
          <form name="loginForm" action="/portal/login" method="post" style="margin: 0px;" autocomplete="off">
                  
              <input type="hidden" name="initialURI" value="/portal"/>
            
  
            <div >
              <span class="iconUser"></span>
              <input  tabindex="1" id="username" name="username" type="text" value="" placeholder="Nome de Usuário ou Email">                
            </div>
            
            <div>
              <span class="iconPswrd"></span>
              <input  tabindex="2"  type="password" id="password" name="password" placeholder="Senha">
            </div>
            <br>
            <div >
                <label class="">
                  <input class="" type="checkbox" name="rememberme" id="rememberme" value="true" checked="true" />
                  <span style="line-height:10px;vertical-align: bottom;font-weight:bold;margin-top: 3px;margin-left: 3px;" >Continuar conectado</span>
                </label>
            </div>
            <br>
            <script type="text/javascript">
              $("div.rememberContent").click(function()
              {
                $("#rememberme").val($("#rememberme").prop("checked"));
              });
  
            </script>
            <div id="UIPortalLoginFormAction" class="loginButton">
                <button class="button" tabindex="4"  onclick="login();">Conectar</button>
            </div>
           
            <hr>
            
            <div class="bottomMessage">
              Ainda não tem cadastro?<br>
              <a href="/portal/dw/agreement-term-obsam" title="Criar Nova Conta">Clique aqui</a>
            </div>
  
            <br>
       
            <div class="bottomMessage">
                Não consegue acessar sua conta?<br>
                <a href="/portal/forgot-password" title="Não consegue acessar sua conta?">Clique aqui</a>
            </div>
            
            <script type='text/javascript'>
                function login() {
                    document.loginForm.submit();                   
                }
            </script>
            </form>
      </section>
        <br>

        <div>
          <p style="text-align: center;color: white;font-size: 20px;">
             Fale Conosco  
            <a href="mailto:mailto:coopere.obsam@unb.br?subject=[Coopere] Fale Conosco"><img src="<%=contextPath%>/skin/imgs/logo-mail.png" style="height: 40px;width: 40px;"></a>
          <a href="https://m.facebook.com/cooperesaudemental" target="_blank"><img src="<%=contextPath%>/skin/imgs/logo-face.png"  style="height: 40px;width: 40px;"></a>
          <a href="https://instagram.com/coopere_cdp" target="_blank"><img src="<%=contextPath%>/skin/imgs/logo-insta.png" style="height: 40x;width: 40px;"></a>
          
        </p>
        </div>

      </div> 

    </div>
      
  </div>
  


  <!--
<div class="uiLogin">
    
    <section class="content-box-message">
        Seja bem-vindo à Coopere:
        <br>
        Comunidade de Práticas para 
        Saúde Mental!

        <br><br>

        Faça seu login para interagir 
        com quem 
        <br>
        quer fortalecer     
        a Rede de Atenção Psicossocial 
        <br>
        por meio do 
        compartilhamento de experiências 
        <br>
        e a 
        construção 
        colaborativa de conhecimento.
       
       
        <br><br>
      
        <span style="text-align: center;">
          <iframe width="45%" height="150" src="https://www.youtube.com/embed/R9v617HoUUw?rel=0&amp;controls=1&amp;showinfo=0&amp;autoplay=1&amp;mute=1&amp;playlist=R9v617HoUUw&amp;loop=1" title="Vídeo de Apresentação - Coopere" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; loop" allowfullscreen style="border: 1px solid black;"></iframe>
          <iframe width="45%" height="150" src="https://www.youtube.com/embed/G9mpEdcU93U?rel=0&amp;controls=1&amp;showinfo=0&amp;autoplay=1&amp;mute=1&amp;playlist=G9mpEdcU93U&amp;loop=1" title="Tutorial - Primeiro Cadastro Coopere" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; loop" allowfullscreen style="border: 1px solid black;"></iframe>
        </span>
        
    </section>

    <section class="content-box-login">
        <div>
            <img src="<%=contextPath%>/skin/imgs/coopere-logo.png" class="brandingImage">
        </div>

        <div class="titleLogin"></div>

        <form name="loginForm" action="/portal/login" method="post" style="margin: 0px;" autocomplete="off">
                
            <input type="hidden" name="initialURI" value="/portal"/>
          

          <div >
            <span class="iconUser"></span>
            <input  tabindex="1" id="username" name="username" type="text" value="" placeholder="Nome de Usuário ou Email">                
          </div>
          
          <div>
            <span class="iconPswrd"></span>
            <input  tabindex="2"  type="password" id="password" name="password" placeholder="Senha">
          </div>
          <br>
          <div >
              <label class="">
                <input class="" type="checkbox" name="rememberme" id="rememberme" value="true" checked="true" />
                <span style="line-height:10px;vertical-align: bottom;font-weight:bold;margin-top: 3px;margin-left: 3px;" >Continuar conectado</span>
              </label>
          </div>
          <br>
          <script type="text/javascript">
            $("div.rememberContent").click(function()
            {
              $("#rememberme").val($("#rememberme").prop("checked"));
            });

          </script>
          <div id="UIPortalLoginFormAction" class="loginButton">
              <button class="button" tabindex="4"  onclick="login();">Conectar</button>
          </div>
         
          <hr>
          
          <div class="bottomMessage">
            Ainda não tem cadastro?<br>
            <a href="/portal/dw/agreement-term-obsam" title="Criar Nova Conta">Clique aqui</a>
          </div>

          <br>
     
          <div class="bottomMessage">
              Não consegue acessar sua conta?<br>
              <a href="/portal/forgot-password" title="Não consegue acessar sua conta?">Clique aqui</a>
          </div>
          
          <script type='text/javascript'>
              function login() {
                  document.loginForm.submit();                   
              }
          </script>
          </form>
    </section>
        
</div>

</body>
</html>

-->
<!--
    <div class="loginBGLight">&nbsp;</div>
-->




<!--
<div class="HelloPortlet1">
	<span><%=resource.getString("obsam.exo.extra.WelcomePage.Hello")%></span>
</div>
<div class="HelloPortlet2">
	<span><%=resource.getString("obsam.exo.extra.WelcomePage.Msg1")%></span>
</div>
<div class="HelloPortlet3">
	<span><%=resource.getString("obsam.exo.extra.WelcomePage.Msg2")%></span>
</div>
-->