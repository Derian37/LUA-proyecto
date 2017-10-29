function love.load()

	love.physics.setMeter(64)
	world = love.physics.newWorld(0, 9.81*64, true)
	arena = love.graphics.newImage("Data/recursos/arena.png")
	carta = love.graphics.newImage("Data/recursos/unknown.png")
	toca1=false
	toca2=false
	jugador = 1
	creditos1=100;
	creditos2=100;
	Primeracarta=0
	Segundacarta=0
	Primeracarta2=0
	Segundacarta2=0
	totalpts1=0
	totalpts2=0
	apuesta1=0
	apuesta2=0
	dr=false
	pase=false
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
	Prime=0
	Prime2=0
	bandera=true
	P1 = love.graphics.newImage("Data/recursos/P1.png")
	P2 = love.graphics.newImage("Data/recursos/P2.png")
	ap1=love.graphics.newImage("Data/recursos/btn_apostar1.jpg")
	ap2=love.graphics.newImage("Data/recursos/btn_apostar2.jpg")
	Puntero1 = love.graphics.newImage("Data/recursos/Puntero1.png")
	Puntero2 = love.graphics.newImage("Data/recursos/Puntero2.png")
	Vs=love.graphics.newImage("Data/recursos/vs.png")
	PCa1=love.graphics.newImage("Data/recursos/Carta1.png")
	PCa2=love.graphics.newImage("Data/recursos/Carta2.png")
	Turno2=love.graphics.newImage("Data/recursos/Turno2.png")
    Turno1=love.graphics.newImage("Data/recursos/Turno1.png")
    Ronda=1
   	CantdiadCartas=0
	Poder1=0;
	Poder2=0;
	message = ""
	listB1 = {}
	listCartas1={"c1","c2","c3","c4","c5","c6","c7","c8","c9","c10","c11","c12","c13","c14","c15","c16","c17","c18","c19","c20"} 
	listB2 = {}
	listCartas2={}
	rand=0;
	aux=0;
	aux2=0;
	cancion= love.math.random(1,2)
	text = 1
	texto = 2
	printx=0
	printy=0

	if cancion == 1 then
		love.audio.stop()
	--love.audio.play(love.audio.newSource("Data/audio/audio1.mp3","stream"))
end

if cancion == 2 then
	love.audio.stop()
	--love.audio.play(love.audio.newSource("Data/audio/audio2.mp3","stream"))
end
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
	k=1
	i = i+1 
end

while m<=20 do
--print("Carta"..m..": "..listB1[m])
m=m+1
end

    carta1 = love.graphics.newImage("Data/recursos/"..listB1[1]..".png")
    --carta1 = love.graphics.newImage("Data/recursos/67.png")
    carta2 = love.graphics.newImage("Data/recursos/"..listB1[2]..".png")
    carta3 = love.graphics.newImage("Data/recursos/"..listB1[3]..".png")
    carta4 = love.graphics.newImage("Data/recursos/"..listB1[4]..".png")
    carta5 = love.graphics.newImage("Data/recursos/"..listB1[5]..".png")
    carta6 = love.graphics.newImage("Data/recursos/"..listB1[6]..".png")
    carta7 = love.graphics.newImage("Data/recursos/"..listB1[7]..".png")
    carta8 = love.graphics.newImage("Data/recursos/"..listB1[8]..".png")
    carta9 = love.graphics.newImage("Data/recursos/"..listB1[9]..".png")
    carta10 = love.graphics.newImage("Data/recursos/"..listB1[10]..".png")
    carta11 = love.graphics.newImage("Data/recursos/"..listB1[11]..".png")
    carta12 = love.graphics.newImage("Data/recursos/"..listB1[12]..".png")
    carta13 = love.graphics.newImage("Data/recursos/"..listB1[13]..".png")
    carta14 = love.graphics.newImage("Data/recursos/"..listB1[14]..".png")
    carta15 = love.graphics.newImage("Data/recursos/"..listB1[15]..".png")
    carta16 = love.graphics.newImage("Data/recursos/"..listB1[16]..".png")
    carta17 = love.graphics.newImage("Data/recursos/"..listB1[17]..".png")
    carta18 = love.graphics.newImage("Data/recursos/"..listB1[18]..".png")
    carta19 = love.graphics.newImage("Data/recursos/"..listB1[19]..".png")
    carta20 = love.graphics.newImage("Data/recursos/"..listB1[20]..".png")
    --carta20 =  love.graphics.newImage("Data/recursos/67.png") 

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
objects.PuntosVidaP1.fixture = love.physics.newFixture(objects.PuntosVidaP1.body, objects.PuntosVidaP1.shape, 5)

objects.PC1={}
objects.PC1.body = love.physics.newBody(world,530,287,"static")
objects.PC1.shape =love.physics.newRectangleShape(0,0,10,10)
objects.PC1.fixture = love.physics.newFixture(objects.PC1.body, objects.PC1.shape, 5)

objects.PJugador={}
objects.PJugador.body = love.physics.newBody(world,358,303,"static")
objects.PJugador.shape =love.physics.newRectangleShape(0,0,10,10)
objects.PJugador.fixture = love.physics.newFixture(objects.PJugador.body, objects.PJugador.shape, 5)

objects.PuntosVidaP2={}
objects.PuntosVidaP2.body = love.physics.newBody(world,240,275,"static")
objects.PuntosVidaP2.shape =love.physics.newRectangleShape(0,0,10,10)
objects.PuntosVidaP2.fixture = love.physics.newFixture(objects.PuntosVidaP2.body, objects.PuntosVidaP2.shape, 5)

objects.PC2={}
objects.PC2.body = love.physics.newBody(world,187,287,"static")
objects.PC2.shape =love.physics.newRectangleShape(0,0,10,10)
objects.PC2.fixture = love.physics.newFixture(objects.PC2.body, objects.PC2.shape, 5)
--____________________________________________________________________________________________________-


objects.Apos1={}
objects.Apos1.body = love.physics.newBody(world,12,60,"static")
objects.Apos1.shape =love.physics.newRectangleShape(0,0,10,10)
objects.Apos1.fixture = love.physics.newFixture(objects.Apos1.body, objects.Apos1.shape, 5)

objects.Apos2={}
objects.Apos2.body = love.physics.newBody(world,714,555,"static")
objects.Apos2.shape =love.physics.newRectangleShape(0,0,10,10)
objects.Apos2.fixture = love.physics.newFixture(objects.Apos2.body, objects.Apos2.shape, 5)

--____________________________________________________________________________________________________-

objects.btnpase1={}
objects.btnpase1.body = love.physics.newBody(world,623,200,"static")
objects.btnpase1.shape =love.physics.newRectangleShape(0,0,10,10)
objects.btnpase1.fixture = love.physics.newFixture(objects.btnpase1.body, objects.btnpase1.shape, 5)

objects.btnpase2={}
objects.btnpase2.body = love.physics.newBody(world,3,200,"static")
objects.btnpase2.shape =love.physics.newRectangleShape(0,0,10,10)
objects.btnpase2.fixture = love.physics.newFixture(objects.btnpase2.body, objects.btnpase2.shape, 5)

--____________________________________________________________________________________________________-

love.graphics.setBackgroundColor(104, 136, 248)
love.window.setMode(1024, 639)
love.window.setTitle("H3ROES C4RDS")
love.window.setIcon(love.image.newImageData("ico.png"))

end
function aleatorio()
	print("se hizo")
i=1;
j=1;
k=1;
listB1 = {}
while i<=20 do
	rand=love.math.random(0,67)
	while k<=20 do
		if rand==listB1[k] then
			rand=love.math.random(0,67)
		end
		k=k+1
	end
	listB1[i]=rand
	k=1
	i = i+1 
end
m=1
while m<=20 do
--print("Carta"..m..": "..listB1[m])
m=m+1
end
	carta1 = love.graphics.newImage("Data/recursos/"..listB1[1]..".png")
	carta2 = love.graphics.newImage("Data/recursos/"..listB1[2]..".png")
	carta3 = love.graphics.newImage("Data/recursos/"..listB1[3]..".png")
	carta4 = love.graphics.newImage("Data/recursos/"..listB1[4]..".png")
	carta5 = love.graphics.newImage("Data/recursos/"..listB1[5]..".png")
	carta6 = love.graphics.newImage("Data/recursos/"..listB1[6]..".png")
	carta7 = love.graphics.newImage("Data/recursos/"..listB1[7]..".png")
	carta8 = love.graphics.newImage("Data/recursos/"..listB1[8]..".png")
	carta9 = love.graphics.newImage("Data/recursos/"..listB1[9]..".png")
	carta10 = love.graphics.newImage("Data/recursos/"..listB1[10]..".png")
	carta11 = love.graphics.newImage("Data/recursos/"..listB1[11]..".png")
	carta12 = love.graphics.newImage("Data/recursos/"..listB1[12]..".png")
	carta13 = love.graphics.newImage("Data/recursos/"..listB1[13]..".png")
	carta14 = love.graphics.newImage("Data/recursos/"..listB1[14]..".png")
	carta15 = love.graphics.newImage("Data/recursos/"..listB1[15]..".png")
	carta16 = love.graphics.newImage("Data/recursos/"..listB1[16]..".png")
	carta17 = love.graphics.newImage("Data/recursos/"..listB1[17]..".png")
	carta18 = love.graphics.newImage("Data/recursos/"..listB1[18]..".png")
	carta19 = love.graphics.newImage("Data/recursos/"..listB1[19]..".png")
	carta20 = love.graphics.newImage("Data/recursos/"..listB1[20]..".png")
end

function cubrir()
	print("Entra cubrir")
	objects.o1.body:setPosition(187, 65)
	objects.o2.body:setPosition(277, 65)
	objects.o3.body:setPosition(364, 65)
	objects.o4.body:setPosition(454, 65)
	objects.o5.body:setPosition(542, 65)
	objects.o6.body:setPosition(187, 165)
	objects.o7.body:setPosition(277, 165)
	objects.o8.body:setPosition(364, 165)
	objects.o9.body:setPosition(454, 165)
	objects.o10.body:setPosition(542, 165)
	objects.o11.body:setPosition(187, 388)
	objects.o12.body:setPosition(277, 388)
	objects.o13.body:setPosition(364, 388)
	objects.o14.body:setPosition(454, 388)
	objects.o15.body:setPosition(542, 388)
	objects.o16.body:setPosition(187, 486)
	objects.o17.body:setPosition(277, 486)
	objects.o18.body:setPosition(364, 486)
	objects.o19.body:setPosition(454, 486)
	objects.o20.body:setPosition(542, 486)
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
end
function reload()


end


function volver1()
	 --love.timer.sleep( 3 )
	 if dr==true then
	 	objects.o11.body:setPosition(187, 388)
	 	objects.o12.body:setPosition(277, 388)
	 	objects.o13.body:setPosition(364, 388)
	 	objects.o14.body:setPosition(454, 388)
	 	objects.o15.body:setPosition(542, 388)
	 	objects.o16.body:setPosition(187, 486)
	 	objects.o17.body:setPosition(277, 486)
	 	objects.o18.body:setPosition(364, 486)
	 	objects.o19.body:setPosition(454, 486)
	 	objects.o20.body:setPosition(542, 486)
	 end
	end

	function volver2()
	 --love.timer.sleep( 3 )
	 if dr2==true then
	 	objects.o1.body:setPosition(187, 65)
	 	objects.o2.body:setPosition(277, 65)
	 	objects.o3.body:setPosition(364, 65)
	 	objects.o4.body:setPosition(454, 65)
	 	objects.o5.body:setPosition(542, 65)
	 	objects.o6.body:setPosition(187, 165)
	 	objects.o7.body:setPosition(277, 165)
	 	objects.o8.body:setPosition(364, 165)
	 	objects.o9.body:setPosition(454, 165)
	 	objects.o10.body:setPosition(542, 165)
	 end
	end

function love.textinput(t)
	if(apuesta1==0)then
		text = text .. t
	end
	if(apuesta1~=0)then
		texto = texto .. t
end

end


function love.update(dt)

end
	function Reglas1(pase)
		toca1=true
		pase=true
	
		function love.keypressed(key)
			if(pase==true) then
  			 	if key == "up" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
							x=0
							y=0
							printx=0
							printy=0
							totalpts1=totalpts1+(Poder1-Poder2)
							love.audio.stop()
							love.audio.play(love.audio.newSource("Data/audio/LifePointEffect.mp3","stream"))
							Poder1=0
							Poder2=0
							volver1()
							jugador =2	
							Primeracarta2=0
							Segundacarta2=0
							dr=false
							pase=false
							toca1=false
							dt=0;
							--CantdiadCartas=CantdiadCartas+1
							print("CantdiadCartas: "..CantdiadCartas)	
						end
						if  key == "down" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
					    	x=0
							y=0
							printx=0
							printy=0
							totalpts1=totalpts1-(Poder1-Poder2)
							love.audio.stop()
							love.audio.play(love.audio.newSource("Data/audio/LifePointEffect.mp3","stream"))
									volver1()
						jugador =2	
						Primeracarta2=0
						Segundacarta2=0
						Poder1=0
						Poder2=0
						dr=false
						toca1=false
						pase=false
						dt=0;
					--	CantdiadCartas=CantdiadCartas+1
						print("CantdiadCartas: "..CantdiadCartas)	
						end
					 if  key == "left" or "right" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
						x=0
						y=0
						printx=0
						printy=0
						volver1()
						jugador =2	
						Primeracarta2=0
						Segundacarta2=0
						Poder1=0
						Poder2=0
						dr=false
						pase=false
						toca1=false
						dt=0;
						--CantdiadCartas=CantdiadCartas+1
						print("CantdiadCartas: "..CantdiadCartas)	
						end
  		 end
	end
end
function Reglas2(pase)
	toca2=true
	pase=true
	
		function love.keypressed(key)
			if(pase==true) then
  			 	if key == "up" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
						x=0
						y=0
						printx=0
						printy=0
						totalpts2=totalpts2+(Poder2-Poder1)
						love.audio.stop()
						love.audio.play(love.audio.newSource("Data/audio/LifePointEffect.mp3","stream"))
						volver2()
						jugador =1
						Primeracarta=0
						Segundacarta=0
						dr2=false
						pase=false
						dr=false
						toca2=false
						pase=false
						Poder1=0
						Poder2=0
					--	CantdiadCartas=CantdiadCartas+1
						print("CantdiadCartas: "..CantdiadCartas)	
					end
					if key == "down" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
						x=0
						y=0
						printx=0
						printy=0
						totalpts2=totalpts2-(Poder1-Poder2)
						love.audio.stop()
						love.audio.play(love.audio.newSource("Data/audio/LifePointEffect.mp3","stream"))
						volver2()
						jugador =1
						Primeracarta=0
						Segundacarta=0
						dr2=false
						pase=false
						dr=false
						toca2=false
						pase=false
						Poder1=0
						Poder2=0
						--CantdiadCartas=CantdiadCartas+1
						print("CantdiadCartas: "..CantdiadCartas)	
					end
					if key == "left" or "right" then -- Versions prior to 0.10.0 use the MouseConstant 'l'
						x=0
						y=0
						printx=0
						printy=0
						volver2()
						jugador =1
						Primeracarta=0
						Segundacarta=0
						dr2=false
						pase=false
						toca2=false
						dr=false
						Poder1=0
						Poder2=0
					--	CantdiadCartas=CantdiadCartas+1
						print("CantdiadCartas: "..CantdiadCartas)	
					end
					end
   end 	
end

function love.mousepressed(x, y, button, istouch)

		if button == 1  then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			printx=x
			printy=y
			--print(x)
			--print(y)
	
		end


		if button == 1 and x >= 20 and x<=55 and y >=77 and y <= 100 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			if(tonumber(text)<=creditos1)then
				apuesta1=text
				jugador=2
			else
				apuesta1=0
				text=""
			end
		end

if button == 1 and x >= 724 and x<=760 and y >=566 and y <= 596 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	if(tonumber(texto)<=creditos2)then
		apuesta2=texto
		jugador=1
	else
		texto=""
	end
end
--__________________________________________________________________________________________________________________________________________
if (apuesta1 ~=0 and apuesta2 ~=0) then

	if  bandera == true then 

		if Prime==0 then
   if button == 1 and x >= 187 and x<=250 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta1
   	Poder1=listB1[1]
   	objects.o1.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end
   if button == 1 and x >= 276 and x<=337 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta2
   	Poder1=listB1[2]
   	objects.o2.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta3
   	Poder1=listB1[3]
   	objects.o3.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta4
   	Poder1=listB1[4]
   	objects.o4.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta5
   	Poder1=listB1[5]
   	objects.o5.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 186 and x<=250 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta6
   	Poder1=listB1[6]
   	objects.o6.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 276 and x<=337 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta7
   	Poder1=listB1[7]
   	objects.o7.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta8
   	Poder1=listB1[8]
   	objects.o8.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta9
   	Poder1=listB1[9]
   	objects.o9.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta10
   	Poder1=listB1[10]
   	objects.o10.body:setPosition(10000/2, 10000/2)
   	Prime =1
   end
end



if Prime == 1 and true then

	if Prime2 == 0 then

		
		if button == 1 and x >= 187 and x<=250 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			printx = x
			printy = y
			P2 = carta11
			Poder2=listB1[11]
			objects.o11.body:setPosition(10000/2, 10000/2)
			Prime2=1
		end


	   if button == 1 and x >= 276 and x<=337 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta12
	   	Poder2=listB1[12]
	   	objects.o12.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	   if button == 1 and x >= 365 and x<=425 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta13
	   	Poder2=listB1[13]
	   	objects.o13.body:setPosition(10000/2, 10000/2)
	   	Prime2=1
	   end


	   if button == 1 and x >= 454 and x<=514 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta14
	   	Poder2=listB1[14]
	   	objects.o14.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	   if button == 1 and x >= 541 and x<=601 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta15
	   	Poder2=listB1[15]
	   	objects.o15.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	   if button == 1 and x >= 186 and x<=250 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta16
	   	Poder2=listB1[16]
	   	objects.o16.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	   if button == 1 and x >= 256 and x<=336 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta17
	   	Poder2=listB1[17]
	   	objects.o17.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	    if button == 1 and x >= 365 and x<=425 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	    	printx = x
	    	printy = y
	    	P2 = carta18
	    	Poder2=listB1[18]
	    	objects.o18.body:setPosition(10000/2, 10000/2)

	    	Prime2=1
	    end


	   if button == 1 and x >= 454 and x<=514 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta19
	   	Poder2=listB1[19]
	   	objects.o19.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	   end


	   if button == 1 and x >= 541 and x<=601 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	P2 = carta20
	   	Poder2=listB1[20]
	   	objects.o20.body:setPosition(10000/2, 10000/2)

	   	Prime2=1
	      --P=1
	  end   
	  

	end
	--print("Primeracarta2: "..Primeracarta2.." Segundacarta2: "..Segundacarta2)

	if(Prime==1 and Prime2==1 and bandera == true)then
			if(Poder2>Poder1 or Poder1<Poder2)then
			x=0
			y=0
			printx=0
			printy=0
			CantdiadCartas=0
			print("inicia jugador 2")
			Primeracarta=0
			Segundacarta=0
			dr2=false
			Primeracarta2=0
			Segundacarta2=0
			dr=false
			bandera=false
			aleatorio()
			cubrir()
			jugador=2
		end

		if (Poder1 > Poder2) then
			x=0
			y=0
			printx=0
			printy=0
			CantdiadCartas=0
			print("inicia jugador 1")
			jugador=1
			Primeracarta=0
			Segundacarta=0
			dr2=false
			Primeracarta2=0
			Segundacarta2=0
			dr=false
			bandera=false
			aleatorio()
			cubrir()
		end
	end
end
end






--__________________________________________________________________________________________________________________________________________




--repeat
--repeat

if jugador == 1  then 

	if Primeracarta==0 then
   if button == 1 and x >= 187 and x<=250 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta1
   	Poder1=listB1[1]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o1.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end
   if button == 1 and x >= 276 and x<=337 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta2
   	Poder1=listB1[2]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o2.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta3
   	Poder1=listB1[3]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o3.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta4
   	CantdiadCartas=CantdiadCartas+1
   	Poder1=listB1[4]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o4.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta5
   	Poder1=listB1[5]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o5.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 186 and x<=250 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta6
   	Poder1=listB1[6]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o6.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 276 and x<=337 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	CantdiadCartas=CantdiadCartas+1
   	P1 = carta7
   	Poder1=listB1[7]
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o7.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 365 and x<=425 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta8
   	Poder1=listB1[8]
   	CantdiadCartas=CantdiadCartas+1
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o8.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 454 and x<=514 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta9
   	Poder1=listB1[9]
   	CantdiadCartas=CantdiadCartas+1
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o9.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end

   if button == 1 and x >= 541 and x<=601 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   	printx = x
   	printy = y
   	P1 = carta10
   	Poder1=listB1[10]
   	CantdiadCartas=CantdiadCartas+1
   	if(Poder1==0)then
   		Poder1= love.math.random(1,68)
   	end
   	objects.o10.body:setPosition(10000/2, 10000/2)
   	Primeracarta =1
   end
end
if Segundacarta == 0 and Primeracarta==1 then
	
      if button == 1 and x >= 187 and x<=250 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
--    	CantdiadCartas=CantdiadCartas+1
      	printx = x
      	printy = y
      	P2 = carta11
      	Poder2=listB1[11]
      	objects.o11.body:setPosition(10000/2, 10000/2)
      	Segundacarta=1
      end
   if button == 1 and x >= 276 and x<=337 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 --  	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta12
   	Poder2=listB1[12]
   	objects.o12.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

   if button == 1 and x >= 365 and x<=425 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 --  	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta13
   	Poder2=listB1[13]
   	objects.o13.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

   if button == 1 and x >= 454 and x<=514 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 -- 	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta14
   	Poder2=listB1[14]
   	objects.o14.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

   if button == 1 and x >= 541 and x<=601 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 --  	CantdiadCartas=CantdiadCartas+1
    printx = x
   	printy = y
   	P2 = carta15
   	Poder2=listB1[15]
   	objects.o15.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

   if button == 1 and x >= 186 and x<=250 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 -- 	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta16
   	Poder2=listB1[16]
   	objects.o16.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

   if button == 1 and x >= 256 and x<=336 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 --  	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta17
   	Poder2=listB1[17]
   	objects.o17.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

    if button == 1 and x >= 365 and x<=425 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
   -- 	CantdiadCartas=CantdiadCartas+1
    	printx = x
    	printy = y
    	P2 = carta18
    	Poder2=listB1[18]
    	objects.o18.body:setPosition(10000/2, 10000/2)
    	Segundacarta=1
    end

   if button == 1 and x >= 454 and x<=514 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
 --  	CantdiadCartas=CantdiadCartas+1
   	printx = x
   	printy = y
   	P2 = carta19
   	Poder2=listB1[19]
   	objects.o19.body:setPosition(10000/2, 10000/2)
   	Segundacarta=1
   end

	   if button == 1 and x >= 541 and x<=601 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	--	CantdiadCartas=CantdiadCartas+1
	   	printx = x
	   	printy = y
	   	P2 = carta20
	   	Poder2=listB1[20]
	   	objects.o20.body:setPosition(10000/2, 10000/2)
	   	Segundacarta=1
	   end
	end
	
end

	

	if  Primeracarta == 1 and Segundacarta ==1  then
		if(Poder1>Poder2)then
		   Reglas1(pase)
		else
			pase=true
		end
		if(pase==true)then
			--CantdiadCartas=CantdiadCartas+1
		 	toca2=false
		    volver1()
			jugador =2	
			Primeracarta2=0
			Segundacarta2=0
			dr=false
			--Poder1=0
			--Poder2=0
			pase=false
			--print("CantdiadCartas: "..CantdiadCartas)		
		end
	end

	if jugador == 2 then

		if Primeracarta2 == 0 or Primeracarta2==1 then
			if Primer11==0 then 

		if button == 1 and x >= 187 and x<=250 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			printx = x
			printy = y
			CantdiadCartas=CantdiadCartas+1
			P2 = carta11
			Poder2=listB1[11]
				if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   				end
			objects.o11.body:setPosition(10000/2, 10000/2)
			Primer11=1
			Primeracarta2=1
		end
	end
	if Primer12==0 then 
	   if button == 1 and x >= 276 and x<=337 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	printx = x
	   	printy = y
	   	CantdiadCartas=CantdiadCartas+1
	   	P2 = carta12
	   	Poder2=listB1[12]
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
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
	   	CantdiadCartas=CantdiadCartas+1
	   	Poder2=listB1[13]
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
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
	   	CantdiadCartas=CantdiadCartas+1
	   	Poder2=listB1[14]
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o14.body:setPosition(10000/2, 10000/2)
	   	Primer14=1
	   	Primeracarta2=1
	   end
	end
	if Primer15==0 then
	   if button == 1 and x >= 541 and x<=601 and y >=386 and y <= 472 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	P2 = carta15
	   	Poder2=listB1[15]
	 	CantdiadCartas=CantdiadCartas+1
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o15.body:setPosition(10000/2, 10000/2)
	   	Primer15=1
	   	Primeracarta2=1
	   end
	end
	if Primer16==0 then
	   if button == 1 and x >= 186 and x<=250 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	P2 = carta16
	   	Poder2=listB1[16]
	 	CantdiadCartas=CantdiadCartas+1
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o16.body:setPosition(10000/2, 10000/2)
	   	Primer16=1
	   	Primeracarta2=1
	   end
	end
	if Primer17==0 then
	   if button == 1 and x >= 256 and x<=336 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	P2 = carta17
	   	Poder2=listB1[17]
	 	CantdiadCartas=CantdiadCartas+1
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o17.body:setPosition(10000/2, 10000/2)
	   	Primer17=1
	   	Primeracarta2=1
	   end
	end
	if Primer18==0 then
	    if button == 1 and x >= 365 and x<=425 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	    	P2 = carta18
	    	CantdiadCartas=CantdiadCartas+1
	    	Poder2=listB1[18]
	    	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   			end
	    	objects.o18.body:setPosition(10000/2, 10000/2)
	    	Primer18=1
	    	Primeracarta2=1
	    end
	end
	if Primer19==0 then
	   if button == 1 and x >= 454 and x<=514 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	P2 = carta19
	   	Poder2=listB1[19]
	    CantdiadCartas=CantdiadCartas+1
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o19.body:setPosition(10000/2, 10000/2)
	   	Primer19=1
	   	Primeracarta2=1
	   end
	end
	if Primer20==0 then
	   if button == 1 and x >= 541 and x<=601 and y >=486 and y <= 570 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	P2 = carta20
	   	Poder2=listB1[20]
		CantdiadCartas=CantdiadCartas+1
	   	if(Poder2==0)then
   					Poder2= love.math.random(1,68)
   		end
	   	objects.o20.body:setPosition(10000/2, 10000/2)
	   	Primer20=1
	   	Primeracarta2=1
	  end   
	end  	  
	
	
	if Segundacarta2 == 0 then

      if button == 1 and x >= 187 and x<=250 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
      	CantdiadCartas=CantdiadCartas+1
      	P1 = carta1
      	Poder1=listB1[1]
      	objects.o1.body:setPosition(10000/2, 10000/2)
      	Segundacarta2=1
		end
		   if button == 1 and x >= 276 and x<=337 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		   CantdiadCartas=CantdiadCartas+1
		   	P1 = carta2
		   	Poder1=listB1[2]
		   	objects.o2.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		   if button == 1 and x >= 365 and x<=425 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		   CantdiadCartas=CantdiadCartas+1
		   	P1 = carta3
		   	Poder1=listB1[3]
		   	objects.o3.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		   if button == 1 and x >= 454 and x<=514 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			CantdiadCartas=CantdiadCartas+1
		   	P1 = carta4
		   	Poder1=listB1[4]
		   	objects.o4.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		   if button == 1 and x >= 541 and x<=601 and y >=67 and y <= 152 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		  	CantdiadCartas=CantdiadCartas+1
		   	P1 = carta5
		   	Poder1=listB1[5]
		   	objects.o5.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		   if button == 1 and x >= 186 and x<=250 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		   CantdiadCartas=CantdiadCartas+1
		   	P1 = carta6
		   	Poder1=listB1[6]
		   	objects.o6.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		   if button == 1 and x >= 276 and x<=337 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
		 	CantdiadCartas=CantdiadCartas+1
		   	P1 = carta7
		   	Poder1=listB1[7]
		   	objects.o7.body:setPosition(10000/2, 10000/2)
		   	Segundacarta2=1
		   	Primeracarta2=1
		   end

		if button == 1 and x >= 365 and x<=425 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			CantdiadCartas=CantdiadCartas+1
			P1 = carta8
			Poder1=listB1[8]
			objects.o8.body:setPosition(10000/2, 10000/2)
			Segundacarta2=1
			Primeracarta2=1
		end

		if button == 1 and x >= 454 and x<=514 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
			CantdiadCartas=CantdiadCartas+1
			P1 = carta9
			Poder1=listB1[9]
			objects.o9.body:setPosition(10000/2, 10000/2)
			Segundacarta2=1
			Primeracarta2=1
		end

	   if button == 1 and x >= 541 and x<=601 and y >=162 and y <= 251 then -- Versions prior to 0.10.0 use the MouseConstant 'l'
	   	CantdiadCartas=CantdiadCartas+1
	   	P1 = carta10
	   	Poder1=listB1[10]
	   	objects.o10.body:setPosition(10000/2, 10000/2)
	   	Segundacarta2=1
	   	Primeracarta2=1
	   end
	   
	end
end
	if  Primeracarta2 == 1 and Segundacarta2 ==1 then
		if(Poder2>Poder1)then
			Reglas2(pase)
		else
			pase=true
		end	
			if(pase==true)then
				toca1=false
				volver2()
				jugador =1
				Primeracarta=0
				Segundacarta=0
				dr2=false
				pase=false
				dr=false
				pase=false
				--CantdiadCartas=CantdiadCartas+1
				print("CantdiadCartas: "..CantdiadCartas)
			end
	end
end
if(CantdiadCartas>5)then
print("Termino Partida")
end
--until(CantdiadCartas <= 20)
--	print("Termino")
--until(creditos1 <= 1000 or creditos2<= 1000)
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
	love.graphics.draw(PCa1, objects.PC1.body:getX(), objects.PC1.body:getY())
	love.graphics.draw(Vs, objects.PJugador.body:getX(), objects.PJugador.body:getY())
	love.graphics.draw(PCa2, objects.PC2.body:getX(), objects.PC2.body:getY())
	love.graphics.print(Poder2, objects.PuntosVidaP2.body:getX(), objects.PuntosVidaP2.body:getY())
	love.graphics.print(creditos1, 708, 68)
	love.graphics.print(creditos2, 18, 614)
	--__________________________________________________________________________-

	love.graphics.print(CantdiadCartas, 958, 385)
	
	love.graphics.print(totalpts1, 715, 18)
	love.graphics.print(totalpts2, 27, 564)

	love.graphics.print(apuesta1, 122, 65)
	love.graphics.print(apuesta2, 660, 557)
	
	love.graphics.printf(text, 111, 105, love.graphics.getWidth())
	love.graphics.printf(texto, 651, 592, love.graphics.getWidth())
	

	love.graphics.draw(ap1, objects.Apos1.body:getX(), objects.Apos1.body:getY())
	love.graphics.draw(ap2, objects.Apos2.body:getX(), objects.Apos2.body:getY())

	--__________________________________________________________________________-
	if(toca1==true) then

			love.graphics.draw(Turno1, objects.btnpase1.body:getX(), objects.btnpase1.body:getY())
	end

	if(toca2==true) then

			love.graphics.draw(Turno2, objects.btnpase2.body:getX(), objects.btnpase2.body:getY())
	end

	if jugador==1 then
		love.graphics.draw(Puntero1,printx,printy)
	--	print("CantdiadCartas: "..CantdiadCartas)
	end
	if jugador==2 then
		love.graphics.draw(Puntero2,printx,printy)
		--print("CantdiadCartas: "..CantdiadCartas)
	end

	--__________________________________________________________________________-
	collectgarbage("collect")
	--_________________________________________________________________________-
	
end