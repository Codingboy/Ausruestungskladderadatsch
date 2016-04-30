private["_box"];
_box = param[0, objNull];
if (isServer) then
{
	waitUntil{!isNil "CODI_LO_boxes"};
	CODI_LO_boxes pushBack _box;
};