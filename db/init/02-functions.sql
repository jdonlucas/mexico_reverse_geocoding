\connect geocoding;

CREATE FUNCTION reverse_geocoding(x float,y float)
   RETURNS TABLE (estado varchar, municipio varchar) AS $$
    SELECT est_mun.estado,est_mun.municipio 
    FROM public.est_mun 
    WHERE ST_Within(ST_SetSRID(ST_MakePoint(x,y),4326),est_mun.geom);

$$ LANGUAGE sql STABLE;