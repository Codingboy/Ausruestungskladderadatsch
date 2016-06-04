CODI_Medical_fnc_medicHint = {
	private["_firstCall","_unit","_u","_heartRate","_pain","_painSuppress","_bloodPressure","_numTourniquets","_tourniquets","_numOpenWounds","_openWounds","_numBandagedWounds","_bandagedWounds","_unconscious","_isBleeding","_bloodVolume","_text"];
	_u = _this select 0;
	_firstCall = param[1, false];
	if (isNil "CODI_Medical_UnconsciousSince") then
	{
		CODI_Medical_UnconsciousSince = 0;
	};
	if (_firstCall) then
	{
		CODI_Medical_UnconsciousSince = time;
	};
	_text = "";
	{
		_unit = _x;
		_heartRate = _unit getVariable ["ace_medical_heartRate", 80];
		_pain = _unit getVariable ["ace_medical_pain", 0];
		_painSuppress = _unit getVariable ["ace_medical_painSuppress", 0];
		_bloodPressure = _unit getVariable ["ace_medical_bloodPressure", [80, 120]];
		_tourniquets = _unit getVariable ["ace_medical_tourniquets", [0,0,0,0,0,0]];
		_numTourniquets = 0;
		{
			if (_x != 0) then
			{
				_numTourniquets = _numTourniquets + 1;
			};
		}
		forEach _tourniquets;
		_openWounds = _unit getVariable ["ace_medical_openWounds", []];
		_numOpenWounds = 0;
		{
			_numOpenWounds = _numOpenWounds + (_x select 3);
		}
		forEach _openWounds;
		_bandagedWounds = _unit getVariable ["ace_medical_bandagedWounds", []];
		_numBandagedWounds = 0;
		{
			_numBandagedWounds = _numBandagedWounds + (_x select 3);
		}
		forEach _bandagedWounds;
		_numLightWounds = 0;
		_numHeavyWounds = 0;
		{
			if (_x > 0) then
			{
				if (_x >= 0.8) then
				{
					_numHeavyWounds = _numHeavyWounds + 1;
				}
				else
				{
					_numLightWounds = _numLightWounds + 1;
				};
			};
		}
		forEach (_unit getVariable["ace_medical_bodyPartStatus", []]);
		_unconscious = _unit getVariable ["ACE_isUnconscious", false];
		_isInCardiac = _unit getVariable ["ace_medical_inCardiacArrest", false];
		_isInReviveState = _unit getVariable ["ace_medical_inReviveState", false];
		_isBleeding = _unit getVariable ["ace_medical_isBleeding", 0];
		_bloodVolume = (_unit getVariable ["ace_medical_bloodVolume", 100]) * 0.07;
		if (!_unconscious) then
		{
			_text = composeText [_text, parseText(format["Ansprechbar: <t color='#00ff00'>ja</t><br/>"])];
		}
		else
		{
			_text = composeText [_text, parseText(format["Ansprechbar: <t color='#ff0000'>nein</t><br/>"])];
		};
		if (ace_medical_level == 2) then
		{
			if (_isInCardiac) then
			{
				_text = composeText [_text, parseText(format["Cardiac Arrest: <t color='#00ff00'>ja</t><br/>"])];
			}
			else
			{
				_text = composeText [_text, parseText(format["Cardiac Arrest: <t color='#ff0000'>nein</t><br/>"])];
			};
			if (_isInReviveState) then
			{
				_text = composeText [_text, parseText(format["ReviveState: <t color='#00ff00'>ja</t><br/>"])];
			}
			else
			{
				_text = composeText [_text, parseText(format["ReviveState: <t color='#ff0000'>nein</t><br/>"])];
			};
		};
		if (ace_medical_level == 2) then
		{
			if (_heartRate >= 60 && _heartRate <= 120) then
			{
				_text = composeText [_text, parseText(format["Puls: <t color='#00ff00'>%1</t><br/>", _heartRate])];
			}
			else
			{
				if (_heartRate >= 40 && _heartRate <= 140) then
				{
					_text = composeText [_text, parseText(format["Puls: <t color='#ffff00'>%1</t><br/>", _heartRate])];
				}
				else
				{
					_text = composeText [_text, parseText(format["Puls: <t color='#ff0000'>%1</t><br/>", _heartRate])];
				};
			};
			if ((_bloodPressure select 0) >= 70 && (_bloodPressure select 1) <= 130) then
			{
				_text = composeText [_text, parseText(format["Blutdruck: <t color='#00ff00'>%1 / %2</t><br/>", _bloodPressure select 1, _bloodPressure select 0])];
			}
			else
			{
				if ((_bloodPressure select 0) >= 55 && (_bloodPressure select 1) <= 140) then
				{
					_text = composeText [_text, parseText(format["Blutdruck: <t color='#ffff00'>%1 / %2</t><br/>", _bloodPressure select 1, _bloodPressure select 0])];
				}
				else
				{
					_text = composeText [_text, parseText(format["Blutdruck: <t color='#ff0000'>%1 / %2</t><br/>", _bloodPressure select 1, _bloodPressure select 0])];
				};
			};
			if (_numOpenWounds == 0) then
			{
				_text = composeText [_text, parseText(format["Wunden: <t color='#00ff00'>%1</t>", _numOpenWounds])];
			}
			else
			{
				if (_numOpenWounds <= 2) then
				{
					_text = composeText [_text, parseText(format["Wunden: <t color='#ffff00'>%1</t>", _numOpenWounds])];
				}
				else
				{
					_text = composeText [_text, parseText(format["Wunden: <t color='#ff0000'>%1</t>", _numOpenWounds])];
				};
			};
			if (_numBandagedWounds <= 2) then
			{
				_text = composeText [_text, parseText(format[" / <t color='#00ff00'>%1</t><br/>", _numBandagedWounds])];
			}
			else
			{
				if (_numBandagedWounds <= 6) then
				{
					_text = composeText [_text, parseText(format[" / <t color='#ffff00'>%1</t><br/>", _numBandagedWounds])];
				}
				else
				{
					_text = composeText [_text, parseText(format[" / <t color='#ff0000'>%1</t><br/>", _numBandagedWounds])];
				};
			};
			if (_numTourniquets == 0) then
			{
				_text = composeText [_text, parseText(format["Tourniquets: <t color='#00ff00'>%1</t><br/>", _numTourniquets])];
			}
			else
			{
				_text = composeText [_text, parseText(format["Tourniquets: <t color='#ff0000'>%1</t><br/>", _numTourniquets])];
			};
		}
		else
		{
			if (_numLightWounds == 0) then
			{
				_text = composeText [_text, parseText(format["Wunden: <t color='#00ff00'>%1</t>", _numLightWounds])];
			}
			else
			{
				_text = composeText [_text, parseText(format["Wunden: <t color='#ffff00'>%1</t>", _numLightWounds])];
			};
			if (_numHeavyWounds == 0) then
			{
				_text = composeText [_text, parseText(format[" / <t color='#00ff00'>%1</t><br/>", _numHeavyWounds])];
			}
			else
			{
				_text = composeText [_text, parseText(format[" / <t color='#ff0000'>%1</t><br/>", _numHeavyWounds])];
			};
		};
		if (_pain == 0) then
		{
			_text = composeText [_text, parseText(format["Schmerzen: <t color='#00ff00'>%1</t>", _pain])];
		}
		else
		{
			if ((_pain <= 0.5 && _painSuppress < _pain) || (_pain < 0.7 && _painSuppress > _pain)) then
			{
				_text = composeText [_text, parseText(format["Schmerzen: <t color='#ffff00'>%1</t>", _pain])];
			}
			else
			{
				_text = composeText [_text, parseText(format["Schmerzen: <t color='#ff0000'>%1</t>", _pain])];
			};
		};
		if (ace_medical_level == 2) then
		{
			if (_pain == 0 || _painSuppress - _pain > 5) then
			{
				_text = composeText [_text, parseText(format[" / <t color='#00ff00'>%1</t><br/>", _painSuppress])];
			}
			else
			{
				if (_painSuppress - _pain > 2) then
				{
					_text = composeText [_text, parseText(format[" / <t color='#ffff00'>%1</t><br/>", _painSuppress])];
				}
				else
				{
					_text = composeText [_text, parseText(format[" / <t color='#ff0000'>%1</t><br/>", _painSuppress])];
				};
			};
		}
		else
		{
			_text = composeText [_text, parseText("<br/>")];
		};
		if (_bloodVolume >= 6.5) then
		{
			_text = composeText [_text, parseText(format["Blut: <t color='#00ff00'>%1</t><br/>", _bloodVolume])];
		}
		else
		{
			if (_bloodVolume > 5.5) then
			{
				_text = composeText [_text, parseText(format["Blut: <t color='#ffff00'>%1</t><br/>", _bloodVolume])];
			}
			else
			{
				_text = composeText [_text, parseText(format["Blut: <t color='#ff0000'>%1</t><br/>", _bloodVolume])];
			};
		};
		if (_unconscious) then
		{
			if (time - CODI_Medical_UnconsciousSince < 120) then
			{
				if (floor(time - CODI_Medical_UnconsciousSince) mod 60 < 10) then
				{
					_text = composeText [_text, parseText(format["Bewusstlos seit: <t color='#ffff00'>%1:0%2</t><br/>", floor((time - CODI_Medical_UnconsciousSince)/60), floor(time - CODI_Medical_UnconsciousSince) mod 60])];
				}
				else
				{
					_text = composeText [_text, parseText(format["Bewusstlos seit: <t color='#ffff00'>%1:%2</t><br/>", floor((time - CODI_Medical_UnconsciousSince)/60), floor(time - CODI_Medical_UnconsciousSince) mod 60])];
				};
			}
			else
			{
				if (floor(time - CODI_Medical_UnconsciousSince) mod 60 < 10) then
				{
					_text = composeText [_text, parseText(format["Bewusstlos seit: <t color='#ff0000'>%1:0%2</t><br/>", floor((time - CODI_Medical_UnconsciousSince)/60), floor(time - CODI_Medical_UnconsciousSince) mod 60])];
				}
				else
				{
					_text = composeText [_text, parseText(format["Bewusstlos seit: <t color='#ff0000'>%1:%2</t><br/>", floor((time - CODI_Medical_UnconsciousSince)/60), floor(time - CODI_Medical_UnconsciousSince) mod 60])];
				};
			};
		};
	}
	forEach [player];
	hintSilent _text;
};
/*CODI_Medical_fnc_medicMonitor = {
	private["_unit","_unconscious","_unconsciousPrev"];
	_unit = _this select 0;
	_unconsciousPrev = false;
	while {alive _unit} do
	{
		sleep 1;
		_unconscious = _unit getVariable ["ACE_isUnconscious", false] || _unit getVariable ["ace_medical_inCardiacArrest", false];
		if (!_unconscious && _unconsciousPrev) then
		{
			hintSilent "";
		};
		if (_unconscious) then
		{
			[_unit, !_unconsciousPrev] call CODI_Medical_fnc_medicHint;
		}
		else
		{
			_unconsciousPrev = false;
		};
		_unconsciousPrev = _unconscious;
	};
};*/
CODI_Medical_fnc_medicMonitor = {
	private["_unconscious","_unconsciousPrev"];
	_unconsciousPrev = false;
	while {alive player} do
	{
		sleep 1;
		_unconscious = player getVariable ["CODI_MS_unconscious", 0];
		if (_unconscious == 0 && _unconsciousPrev) then
		{
			CODI_MS_debug = false;
			hintSilent "";
		};
		if (_unconscious > 0) then
		{
			CODI_MS_debug = true;
		};
		_unconsciousPrev = _unconscious > 0;
	};
};