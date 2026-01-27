-- SQL to add Batch 3 of portfolio items (5 more)
-- Total Items will be 16. Pagination: 4 pages of 4.

INSERT INTO public.portfolio (title, description, image_url, display_order)
VALUES 
(
    'Executive Interior Detail',
    'Comprehensive interior restoration including upholstery shampoo and dashboard rejuvenation.',
    'image/portfolio/batch3_interior.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 1 FROM public.portfolio)
),
(
    'Precision Weatherproofing',
    'Windshield installation featuring high-retention tape for perfect weather seal curing.',
    'image/portfolio/batch3_windshield.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 2 FROM public.portfolio)
),
(
    'Overland Rig Glass',
    'Custom glass fitting for modified off-road vehicles and trucks.',
    'image/portfolio/batch3_truck.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 3 FROM public.portfolio)
),
(
    'Star Break Recovery',
    'Advanced resin injection preventing a star chip from spreading across the windshield.',
    'image/portfolio/batch3_chip.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 4 FROM public.portfolio)
),
(
    'Passenger Side Restoration',
    'Flawless side window replacement restoring the seamless look of this SUV.',
    'image/portfolio/batch3_suv_side.jpg',
    (SELECT COALESCE(MAX(display_order), 0) + 5 FROM public.portfolio)
);
