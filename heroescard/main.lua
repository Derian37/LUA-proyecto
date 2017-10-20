function love.load()

	love.physics.setMeter(64)
	world = love.physics.newWorld(0, 9.81*64, true)
	arena = love.graphics.newImage("arena.png")
	carta = love.graphics.newImage("recursos/unknown.png")
	jugador = 1
	Primeracarta=0
	Segundacarta=0
	Primeracarta2=0
	Segundacarta2=0

	Primer11=0
	Primer12=0
	Primer13=0
	Primer14=0
	Primer15=0
	Primer16=0
	Primer17=0
	Primer18=0
	Primer19=0
	Primer20=0
	--prueba = love.graphics.newImage("joker.png")
	P1 = love.graphics.newImage("P1.png")
	P2 = love.graphics.newImage("P2.png")
	Poder1=0;
	Poder2=0;
	message = ""
	mouseX = ""
	x=0;
	y=0;
	listB1 = {}
	listCartas1={"c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13","c14","c15","c16","c17","c18","c19","c20"} 
	listB2 = {}
	listCartas2={}
	rand=0;
	aux=0;
	aux2=0;
	printx = 0
  	printy = 0
  	love.audio.stop()
	love.audio.play(love.audio.newSource("recursos/audio.mp3","stream"))

	i=1;
	j=1;
	k=1;
	--
	a=1;
	m=1;
	e=1;
	d=1;	
	z=1;

--PRIMERA BARAJA--
	while i<=20 do
	   rand=love.math.random(0,67)
	   while k<=20 do
	   if rand==listB1[k] then
	   	rand=love.math.random(0,67)
	   end
	   k=k+1
	   end
	   listB1[i]=rand
	   k=0
	   i = i+1 
    end
 
    carta1 = love.graphics.newImage("recursos/"..listB1[1]..".png")
    carta2 = love.graphics.newImage("recursos/"..listB1[2]..".png")
    carta3 = love.graphics.newImage("recursos/"..listB1[3]..".png")
    carta4 = love.graphics.newImage("recursos/"..listB1[4]..".png")
    carta5 = love.graphics.newImage("recursos/"..listB1[5]..".png")
    carta6 = love.graphics.newImage("recursos/"..listB1[6]..".png")
    carta7 = love.graphics.newImage("recursos/"..listB1[7]..".png")
    carta8 = love.graphics.newImage("recursos/"..listB1[8]..".png")
    carta9 = love.graphics.newImage("recursos/"..listB1[9]..".png")
    carta10 = love.graphics.newImage("recursos/"..listB1[10]..".png")
    carta11 = love.graphics.newImage("recursos/"..listB1[11]..".png")
    carta12 = love.graphics.newImage("recursos/"..listB1[12]..".png")
    carta13 = love.graphics.newImage("recursos/"..listB1[13]..".png")
    carta14 = love.graphics.newImage("recursos/"..listB1[14]..".png")
    carta15 = love.graphics.newImage("recursos/"..listB1[15]..".png")
    carta16 = love.graphics.newImage("recursos/"..listB1[16]..".png")
    carta17 = love.graphics.newImage("recursos/"..listB1[17]..".png")
    carta18 = love.graphics.newImage("recursos/"..listB1[18]..".png")
    carta19 = love.graphics.newImage("recursos/"..listB1[19]..".png")
    carta20 = love.graphics.newImage("recursos/"..listB1[20]..".png")
      

	objects ={}
	objects.c1={}
	objects.c1.body = love.physics.newBody(world,187,65,"static")
	objects.c1.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c1.fixture = love.physics.newFixture(objects.c1.body, objects.c1.shape, 5)

	objects.c2={}
	objects.c2.body = love.physics.newBody(world,277,65,"static")
	objects.c2.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c2.fixture = love.physics.newFixture(objects.c2.body, objects.c2.shape, 5)

	objects.c3={}
	objects.c3.body = love.physics.newBody(world,364,65,"static")
	objects.c3.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c3.fixture = love.physics.newFixture(objects.c3.body, objects.c3.shape, 5)

	objects.c4={}
	objects.c4.body = love.physics.newBody(world,454,65,"static")
	objects.c4.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c4.fixture = love.physics.newFixture(objects.c4.body, objects.c4.shape, 5)

	objects.c5={}
	objects.c5.body = love.physics.newBody(world,542,65,"static")
	objects.c5.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c5.fixture = love.physics.newFixture(objects.c5.body, objects.c5.shape, 5)

	objects.c6={}
	objects.c6.body = love.physics.newBody(world,187,165,"static")
	objects.c6.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c6.fixture = love.physics.newFixture(objects.c6.body, objects.c6.shape, 5)

	objects.c7={}
	objects.c7.body = love.physics.newBody(world,277,165,"static")
	objects.c7.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c7.fixture = love.physics.newFixture(objects.c7.body, objects.c7.shape, 5)


	objects.c8={}
	objects.c8.body = love.physics.newBody(world,364,165,"static")
	objects.c8.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c8.fixture = love.physics.newFixture(objects.c8.body, objects.c8.shape, 5)

	objects.c9={}
	objects.c9.body = love.physics.newBody(world,454,165,"static")
	objects.c9.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c9.fixture = love.physics.newFixture(objects.c9.body, objects.c9.shape, 5)


	objects.c10={}
	objects.c10.body = love.physics.newBody(world,542,165,"static")
	objects.c10.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c10.fixture = love.physics.newFixture(objects.c10.body, objects.c10.shape, 5)

	

	objects.c11={}
	objects.c11.body = love.physics.newBody(world,187,388,"static")
	objects.c11.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c11.fixture = love.physics.newFixture(objects.c11.body, objects.c11.shape, 5)

	objects.c12={}
	objects.c12.body = love.physics.newBody(world,277,388,"static")
	objects.c12.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c12.fixture = love.physics.newFixture(objects.c12.body, objects.c12.shape, 5)

	objects.c13={}
	objects.c13.body = love.physics.newBody(world,364,388,"static")
	objects.c13.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c13.fixture = love.physics.newFixture(objects.c13.body, objects.c13.shape, 5)

	objects.c14={}
	objects.c14.body = love.physics.newBody(world,454,388,"static")
	objects.c14.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c14.fixture = love.physics.newFixture(objects.c14.body, objects.c14.shape, 5)

	objects.c15={}
	objects.c15.body = love.physics.newBody(world,542,388,"static")
	objects.c15.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c15.fixture = love.physics.newFixture(objects.c15.body, objects.c15.shape, 5)

	objects.c16={}
	objects.c16.body = love.physics.newBody(world,187,486,"static")
	objects.c16.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c16.fixture = love.physics.newFixture(objects.c16.body, objects.c16.shape, 5)

	objects.c17={}
	objects.c17.body = love.physics.newBody(world,277,486,"static")
	objects.c17.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c17.fixture = love.physics.newFixture(objects.c17.body, objects.c17.shape, 5)


	objects.c18={}
	objects.c18.body = love.physics.newBody(world,364,486,"static")
	objects.c18.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c18.fixture = love.physics.newFixture(objects.c18.body, objects.c18.shape, 5)

	objects.c19={}
	objects.c19.body = love.physics.newBody(world,454,486,"static")
	objects.c19.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c19.fixture = love.physics.newFixture(objects.c19.body, objects.c19.shape, 5)


	objects.c20={}
	objects.c20.body = love.physics.newBody(world,542,486,"static")
	objects.c20.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.c20.fixture = love.physics.newFixture(objects.c20.body, objects.c20.shape, 5)

--_____________________________________________________________________________________________________-
	objects.P1={}
	objects.P1.body = love.physics.newBody(world,460,274,"static")
	objects.P1.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.P1.fixture = love.physics.newFixture(objects.P1.body, objects.P1.shape, 5)

	objects.P2={}
	objects.P2.body = love.physics.newBody(world,262,272,"static")
	objects.P2.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.P2.fixture = love.physics.newFixture(objects.P2.body, objects.P2.shape, 5)

--____________________________________________________________________________________________________-
	objects.o1={}
	objects.o1.body = love.physics.newBody(world,187,65,"static")
	objects.o1.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o1.fixture = love.physics.newFixture(objects.c1.body, objects.c1.shape, 5)

	objects.o2={}
	objects.o2.body = love.physics.newBody(world,277,65,"static")
	objects.o2.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o2.fixture = love.physics.newFixture(objects.c2.body, objects.c2.shape, 5)

	objects.o3={}
	objects.o3.body = love.physics.newBody(world,364,65,"static")
	objects.o3.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o3.fixture = love.physics.newFixture(objects.c3.body, objects.c3.shape, 5)

	objects.o4={}
	objects.o4.body = love.physics.newBody(world,454,65,"static")
	objects.o4.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o4.fixture = love.physics.newFixture(objects.c4.body, objects.c4.shape, 5)

	objects.o5={}
	objects.o5.body = love.physics.newBody(world,542,65,"static")
	objects.o5.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o5.fixture = love.physics.newFixture(objects.c5.body, objects.c5.shape, 5)

	objects.o6={}
	objects.o6.body = love.physics.newBody(world,187,165,"static")
	objects.o6.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o6.fixture = love.physics.newFixture(objects.c6.body, objects.c6.shape, 5)

	objects.o7={}
	objects.o7.body = love.physics.newBody(world,277,165,"static")
	objects.o7.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o7.fixture = love.physics.newFixture(objects.c7.body, objects.c7.shape, 5)


	objects.o8={}
	objects.o8.body = love.physics.newBody(world,364,165,"static")
	objects.o8.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o8.fixture = love.physics.newFixture(objects.c8.body, objects.c8.shape, 5)

	objects.o9={}
	objects.o9.body = love.physics.newBody(world,454,165,"static")
	objects.o9.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o9.fixture = love.physics.newFixture(objects.c9.body, objects.c9.shape, 5)


	objects.o10={}
	objects.o10.body = love.physics.newBody(world,542,165,"static")
	objects.o10.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o10.fixture = love.physics.newFixture(objects.c10.body, objects.c10.shape, 5)

	

	objects.o11={}
	objects.o11.body = love.physics.newBody(world,187,388,"static")
	objects.o11.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o11.fixture = love.physics.newFixture(objects.c11.body, objects.c11.shape, 5)

	objects.o12={}
	objects.o12.body = love.physics.newBody(world,277,388,"static")
	objects.o12.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o12.fixture = love.physics.newFixture(objects.c12.body, objects.c12.shape, 5)

	objects.o13={}
	objects.o13.body = love.physics.newBody(world,364,388,"static")
	objects.o13.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o13.fixture = love.physics.newFixture(objects.c13.body, objects.c13.shape, 5)

	objects.o14={}
	objects.o14.body = love.physics.newBody(world,454,388,"static")
	objects.o14.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o14.fixture = love.physics.newFixture(objects.c14.body, objects.c14.shape, 5)

	objects.o15={}
	objects.o15.body = love.physics.newBody(world,542,388,"static")
	objects.o15.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o15.fixture = love.physics.newFixture(objects.c15.body, objects.c15.shape, 5)

	objects.o16={}
	objects.o16.body = love.physics.newBody(world,187,486,"static")
	objects.o16.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o16.fixture = love.physics.newFixture(objects.c16.body, objects.c16.shape, 5)

	objects.o17={}
	objects.o17.body = love.physics.newBody(world,277,486,"static")
	objects.o17.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o17.fixture = love.physics.newFixture(objects.c17.body, objects.c17.shape, 5)


	objects.o18={}
	objects.o18.body = love.physics.newBody(world,364,486,"static")
	objects.o18.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o18.fixture = love.physics.newFixture(objects.c18.body, objects.c18.shape, 5)

	objects.o19={}
	objects.o19.body = love.physics.newBody(world,454,486,"static")
	objects.o19.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o19.fixture = love.physics.newFixture(objects.c19.body, objects.c19.shape, 5)


	objects.o20={}
	objects.o20.body = love.physics.newBody(world,542,486,"static")
	objects.o20.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.o20.fixture = love.physics.newFixture(objects.c20.body, objects.c20.shape, 5)

--____________________________________________________________________________________________________-

	objects.PuntosVidaP1={}
	objects.PuntosVidaP1.body = love.physics.newBody(world,530,275,"static")
	objects.PuntosVidaP1.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.PuntosVidaP1.fixture = love.physics.newFixture(objects.c20.body, objects.c20.shape, 5)

	objects.PJugador={}
	objects.PJugador.body = love.physics.newBody(world,176,353,"static")
	objects.PJugador.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.PJugador.fixture = love.physics.newFixture(objects.c20.body, objects.c20.shape, 5)

	objects.PuntosVidaP2={}
	objects.PuntosVidaP2.body = love.physics.newBody(world,240,275,"static")
	objects.PuntosVidaP2.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.PuntosVidaP2.fixture = love.physics.newFixture(objects.c20.body, objects.c20.shape, 5)
--____________________________________________________________________________________________________-



	love.graphics.setBackgroundColor(104, 136, 248)
	love.window.setMode(1024, 639)
	love.window.setTitle("H3ROES C4RDS")
	love.window.setIcon(love.image.newImageData("ico.png"))

end

function reload()
	

end

function love.update(dt)
	
	

end 

function love.mousepressed(x, y, button, istouch)
	if button == 1 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   printx = x
      printy = y
      --print("X= "..printx)
      --print("Y= "..printy)
objects.o1.body:setPosition(10000/2, 10000/2)
   end

if jugador == 1  then 
  
  if Primeracarta==0 then
   if button == 1 and x >= 187 and x<=250 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta1
      Poder1=listB1[1]
      objects.o1.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end
   if button == 1 and x >= 276 and x<=337 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta2
      Poder1=listB1[2]
      objects.o2.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta3
      Poder1=listB1[3]
      objects.o3.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta4
      Poder1=listB1[4]
      objects.o4.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta5
      Poder1=listB1[5]
      objects.o5.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 186 and x<=250 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta6
      Poder1=listB1[6]
      objects.o6.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 276 and x<=337 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta7
      Poder1=listB1[7]
      objects.o7.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta8
      Poder1=listB1[8]
      objects.o8.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta9
      Poder1=listB1[9]
      objects.o9.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P1 = carta10
      Poder1=listB1[10]
      objects.o10.body:setPosition(10000/2, 10000/2)
      Primeracarta =1
   end
 end
if Segundacarta == 0 and Primeracarta==1 then
	
      if button == 1 and x >= 187 and x<=250 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta11
      Poder2=listB1[11]
      objects.o11.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end
   if button == 1 and x >= 276 and x<=337 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta12
      Poder2=listB1[12]
      objects.o12.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

   if button == 1 and x >= 365 and x<=425 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta13
      Poder2=listB1[13]
	  objects.o13.body:setPosition(10000/2, 10000/2)
	  Segundacarta=1
   end

   if button == 1 and x >= 454 and x<=514 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta14
      Poder2=listB1[14]
      objects.o14.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

   if button == 1 and x >= 541 and x<=601 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta15
      Poder2=listB1[15]
      objects.o15.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

   if button == 1 and x >= 186 and x<=250 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta16
      Poder2=listB1[16]
      objects.o16.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

   if button == 1 and x >= 256 and x<=336 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta17
      Poder2=listB1[17]
      objects.o17.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

    if button == 1 and x >= 365 and x<=425 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta18
      Poder2=listB1[18]
      objects.o18.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

   if button == 1 and x >= 454 and x<=514 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      printx = x
      printy = y
      P2 = carta19
      Poder2=listB1[19]
      objects.o19.body:setPosition(10000/2, 10000/2)
      Segundacarta=1
   end

	   if button == 1 and x >= 541 and x<=601 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta20
	      Poder2=listB1[20]
	      objects.o20.body:setPosition(10000/2, 10000/2)
	      Segundacarta=1
   		end
	end
	
	end

	print("Primeracarta: "..Primeracarta.." Segundacarta: "..Segundacarta)
   
   if  Primeracarta == 1 and Segundacarta ==1  then
		jugador =2	
		Primeracarta2=0
		Segundacarta2=0
    end

if jugador == 2 then
   
    if Primeracarta2 == 0 then
    if Primer11==0 then 
		
		if button == 1 and x >= 187 and x<=250 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta11
	      Poder2=listB1[11]
	      objects.o11.body:setPosition(10000/2, 10000/2)
	      Primer11=1
	      Primeracarta2=1
	   end
	end
	if Primer12==0 then 
	   if button == 1 and x >= 276 and x<=337 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta12
	      Poder2=listB1[12]
	      objects.o12.body:setPosition(10000/2, 10000/2)
	      Primer12=1
	      Primeracarta2=1
	   end
	end
	if Primer13==0 then
	   if button == 1 and x >= 365 and x<=425 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta13
	      Poder2=listB1[13]
		  objects.o13.body:setPosition(10000/2, 10000/2)
		  Primer13=1
		  Primeracarta2=1
	   end
	end

	if Primer14==0 then
	   if button == 1 and x >= 454 and x<=514 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta14
	      Poder2=listB1[14]
	      objects.o14.body:setPosition(10000/2, 10000/2)
	      Primer14=1
	      Primeracarta2=1
	   end
	end
	if Primer15==0 then
	   if button == 1 and x >= 541 and x<=601 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta15
	      Poder2=listB1[15]
	      objects.o15.body:setPosition(10000/2, 10000/2)
		  Primer15=1
		  Primeracarta2=1
	   end
	end
	if Primer16==0 then
	   if button == 1 and x >= 186 and x<=250 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta16
	      Poder2=listB1[16]
	      objects.o16.body:setPosition(10000/2, 10000/2)
	      Primer16=1
	      Primeracarta2=1
	   end
	   end
	if Primer17==0 then
	   if button == 1 and x >= 256 and x<=336 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta17
	      Poder2=listB1[17]
	      objects.o17.body:setPosition(10000/2, 10000/2)
	      Primer17=1
	      Primeracarta2=1
	   end
	   end
	if Primer18==0 then
	    if button == 1 and x >= 365 and x<=425 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta18
	      Poder2=listB1[18]
	      objects.o18.body:setPosition(10000/2, 10000/2)
	      Primer18=1
	      Primeracarta2=1
	   end
	   end
	if Primer19==0 then
	   if button == 1 and x >= 454 and x<=514 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta19
	      Poder2=listB1[19]
	      objects.o19.body:setPosition(10000/2, 10000/2)
	      Primer19=1
	      Primeracarta2=1
	   end
	end
	  if Primer20==0 then
	   if button == 1 and x >= 541 and x<=601 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	      printx = x
	      printy = y
	      P2 = carta20
	      Poder2=listB1[20]
	      objects.o20.body:setPosition(10000/2, 10000/2)
	      Primer20=1
	      Primeracarta2=1
	      --P=1
	   end   
	end  	  
	
	
	if Segundacarta2 == 0  then
		 
      if button == 1 and x >= 187 and x<=250 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta1
		      Poder1=listB1[1]
		      objects.o1.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      
		    --  P=0
		   end
		   if button == 1 and x >= 276 and x<=337 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta2
		      Poder1=listB1[2]
		      objects.o2.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		   end

		   if button == 1 and x >= 365 and x<=425 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta3
		      Poder1=listB1[3]
		      objects.o3.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		   	 
		   end

		   if button == 1 and x >= 454 and x<=514 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta4
		      Poder1=listB1[4]
		      objects.o4.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		   end

		   if button == 1 and x >= 541 and x<=601 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta5
		      Poder1=listB1[5]
		      objects.o5.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		   end

		   if button == 1 and x >= 186 and x<=250 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta6
		      Poder1=listB1[6]
		      objects.o6.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		   	  Primeracarta2=1
		   end

		   if button == 1 and x >= 276 and x<=337 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta7
		      Poder1=listB1[7]
		      objects.o7.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		  	  Primeracarta2=1
		   end

		if button == 1 and x >= 365 and x<=425 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta8
		      Poder1=listB1[8]
		      objects.o8.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		end

		if button == 1 and x >= 454 and x<=514 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta9
		      Poder1=listB1[9]
		      objects.o9.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
		 end

	   if button == 1 and x >= 541 and x<=601 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		      printx = x
		      printy = y
		      P1 = carta10
		      Poder1=listB1[10]
		      objects.o10.body:setPosition(10000/2, 10000/2)
		      Segundacarta2=1
		      Primeracarta2=1
	   end
	   
	end
	end
	print("Primer11: "..Primer11.." Primer12: "..Primer12)	
	print("Primer13: "..Primer13.." Primer14: "..Primer14)	
	print("Primer15: "..Primer15.." Primer16: "..Primer16)	
	print("Primer17: "..Primer17.." Primer18: "..Primer18)	
	print("Primer19: "..Primer19.." Primer20: "..Primer20)
	print("Primeracarta2: "..Primeracarta2.." Segundacarta2: "..Segundacarta2)	
	if  Primeracarta2 == 1 and Segundacarta2 ==1 then
		jugador =1
		Primeracarta=0
		Segundacarta=0
	end

 end
end

function love.draw()
	love.graphics.draw(arena, 0, 0)

	love.graphics.draw(carta1, objects.c1.body:getX(), objects.c1.body:getY())
	love.graphics.draw(carta2, objects.c2.body:getX(), objects.c2.body:getY())
	love.graphics.draw(carta3, objects.c3.body:getX(), objects.c3.body:getY())
	love.graphics.draw(carta4, objects.c4.body:getX(), objects.c4.body:getY())
	love.graphics.draw(carta5, objects.c5.body:getX(), objects.c5.body:getY())
	love.graphics.draw(carta6, objects.c6.body:getX(), objects.c6.body:getY())
	love.graphics.draw(carta7, objects.c7.body:getX(), objects.c7.body:getY())
	love.graphics.draw(carta8, objects.c8.body:getX(), objects.c8.body:getY())
	love.graphics.draw(carta9, objects.c9.body:getX(), objects.c9.body:getY())
	love.graphics.draw(carta10, objects.c10.body:getX(), objects.c10.body:getY())

	--__________________________________________________________________________-
	love.graphics.draw(carta, objects.o1.body:getX(), objects.o1.body:getY())
	love.graphics.draw(carta, objects.o2.body:getX(), objects.o2.body:getY())
	love.graphics.draw(carta, objects.o3.body:getX(), objects.o3.body:getY())
	love.graphics.draw(carta, objects.o4.body:getX(), objects.o4.body:getY())
	love.graphics.draw(carta, objects.o5.body:getX(), objects.o5.body:getY())
	love.graphics.draw(carta, objects.o6.body:getX(), objects.o6.body:getY())
	love.graphics.draw(carta, objects.o7.body:getX(), objects.o7.body:getY())
	love.graphics.draw(carta, objects.o8.body:getX(), objects.o8.body:getY())
	love.graphics.draw(carta, objects.o9.body:getX(), objects.o9.body:getY())
	love.graphics.draw(carta, objects.o10.body:getX(), objects.o10.body:getY())
	--__________________________________________________________________________-

	love.graphics.draw(carta11, objects.c11.body:getX(), objects.c11.body:getY())
	love.graphics.draw(carta12, objects.c12.body:getX(), objects.c12.body:getY())
	love.graphics.draw(carta13, objects.c13.body:getX(), objects.c13.body:getY())
	love.graphics.draw(carta14, objects.c14.body:getX(), objects.c14.body:getY())
	love.graphics.draw(carta15, objects.c15.body:getX(), objects.c15.body:getY())
	love.graphics.draw(carta16, objects.c16.body:getX(), objects.c16.body:getY())
	love.graphics.draw(carta17, objects.c17.body:getX(), objects.c17.body:getY())
	love.graphics.draw(carta18, objects.c18.body:getX(), objects.c18.body:getY())
	love.graphics.draw(carta19, objects.c19.body:getX(), objects.c19.body:getY())
	love.graphics.draw(carta20, objects.c20.body:getX(), objects.c20.body:getY())

	--__________________________________________________________________________-
	love.graphics.draw(carta, objects.o11.body:getX(), objects.o11.body:getY())
	love.graphics.draw(carta, objects.o12.body:getX(), objects.o12.body:getY())
	love.graphics.draw(carta, objects.o13.body:getX(), objects.o13.body:getY())
	love.graphics.draw(carta, objects.o14.body:getX(), objects.o14.body:getY())
	love.graphics.draw(carta, objects.o15.body:getX(), objects.o15.body:getY())
	love.graphics.draw(carta, objects.o16.body:getX(), objects.o16.body:getY())
	love.graphics.draw(carta, objects.o17.body:getX(), objects.o17.body:getY())
	love.graphics.draw(carta, objects.o18.body:getX(), objects.o18.body:getY())
	love.graphics.draw(carta, objects.o19.body:getX(), objects.o19.body:getY())
	love.graphics.draw(carta, objects.o20.body:getX(), objects.o20.body:getY())
	--__________________________________________________________________________-

	love.graphics.draw(P1, objects.P1.body:getX(), objects.P1.body:getY())
	love.graphics.draw(P2, objects.P2.body:getX(), objects.P2.body:getY())
	love.graphics.print(Poder1, objects.PuntosVidaP1.body:getX(), objects.PuntosVidaP1.body:getY())
	love.graphics.print("Jugador: "..jugador, objects.PJugador.body:getX(), objects.PJugador.body:getY())
	love.graphics.print(Poder2, objects.PuntosVidaP2.body:getX(), objects.PuntosVidaP2.body:getY())
	--love.graphics.print(Segundacarta2,printx,printy)
	--_________________________________________________________________________-
	
end