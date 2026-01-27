-- SQL to add Batch 2 of portfolio items (5 more)
-- This will bring your total items to 11, creating 3 pages of pagination.

INSERT INTO public.portfolio (title, description, image_url, display_order)
VALUES 
(
    'Interior Reimagined',
    'Deep steam cleaning and leather conditioning service.',
    'image/portfolio/rav4_interior_clean.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 1 FROM public.portfolio)
),
(
    'Factory Match Glass',
    'OEM specification glass replacement for seamless fit.',
    'image/portfolio/black_suv_glass.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 2 FROM public.portfolio)
),
(
    'Curing Process',
    'Ensuring the perfect seal and bond for long-term safety.',
    'image/portfolio/sedan_windshield_tape.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 3 FROM public.portfolio)
),
(
    'Off-Road Ready',
    'Heavy duty glass installation for 4x4 vehicles.',
    'image/portfolio/tacoma_offroad_glass.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 4 FROM public.portfolio)
),
(
    'Macro Chip Repair',
    'High precision resin fill to restore glass structural integrity.',
    'image/portfolio/rock_chip_repair_zoom.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 5 FROM public.portfolio)
);
