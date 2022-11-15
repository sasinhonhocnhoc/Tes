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
	makeLuaSprite('sky', 'hellhole/abyss', -2000, -1900);
	setScrollFactor('sky', 0.6, 0.6);
	scaleObject('sky', 0.61, 0.61);

	makeLuaSprite('jaws', 'hellhole/jaws', -1900, -1300);
	setScrollFactor('jaws', 0.7, 0.7);
	scaleObject('jaws', 0.61, 0.61);

	makeLuaSprite('back', 'hellhole/hellhole in question', -2000, -1000);
	setScrollFactor('back', 0.8, 0.8);
	scaleObject('back', 0.63, 0.63);

	makeLuaSprite('ground', 'hellhole/platform', -2000, -400);
	scaleObject('ground', 0.6, 0.6);

	makeLuaSprite('ground2', 'hellhole/hidden platform layer', -2000, -400);
	scaleObject('ground2', 0.6, 0.6);

	makeLuaSprite('darkness', 'effects/darkness', 0, 0);
	setObjectCamera('darkness', 'hud');
        setScrollFactor('darkness', 0, 0)
	setProperty('darkness.visible', false)

        makeAnimatedLuaSprite('grain','effects/grain', 0, 0)
        addAnimationByPrefix('grain','idle','grain',32,true)
        objectPlayAnimation('grain','idle',false)
	setObjectCamera('grain', 'hud');
        setScrollFactor('grain', 0, 0)
	scaleObject('grain', 0.67, 0.67);

	addLuaSprite('sky', false);
	addLuaSprite('jaws', false);
	addLuaSprite('back', false);
	addLuaSprite('ground', false);
	addLuaSprite('ground2', true);
	addLuaSprite('darkness', true);
	addLuaSprite('grain', true);
end