using Merly

server = Merly.app()

  @page "/" begin
  res.headers["Content-Type"]= "text/html"
  """<html><head>
        <title>Merly in Julia 1.5.3!</title>
        <style type=\"text/css\">

    html,body {
	  width: 100%;
	  min-height: 100%;
	  overflow:hidden;
	  min-height: 99vh;
	}

	body {
	     background: linear-gradient(90deg,#8B25E5 40%,#F64090 70%);
	    display: flex;
	    align-items: center;
	    justify-content: center;
	}

	.wrap {
	  position: relative;
	}

	h1 {
	    font-family: Arial;
	    color:  #FFF;
	    font-size: 90px;
	    padding: 20px 30px;
	    text-shadow: 2px 2px rgba(0,0,0,0.3);
	}

	.main {
	    background: rgba(255,255,255,0.4);
	    border-radius: 10px;
	    border: 1px solid rgba(255,255,255,0.2);
	    width: 40px;
	    height: 40px;
	    position: absolute;
	    border-radius: 50%;
	    top: 11px;
	    left: 280px;
	    right: 0;
	    display: block;
	    margin: 0 auto;
	    z-index: 4;
	    backdrop-filter: blur(5px);
	    -webkit-backdrop-filter: blur(5px);
	}

	.drop {
	   background: rgba(255,255,255,0.4);
	   border-radius: 10px;
	   border: 1px solid rgba(255,255,255,0.2);
	   position: absolute;
	   backdrop-filter: blur(5px);
	  -webkit-backdrop-filter: blur(5px);
	   display: block;
	   margin: 0 auto;
	}

	.drop1 {
	   width: 47%;
	   height: 150px;
	   top: 56px;
	   left: 230px;
	   right: 0;
	   z-index: 2;
	   backdrop-filter: blur(1px);
	  -webkit-backdrop-filter: blur(1px);
	}

	.drop2 {
	    width: 40px;
	    height: 40px;
	    top: -30px;
	    left: -300%;
	    right: 0;
	    z-index: 4;
	    backdrop-filter: blur(5px);
	    -webkit-backdrop-filter: blur(5px);
	}

	.drop3 {
	    width: 60px;
	    height: 60px;
	    top: 120px;
	    right: -30px;
	    z-index: 4;
	  backdrop-filter: blur(5px);
	  -webkit-backdrop-filter: blur(5px);
	}

	.drop4 {
	   width: 40px;
	   height: 40px;
	   border-radius: 50%;
	   top: 30px;
	  left: -60px;
	  z-index: 4;
	  backdrop-filter: blur(5px);
	  -webkit-backdrop-filter: blur(5px);
	}

    </style>
      </head>
      <body>

		<div class=\"wrap\">
		   <h1>Merly 0.2.1</h1>
		   <div class=\"drop drop1\">
		      <div class=\"drop drop2\"></div>
		      <div class=\"drop drop3\"></div>
		      <div class=\"drop drop4\"></div>
		   </div>
		</div>

    </body></html>
"""
  end

  server.notfound("
    <!DOCTYPE html>
    <html>
    <head><title>Not found</title></head>
    <body><h1>404, Not found</h1></body>
    </html>
  ")

server.start(config=Dict("host" => "0.0.0.0","port" => (∈("PORT", keys(ENV)) ? parse(Int, ENV["PORT"]) : 5000)))
