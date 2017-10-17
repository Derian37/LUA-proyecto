function love.load()

	love.physics.setMeter(64)
	world = love.physics.newWorld(0, 9.81*64, true)
	arena = love.graphics.newImage("arena.png")
	carta = love.graphics.newImage("recursos/unknown.png")

	--prueba = love.graphics.newImage("joker.png")
	P1 = love.graphics.newImage("P1.png")
	P2 = love.graphics.newImage("P2.png")
	message = ""
	mouseX = ""
	
	listB1 = {}
	listCartas1={"c1","c2","c3","c4","c5","c6","c7","c8","c9","c10"} 
	listB2 = {}
	listCartas2={"c11","c12","c13","c14","c15","c16","c17","c18","c19","c20"}
	rand=0;
	aux=0;
	aux2=0;
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
	while i<=10 do
	   rand=love.math.random(0,67)
	   while k<=10 do
	   if rand==listB1[k] then
	   	rand=love.math.random(0,67)
	   end
	   k=k+1
	   end
	   listB1[i]=rand
	   k=0
	   i = i+1 
    end
 
--SEGUNDA BARAJA--

	while a<=10 do
	   rando=love.math.random(0,67)
	   while e<=10 do
	   if rando==listB2[e] then
	   	rando=love.math.random(0,67)
	   end
	   e=e+1
	   end
	  
	  listB2[a]=rando
	
	   e=0
	 
	   a = a+1 
    end
 

	
	print("BARAJA 1")	
    while j<=10 do

       print(listCartas1[j]..": "..listB1[j])
      -- print(listCartas1[j])
        j= j+1 
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

	print("BARAJA 2")
    while m<=10 do
       print(listCartas2[m]..": "..listB2[m])
       --print(listCartas2[m])
       m= m+1 
    end
    carta11 = love.graphics.newImage("recursos/"..listB2[1]..".png")
    carta12 = love.graphics.newImage("recursos/"..listB2[2]..".png")
    carta13 = love.graphics.newImage("recursos/"..listB2[3]..".png")
    carta14 = love.graphics.newImage("recursos/"..listB2[4]..".png")
    carta15 = love.graphics.newImage("recursos/"..listB2[5]..".png")
    carta16 = love.graphics.newImage("recursos/"..listB2[6]..".png")
    carta17 = love.graphics.newImage("recursos/"..listB2[7]..".png")
    carta18 = love.graphics.newImage("recursos/"..listB2[8]..".png")
    carta19 = love.graphics.newImage("recursos/"..listB2[9]..".png")
    carta20 = love.graphics.newImage("recursos/"..listB2[10]..".png")
      

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


	objects.P1={}
	objects.P1.body = love.physics.newBody(world,463,273,"static")
	objects.P1.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.P1.fixture = love.physics.newFixture(objects.P1.body, objects.P1.shape, 5)

	objects.P2={}
	objects.P2.body = love.physics.newBody(world,265,273,"static")
	objects.P2.shape =love.physics.newRectangleShape(0,0,10,10)
	objects.P2.fixture = love.physics.newFixture(objects.P2.body, objects.P2.shape, 5)



	love.graphics.setBackgroundColor(104, 136, 248)
	love.window.setMode(1024, 639)
	love.window.setTitle("H3ROES C4RDS")
	love.window.setIcon(love.image.newImageData("ico.png"))

end

function reload()
	

end

function love.update(dt)
	
	

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

	love.graphics.draw(P1, objects.P1.body:getX(), objects.P1.body:getY())
	love.graphics.draw(P2, objects.P2.body:getX(), objects.P2.body:getY())

	
	if love.mouse.isDown(1) then 
	prueba = love.graphics.newImage("recursos/joker.png")
	love.graphics.draw(prueba, objects.c1.body:getX(), objects.c1.body:getY())
	love.graphics.draw(prueba, objects.P1.body:getX(), objects.P1.body:getY())
	end
end



