-- SQL to add the Engine Bay Detailing item to the Portfolio
-- Run this in your Supabase SQL Editor

INSERT INTO public.portfolio (title, description, image_url, display_order)
VALUES (
    'Engine Bay Detailing',
    'Premium engine bay cleaning, degreasing, and dressing for a showroom finish.',
    'image/portfolio/engine_detailing.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 1 FROM public.portfolio)
);
