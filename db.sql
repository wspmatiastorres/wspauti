CREATE TABLE public.interfaz_tags (
	ndx serial4 NOT NULL,
	descripcion varchar(50) DEFAULT 'sin descr.',
	fila varchar(5) DEFAULT 'A',
	columna varchar(5) DEFAULT 1,
	valor float8 DEFAULT 0,
	tstamp_insercion timestamp NULL,
	CONSTRAINT interfaz_tags_pkey PRIMARY KEY (ndx)
);
CREATE INDEX interfaztagststainsercionndx ON public.interfaz_tags USING btree (tstamp_insercion);

INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(1, '100-EST-01', 'X', '3', 38.35481643676758, '2022-10-27 14:55:55.886');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(2, '100-EST-02', 'Y', '3', 46.02007293701172, '2022-10-27 14:55:55.886');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(3, '100-EST-03', 'Z', '3', 50.0, '2022-10-27 14:41:50.814');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(4, 'Tiempo', 'A', '3', 15241600, '2022-10-27 16:24:27.768');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(5, '100-PMP-101 Presostato', 'B', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(6, '100-PMP-101 Prioridad', 'C', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(7, '100-PMP-101 Confirmación Marcha', 'D', '3', 0.0, '2022-10-27 14:56:46.167');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(8, '100-PMP-102 Prioridad', 'E', '3', 1.0, '2022-10-27 14:24:54.203');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(9, '100-PMP-102 Confirmación marcha', 'F', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(10, 'EST-01 Nivel Alto', 'G', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(11, 'EST-02 Nivel Alto', 'H', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(12, 'EST-03 Nivel Alto', 'I', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(13, '100-VB-09 Confirmación apertura', 'J', '3', 0.0, '2022-10-27 14:55:55.886');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(14, '100-VB-14 Confirmación apertura', 'K', '3', 0.0, '2022-10-27 14:55:55.886');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(15, '100-VB-015 Confirmación apertura', 'Q', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(16, '100-PMP-103 Presostato', 'L', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(17, '100-PMP-103 Prioridad', 'M', '3', 1.0, '2022-10-27 14:24:54.203');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(18, '100-PMP-103 Conf Marcha', 'N', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(19, '100-PMP-104 Prioridad', 'O', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(20, '100-PMP-104 Conf Marcha', 'P', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(21, '101-VB-033 Confirmación apertura', 'R', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(22, '102-VB-042 Confirmación Apertura', 'S', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(23, 'UDL_P1 Nivel Alto', 'T', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(24, 'UDL_P2P3 Nivel Alto', 'U', '3', 0.0, '2022-10-27 14:24:44.153');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(25, 'Limite Inferior Vegetal UDL P1', 'V', '3', 60.0, '2022-10-26 19:10:24.629');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(26, 'Limite Superior Vegetal UDL P1', 'W', '3', 80.0, '2022-10-26 19:10:24.629');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(27, 'UDL_P2P3', 'AA', '3', 0.0, '2022-10-27 15:38:29.940');
INSERT INTO public.interfaz_tags(ndx, descripcion, fila, columna, valor, tstamp_insercion)VALUES(28, 'UDL_P1', 'AB', '3', 78.31310272216797, '2022-10-27 16:24:27.768');
