--DON'T STEAL KIDS!
--BY JUNIORNOVOA

local txtOffset = 65;
--local midSongPopUp = false;
local time = 1;
local waitTime = 3;
local songNames = {'Maze', 'Wireframe', 'Ferocious', 'Apple-Leak', 'OG', 'lore', 'Rari', 'Grand-Wizard-Man'};
local songTxt = {
	'Mod\nDave and Bambi\n\nArt\nrapparep lol\n\nSong\nMoldyGH\n\nCharter\nthe real PointyyESM\n\nBambi Voice\nMarcello\n\nPorter\nJuniorNovoa', 
	'Mod\nDave and Bambi Golden Apple\n\nArt\nLancey\n\nSong\nSky!\n\nCharter\nLexicord\n\nPorter\nJuniorNovoa\n\n\nCredits might be wrong...', 
	'Mod\nDave and Bambi Golden Apple\n\nArt\nLancey\n\nSong\nSky!\n\nCharter\nLexicord\n\nGarrett\'s Funny Animal Game\nJumpman25\n\nPorter\nJuniorNovoa\n\n\nCredits might be wrong...', 
	'Mod\nDave and Bambi Golden Apple\n\nPart\nSilly Squirmer\n\nVisuals\nSAMMYPIGZY\nArty Squirmer\n\nCharter\nCharty Squirmer\n\nBased off\nHigh Effort Poopers\n\nPorter\nJuniorNovoa', 
	'Mod\nDave and Bambi Golden Apple\n\nArt\nLancey\n\nSong\nSky!\n\nCharter\nLexicord\n\nPorter\nJuniorNovoa\n\n\nCredits might be wrong...', 
	'Mod\nD-Sides\n\nArt\nThe Whole Team Ig\n\nSong\nsherrii\n\nCharter\nViva\n\nPorter\nJuniorNovoa', 
	'Song\nHarlem Fetty\n\nChart\nDrixppx\n\nVideo\nZa Walrus\n\nFortnite\nSebby',
	'Sebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nPenis\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby\nSebby'
};
local txt = 'Porter\nJuniorNovoa';
local left = false;
local down = false;
local up = false;
local right = false;
local globalCredits = false;

function onCreate()
    makeLuaSprite('Creditssss', '', -500, 0)
    makeGraphic('Creditssss', '480', '720', '000000')
    setObjectCamera('Creditssss', 'camother')
	setProperty('Creditssss.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    setProperty('Creditssss.alpha', 0)
    screenCenter('Creditssss', 'y')
    updateHitbox('Creditssss')
    addLuaSprite('Creditssss', true)

	makeLuaText('DATEXTTTTYYTT', txt, 600, getProperty('Creditssss.x') -txtOffset, getProperty('Creditssss.y') + 25)
	setObjectCamera('DATEXTTTTYYTT', 'camother')
	setTextAlignment('DATEXTTTTYYTT', 'center')
	setProperty('DATEXTTTTYYTT.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
	setTextSize('DATEXTTTTYYTT', 26)
	updateHitbox('DATEXTTTTYYTT')
	addLuaText('DATEXTTTTYYTT')

	local randomCred = getRandomInt(0, 7); --I hate getting the same one twice in a row
	if randomCred == 0 or randomCred == 4 then
		left = true;
	end
	if randomCred == 1 or randomCred == 5 then
		down = true;
		screenCenter('Creditssss', 'x')
		setProperty('DATEXTTTTYYTT.x', getProperty('Creditssss.x') -txtOffset)
		setProperty('Creditssss.y', 800)
		setProperty('DATEXTTTTYYTT.y', getProperty('Creditssss.y') +25)
	end
	if randomCred == 2 or randomCred == 6 then
		up = true;
		screenCenter('Creditssss', 'x')
		setProperty('DATEXTTTTYYTT.x', getProperty('Creditssss.x') -txtOffset)
		setProperty('Creditssss.y', -800)
		setProperty('DATEXTTTTYYTT.y', getProperty('Creditssss.y') +25)
	end
	if randomCred == 3 or randomCred == 7 then
		right = true;

		setProperty('Creditssss.x', 1300)
		setProperty('DATEXTTTTYYTT.x', getProperty('Creditssss.x') -txtOffset)
	end
end

function onCreatePost()
	print(songName);
	for i = 1, #songNames do
		--print(songName..songNames[i]);
		if songName == songNames[i] then
			globalCredits = true;
			txt = songTxt[i];
		end
	end
	setTextString('DATEXTTTTYYTT', 'Credits\n---------------------\n'..txt..'\n\n'..songName)
end

local timeAlpha = 1.25;
local offsesss = 150;

function onSongStart()
	if globalCredits == true then
		moveStuff(waitTime);
	else
		removeLuaSprite('Creditssss', true)
		removeLuaText('DATEXTTTTYYTT', true)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'waittingggggg' then
		if left then
			doTweenX('daXX2X', 'Creditssss', getProperty('Creditssss.x') +offsesss, time / 1.5, 'quadInOut')
			doTweenX('daXXX2', 'DATEXTTTTYYTT', getProperty('DATEXTTTTYYTT.x') +offsesss, time / 1.5, 'quadInOut')
		end
		if down then
			doTweenY('daXX2X', 'Creditssss', getProperty('Creditssss.y') -offsesss, time / 1.5, 'quadInOut')
			doTweenY('daXXX2', 'DATEXTTTTYYTT', getProperty('DATEXTTTTYYTT.y') -offsesss, time / 1.5, 'quadInOut')
		end
		if up then
			doTweenY('daXX2X', 'Creditssss', getProperty('Creditssss.y') +offsesss, time / 1.5, 'quadInOut')
			doTweenY('daXXX2', 'DATEXTTTTYYTT', getProperty('DATEXTTTTYYTT.y') +offsesss, time / 1.5, 'quadInOut')
		end
		if right then
			doTweenX('daXX2X', 'Creditssss', getProperty('Creditssss.x') -offsesss, time / 1.5, 'quadInOut')
			doTweenX('daXXX2', 'DATEXTTTTYYTT', getProperty('DATEXTTTTYYTT.x') -offsesss, time / 1.5, 'quadInOut')
		end
	end
end

function onTweenCompleted(tag, loops, loopsLeft)
	if tag == 'daXXX2' then
		if left then
			doTweenX('daXXX', 'Creditssss', -500, time / 1.25, 'cubeInOut')
			doTweenX('daXXXX2', 'DATEXTTTTYYTT', -500 -txtOffset, time / 1.25, 'cubeInOut')
		end
		if down then
			doTweenY('daXXX', 'Creditssss', 800, time / 1.25, 'cubeInOut')
			doTweenY('daXXXX2', 'DATEXTTTTYYTT', 825, time / 1.25, 'cubeInOut')
		end
		if up then
			doTweenY('daXXX', 'Creditssss', -800, time / 1.25, 'cubeInOut')
			doTweenY('daXXXX2', 'DATEXTTTTYYTT', -775, time / 1.25, 'cubeInOut')
		end
		if right then
			doTweenX('daXXX', 'Creditssss', 1300, time / 1.25, 'cubeInOut')
			doTweenX('daXXXX2', 'DATEXTTTTYYTT', 1300 -txtOffset, time / 1.25, 'cubeInOut')
		end

		doTweenAlpha('DaAlpaaHUD', 'camHUD', 1, time + timeAlpha, 'quadInOut')
		doTweenAlpha('DaAlpaa', 'Creditssss', 0, time + timeAlpha, 'quadInOut')
		doTweenAlpha('DaAlpaa2Final', 'DATEXTTTTYYTT', 0, time + timeAlpha, 'quadInOut')
	end

	if tag == 'DaAlpaa2Final' then
		removeLuaSprite('Creditssss', true)
		removeLuaText('DATEXTTTTYYTT', true)
	end
end

--[[function onStepHit()
	if midSongPopUp then
		if songName == 'Apple-Leak' then
			if curStep == 1856 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\n.xml\n\nVisuals\nTecheVent\n\nCharter\nCynda\n\nBased off\nJEES IN 4K???\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end

			if curStep == 3200 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\nLexicord\n\nVisuals\nLancey\nTecheVent\n\nCharter\nCynda\n\nBased off\nGOLDEN APPLE SUPER EXCLUSIVE INSIDER LEAKS PART 1\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end

			if curStep == 5088 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\nLexicord\n\nVisuals\nSAMMYPIGZY\nTecheVent\n\nCharter\nCynda\n\nBased off\nth1ft part 2\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end

			if curStep == 5755 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\nYourAverageMental\n\nVisuals\nLancey\nTecheVent\n\nCharter\nLexicord\n\nBased off\nAll Dave and Bambi Leaks That I Can Found\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end

			if curStep == 6848 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\nWildy\n\nVisuals\nLancey\nTecheVent\n\nCharter\nWildy\n\nBased off\nSammy Upcoming Charater\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end

			if curStep == 7500 then
				txt = "Mod\nDave and Bambi Golden Apple\n\nPart\nT5mpler\n\nVisuals\nLancey\n\nCharter\nT5mpler\n\nBased off\nGolden Apple 2.0-3.0 Leaks\n\nPorter\nJuniorNovoa";
				moveStuff(waitTime)
			end
		end
	end
end--]]

function moveStuff(timerTime)
	if left then
		doTweenX('daXX32', 'Creditssss', 0, time, 'quadInOut')
		doTweenX('da2XX22', 'DATEXTTTTYYTT', -txtOffset, time, 'quadInOut')
	end
	if down then
		doTweenY('daXX32', 'Creditssss', 0, time, 'quadInOut')
		doTweenY('da2XX22', 'DATEXTTTTYYTT', 25, time, 'quadInOut')
	end
	if up then
		doTweenY('daXX32', 'Creditssss', 0, time, 'quadInOut')
		doTweenY('da2XX22', 'DATEXTTTTYYTT', 25, time, 'quadInOut')
	end
	if right then
		doTweenX('daXX32', 'Creditssss', 800, time, 'quadInOut')
		doTweenX('da2XX22', 'DATEXTTTTYYTT', 800-txtOffset, time, 'quadInOut')
	end

	doTweenAlpha('DaAlpaaHUD', 'camHUD', 0.65, time / timeAlpha, 'quadInOut')
	doTweenAlpha('DaAlpaa2', 'Creditssss', 0.6, time / timeAlpha, 'quadInOut')
	doTweenAlpha('DaAlpaa22', 'DATEXTTTTYYTT', 1, time / timeAlpha, 'quadInOut')
	runTimer('waittingggggg', timerTime)
	setTextString('DATEXTTTTYYTT', songName..'\n---------------------\nCredits'..'\n\n'..txt)
end

--[[local time = 0.5;

function onCreate()
    makeLuaSprite('BALCKKKKKKGREEEEEN', '', 0, 0)
    makeGraphic('BALCKKKKKKGREEEEEN', '1280', '720', '000000')
    setObjectCamera('BALCKKKKKKGREEEEEN', 'camhud')
    scaleObject('BALCKKKKKKGREEEEEN', 5, 5)
	screenCenter('BALCKKKKKKGREEEEEN', 'x')
    screenCenter('BALCKKKKKKGREEEEEN', 'y')
    updateHitbox('BALCKKKKKKGREEEEEN')
    addLuaSprite('BALCKKKKKKGREEEEEN', true)

	makeLuaText('DATEXTTTTYYTTTTT', 'Port by JuniorNovoa', 999, 0, 75)
	setObjectCamera('DATEXTTTTYYTTTTT', 'camother')
	screenCenter('DATEXTTTTYYTTTTT', 'x')
	setTextSize('DATEXTTTTYYTTTTT', 64)
	updateHitbox('DATEXTTTTYYTTTTT')
	addLuaText('DATEXTTTTYYTTTTT')

	makeLuaText('CREDITSSSSS3333', 'Port by: JuniorNovoa', 999, -380, 680)
	setObjectCamera('CREDITSSSSS3333', 'camother')
	setProperty('CREDITSSSSS3333.alpha', 0)
	setTextSize('CREDITSSSSS3333', 20)
	updateHitbox('CREDITSSSSS3333')
	addLuaText('CREDITSSSSS3333')

	runTimer('black screen', 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'black screen' then
		doTweenAlpha('daBlackScreen', 'BALCKKKKKKGREEEEEN', 0, time, 'quadInOut')
		doTweenAlpha('DATEXTTTTYYTTTTT', 'DATEXTTTTYYTTTTT', 0, time, 'quadInOut')
		doTweenAlpha('daCredit', 'CREDITSSSSS3333', 1, time, 'quadInOut')
	end

	if tag == 'DATEXTTTTYYTTTTT' then
		removeLuaSprite('BALCKKKKKKGREEEEEN', true)
		removeLuaSprite('DATEXTTTTYYTTTTT', true) --saves memory
	end
end

function onTweenCompleted(tag, loops, loopsLeft)
	--
end
--]]