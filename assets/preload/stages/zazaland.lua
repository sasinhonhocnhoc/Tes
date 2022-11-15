function onCreate()
    --Sprites mods/characters
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-hellhole')
    --Death sound mods/sounds
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx')
    --Dead music mods/music
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver')
    --Retry sound mods/music
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd')

	-- background shit
	makeLuaSprite('stage', 'zaza zone/floor', -600, -300);

	makeLuaSprite('sky', 'zaza zone/sky', -600, -300);
	setScrollFactor('sky', 1.2, 1.2);

	makeLuaSprite('trees', 'zaza zone/trees', -600, -300);
	setScrollFactor('trees', 1.1, 1.1);

	makeLuaSprite('fence', 'zaza zone/fence', -600, -350);

	makeLuaSprite('gun', 'zaza zone/gun', -600, -300);
	setProperty('gun.visible', false)

	makeLuaSprite('post', 'zaza zone/post', -600, -300);

        makeAnimatedLuaSprite('grain','effects/grain', 0, 0)
        addAnimationByPrefix('grain','idle','grain',32,true)
        objectPlayAnimation('grain','idle',false)
	setObjectCamera('grain', 'hud');
        setScrollFactor('grain', 0, 0)
	scaleObject('grain', 0.67, 0.67);


	addLuaSprite('stage', false);
	addLuaSprite('sky', false);
	addLuaSprite('trees', false);
	addLuaSprite('fence', false);
	addLuaSprite('post', false);
	addLuaSprite('gun', false);
	addLuaSprite('grain', true);
end