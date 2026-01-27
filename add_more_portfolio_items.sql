-- SQL to add 5 more portfolio items
-- Run this in your Supabase SQL Editor

INSERT INTO public.portfolio (title, description, image_url, display_order)
VALUES 
(
    'Interior Deep Clean',
    'Complete interior detailing, vacuuming, and surface restoration.',
    'image/portfolio/interior_detailing.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 1 FROM public.portfolio)
),
(
    'Side Glass Replacement',
    'Professional side window replacement for SUVs and trucks.',
    'image/portfolio/suv_side_glass.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 2 FROM public.portfolio)
),
(
    'Windshield Installation Process',
    'Precision windshield alignment and sealing in progress.',
    'image/portfolio/windshield_replacement_process.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 3 FROM public.portfolio)
),
(
    'Action Ready Truck Glass',
    'Heavy-duty windshield replacement for adventure vehicles.',
    'image/portfolio/truck_windshield.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 4 FROM public.portfolio)
),
(
    'Rock Chip Repair',
    'Professional resin injection to fix chips and prevent cracking.',
    'image/portfolio/rock_chip_repair.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 5 FROM public.portfolio)
);
