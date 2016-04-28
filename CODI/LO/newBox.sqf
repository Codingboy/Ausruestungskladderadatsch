private["_box"];
_box = param[0, objNull];
if (isServer) then
{
	CODI_LO_boxes pushBack _box;
};